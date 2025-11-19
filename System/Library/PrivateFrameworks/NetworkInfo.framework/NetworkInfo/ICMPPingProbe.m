@interface ICMPPingProbe
+ (BOOL)loadStringUtils;
+ (unint64_t)icmpIPv4OffsetInPacket:(id)a3;
- (BOOL)isValidIPv4PingResponsePacket:(id)a3 isForMe:(BOOL *)a4 sequence:(unsigned __int16 *)a5 isBadPacket:(BOOL *)a6;
- (BOOL)isValidIPv6PingResponsePacket:(id)a3 isForMe:(BOOL *)a4 sequence:(unsigned __int16 *)a5 isBadPacket:(BOOL *)a6;
- (BOOL)startRunLoop;
- (ICMPPingProbe)initWithQueue:(id)a3;
- (id)_shortErrorFromError:(id)a3;
- (void)dealloc;
- (void)didFailWithError:(id)a3;
- (void)readData;
- (void)sendPing;
- (void)sendPingWithData:(id)a3;
- (void)setPayloadSize:(unint64_t)a3;
- (void)startThePinging;
- (void)stopDataTransfer;
- (void)stopRunLoop;
- (void)stopTest;
@end

@implementation ICMPPingProbe

+ (BOOL)loadStringUtils
{
  if (loadStringUtils_symbolLoadOnce != -1)
  {
    +[ICMPPingProbe loadStringUtils];
  }

  return loadStringUtils_loadedCU;
}

void __32__ICMPPingProbe_loadStringUtils__block_invoke()
{
  v0 = +[TestProbe loadCoreUtils];
  if (v0)
  {
    v1 = v0;
    v2 = dlsym(v0, "StringToSockAddr");
    v3 = v2;
    if (v2)
    {
      gStringToSockAddrFunc = v2;
    }

    else
    {
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __32__ICMPPingProbe_loadStringUtils__block_invoke_cold_1();
      }
    }

    dlclose(v1);
    loadStringUtils_loadedCU = v3 != 0;
  }

  else
  {
    netqual_log_init();
    v4 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __32__ICMPPingProbe_loadStringUtils__block_invoke_cold_2(v4);
    }
  }
}

- (ICMPPingProbe)initWithQueue:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICMPPingProbe;
  v3 = [(TestProbe *)&v7 initWithQueue:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    pings = v3->_pings;
    v3->_pings = v4;

    v3->_identifier = arc4random();
    v3->_payloadSize = 56;
  }

  return v3;
}

- (void)dealloc
{
  [(ICMPPingProbe *)self stopTest];
  v3.receiver = self;
  v3.super_class = ICMPPingProbe;
  [(ICMPPingProbe *)&v3 dealloc];
}

- (void)setPayloadSize:(unint64_t)a3
{
  if (self->_payloadSize != a3)
  {
    if (a3 <= 0x1000)
    {
      v4 = 56;
      if (a3)
      {
        v4 = a3;
      }
    }

    else
    {
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [ICMPPingProbe setPayloadSize:];
      }

      v4 = 4096;
    }

    self->_payloadSize = v4;
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
    {
      [ICMPPingProbe setPayloadSize:?];
    }
  }
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke(uint64_t a1)
{
  netqual_log_init();
  v2 = os_log_netqual;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_cold_1();
  }

  [*(a1 + 32) stopTest];
  v3 = [*(a1 + 32) pings];
  if (![v3 count])
  {

    goto LABEL_7;
  }

  v4 = [*(a1 + 32) successCount];

  if (!v4)
  {
LABEL_7:
    v5 = 3;
    goto LABEL_8;
  }

  v5 = 2;
