@interface NPKIDSHeartbeat
- (NPKIDSHeartbeat)initWithPendingStatusProtobuf:(id)a3 service:(id)a4 priority:(int64_t)a5 maxUpdates:(unint64_t)a6 responseIdentifier:(id)a7 sendOptions:(id)a8 queue:(id)a9 updateInterval:(double)a10;
- (void)_sendHeartbeat;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NPKIDSHeartbeat

- (NPKIDSHeartbeat)initWithPendingStatusProtobuf:(id)a3 service:(id)a4 priority:(int64_t)a5 maxUpdates:(unint64_t)a6 responseIdentifier:(id)a7 sendOptions:(id)a8 queue:(id)a9 updateInterval:(double)a10
{
  v51 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v40 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v44.receiver = self;
  v44.super_class = NPKIDSHeartbeat;
  v21 = [(NPKIDSHeartbeat *)&v44 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_pendingStatusProtobuf, a3);
    objc_storeStrong(&v22->_service, a4);
    v22->_messagePriority = a5;
    objc_storeStrong(&v22->_responseIdentifier, a7);
    v23 = [v19 copy];
    sendOptions = v22->_sendOptions;
    v22->_sendOptions = v23;

    objc_storeStrong(&v22->_queue, a9);
    v22->_updatesSent = 0;
    v22->_maxUpdates = a6;
    v25 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v22->_queue);
    statusTimer = v22->_statusTimer;
    v22->_statusTimer = v25;

    if (a10 <= 0.0)
    {
      v27 = 30000000000;
    }

    else
    {
      v27 = (a10 * 1000000000.0);
    }

    v28 = v22->_statusTimer;
    v29 = dispatch_time(0, v27);
    dispatch_source_set_timer(v28, v29, v27, 0);
    v30 = v22->_statusTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __129__NPKIDSHeartbeat_initWithPendingStatusProtobuf_service_priority_maxUpdates_responseIdentifier_sendOptions_queue_updateInterval___block_invoke;
    handler[3] = &unk_279944F98;
    v31 = v22;
    v43 = v31;
    dispatch_source_set_event_handler(v30, handler);
    dispatch_resume(v22->_statusTimer);
    v32 = pk_Payment_log();
    LODWORD(v28) = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v33 = pk_Payment_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(NPKIDSHeartbeat *)v31 service];
        v35 = [(NPKIDSHeartbeat *)v31 pendingStatusProtobuf];
        v36 = [v35 type];
        v37 = [(NPKIDSHeartbeat *)v31 responseIdentifier];
        *buf = 138412802;
        v46 = v34;
        v47 = 1024;
        v48 = v36;
        v49 = 2112;
        v50 = v37;
        _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: Started providing periodic updates:\n\tservice: %@\n\tmessage type: %u\n\tresponse identifier: %@", buf, 0x1Cu);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NPKIDSHeartbeat *)self responseIdentifier];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning service agent status updater invalidating: %@", &v10, 0xCu);
    }
  }

  v7 = [(NPKIDSHeartbeat *)self statusTimer];
  v8 = v7;
  if (v7)
  {
    dispatch_source_cancel(v7);
    [(NPKIDSHeartbeat *)self setStatusTimer:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NPKIDSHeartbeat *)self invalidate];
  v3.receiver = self;
  v3.super_class = NPKIDSHeartbeat;
  [(NPKIDSHeartbeat *)&v3 dealloc];
}

- (void)_sendHeartbeat
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NPKIDSHeartbeat *)self responseIdentifier];
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Sending heartbeat for response identifer: %@", buf, 0xCu);
    }
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(NPKIDSHeartbeat *)self sendOptions];

  if (v8)
  {
    v9 = [(NPKIDSHeartbeat *)self sendOptions];
    [v7 addEntriesFromDictionary:v9];
  }

  v10 = [(NPKIDSHeartbeat *)self responseIdentifier];

  if (v10)
  {
    v11 = [(NPKIDSHeartbeat *)self responseIdentifier];
    [v7 setObject:v11 forKey:*MEMORY[0x277D18630]];
  }

  v12 = [(NPKIDSHeartbeat *)self service];
  v13 = [(NPKIDSHeartbeat *)self pendingStatusProtobuf];
  v14 = [(NPKIDSHeartbeat *)self messagePriority];
  v15 = [(NPKIDSHeartbeat *)self responseIdentifier];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __33__NPKIDSHeartbeat__sendHeartbeat__block_invoke;
  v24[3] = &unk_279945058;
  v24[4] = self;
  v16 = NPKProtoSendWithOptions(v12, v13, v14, v15, 0, v24, v7);

  [(NPKIDSHeartbeat *)self setUpdatesSent:[(NPKIDSHeartbeat *)self updatesSent]+ 1];
  v17 = [(NPKIDSHeartbeat *)self updatesSent];
  if (v17 >= [(NPKIDSHeartbeat *)self maxUpdates])
  {
    v18 = pk_Payment_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = pk_Payment_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(NPKIDSHeartbeat *)self maxUpdates];
        v22 = [(NPKIDSHeartbeat *)self responseIdentifier];
        *buf = 134218242;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Warning: Reached limit of %lu heartbeats for response identifier %@; will not send further updates.", buf, 0x16u);
      }
    }

    [(NPKIDSHeartbeat *)self invalidate];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __33__NPKIDSHeartbeat__sendHeartbeat__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) service];
      v6 = [*(a1 + 32) pendingStatusProtobuf];
      v7 = [v6 type];
      v8 = [*(a1 + 32) responseIdentifier];
      v10 = 138412802;
      v11 = v5;
      v12 = 1024;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: Not able to send heartbeat:\n\tservice: %@\n\tmessage type: %u\n\tresponse identifier: %@", &v10, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end