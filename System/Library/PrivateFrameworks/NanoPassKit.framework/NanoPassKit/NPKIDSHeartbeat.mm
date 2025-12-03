@interface NPKIDSHeartbeat
- (NPKIDSHeartbeat)initWithPendingStatusProtobuf:(id)protobuf service:(id)service priority:(int64_t)priority maxUpdates:(unint64_t)updates responseIdentifier:(id)identifier sendOptions:(id)options queue:(id)queue updateInterval:(double)self0;
- (void)_sendHeartbeat;
- (void)dealloc;
- (void)invalidate;
@end

@implementation NPKIDSHeartbeat

- (NPKIDSHeartbeat)initWithPendingStatusProtobuf:(id)protobuf service:(id)service priority:(int64_t)priority maxUpdates:(unint64_t)updates responseIdentifier:(id)identifier sendOptions:(id)options queue:(id)queue updateInterval:(double)self0
{
  v51 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  serviceCopy = service;
  identifierCopy = identifier;
  optionsCopy = options;
  queueCopy = queue;
  v44.receiver = self;
  v44.super_class = NPKIDSHeartbeat;
  v21 = [(NPKIDSHeartbeat *)&v44 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_pendingStatusProtobuf, protobuf);
    objc_storeStrong(&v22->_service, service);
    v22->_messagePriority = priority;
    objc_storeStrong(&v22->_responseIdentifier, identifier);
    v23 = [optionsCopy copy];
    sendOptions = v22->_sendOptions;
    v22->_sendOptions = v23;

    objc_storeStrong(&v22->_queue, queue);
    v22->_updatesSent = 0;
    v22->_maxUpdates = updates;
    v25 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v22->_queue);
    statusTimer = v22->_statusTimer;
    v22->_statusTimer = v25;

    if (interval <= 0.0)
    {
      v27 = 30000000000;
    }

    else
    {
      v27 = (interval * 1000000000.0);
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
        service = [(NPKIDSHeartbeat *)v31 service];
        pendingStatusProtobuf = [(NPKIDSHeartbeat *)v31 pendingStatusProtobuf];
        type = [pendingStatusProtobuf type];
        responseIdentifier = [(NPKIDSHeartbeat *)v31 responseIdentifier];
        *buf = 138412802;
        v46 = service;
        v47 = 1024;
        v48 = type;
        v49 = 2112;
        v50 = responseIdentifier;
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
      responseIdentifier = [(NPKIDSHeartbeat *)self responseIdentifier];
      v10 = 138412290;
      v11 = responseIdentifier;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning service agent status updater invalidating: %@", &v10, 0xCu);
    }
  }

  statusTimer = [(NPKIDSHeartbeat *)self statusTimer];
  v8 = statusTimer;
  if (statusTimer)
  {
    dispatch_source_cancel(statusTimer);
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
      responseIdentifier = [(NPKIDSHeartbeat *)self responseIdentifier];
      *buf = 138412290;
      v26 = responseIdentifier;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Sending heartbeat for response identifer: %@", buf, 0xCu);
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sendOptions = [(NPKIDSHeartbeat *)self sendOptions];

  if (sendOptions)
  {
    sendOptions2 = [(NPKIDSHeartbeat *)self sendOptions];
    [dictionary addEntriesFromDictionary:sendOptions2];
  }

  responseIdentifier2 = [(NPKIDSHeartbeat *)self responseIdentifier];

  if (responseIdentifier2)
  {
    responseIdentifier3 = [(NPKIDSHeartbeat *)self responseIdentifier];
    [dictionary setObject:responseIdentifier3 forKey:*MEMORY[0x277D18630]];
  }

  service = [(NPKIDSHeartbeat *)self service];
  pendingStatusProtobuf = [(NPKIDSHeartbeat *)self pendingStatusProtobuf];
  messagePriority = [(NPKIDSHeartbeat *)self messagePriority];
  responseIdentifier4 = [(NPKIDSHeartbeat *)self responseIdentifier];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __33__NPKIDSHeartbeat__sendHeartbeat__block_invoke;
  v24[3] = &unk_279945058;
  v24[4] = self;
  v16 = NPKProtoSendWithOptions(service, pendingStatusProtobuf, messagePriority, responseIdentifier4, 0, v24, dictionary);

  [(NPKIDSHeartbeat *)self setUpdatesSent:[(NPKIDSHeartbeat *)self updatesSent]+ 1];
  updatesSent = [(NPKIDSHeartbeat *)self updatesSent];
  if (updatesSent >= [(NPKIDSHeartbeat *)self maxUpdates])
  {
    v18 = pk_Payment_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = pk_Payment_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        maxUpdates = [(NPKIDSHeartbeat *)self maxUpdates];
        responseIdentifier5 = [(NPKIDSHeartbeat *)self responseIdentifier];
        *buf = 134218242;
        v26 = maxUpdates;
        v27 = 2112;
        v28 = responseIdentifier5;
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