LABEL_8:
  [*(a1 + 32) setStatus:v5];
  v6 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_8;
  v7[3] = &unk_279968268;
  v7[4] = *(a1 + 32);
  v7[5] = *(a1 + 40);
  dispatch_async(v6, v7);
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_8(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v5 pings];
    [v4 icmpPingProbe:v5 completedIterations:objc_msgSend(v6 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), 0}];
  }

  v7 = *(a1 + 32);
  if ((*(v7 + 57) & 1) == 0)
  {
    *(v7 + 57) = 1;
    v8 = *(a1 + 32);
    v9 = v8[15];
    v15[0] = @"Timed out";
    v14[0] = @"error";
    v14[1] = @"destination";
    v10 = [v8 ipAddress];
    v15[1] = v10;
    v14[2] = @"timeout_seconds";
    v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    v15[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    (*(v9 + 16))(v9, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_shortErrorFromError:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [ICMPPingProbe _shortErrorFromError:];
  }

  v4 = v3;
  v5 = [v3 localizedFailureReason];
  if (!v5)
  {
    v5 = [v4 localizedDescription];
    if (!v5)
    {
      v5 = [v4 description];
      if (!v5)
      {
        [ICMPPingProbe _shortErrorFromError:];
      }
    }
  }

  v6 = v5;

  return v6;
}

- (void)sendPing
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_17() interBurstInterval];
  [a2 interPingInterval];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __25__ICMPPingProbe_sendPing__block_invoke(uint64_t a1)
{
  netqual_log_init();
  v2 = os_log_netqual;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __25__ICMPPingProbe_sendPing__block_invoke_cold_1(a1);
  }

  return [*(a1 + 32) sendPingWithData:0];
}

void __54__ICMPPingProbe_pingDidSendToAddress_packet_sequence___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 icmpPingProbe:*(a1 + 32) echoRequestSent:*(a1 + 40) success:1];
  }
}

void __81__ICMPPingProbe_pingDidReceiveUnexpectedPingResponseFromAddress_packet_sequence___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopTest];
  v2 = [*(a1 + 32) pings];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) successCount];

    if (v3)
    {
      v4 = 2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v4 = 3;
LABEL_6:
  [*(a1 + 32) setStatus:v4];
  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 32);
    v9 = [v8 pings];
    [v7 icmpPingProbe:v8 completedIterations:objc_msgSend(v9 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), 0}];
  }

  v10 = [*(a1 + 32) pings];
  v16 = [v10 objectAtIndexedSubscript:*(a1 + 48)];

  if (v16)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
    [v16 setObject:v11 forKeyedSubscript:@"sequence"];

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:100 userInfo:0];
    [v16 setObject:v12 forKeyedSubscript:@"error"];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
    [v16 setObject:v13 forKeyedSubscript:@"endtime"];

    v14 = DisplayAddressForAddress(*(a1 + 40));
    [v16 setObject:v14 forKeyedSubscript:@"destination"];
  }

  v15 = *(a1 + 32);
  if ((*(v15 + 57) & 1) == 0)
  {
    *(v15 + 57) = 1;
    (*(*(*(a1 + 32) + 120) + 16))();
  }
}

- (void)stopDataTransfer
{
  socket = self->_socket;
  if (socket)
  {
    CFSocketInvalidate(socket);
    CFRelease(self->_socket);
    self->_socket = 0;
  }
}

