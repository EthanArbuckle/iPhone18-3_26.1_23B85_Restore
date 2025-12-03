@interface CDXClientSession
- (BOOL)retransmitEvent;
- (BOOL)sendData:(id)data toParticipants:(id)participants;
- (BOOL)sendRaw:(id)raw toParticipants:(id)participants;
- (CDXClientSession)initWithCDXClient:(id)client ticket:(id)ticket sessionKey:(id)key;
- (id)decrypt:(id)decrypt ticket:(id)ticket;
- (id)encrypt:(id)encrypt;
- (void)dealloc;
- (void)invalidate;
- (void)recvRaw:(id)raw ticket:(id)ticket;
- (void)resetRetransmitTimer;
- (void)retransmitEvent;
- (void)setTicket:(id)ticket;
- (void)stopRetransmitTimer;
@end

@implementation CDXClientSession

- (CDXClientSession)initWithCDXClient:(id)client ticket:(id)ticket sessionKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CDXClientSession;
  v8 = [(CDXClientSession *)&v17 init];
  if (v8)
  {
    v8->CDXClient_ = client;
    v9 = malloc_type_malloc(2 * [ticket CDXTicketPCNT], 0x1000040BDFB0063uLL);
    v8->ack_ = v9;
    bzero(v9, 2 * [ticket CDXTicketPCNT]);
    v8->ticket_ = [ticket copyWithZone:{-[CDXClientSession zone](v8, "zone")}];
    v10 = [key copyWithZone:{-[CDXClientSession zone](v8, "zone")}];
    v11 = v10;
    v8->sessionKey_ = v10;
    memset(md, 170, 16);
    if (v10 && [(NSData *)v10 length]!= 16)
    {
      CC_MD5([(NSData *)v11 bytes], [(NSData *)v11 length], md);
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
    }

    v8->sessionKeyPrepped_ = v11;
    v8->pid_ = [(NSData *)v8->ticket_ CDXTicketPID];
    if (!v8->sessionKey_ && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [-[CDXClientSession description](v8 "description")];
        *md = 136315906;
        *&md[4] = v12;
        *&md[12] = 2080;
        *&md[14] = "[CDXClientSession initWithCDXClient:ticket:sessionKey:]";
        v19 = 1024;
        v20 = 293;
        v21 = 2080;
        v22 = v14;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: No session key provided. Contents of CDX session will be unencrypted!", md, 0x26u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)stopRetransmitTimer
{
  OUTLINED_FUNCTION_15();
  [OUTLINED_FUNCTION_22(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9(&dword_24E50C000, v1, v2, "CDXClient [%s] %s:%d %s: Turning off retransmit timer.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, "CDXClient [%s] %s:%d ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)retransmitEvent
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      v7 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          retransmitAttempts = self->retransmitAttempts_;
          *v27 = 136315906;
          *&v27[4] = v5;
          *&v27[12] = 2080;
          *&v27[14] = "[CDXClientSession retransmitEvent]";
          *&v27[22] = 1024;
          LODWORD(v28) = 338;
          WORD2(v28) = 1024;
          *(&v28 + 6) = retransmitAttempts;
          v9 = "CDXClient [%s] %s:%d retransmitAttempts = %d";
          v10 = v6;
          v11 = 34;
LABEL_13:
          _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, v9, v27, v11);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(CDXClientSession *)v5 retransmitEvent];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(CDXClientSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_286195238;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_18;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    v14 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->retransmitAttempts_;
        *v27 = 136316418;
        *&v27[4] = v12;
        *&v27[12] = 2080;
        *&v27[14] = "[CDXClientSession retransmitEvent]";
        *&v27[22] = 1024;
        LODWORD(v28) = 338;
        WORD2(v28) = 2112;
        *(&v28 + 6) = v4;
        HIWORD(v28) = 2048;
        selfCopy3 = self;
        LOWORD(v30) = 1024;
        *(&v30 + 2) = v15;
        v9 = "CDXClient [%s] %s:%d %@(%p) retransmitAttempts = %d";
        v10 = v13;
        v11 = 54;
        goto LABEL_13;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = self->retransmitAttempts_;
      *v27 = 136316418;
      *&v27[4] = v12;
      *&v27[12] = 2080;
      *&v27[14] = "[CDXClientSession retransmitEvent]";
      *&v27[22] = 1024;
      LODWORD(v28) = 338;
      WORD2(v28) = 2112;
      *(&v28 + 6) = v4;
      HIWORD(v28) = 2048;
      selfCopy3 = self;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = v16;
      _os_log_debug_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEBUG, "CDXClient [%s] %s:%d %@(%p) retransmitAttempts = %d", v27, 0x36u);
    }
  }

LABEL_18:
  if ([(NSMutableIndexSet *)self->participantsInFlight_ count:*v27]&& [(CDXClientSession *)self sendRaw:self->lastSent_ toParticipants:self->participantsInFlight_]&& (v17 = self->retransmitAttempts_, self->retransmitAttempts_ = v17 + 1, v17 <= 65))
  {
    v18 = pow(1.33333333, (v17 + 1)) * 0.1;
    if (v18 <= 1.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = (((arc4random() & 0xFFFFFF) / 16777000.0) * 0.2 + 0.9) * v19;
    retransmitTimer = self->retransmitTimer_;
    v22 = v20 * 1000000000.0;
    v23 = dispatch_time(0, v22);
    dispatch_source_set_timer(retransmitTimer, v23, 0xFFFFFFFFFFFFFFFFLL, v22);
    v24 = 1;
  }

  else
  {
    [(CDXClientSession *)self stopRetransmitTimer];
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)resetRetransmitTimer
{
  if (!self->retransmitTimer_)
  {
    queue = [self->CDXClient_ queue];
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    self->retransmitTimer_ = v4;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__CDXClientSession_resetRetransmitTimer__block_invoke;
    handler[3] = &unk_279682BA8;
    handler[4] = self;
    dispatch_source_set_event_handler(v4, handler);
    retransmitTimer = self->retransmitTimer_;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__CDXClientSession_resetRetransmitTimer__block_invoke_2;
    v10[3] = &unk_279682BA8;
    v10[4] = self;
    dispatch_source_set_cancel_handler(retransmitTimer, v10);
    dispatch_resume(self->retransmitTimer_);
  }

  self->retransmitAttempts_ = 0;
  v6 = (((arc4random() & 0xFFFFFF) / 16777000.0) * 0.2 + 0.9) * 0.100000001;
  v7 = self->retransmitTimer_;
  v8 = v6 * 1000000000.0;
  v9 = dispatch_time(0, v8);
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, v8);
}

void __40__CDXClientSession_resetRetransmitTimer__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    dispatch_release(v2);
    *(*(a1 + 32) + 88) = 0;
  }
}

