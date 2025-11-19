@interface NFMIDSServiceDelegate
- (NFMIDSServiceDelegate)init;
- (id)_sendProtoBuf:(id)a3 service:(id)a4 priority:(int64_t)a5 responseIdentifier:(id)a6 expectsResponse:(BOOL)a7;
- (void)_enqueueMessage:(id)a3 service:(id)a4 priority:(int64_t)a5 responseIdentifier:(id)a6 expectsResponse:(BOOL)a7 retryCount:(int64_t)a8 retryInterval:(double)a9 idsIdentifier:(id)a10;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation NFMIDSServiceDelegate

- (NFMIDSServiceDelegate)init
{
  v8.receiver = self;
  v8.super_class = NFMIDSServiceDelegate;
  v2 = [(NFMIDSServiceDelegate *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inflightMessages = v2->_inflightMessages;
    v2->_inflightMessages = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessages = v2->_pendingMessages;
    v2->_pendingMessages = v5;
  }

  return v2;
}

- (id)_sendProtoBuf:(id)a3 service:(id)a4 priority:(int64_t)a5 responseIdentifier:(id)a6 expectsResponse:(BOOL)a7
{
  v7 = a7;
  v27 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = a4;
  v14 = nfm_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v24 = 60;
    v25 = 2080;
    v26 = "[NFMIDSServiceDelegate _sendProtoBuf:service:priority:responseIdentifier:expectsResponse:]";
    _os_log_impl(&dword_25B17F000, v14, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__NFMIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke;
  v20[3] = &unk_2799338B8;
  v21 = v12;
  v22 = v11;
  v15 = v11;
  v16 = v12;
  v17 = NFMProtoSend(v13, v15, a5, v16, v7, v20);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __91__NFMIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nfm_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __91__NFMIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke_cold_1(a1, v3, v4);
  }
}

- (void)_enqueueMessage:(id)a3 service:(id)a4 priority:(int64_t)a5 responseIdentifier:(id)a6 expectsResponse:(BOOL)a7 retryCount:(int64_t)a8 retryInterval:(double)a9 idsIdentifier:(id)a10
{
  v42 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a10;
  v21 = nfm_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    buf = 0x4604000202;
    v40 = 2080;
    v41 = "[NFMIDSServiceDelegate _enqueueMessage:service:priority:responseIdentifier:expectsResponse:retryCount:retryInterval:idsIdentifier:]";
    _os_log_impl(&dword_25B17F000, v21, OS_LOG_TYPE_DEFAULT, "%d %s", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __132__NFMIDSServiceDelegate__enqueueMessage_service_priority_responseIdentifier_expectsResponse_retryCount_retryInterval_idsIdentifier___block_invoke;
  v33 = &unk_2799338E0;
  objc_copyWeak(v37, &buf);
  v22 = v17;
  v34 = v22;
  v23 = v18;
  v35 = v23;
  v37[1] = a5;
  v24 = v19;
  v36 = v24;
  v38 = a7;
  v25 = MEMORY[0x25F8637B0](&v30);
  inflightMessages = self->_inflightMessages;
  v27 = 0.0;
  if (a9 >= 0.0)
  {
    v27 = a9;
  }

  v28 = [NFMIDSMessageInstance newMessageInstanceWithAction:v25 retryCount:a8 & ~(a8 >> 63) retryInterval:v27, v30, v31, v32, v33];
  [(NSMutableDictionary *)inflightMessages setObject:v28 forKey:v20];

  objc_destroyWeak(v37);
  objc_destroyWeak(&buf);

  v29 = *MEMORY[0x277D85DE8];
}

void __132__NFMIDSServiceDelegate__enqueueMessage_service_priority_responseIdentifier_expectsResponse_retryCount_retryInterval_idsIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained _sendProtoBuf:*(a1 + 32) service:*(a1 + 40) priority:*(a1 + 64) responseIdentifier:*(a1 + 48) expectsResponse:*(a1 + 72)];
}