- (void)stopTest
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)didFailWithError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [ICMPPingProbe didFailWithError:];
  }

  v5 = v4;
  netqual_log_init();
  v6 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(ICMPPingProbe *)self _shortErrorFromError:v5];
    *buf = 136315650;
    v17 = "[ICMPPingProbe didFailWithError:]";
    v18 = 1024;
    v19 = 608;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_25B859000, v7, OS_LOG_TYPE_INFO, "%s:%u - ping failed because %@", buf, 0x1Cu);
  }

  pingTimer = self->pingTimer;
  if (pingTimer)
  {
    dispatch_source_cancel(pingTimer);
    v10 = self->pingTimer;
    self->pingTimer = 0;
  }

  [(ICMPPingProbe *)self setRunning:0];
  [(TestProbe *)self setStatus:3];
  v11 = [(TestProbe *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__ICMPPingProbe_didFailWithError___block_invoke;
  v14[3] = &unk_2799682B8;
  v14[4] = self;
  v15 = v5;
  v12 = v5;
  dispatch_async(v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __34__ICMPPingProbe_didFailWithError___block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v5 pings];
    [v4 icmpPingProbe:v5 completedIterations:objc_msgSend(v6 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), *(a1 + 40)}];
  }

  v7 = *(a1 + 32);
  if ((*(v7 + 57) & 1) == 0)
  {
    *(v7 + 57) = 1;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8[15];
    v15[0] = @"error";
    v11 = [v8 _shortErrorFromError:v9];
    v15[1] = @"destination";
    v16[0] = v11;
    v12 = [*(a1 + 32) ipAddress];
    v16[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    (*(v10 + 16))(v10, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendPingWithData:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  socket = self->_socket;
  if (socket)
  {
    Native = CFSocketGetNative(socket);
    v7 = v4;
    if (!v7)
    {
      if (self->_payloadSize == 56)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%28zd bottles of beer on the wall", (100 * (self->_nextSequenceNumber / 0x64u) - self->_nextSequenceNumber + 99)];
        v7 = [v8 dataUsingEncoding:1];

        if (!v7)
        {
          [ICMPPingProbe sendPingWithData:];
        }

        if ([v7 length] != 56)
        {
          [ICMPPingProbe sendPingWithData:];
        }
      }

      else
      {
        v14 = [MEMORY[0x277CBEB28] dataWithLength:?];
        v7 = v14;
        if (v14)
        {
          arc4random_buf([v14 bytes], objc_msgSend(v14, "length"));
          if ([v7 length] != self->_payloadSize)
          {
            [ICMPPingProbe sendPingWithData:];
          }
        }
      }
    }

    v35 = v4;
    if (self->_hostAddressIsIPv6)
    {
      v15 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v7, "length") + 8}];
      if (!v15)
      {
        [ICMPPingProbe sendPingWithData:];
      }

      v16 = v15;
      v17 = [v15 mutableBytes];
      *v17 = 128;
      *(v17 + 4) = bswap32(self->_identifier) >> 16;
      *(v17 + 6) = bswap32(self->_nextSequenceNumber) >> 16;
      memcpy((v17 + 8), [v7 bytes], objc_msgSend(v7, "length"));
      v37 = 1;
      if (setsockopt(Native, 0xFFFF, 4356, &v37, 4u) < 0)
      {
        v18 = *__error();
        netqual_log_init();
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          [ICMPPingProbe sendPingWithData:];
        }
      }

      else
      {
        v18 = 0;
      }

      memset(&v36.msg_namelen, 0, 40);
      v50 = 0;
      v51 = 0;
      v29 = [v7 length] + 8;
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        [ICMPPingProbe sendPingWithData:?];
      }

      v36.msg_name = [(NSData *)self->_hostAddressData bytes];
      v36.msg_namelen = [(NSData *)self->_hostAddressData length];
      v48 = v17;
      v49 = v29;
      v36.msg_iov = &v48;
      v36.msg_iovlen = 1;
      v30 = sendmsg(Native, &v36, 0);
      v27 = v30;
      if (v30 < 0 || v30 != v29)
      {
        v18 = *__error();
        netqual_log_init();
        v31 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v39 = "[ICMPPingProbe sendPingWithData:]";
          v40 = 1024;
          v41 = 720;
          v42 = 2048;
          v43 = v27;
          v44 = 2048;
          v45 = v29;
          v46 = 1024;
          v47 = v18;
          _os_log_error_impl(&dword_25B859000, v31, OS_LOG_TYPE_ERROR, "%s:%u - IPv6 sendmsg failed (%ld/%ld) err: %{errno}d", buf, 0x2Cu);
        }
      }

