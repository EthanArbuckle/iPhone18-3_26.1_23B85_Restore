@interface CWFPinger
- (CWFPinger)init;
- (double)percentLoss;
- (unsigned)checksumForData:(id)a3;
- (void)completePingWithError:(id)a3;
- (void)receiveReply;
- (void)sendPing;
- (void)startPingingToHost:(id)a3 withNumberOfPings:(unint64_t)a4 completion:(id)a5;
- (void)stop;
@end

@implementation CWFPinger

- (CWFPinger)init
{
  v8.receiver = self;
  v8.super_class = CWFPinger;
  v2 = [(CWFPinger *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CWFPinger *)v2 setSequenceNumber:0];
    [(CWFPinger *)v3 setIdentifier:getpid()];
    [(CWFPinger *)v3 setRawSocket:0xFFFFFFFFLL];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.cwf.ping", v4);
    [(CWFPinger *)v3 setNetworkQueue:v5];

    [(CWFPinger *)v3 setMaxPings:0];
    [(CWFPinger *)v3 setCurrentPingCount:0];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CWFPinger *)v3 setLatencyValues:v6];
  }

  return v3;
}

- (void)startPingingToHost:(id)a3 withNumberOfPings:(unint64_t)a4 completion:(id)a5
{
  v73 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  [(CWFPinger *)self setMaxPings:a4];
  [(CWFPinger *)self setCurrentPingCount:0];
  [(CWFPinger *)self setCompletion:v9];

  v10 = [(CWFPinger *)self latencyValues];
  [v10 removeAllObjects];

  [(CWFPinger *)self setRawSocket:socket(2, 2, 1)];
  if ([(CWFPinger *)self rawSocket]< 0)
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = __error();
      v28 = strerror(*v27);
      v29 = *__error();
      v69 = 136315394;
      v70 = v28;
      v71 = 1024;
      v72 = v29;
      _os_log_send_and_compose_impl();
    }

    v30 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A578];
    v31 = MEMORY[0x1E696AEC0];
    v32 = __error();
    v33 = strerror(*v32);
    v34 = [v31 stringWithFormat:@"CWFPinger: Failed to create ICMP socket: %s (errno: %d)", v33, *__error()];
    v68 = v34;
    v35 = MEMORY[0x1E695DF20];
    v36 = &v68;
    v37 = &v67;
    goto LABEL_26;
  }

  v11 = gethostbyname([v8 UTF8String]);
  if (!v11)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v23 = CWFGetOSLog();
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v69 = 138412290;
      v70 = v8;
      LODWORD(v57) = 12;
      v56 = &v69;
      _os_log_send_and_compose_impl();
    }

    v41 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A578];
    v66 = @"Failed to resolve hostname";
    v42 = MEMORY[0x1E695DF20];
    v43 = &v66;
    v44 = &v65;
    goto LABEL_31;
  }

  v59 = 0;
  v12 = *v11->h_addr_list;
  h_length = v11->h_length;
  __memcpy_chk();
  *&v64.sa_len = 512;
  *&v64.sa_data[6] = 0;
  __memcpy_chk();
  if (connect([(CWFPinger *)self rawSocket], &v64, 0x10u) < 0)
  {
    v24 = CWFGetOSLog();
    if (v24)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v46 = __error();
      v47 = strerror(*v46);
      v48 = *__error();
      v69 = 136315394;
      v70 = v47;
      v71 = 1024;
      v72 = v48;
      _os_log_send_and_compose_impl();
    }

    v30 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A578];
    v49 = MEMORY[0x1E696AEC0];
    v50 = __error();
    v51 = strerror(*v50);
    v34 = [v49 stringWithFormat:@"CWFPinger: Failed to connect ICMP socket: %s (errno: %d)", v51, *__error()];
    v63 = v34;
    v35 = MEMORY[0x1E695DF20];
    v36 = &v63;
    v37 = &v62;
LABEL_26:
    v52 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
    v53 = [v30 errorWithDomain:@"com.apple.CWFPinger" code:-1 userInfo:v52];

LABEL_32:
    [(CWFPinger *)self completePingWithError:v53];

    goto LABEL_33;
  }

  [(CWFPinger *)self rawSocket];
  v14 = nw_connection_create_with_connected_socket();
  [(CWFPinger *)self setConnection:v14];

  v15 = [(CWFPinger *)self connection];

  if (!v15)
  {
    v38 = CWFGetOSLog();
    if (v38)
    {
      v39 = CWFGetOSLog();
    }

    else
    {
      v39 = MEMORY[0x1E69E9C10];
      v54 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v69) = 0;
      LODWORD(v57) = 2;
      v56 = &v69;
      _os_log_send_and_compose_impl();
    }

    v41 = MEMORY[0x1E696ABC0];
    v60 = *MEMORY[0x1E696A578];
    v61 = @"Failed to create nw_connection from socket";
    v42 = MEMORY[0x1E695DF20];
    v43 = &v61;
    v44 = &v60;
