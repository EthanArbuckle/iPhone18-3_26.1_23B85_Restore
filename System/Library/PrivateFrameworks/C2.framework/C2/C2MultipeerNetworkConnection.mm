@interface C2MultipeerNetworkConnection
- (void)receiveNextMessage;
- (void)sendMessageWithData:(id)a3 completionHandler:(id)a4;
- (void)startConnection;
- (void)stopConnection;
@end

@implementation C2MultipeerNetworkConnection

- (void)startConnection
{
  v7.receiver = self;
  v7.super_class = C2MultipeerNetworkConnection;
  [(C2MultipeerConnection *)&v7 startConnection];
  connection = self->_connection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__C2MultipeerNetworkConnection_startConnection__block_invoke;
  v6[3] = &unk_278D40210;
  v6[4] = self;
  MEMORY[0x245D09820](connection, v6);
  v4 = self->_connection;
  v5 = [(C2MultipeerConnection *)self queue];
  nw_connection_set_queue(v4, v5);

  nw_connection_start(self->_connection);
}

void __47__C2MultipeerNetworkConnection_startConnection__block_invoke(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  *(*(a1 + 32) + 56) = a2;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
        {
          __47__C2MultipeerNetworkConnection_startConnection__block_invoke_cold_3();
        }

        v16 = C2_MULTIPEER_LOG_INTERNAL_0;
        if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 32);
          v18 = v16;
          v19 = [v17 peerID];
          v27 = 138412290;
          v28 = v19;
          _os_log_impl(&dword_242158000, v18, OS_LOG_TYPE_INFO, "nw_connection_state_ready for peer %@", &v27, 0xCu);
        }

        [*(a1 + 32) receiveNextMessage];
        break;
      case 4:
        if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
        {
          __47__C2MultipeerNetworkConnection_startConnection__block_invoke_cold_2();
        }

        v22 = C2_MULTIPEER_LOG_INTERNAL_0;
        if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
        {
          v23 = *(a1 + 32);
          v24 = v22;
          v25 = [v23 peerID];
          v27 = 138412290;
          v28 = v25;
          _os_log_impl(&dword_242158000, v24, OS_LOG_TYPE_INFO, "nw_connection_state_failed for peer %@", &v27, 0xCu);
        }

        nw_connection_cancel(*(*(a1 + 32) + 64));
        break;
      case 5:
        if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
        {
          __47__C2MultipeerNetworkConnection_startConnection__block_invoke_cold_1();
        }

        v10 = C2_MULTIPEER_LOG_INTERNAL_0;
        if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 32);
          v12 = v10;
          v13 = [v11 peerID];
          v27 = 138412290;
          v28 = v13;
          _os_log_impl(&dword_242158000, v12, OS_LOG_TYPE_INFO, "nw_connection_state_cancelled for peer %@", &v27, 0xCu);
        }

        [*(a1 + 32) stopConnection];
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        __47__C2MultipeerNetworkConnection_startConnection__block_invoke_cold_5();
      }

      v20 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        v7 = v20;
        v8 = [v21 peerID];
        v27 = 138412290;
        v28 = v8;
        v9 = "nw_connection_state_waiting for peer %@";
        goto LABEL_30;
      }
    }

    else if (a2 == 2)
    {
      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        __47__C2MultipeerNetworkConnection_startConnection__block_invoke_cold_4();
      }

      v5 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v7 = v5;
        v8 = [v6 peerID];
        v27 = 138412290;
        v28 = v8;
        v9 = "nw_connection_state_preparing for peer %@";
LABEL_30:
        _os_log_impl(&dword_242158000, v7, OS_LOG_TYPE_INFO, v9, &v27, 0xCu);
      }
    }
  }

  else
  {
    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      __47__C2MultipeerNetworkConnection_startConnection__block_invoke_cold_6();
    }

    v14 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v7 = v14;
      v8 = [v15 peerID];
      v27 = 138412290;
      v28 = v8;
      v9 = "nw_connection_state_invalid for peer %@";
      goto LABEL_30;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __47__C2MultipeerNetworkConnection_startConnection__block_invoke_2()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__C2MultipeerNetworkConnection_startConnection__block_invoke_131()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__C2MultipeerNetworkConnection_startConnection__block_invoke_134()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__C2MultipeerNetworkConnection_startConnection__block_invoke_137()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__C2MultipeerNetworkConnection_startConnection__block_invoke_140()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__C2MultipeerNetworkConnection_startConnection__block_invoke_143()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)stopConnection
{
  v3.receiver = self;
  v3.super_class = C2MultipeerNetworkConnection;
  [(C2MultipeerConnection *)&v3 stopConnection];
  nw_connection_cancel(self->_connection);
}