LABEL_42:
      if (v27 >= 1 && v27 == [v16 length])
      {
        [(ICMPPingProbe *)self pingDidSendToAddress:self->_hostAddressData packet:v16 sequence:self->_nextSequenceNumber];
      }

      else
      {
        if (v18)
        {
          v32 = v18;
        }

        else
        {
          v32 = 55;
        }

        v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v32 userInfo:0];
        [(ICMPPingProbe *)self pingDidFailToSendToAddress:self->_hostAddressData packet:v16 sequence:self->_nextSequenceNumber error:v33];
      }

      ++self->_nextSequenceNumber;

      v4 = v35;
      goto LABEL_50;
    }

    if (setsockopt(Native, 0, 25, &self->_interfaceIndex, 4u))
    {
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [ICMPPingProbe sendPingWithData:];
      }
    }

    v19 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v7, "length") + 28}];
    if (!v19)
    {
      [ICMPPingProbe sendPingWithData:];
    }

    v16 = v19;
    v20 = [v19 mutableBytes];
    *v20 = 8;
    *(v20 + 4) = bswap32(self->_identifier) >> 16;
    *(v20 + 6) = bswap32(self->_nextSequenceNumber) >> 16;
    memcpy((v20 + 28), [v7 bytes], objc_msgSend(v7, "length"));
    v21 = [v16 bytes];
    v22 = [v16 length];
    if (v22 < 2)
    {
      v23 = 0;
      if (!v22)
      {
LABEL_27:
        *(v20 + 2) = ~(HIWORD(v23) + v23 + (((v23 >> 16) + v23) >> 16));
        memset(&v36.msg_namelen, 0, 40);
        v50 = 0;
        v51 = 0;
        v25 = [v7 length] + 28;
        v36.msg_name = [(NSData *)self->_hostAddressData bytes];
        v36.msg_namelen = [(NSData *)self->_hostAddressData length];
        v48 = v20;
        v49 = v25;
        v36.msg_iov = &v48;
        v36.msg_iovlen = 1;
        v26 = sendmsg(Native, &v36, 0);
        v27 = v26;
        if (v26 < 0 || (v18 = 0, v26 != v25))
        {
          v18 = *__error();
          netqual_log_init();
          v28 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v39 = "[ICMPPingProbe sendPingWithData:]";
            v40 = 1024;
            v41 = 763;
            v42 = 2048;
            v43 = v27;
            v44 = 2048;
            v45 = v25;
            v46 = 1024;
            v47 = v18;
            _os_log_error_impl(&dword_25B859000, v28, OS_LOG_TYPE_ERROR, "%s:%u - IPv4 sendmsg failed (%ld/%ld) err: %{errno}d", buf, 0x2Cu);
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v23 = 0;
      do
      {
        v24 = *v21++;
        v23 += v24;
        v22 -= 2;
      }

      while (v22 > 1);
      if (!v22)
      {
        goto LABEL_27;
      }
    }

    v23 += *v21;
    goto LABEL_27;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:9 userInfo:0];
  v10 = [(ICMPPingProbe *)self delegate];
  if (v10)
  {
    v11 = v10;
    v12 = [(ICMPPingProbe *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      [(ICMPPingProbe *)self pingDidFailToSendToAddress:self->_hostAddressData packet:0 sequence:self->_nextSequenceNumber error:v9];
    }
  }

LABEL_50:
  v34 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)icmpIPv4OffsetInPacket:(id)a3
{
  v3 = a3;
  if ([v3 length] < 0x30)
  {
LABEL_9:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  v4 = [v3 bytes];
  v5 = v4;
  if ((*v4 & 0xF0) != 0x40)
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe icmpIPv4OffsetInPacket:v5];
    }

    goto LABEL_9;
  }

  v6 = v4 + 9;
  if (v4[9] != 1)
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe icmpIPv4OffsetInPacket:v6];
    }

    goto LABEL_9;
  }

  v7 = 4 * (*v4 & 0x3F);
LABEL_10:

  return v7;
}