- (void)dealloc
{
  [(CDXClientSession *)self invalidate];

  free(self->ack_);
  v3.receiver = self;
  v3.super_class = CDXClientSession;
  [(CDXClientSession *)&v3 dealloc];
}

- (void)setTicket:(id)ticket
{
  if ([ticket CDXTicketWellFormed] && -[NSData CDXTicketIsRelatedToTicket:](self->ticket_, "CDXTicketIsRelatedToTicket:", ticket))
  {
    ticket = self->ticket_;
    self->ticket_ = [ticket copyWithZone:{-[CDXClientSession zone](self, "zone")}];
  }
}

- (id)decrypt:(id)decrypt ticket:(id)ticket
{
  decryptCopy = decrypt;
  iv[2] = *MEMORY[0x277D85DE8];
  v19 = 0;
  if (self->sessionKey_)
  {
    v7 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(decrypt, "length") + 16}];
    iv[0] = *([ticket bytes] + 4);
    iv[1] = *([ticket bytes] + 4);
    LOBYTE(iv[0]) |= [ticket CDXTicketPID];
    v8 = CCCrypt(1u, 0, 1u, -[NSData bytes](self->sessionKeyPrepped_, "bytes"), -[NSData length](self->sessionKeyPrepped_, "length"), iv, [decryptCopy bytes], objc_msgSend(decryptCopy, "length"), objc_msgSend(v7, "mutableBytes"), objc_msgSend(v7, "length"), &v19);
    if (v8)
    {
      v9 = v8;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          v18 = [-[CDXClientSession description](self "description")];
          *buf = 136316162;
          v23 = v10;
          v24 = 2080;
          v25 = "[CDXClientSession decrypt:ticket:]";
          v26 = 1024;
          v27 = 471;
          v28 = 2080;
          v29 = v18;
          v30 = 1024;
          v31 = v9;
          _os_log_error_impl(&dword_24E50C000, v11, OS_LOG_TYPE_ERROR, "CDXClient [%s] %s:%d %s: Decryption failed: CCCrypt() returned error %d", buf, 0x2Cu);
        }
      }

      cDXClient = [(CDXClientSession *)self CDXClient];
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA590];
      v20[0] = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decryption failed. (CCCrypt error %d)", v9];
      v20[1] = @"CDXTicket";
      v21[0] = v15;
      v21[1] = ticket;
      -[CDXClient setError:](cDXClient, "setError:", [v13 errorWithDomain:v14 code:v9 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v21, v20, 2)}]);
      decryptCopy = 0;
    }

    else
    {
      [v7 setLength:v19];
      decryptCopy = v7;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return decryptCopy;
}