- (void)receiveNextMessage
{
  v3 = [(C2MultipeerConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  connection = self->_connection;
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke;
  completion[3] = &unk_278D40260;
  completion[4] = self;
  objc_copyWeak(&v6, &location);
  nw_connection_receive(connection, 1u, 0x2000000u, completion);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v12);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v11)
  {
    v14 = nw_error_copy_cf_error(v11);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
  {
    __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_cold_1();
  }

  v16 = C2_MULTIPEER_LOG_INTERNAL_0;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      identifier = nw_content_context_get_identifier(v10);
    }

    else
    {
      identifier = "(null)";
    }

    v18 = @"no";
    *buf = 136315650;
    v27 = identifier;
    v28 = 2112;
    if (a4)
    {
      v18 = @"yes";
    }

    v29 = v18;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_242158000, v16, OS_LOG_TYPE_DEFAULT, "received message %s, is complete: %@, with error %@", buf, 0x20u);
  }

  if (!v11)
  {
    if (v9)
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_157;
      v23 = &unk_278D40238;
      v24 = *(a1 + 32);
      v25 = WeakRetained;
      dispatch_data_apply(v9, &v20);
    }

    [WeakRetained receiveNextMessage];
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_2()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_157(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = a2;
  if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
  {
    __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_157_cold_1();
  }

  v8 = C2_MULTIPEER_LOG_INTERNAL_0;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 138412546;
    v35 = v9;
    v36 = 2048;
    v37 = a5;
    _os_log_impl(&dword_242158000, v8, OS_LOG_TYPE_INFO, "[%@ receiveNextMessage] - consuming %llu bytes", buf, 0x16u);
  }

  for (; a5; a5 -= v21)
  {
    v10 = [*(a1 + 40) receiveLengthBuffer];
    v11 = [v10 length];

    if (v11 <= 7)
    {
      v12 = [*(a1 + 40) receiveLengthBuffer];
      v13 = 8 - [v12 length];

      if (v13 >= a5)
      {
        v14 = a5;
      }

      else
      {
        v14 = v13;
      }

      if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
      {
        __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_157_cold_2();
      }

      v15 = C2_MULTIPEER_LOG_INTERNAL_0;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        *buf = 138412802;
        v35 = v16;
        v36 = 2048;
        v37 = v14;
        v38 = 2048;
        v39 = a5;
        _os_log_impl(&dword_242158000, v15, OS_LOG_TYPE_INFO, "[%@ receiveNextMessage] - consuming %llu bytes of %llu bytes for receive length buffer.", buf, 0x20u);
      }

      v17 = [*(a1 + 40) receiveLengthBuffer];
      [v17 appendBytes:a4 length:v14];

      a5 -= v14;
      if (!a5)
      {
        break;
      }

      a4 += v14;
    }

    v18 = [*(a1 + 40) receiveLengthBuffer];
    v19 = *[v18 bytes];

    v20 = [*(a1 + 40) receiveMessageBuffer];
    v21 = v19 - [v20 length];

    if (v21 >= a5)
    {
      v21 = a5;
    }

    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_157_cold_3();
    }

    v22 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      *buf = 138412802;
      v35 = v23;
      v36 = 2048;
      v37 = v21;
      v38 = 2048;
      v39 = a5;
      _os_log_impl(&dword_242158000, v22, OS_LOG_TYPE_INFO, "[%@ receiveNextMessage] - consuming %llu bytes of %llu bytes for receive message buffer.", buf, 0x20u);
    }

    v24 = [*(a1 + 40) receiveMessageBuffer];
    [v24 appendBytes:a4 length:a5];

    v25 = [*(a1 + 40) receiveMessageBuffer];
    v26 = [v25 length];

    if (v26 == v19)
    {
      v27 = *(a1 + 40);
      v28 = [v27 receiveMessageBuffer];
      [v27 handleData:v28];

      v29 = objc_opt_new();
      [*(a1 + 40) setReceiveLengthBuffer:v29];

      v30 = objc_opt_new();
      [*(a1 + 40) setReceiveMessageBuffer:v30];
    }

    a4 += v21;
  }

  v31 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_2_158()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_161()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __50__C2MultipeerNetworkConnection_receiveNextMessage__block_invoke_164()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)sendMessageWithData:(id)a3 completionHandler:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(C2MultipeerConnection *)self queue];
  dispatch_assert_queue_V2(v8);

  if (self->_connectionState == 3)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = nw_content_context_create([v10 UTF8String]);

    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      [C2MultipeerNetworkConnection sendMessageWithData:completionHandler:];
    }

    v12 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        identifier = nw_content_context_get_identifier(v11);
      }

      else
      {
        identifier = "(null)";
      }

      *buf = 138412802;
      *&buf[4] = self;
      v28 = 2080;
      v29 = identifier;
      v30 = 2048;
      v31 = [v6 length];
      _os_log_impl(&dword_242158000, v12, OS_LOG_TYPE_DEFAULT, "[%@ sendMessageWithData] - sending message %s with length %llu", buf, 0x20u);
    }

    *buf = 0;
    [v6 length];
    alloc = dispatch_data_create_alloc();
    v19 = [v6 length];
    **buf = v19;
    *buf += 8;
    memcpy(*buf, [v6 bytes], objc_msgSend(v6, "length"));
    connection = self->_connection;
    v21 = *MEMORY[0x277CD9218];
    completion[0] = MEMORY[0x277D85DD0];
    completion[1] = 3221225472;
    completion[2] = __70__C2MultipeerNetworkConnection_sendMessageWithData_completionHandler___block_invoke_178;
    completion[3] = &unk_278D40288;
    completion[4] = self;
    v25 = v11;
    v26 = v7;
    v22 = v11;
    nw_connection_send(connection, alloc, v21, 1, completion);
  }

  else
  {
    if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
    {
      [C2MultipeerNetworkConnection sendMessageWithData:completionHandler:];
    }

    v14 = C2_MULTIPEER_LOG_INTERNAL_0;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_242158000, v14, OS_LOG_TYPE_DEFAULT, "[%@ sendMessageWithData] - failed due to incorrect state", buf, 0xCu);
    }

    v15 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"peer connection not ready";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v17 = [v15 errorWithDomain:@"C2MultipeerErrorDomain" code:300 userInfo:v16];
    (*(v7 + 2))(v7, v17);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __70__C2MultipeerNetworkConnection_sendMessageWithData_completionHandler___block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __70__C2MultipeerNetworkConnection_sendMessageWithData_completionHandler___block_invoke_175()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __70__C2MultipeerNetworkConnection_sendMessageWithData_completionHandler___block_invoke_178(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v3 = nw_error_copy_cf_error(v3);
  }

  v5 = v3;
  if (C2_MULTIPEER_LOG_BLOCK_0 != -1)
  {
    __70__C2MultipeerNetworkConnection_sendMessageWithData_completionHandler___block_invoke_178_cold_1();
  }

  v6 = C2_MULTIPEER_LOG_INTERNAL_0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v7 = a1[5];
    if (v7)
    {
      identifier = nw_content_context_get_identifier(v7);
    }

    else
    {
      identifier = "(null)";
    }

    v11 = 138412802;
    v12 = v8;
    v13 = 2080;
    v14 = identifier;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_242158000, v6, OS_LOG_TYPE_DEFAULT, "[%@ sendMessageWithData] - sending message %s completed with error %@", &v11, 0x20u);
  }

  (*(a1[6] + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __70__C2MultipeerNetworkConnection_sendMessageWithData_completionHandler___block_invoke_2()
{
  C2_MULTIPEER_LOG_INTERNAL_0 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

@end