- (BOOL)isValidIPv6PingResponsePacket:(id)a3 isForMe:(BOOL *)a4 sequence:(unsigned __int16 *)a5 isBadPacket:(BOOL *)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if ([v10 length] < 8)
  {
    netqual_log_init();
    v14 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv6PingResponsePacket:v14 isForMe:? sequence:? isBadPacket:?];
      if (a6)
      {
LABEL_10:
        v15 = 0;
        *a6 = 1;
        goto LABEL_35;
      }

LABEL_34:
      v15 = 0;
      goto LABEL_35;
    }

LABEL_9:
    if (a6)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

  v11 = [v10 mutableBytes];
  if (!v11)
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:];
      if (a6)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    goto LABEL_9;
  }

  v12 = v11;
  v13 = *v11 == 129 && v11[1] == 0;
  v16 = bswap32(*(v11 + 2)) >> 16;
  identifier = self->_identifier;
  v18 = bswap32(*(v11 + 3)) >> 16;
  v19 = [(ICMPPingProbe *)self pingCount];
  v20 = [(ICMPPingProbe *)self burstCount];
  if (a4)
  {
    *a4 = v16 == identifier;
  }

  v21 = v20 * v19;
  if (a5)
  {
    *a5 = v18;
  }

  v22 = v16 == identifier && v13;
  if (!v22 || v21 <= v18)
  {
    if (v13)
    {
      if (v16 == identifier)
      {
        if (v21 <= v18)
        {
          netqual_log_init();
          v24 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
          {
            [ICMPPingProbe isValidIPv6PingResponsePacket:v18 isForMe:v24 sequence:? isBadPacket:?];
          }
        }
      }

      else
      {
        netqual_log_init();
        v33 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
        {
          v36 = self->_identifier;
          *buf = 136316162;
          v38 = "[ICMPPingProbe isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:]";
          v39 = 1024;
          v40 = 843;
          v41 = 2048;
          v42 = self;
          v43 = 1024;
          v44 = v16;
          v45 = 1024;
          LODWORD(v46) = v36;
          _os_log_debug_impl(&dword_25B859000, v33, OS_LOG_TYPE_DEBUG, "%s:%u - %p (%u) This ICMP6_ECHO_REPLY is NOT for me %u", buf, 0x28u);
        }
      }
    }

    else
    {
      netqual_log_init();
      v27 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        v28 = self->_identifier;
        v29 = *v12;
        v30 = v27;
        v31 = icmpTypeToString(v29);
        v32 = v12[1];
        *buf = 136316418;
        v38 = "[ICMPPingProbe isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:]";
        v39 = 1024;
        v40 = 837;
        v41 = 2048;
        v42 = self;
        v43 = 1024;
        v44 = v28;
        v45 = 2112;
        v46 = v31;
        v47 = 1024;
        v48 = v32;
        _os_log_debug_impl(&dword_25B859000, v30, OS_LOG_TYPE_DEBUG, "%s:%u - %p (%u) Not ICMP6_ECHO_REPLY (%@) or icmp6_code (%d)", buf, 0x32u);
      }
    }

    goto LABEL_34;
  }

  netqual_log_init();
  v25 = os_log_netqual;
  v15 = 1;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v26 = self->_identifier;
    *buf = 136316162;
    v38 = "[ICMPPingProbe isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:]";
    v39 = 1024;
    v40 = 833;
    v41 = 2048;
    v42 = self;
    v43 = 1024;
    v44 = v18;
    v45 = 1024;
    LODWORD(v46) = v26;
    _os_log_impl(&dword_25B859000, v25, OS_LOG_TYPE_INFO, "%s:%u - %p Valid ICMP6_ECHO_REPLY (sequence %u) for me %u!", buf, 0x28u);
  }