- (id)encrypt:(id)encrypt
{
  encryptCopy = encrypt;
  iv[2] = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (self->sessionKey_)
  {
    v5 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(encrypt, "length") + 16}];
    iv[0] = *([(NSData *)self->ticket_ bytes]+ 4);
    iv[1] = *([(NSData *)self->ticket_ bytes]+ 4);
    LOBYTE(iv[0]) |= [(NSData *)self->ticket_ CDXTicketPID];
    v6 = CCCrypt(0, 0, 1u, -[NSData bytes](self->sessionKeyPrepped_, "bytes"), -[NSData length](self->sessionKeyPrepped_, "length"), iv, [encryptCopy bytes], objc_msgSend(encryptCopy, "length"), objc_msgSend(v5, "mutableBytes"), objc_msgSend(v5, "length"), &v17);
    if (v6)
    {
      v7 = v6;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          v16 = [-[CDXClientSession description](self "description")];
          *buf = 136316162;
          v21 = v8;
          v22 = 2080;
          v23 = "[CDXClientSession encrypt:]";
          v24 = 1024;
          v25 = 531;
          v26 = 2080;
          v27 = v16;
          v28 = 1024;
          v29 = v7;
          _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, "CDXClient [%s] %s:%d %s: Encryption failed: CCCrypt() returned error %d", buf, 0x2Cu);
        }
      }

      cDXClient = [(CDXClientSession *)self CDXClient];
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA590];
      v18[0] = *MEMORY[0x277CCA450];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Encryption failed. (CCCrypt error %d)", v7];
      v18[1] = @"CDXTicket";
      v19[0] = v13;
      v19[1] = [(CDXClientSession *)self ticket];
      -[CDXClient setError:](cDXClient, "setError:", [v11 errorWithDomain:v12 code:v7 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v19, v18, 2)}]);
      encryptCopy = 0;
    }

    else
    {
      [v5 setLength:v17];
      encryptCopy = v5;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return encryptCopy;
}