LABEL_31:
    v34 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:{1, v56, v57}];
    v53 = [v41 errorWithDomain:@"com.apple.CWFPinger" code:-1 userInfo:v34];
    goto LABEL_32;
  }

  [(CWFPinger *)self setRawSocket:0xFFFFFFFFLL];
  v16 = [(CWFPinger *)self connection];
  v17 = [(CWFPinger *)self networkQueue];
  nw_connection_set_queue(v16, v17);

  v18 = [(CWFPinger *)self connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0CE7AC8;
  handler[3] = &unk_1E86E8D98;
  handler[4] = self;
  nw_connection_set_state_changed_handler(v18, handler);

  v19 = [(CWFPinger *)self connection];
  nw_connection_start(v19);

LABEL_33:
  v55 = *MEMORY[0x1E69E9840];
}

- (void)sendPing
{
  *&v25[9] = *MEMORY[0x1E69E9840];
  v3 = [(CWFPinger *)self connection];
  if (v3 && (v4 = v3, v5 = [(CWFPinger *)self stopped], v4, !v5))
  {
    if ([(CWFPinger *)self maxPings]&& (v8 = [(CWFPinger *)self currentPingCount], v8 >= [(CWFPinger *)self maxPings]))
    {
      v19 = CWFGetOSLog();
      if (v19)
      {
        v20 = CWFGetOSLog();
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134217984;
        *v25 = [(CWFPinger *)self maxPings];
        _os_log_send_and_compose_impl();
      }

      [(CWFPinger *)self completePingWithError:0];
    }

    else
    {
      [(CWFPinger *)self setCurrentPingCount:[(CWFPinger *)self currentPingCount]+ 1];
      memset(&v25[1], 0, 20);
      v24 = 8;
      LOWORD(v25[0]) = __rev16([(CWFPinger *)self identifier]);
      v9 = [(CWFPinger *)self sequenceNumber];
      [(CWFPinger *)self setSequenceNumber:(v9 + 1)];
      HIWORD(v25[0]) = __rev16(v9);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSince1970];
      v12 = v11;

      v23 = v12;
      v13 = [MEMORY[0x1E695DF88] dataWithBytes:&v24 length:28];
      [v13 appendBytes:&v23 length:8];
      HIWORD(v24) = [(CWFPinger *)self checksumForData:v13];
      [v13 replaceBytesInRange:0 withBytes:{28, &v24}];
      v14 = dispatch_data_create([v13 bytes], objc_msgSend(v13, "length"), 0, 0);
      v15 = [(CWFPinger *)self connection];
      v16 = *MEMORY[0x1E6977E88];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = sub_1E0CE8180;
      completion[3] = &unk_1E86E8DC0;
      completion[4] = self;
      nw_connection_send(v15, v14, v16, 1, completion);
    }
  }

  else
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_send_and_compose_impl();
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)receiveReply
{
  v3 = [(CWFPinger *)self connection];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = sub_1E0CE83A0;
  completion[3] = &unk_1E86E8E08;
  completion[4] = self;
  nw_connection_receive(v3, 1u, 0xFFFFFFFF, completion);
}

- (double)percentLoss
{
  if (![(CWFPinger *)self maxPings])
  {
    return 0.0;
  }

  v3 = [(CWFPinger *)self latencyValues];
  v4 = [v3 count];
  v5 = v4 / [(CWFPinger *)self maxPings];

  return (1.0 - v5) * 100.0;
}

- (void)completePingWithError:(id)a3
{
  v4 = a3;
  [(CWFPinger *)self stop];
  v5 = [(CWFPinger *)self completion];

  if (v5)
  {
    v6 = [(CWFPinger *)self networkQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CE8840;
    v7[3] = &unk_1E86E6420;
    v8 = v4;
    v9 = self;
    dispatch_async(v6, v7);
  }
}

- (unsigned)checksumForData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];
  if (v5 < 2)
  {
    v6 = 0;
    if (v5)
    {
LABEL_5:
      v6 += *v4 << 8;
    }
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v4 += 2;
      v6 += v7;
      v5 -= 2;
    }

    while (v5 > 1);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  if (v6 >= 0x10000)
  {
    do
    {
      v6 = HIWORD(v6) + v6;
    }

    while (HIWORD(v6));
  }

  return ~v6;
}

- (void)stop
{
  if (![(CWFPinger *)self stopped])
  {
    [(CWFPinger *)self setStopped:1];
    v3 = [(CWFPinger *)self connection];

    if (v3)
    {
      v4 = [(CWFPinger *)self connection];
      nw_connection_cancel(v4);

      [(CWFPinger *)self setConnection:0];
    }

    else if (([(CWFPinger *)self rawSocket]& 0x80000000) == 0)
    {
      close([(CWFPinger *)self rawSocket]);

      [(CWFPinger *)self setRawSocket:0xFFFFFFFFLL];
    }
  }
}

@end