LABEL_35:

  v34 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)isValidIPv4PingResponsePacket:(id)a3 isForMe:(BOOL *)a4 sequence:(unsigned __int16 *)a5 isBadPacket:(BOOL *)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [objc_opt_class() icmpIPv4OffsetInPacket:v10];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    netqual_log_init();
    v12 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv4PingResponsePacket:v12 isForMe:? sequence:? isBadPacket:?];
    }

    goto LABEL_9;
  }

  v13 = v11;
  v14 = [v10 mutableBytes];
  if (!v14)
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:];
    }

    goto LABEL_9;
  }

  v15 = (v14 + v13);
  if (*(v14 + v13))
  {
    v46 = 0;
  }

  else
  {
    v46 = *(v15 + 1) == 0;
  }

  identifier = self->_identifier;
  v47 = bswap32(v15[2]) >> 16;
  v18 = v15[3];
  v45 = [(ICMPPingProbe *)self pingCount];
  v44 = [(ICMPPingProbe *)self burstCount];
  v19 = v15[1];
  v15[1] = 0;
  v20 = [v10 length] - v13;
  if (v20 < 2)
  {
    v21 = 0;
    v22 = v15;
  }

  else
  {
    v21 = 0;
    v22 = v15;
    do
    {
      v23 = *v22++;
      v21 += v23;
      v20 -= 2;
    }

    while (v20 > 1);
  }

  v24 = bswap32(v18);
  if (v20)
  {
    v21 += *v22;
  }

  v25 = HIWORD(v24);
  v26 = (v21 >> 16) + v21;
  v15[1] = v19;
  if (a4)
  {
    *a4 = v47 == identifier;
  }

  v27 = v26 + HIWORD(v26);
  if (a5)
  {
    *a5 = HIWORD(v24);
  }

  v28 = ~v27;
  v29 = v44 * v45;
  v30 = v47 == identifier && v46;
  if (!v30 || v29 <= v25 || v19 != v28)
  {
    if (!v46)
    {
      netqual_log_init();
      v34 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        v35 = self->_identifier;
        v36 = *(v15 + 1) == 0;
        v37 = v34;
        v38 = icmpTypeToString(v36);
        v39 = *(v15 + 1);
        *buf = 136316418;
        v49 = "[ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:]";
        v50 = 1024;
        v51 = 917;
        v52 = 2048;
        v53 = self;
        v54 = 1024;
        v55 = v35;
        v56 = 2112;
        v57 = v38;
        v58 = 1024;
        v59 = v39;
        _os_log_debug_impl(&dword_25B859000, v37, OS_LOG_TYPE_DEBUG, "%s:%u - %p (%u) Not ICMP_ECHOREPLY (%@) or icmp_code (%d)", buf, 0x32u);
      }

      goto LABEL_43;
    }

    if (v47 != identifier)
    {
      netqual_log_init();
      v40 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        v41 = self->_identifier;
        *buf = 136316162;
        v49 = "[ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:]";
        v50 = 1024;
        v51 = 922;
        v52 = 2048;
        v53 = self;
        v54 = 1024;
        v55 = v47;
        v56 = 1024;
        LODWORD(v57) = v41;
        _os_log_debug_impl(&dword_25B859000, v40, OS_LOG_TYPE_DEBUG, "%s:%u - %p (%u) This ICMP_ECHOREPLY is NOT for me %u", buf, 0x28u);
      }

      goto LABEL_43;
    }

    if (v29 <= v25)
    {
      netqual_log_init();
      v33 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [ICMPPingProbe isValidIPv4PingResponsePacket:v25 isForMe:v33 sequence:? isBadPacket:?];
      }

      goto LABEL_43;
    }

    if (v19 == v28)
    {
LABEL_43:
      v16 = 0;
      goto LABEL_44;
    }

    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:];
    }

LABEL_9:
    if (a6)
    {
      v16 = 0;
      *a6 = 1;
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  netqual_log_init();
  v31 = os_log_netqual;
  v16 = 1;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v32 = self->_identifier;
    *buf = 136316162;
    v49 = "[ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:]";
    v50 = 1024;
    v51 = 913;
    v52 = 2048;
    v53 = self;
    v54 = 1024;
    v55 = v25;
    v56 = 1024;
    LODWORD(v57) = v32;
    _os_log_impl(&dword_25B859000, v31, OS_LOG_TYPE_INFO, "%s:%u - %p Valid ICMP_ECHOREPLY (sequence %u) for me %u!", buf, 0x28u);
  }