- (BOOL)sendRaw:(id)raw toParticipants:(id)participants
{
  v33 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  v8 = [(CDXClientSession *)self encrypt:raw];
  if (v8)
  {
    v9 = v8;
    [data appendData:self->ticket_];
    if (participants)
    {
      mutableBytes = [data mutableBytes];
      v11 = (mutableBytes + [data length]);
      cDXTicketPCNT = [(NSData *)self->ticket_ CDXTicketPCNT];
      mutableCDXTicket = [data mutableCDXTicket];
      *mutableCDXTicket |= 2u;
      v14 = (cDXTicketPCNT + 7) / 8;
      [data increaseLengthBy:v14];
      bzero(v11, v14);
      if (cDXTicketPCNT >= 1)
      {
        v15 = 0;
        v16 = cDXTicketPCNT & 0x7FFFFFFF;
        do
        {
          if ([participants containsIndex:v15])
          {
            *(v11 + (v15 >> 3)) |= 0x80u >> (v15 & 7);
          }

          ++v15;
        }

        while (v16 != v15);
      }
    }

    [data appendData:v9];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v18 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 8)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *v18;
      v21 = *v18;
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          [data length];
          *v32 = 136315906;
          *&v32[4] = v19;
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_4();
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d packet length before CDXClientSession sendData. length=%lu", v32, 0x26u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [data length];
        *v32 = 136315906;
        *&v32[4] = v19;
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_4();
        _os_log_debug_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEBUG, "CDXClient [%s] %s:%d packet length before CDXClientSession sendData. length=%lu", v32, 0x26u);
      }
    }

    if ([data length] < 0x5DC)
    {
      goto LABEL_23;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_23;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *v18;
      if (!os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      [data length];
      *v32 = 136316162;
      *&v32[4] = v22;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_12();
      v24 = &dword_24E50C000;
      v25 = "CDXClient [%s] %s:%d packet length is over kCDXMTU_SIZE when CDXClientSession sendData. length=%lu. Data will not be sent! kCDXMTU_SIZE=%d";
      v26 = v32;
      v27 = v23;
      v28 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(CDXClientSession *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_23;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      [data length];
      *v32 = 136316674;
      *&v32[4] = v29;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_21();
      v28 = 64;
    }

    _os_log_error_impl(v24, v27, OS_LOG_TYPE_ERROR, v25, v26, v28);
LABEL_23:
    LOBYTE(v8) = [data length] <= 0x5DB && -[CDXClient sendRaw:](self->CDXClient_, "sendRaw:", data);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)sendData:(id)data toParticipants:(id)participants
{
  v52 = *MEMORY[0x277D85DE8];
  if (!data)
  {
    goto LABEL_40;
  }

  if (participants)
  {
    v9 = [participants count];
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  data = [MEMORY[0x277CBEB28] data];
  [data increaseLengthBy:8];
  [data appendData:data];
  mutableBytes = [data mutableBytes];
  *mutableBytes = 512;
  v12 = self->seq_ + 1;
  self->seq_ = v12;
  *(mutableBytes + 4) = v12;
  *(mutableBytes + 2) = bswap32([data length] - 8) >> 16;
  if (!participants)
  {
    self->ack_[self->pid_] = self->seq_;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v14 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_13())
    {
      *v43 = 136315650;
      *&v43[4] = v5;
      OUTLINED_FUNCTION_0();
      v45 = 626;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d send-data", v43, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_13())
    {
      v15 = [-[CDXClientSession description](self "description")];
      v16 = *(mutableBytes + 4);
      if (participants)
      {
        v17 = [objc_msgSend(participants "description")];
      }

      else
      {
        v17 = "everyone-who-isn't-me";
      }

      *v43 = 136316418;
      *&v43[4] = v5;
      *&v43[12] = 2080;
      *&v43[14] = "[CDXClientSession sendData:toParticipants:]";
      v44 = 1024;
      v45 = 628;
      v46 = 2080;
      v47 = v15;
      v48 = 1024;
      v49 = v16;
      v50 = 2080;
      v51 = v17;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Sending out packet seq=%d. toParticipants:%s", v43, 0x36u);
    }
  }

  if ([participants count] == 1)
  {
    firstIndex = [participants firstIndex];
    if (firstIndex < [(NSData *)self->ticket_ CDXTicketPCNT])
    {
      *(mutableBytes + 1) |= 1u;
      ack = self->ack_;
      *(mutableBytes + 6) = ack[[participants firstIndex]];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *v14;
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        [data length];
        *v43 = 136315906;
        *&v43[4] = v20;
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_21();
        _os_log_impl(v22, v23, OS_LOG_TYPE_DEFAULT, v24, v25, 0x26u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [data length];
      *v43 = 136315906;
      *&v43[4] = v20;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_21();
      _os_log_debug_impl(v30, v31, OS_LOG_TYPE_DEBUG, v32, v33, 0x26u);
    }
  }

  if ([data length] >= 0x5DC)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
LABEL_40:
        LOBYTE(v9) = 0;
        goto LABEL_29;
      }

      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *v14;
      LODWORD(v9) = os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        goto LABEL_29;
      }

      [data length];
      *v43 = 136316162;
      *&v43[4] = v34;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_12();
      v36 = &dword_24E50C000;
      v37 = "CDXClient [%s] %s:%d MTU LIMIT HIT! data length is over kCDXMTU_SIZE while CDXClient sendData. length=%lu. Data will not be sent. kCDXMTU_SIZE=%d";
      v38 = v43;
      v39 = v35;
      v40 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(CDXClientSession *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_40;
      }

      v41 = VRTraceErrorLogLevelToCSTR();
      LODWORD(v9) = os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR);
      if (!v9)
      {
        goto LABEL_29;
      }

      [data length];
      *v43 = 136316674;
      *&v43[4] = v41;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_21();
      v40 = 64;
    }

    _os_log_error_impl(v36, v39, OS_LOG_TYPE_ERROR, v37, v38, v40);
    goto LABEL_40;
  }

  v26 = self->lastSent_;
  self->lastSent_ = [data copyWithZone:{-[CDXClientSession zone](self, "zone")}];
  [(CDXClientSession *)self resetRetransmitTimer];
  participantsInFlight = self->participantsInFlight_;
  if (participants)
  {
    v28 = [participants mutableCopyWithZone:{-[CDXClientSession zone](self, "zone")}];
  }

  else
  {
    v28 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, -[NSData CDXTicketPCNT](self->ticket_, "CDXTicketPCNT")}];
  }

  self->participantsInFlight_ = v28;

  LOBYTE(v9) = [(CDXClientSession *)self sendRaw:data toParticipants:participants];