uint64_t __115__NFMIDSServiceDelegate_sendProtoBuf_service_priority_responseIdentifier_expectsResponse_retryCount_retryInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sendProtoBuf:*(a1 + 40) service:*(a1 + 48) priority:*(a1 + 64) responseIdentifier:*(a1 + 56) expectsResponse:*(a1 + 88)];
  if (v2)
  {
    [*(a1 + 32) _enqueueMessage:*(a1 + 40) service:*(a1 + 48) priority:*(a1 + 64) responseIdentifier:*(a1 + 56) expectsResponse:*(a1 + 88) retryCount:*(a1 + 72) retryInterval:*(a1 + 80) idsIdentifier:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = a7;
  v12 = nfm_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 138413058;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 1024;
    v21 = [v9 type];
    _os_log_error_impl(&dword_25B17F000, v12, OS_LOG_TYPE_ERROR, "########### incomingUnhandledProtobuf: %@ from: %@ context: %@ type: %d", &v14, 0x26u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = nfm_log();
  v17 = v16;
  if (v15 || !a6)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v30 = v14;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v15;
      _os_log_error_impl(&dword_25B17F000, v17, OS_LOG_TYPE_ERROR, "########### Failed to send message ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
    }

    v18 = [(NSMutableDictionary *)self->_inflightMessages objectForKey:v14];
    if ([v18 retryCount] < 1)
    {
      if (!v18)
      {
LABEL_16:

        goto LABEL_17;
      }

      v22 = nfm_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v30 = v14;
        v31 = 2112;
        v32 = v12;
        v33 = 2112;
        v34 = v13;
        v35 = 2112;
        v36 = v15;
        _os_log_error_impl(&dword_25B17F000, v22, OS_LOG_TYPE_ERROR, "########### Failed fallback attempt(s) for message ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
      }
    }

    else
    {
      v19 = nfm_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v30 = v14;
        v31 = 2112;
        v32 = v12;
        v33 = 2112;
        v34 = v13;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&dword_25B17F000, v19, OS_LOG_TYPE_DEFAULT, "########### Attempt fallback message send for ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
      }

      [(NSMutableDictionary *)self->_inflightMessages removeObjectForKey:v14];
      [v18 setRetryCount:{objc_msgSend(v18, "retryCount") - 1}];
      [(NSMutableDictionary *)self->_pendingMessages setObject:v18 forKey:v14];
      [v18 retryInterval];
      v21 = dispatch_time(0, (v20 * 1000000000.0));
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __77__NFMIDSServiceDelegate_service_account_identifier_didSendWithSuccess_error___block_invoke;
      v24[3] = &unk_279933930;
      v25 = v14;
      v26 = v12;
      v27 = v13;
      v28 = self;
      dispatch_after(v21, MEMORY[0x277D85CD0], v24);

      v22 = v25;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v14;
    _os_log_impl(&dword_25B17F000, v17, OS_LOG_TYPE_DEFAULT, "########### Success Sending Message ID: %@", buf, 0xCu);
  }

  [(NSMutableDictionary *)self->_inflightMessages removeObjectForKey:v14];
  [(NSMutableDictionary *)self->_pendingMessages removeObjectForKey:v14];
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
}

void __77__NFMIDSServiceDelegate_service_account_identifier_didSendWithSuccess_error___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = nfm_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25B17F000, v2, OS_LOG_TYPE_DEFAULT, "########### Firing fallback message ID: %@ (%@ -- %@)", &v11, 0x20u);
  }

  v6 = [*(a1[7] + 16) objectForKey:a1[4]];
  v7 = nfm_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_25B17F000, v7, OS_LOG_TYPE_DEFAULT, "########### Firing messageInstance %@", &v11, 0xCu);
  }

  if (v6)
  {
    v8 = [v6 retryAction];

    if (v8)
    {
      [*(a1[7] + 8) setObject:v6 forKey:a1[4]];
      v9 = [v6 retryAction];
      v9[2]();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __91__NFMIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = @"Response ";
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = 138413314;
  if (!v4)
  {
    v3 = &stru_286C63C98;
  }

  v8 = v3;
  v9 = 1024;
  v10 = 62;
  v11 = 2080;
  v12 = "[NFMIDSServiceDelegate _sendProtoBuf:service:priority:responseIdentifier:expectsResponse:]_block_invoke";
  v13 = 2112;
  v14 = v5;
  v15 = 2112;
  v16 = a2;
  _os_log_error_impl(&dword_25B17F000, log, OS_LOG_TYPE_ERROR, "########### Failed to send IDS %@Protobuf (%d %s) -- %@ (Error: %@)", &v7, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

@end