LABEL_44:

  v42 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)readData
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __25__ICMPPingProbe_readData__block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 58) == 1)
  {
    v2 = *(result + 32);
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);

    return [v2 pingDidReceivePingResponseFromAddress:v3 packet:v4 sequence:v5];
  }

  else if (*(result + 59) == 1)
  {
    if ((*(result + 60) & 1) != 0 || (v6 = *(result + 56), v6 != 0xFFFF) && (v7 = [*(result + 32) pingCount], result = objc_msgSend(*(v1 + 32), "burstCount"), result * v7 <= v6))
    {
      v8 = *(v1 + 32);
      v9 = *(v1 + 40);
      v10 = *(v1 + 48);
      v11 = *(v1 + 56);

      return [v8 pingDidReceiveUnexpectedPingResponseFromAddress:v9 packet:v10 sequence:v11];
    }
  }

  return result;
}

- (void)startThePinging
{
  OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__ICMPPingProbe_startThePinging__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3 = MEMORY[0x277D85D38];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;

  v7 = *(a1 + 32);
  v8 = v7[9];
  [v7 interPingInterval];
  dispatch_source_set_timer(v8, 0, (v9 * 1000000000.0), 0x989680uLL);
  v10 = *(a1 + 32);
  v11 = *(v10 + 72);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__ICMPPingProbe_startThePinging__block_invoke_2;
  handler[3] = &unk_279968290;
  handler[4] = v10;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(*(*(a1 + 32) + 72));
  v12 = [*(a1 + 32) queue];
  v13 = dispatch_source_create(v3, 0, 0, v12);
  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  *(v14 + 80) = v13;

  dispatch_source_set_timer(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v16 = *(a1 + 32);
  v17 = *(v16 + 80);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__ICMPPingProbe_startThePinging__block_invoke_3;
  v18[3] = &unk_279968290;
  v18[4] = v16;
  dispatch_source_set_event_handler(v17, v18);
  dispatch_resume(*(*(a1 + 32) + 80));
}

void __32__ICMPPingProbe_startThePinging__block_invoke_3(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) setCurrentBurst:{objc_msgSend(*(a1 + 32), "currentBurst") + 1}];
  netqual_log_init();
  v2 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
  {
    __32__ICMPPingProbe_startThePinging__block_invoke_3_cold_1(v1, v2);
  }

  [*v1 sendPingWithData:0];
  v3 = *(*v1 + 9);
  [*v1 interPingInterval];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  [*v1 interPingInterval];
  dispatch_source_set_timer(v3, v5, (v6 * 1000000000.0), 0x989680uLL);
}