LABEL_29:
  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)recvRaw:(id)raw ticket:(id)ticket
{
  v80 = *MEMORY[0x277D85DE8];
  cDXTicketPID = [ticket CDXTicketPID];
  v11 = [(CDXClientSession *)self decrypt:raw ticket:ticket];
  if (v11)
  {
    v12 = v11;
    if ([v11 length] >= 8)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v14 = MEMORY[0x277CE5818];
      if (ErrorLogLevelForModule >= 6)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_13())
        {
          if (self)
          {
            v5 = [-[CDXClientSession description](self "description")];
          }

          else
          {
            v5 = "<nil>";
          }

          *buf = 136316674;
          v67 = v4;
          v68 = 2080;
          v69 = "[CDXClientSession recvRaw:ticket:]";
          v70 = 1024;
          v71 = 671;
          v72 = 2080;
          v73 = v5;
          v74 = 2080;
          Name = sel_getName(a2);
          v76 = 1024;
          v77 = cDXTicketPID;
          v78 = 2080;
          v79 = [objc_msgSend(v12 "description")];
          _os_log_impl(&dword_24E50C000, raw, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: %s PID=%d, %s", buf, 0x40u);
          v14 = MEMORY[0x277CE5818];
        }
      }

      bytes = [v12 bytes];
      if (!*bytes)
      {
        v16 = bytes;
        v17 = Te2 + 488;
        if (bytes[1])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            VRTraceErrorLogLevelToCSTR();
            if (OUTLINED_FUNCTION_14())
            {
              if (self)
              {
                v18 = [-[CDXClientSession description](self "description")];
              }

              else
              {
                v18 = "<nil>";
              }

              sel_getName(a2);
              v19 = *(v16 + 3);
              seq = self->seq_;
              *buf = 136316674;
              v67 = v5;
              OUTLINED_FUNCTION_7();
              v71 = 679;
              v72 = v21;
              v73 = v18;
              v74 = v21;
              Name = v22;
              v76 = v23;
              v77 = v24;
              v78 = v23;
              LODWORD(v79) = v25;
              OUTLINED_FUNCTION_18();
              _os_log_impl(v26, v27, v28, v29, v30, 0x3Cu);
              v17 = &Te2[122];
            }
          }

          if (*(v16 + 3) == self->seq_)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              VRTraceErrorLogLevelToCSTR();
              if (OUTLINED_FUNCTION_14())
              {
                v31 = [-[CDXClientSession description](self "description")];
                v32 = a2;
                v33 = v17;
                v34 = v31;
                sel_getName(v32);
                *buf = *(v33 + 198);
                v67 = v5;
                OUTLINED_FUNCTION_5();
                v71 = 681;
                v72 = v35;
                v73 = v34;
                v17 = v33;
                v74 = v35;
                Name = v36;
                v76 = v37;
                v77 = v38;
                OUTLINED_FUNCTION_18();
                _os_log_impl(v39, v40, v41, v42, v43, 0x36u);
              }
            }

            [(NSMutableIndexSet *)self->participantsInFlight_ removeIndex:cDXTicketPID];
            if (![(NSMutableIndexSet *)self->participantsInFlight_ count])
            {
              [(CDXClientSession *)self stopRetransmitTimer];
            }
          }
        }

        if ((v16[1] & 2) != 0)
        {
          v44 = (bswap32(*(v16 + 1)) >> 16) + 8;
          if (v44 <= [v12 length])
          {
            v45 = *(v16 + 2);
            ack = self->ack_;
            v47 = cDXTicketPID;
            if (v45 <= ack[cDXTicketPID])
            {
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v55 = VRTraceErrorLogLevelToCSTR();
                v56 = *v14;
                if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
                {
                  [-[CDXClientSession description](self "description")];
                  v57 = *(v16 + 2);
                  *buf = *(v17 + 198);
                  v67 = v55;
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_11();
                  _os_log_impl(&dword_24E50C000, v56, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Received DUPLICATE packet %d from participant %d.", buf, 0x32u);
                }
              }
            }

            else
            {
              ack[cDXTicketPID] = v45;
              inboundHandler = self->inboundHandler_;
              if (inboundHandler)
              {
                inboundHandler[2](inboundHandler, cDXTicketPID, v12);
              }

              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                VRTraceErrorLogLevelToCSTR();
                if (OUTLINED_FUNCTION_14())
                {
                  [-[CDXClientSession description](self "description")];
                  v49 = *(v16 + 2);
                  *buf = *(v17 + 198);
                  v67 = v5;
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_11();
                  OUTLINED_FUNCTION_18();
                  _os_log_impl(v50, v51, v52, v53, v54, 0x32u);
                }
              }

              -[CDXClientSessionDelegate CDXClientSession:receivedData:from:](self->delegate_, "CDXClientSession:receivedData:from:", self, [v12 subdataWithRange:{8, objc_msgSend(v12, "length") - 8}], cDXTicketPID);
            }

            v63 = 256;
            v64 = self->seq_;
            v65 = self->ack_[cDXTicketPID];
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v58 = VRTraceErrorLogLevelToCSTR();
              v59 = *v14;
              v60 = *v14;
              if (*MEMORY[0x277CE5808] == 1)
              {
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  [-[CDXClientSession description](self "description")];
                  *buf = 136316162;
                  v67 = v58;
                  OUTLINED_FUNCTION_5();
                  OUTLINED_FUNCTION_16();
                  _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Sending ACK to %d.", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                [-[CDXClientSession description](self "description")];
                *buf = 136316162;
                v67 = v58;
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_16();
                _os_log_debug_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEBUG, "CDXClient [%s] %s:%d %s: Sending ACK to %d.", buf, 0x2Cu);
              }
            }

            v61 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v63 length:8 freeWhenDone:0];
            -[CDXClientSession sendRaw:toParticipants:](self, "sendRaw:toParticipants:", v61, [MEMORY[0x277CCAA78] indexSetWithIndex:v47]);
          }
        }
      }
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)retransmitEvent
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 56);
  v7 = 136315906;
  selfCopy = self;
  v9 = 2080;
  OUTLINED_FUNCTION_3();
  v10 = 338;
  v11 = v3;
  v12 = v4;
  _os_log_debug_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEBUG, "CDXClient [%s] %s:%d retransmitAttempts = %d", &v7, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

@end