- (BOOL)startRunLoop
{
  v8 = *MEMORY[0x277D85DE8];
  if (!self->_pingRunLoop)
  {
    memset(&v7, 0, sizeof(v7));
    v3 = dispatch_semaphore_create(0);
    pingRunLoopReady = self->_pingRunLoopReady;
    self->_pingRunLoopReady = v3;

    if (!self->_pingRunLoopReady)
    {
      [ICMPPingProbe startRunLoop];
    }

    pthread_attr_init(&v7);
    pthread_attr_setdetachstate(&v7, 2);
    if (pthread_create(&self->_pingThread, &v7, ping_runloop_thread, self))
    {
      [ICMPPingProbe startRunLoop];
    }

    pthread_attr_destroy(&v7);
    dispatch_semaphore_wait(self->_pingRunLoopReady, 0xFFFFFFFFFFFFFFFFLL);
    if (!self->_pingRunLoop)
    {
      [ICMPPingProbe startRunLoop];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)stopRunLoop
{
  if (self->_pingRunLoop)
  {
    self->_pingRunLoop = 0;
  }

  if (self->_pingRunLoopReady)
  {
    self->_pingRunLoopReady = 0;
    MEMORY[0x2821F96F8]();
  }
}

void __32__ICMPPingProbe_loadStringUtils__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __32__ICMPPingProbe_loadStringUtils__block_invoke_cold_2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  dlerror();
  *v4 = 136315650;
  OUTLINED_FUNCTION_0();
  *&v4[7] = 157;
  v4[9] = 2080;
  v5 = v2;
  _os_log_error_impl(&dword_25B859000, v1, OS_LOG_TYPE_ERROR, "%s:%u - CoreUtils failed to load due to %s\n", v4, 0x1Cu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setPayloadSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPayloadSize:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15();
  v11 = *MEMORY[0x277D85DE8];
  [*(v3 + 32) hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [*(v2 + 32) ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __25__ICMPPingProbe_sendPing__block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pings];
  v3 = [v2 count] + 1;
  if (!(v3 % [*(a1 + 32) pingCount]))
  {
    [*(a1 + 32) pingCount];
  }

  [*(a1 + 32) pingCount];
  [*(a1 + 32) currentBurst];
  [*(a1 + 32) burstCount];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13(&dword_25B859000, v4, v5, "%s:%u - Sending ping %lu of %lu of burst %lu of %lu", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pingDidSendToAddress:(void *)a1 packet:(void *)a2 sequence:.cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a2)
  {
    v3 = [a1 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
  if (!a2)
  {
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.1()
{
  OUTLINED_FUNCTION_15();
  v11 = *MEMORY[0x277D85DE8];
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceivePingResponseFromAddress:(void *)a1 packet:(void *)a2 sequence:.cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 pings];
  [v4 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.6()
{
  OUTLINED_FUNCTION_15();
  v11 = *MEMORY[0x277D85DE8];
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.7()
{
  OUTLINED_FUNCTION_15();
  v11 = *MEMORY[0x277D85DE8];
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:.cold.1()
{
  OUTLINED_FUNCTION_15();
  v11 = *MEMORY[0x277D85DE8];
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:.cold.3()
{
  OUTLINED_FUNCTION_15();
  v11 = *MEMORY[0x277D85DE8];
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendPingWithData:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendPingWithData:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendPingWithData:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)icmpIPv4OffsetInPacket:(unsigned __int8 *)a1 .cold.1(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)icmpIPv4OffsetInPacket:(unsigned __int8 *)a1 .cold.2(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isValidIPv6PingResponsePacket:(uint64_t)a1 isForMe:(void *)a2 sequence:isBadPacket:.cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [OUTLINED_FUNCTION_18() length];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)isValidIPv6PingResponsePacket:(void *)a3 isForMe:sequence:isBadPacket:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [OUTLINED_FUNCTION_17() pingCount];
  [OUTLINED_FUNCTION_18() burstCount];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_25B859000, v2, OS_LOG_TYPE_ERROR, "%s:%u - unexpected ICMP checksum (%d) should be %d", v4, 0x1Eu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)isValidIPv4PingResponsePacket:(void *)a3 isForMe:sequence:isBadPacket:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [OUTLINED_FUNCTION_17() pingCount];
  [OUTLINED_FUNCTION_18() burstCount];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isValidIPv4PingResponsePacket:(uint64_t)a1 isForMe:(void *)a2 sequence:isBadPacket:.cold.4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [OUTLINED_FUNCTION_18() length];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);

  v9 = *MEMORY[0x277D85DE8];
}

void __32__ICMPPingProbe_startThePinging__block_invoke_3_cold_1(id *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [v3 pings];
  v6 = [v5 count] + 1;
  v7 = v6 % [*a1 pingCount];
  [*a1 pingCount];
  [*a1 currentBurst];
  [*a1 burstCount];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13(&dword_25B859000, v8, v9, "%s:%u - Burst delay over. Sending ping %lu of %lu of burst %lu of %lu", v10, v11, v12, v13, 2u);

  v14 = *MEMORY[0x277D85DE8];
}

@end