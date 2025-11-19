@interface PBBridgeIDSServiceDelegate
- (BOOL)connectionStateWithDevices:(id)a3 accounts:(id)a4;
- (BOOL)reportConnectionForService:(id)a3 accounts:(id)a4 devices:(id)a5;
- (id)_sendProtoBuf:(id)a3 service:(id)a4 priority:(int64_t)a5 responseIdentifier:(id)a6 expectsResponse:(BOOL)a7;
- (void)_postMessageSendFailureForErrorMessage:(id)a3;
- (void)beginSetupTransaction;
- (void)cancelReachabilityTimer;
- (void)checkReachability;
- (void)endSetupTransaction;
- (void)resetTransportReachabilityTimer;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)setShouldSuppressTransportReachabilityTimeout:(BOOL)a3;
- (void)startReachabilityTimer;
- (void)stopListeningForIDSSentMessages;
- (void)transportBecameReachable;
- (void)transportBecameUnreachable;
- (void)updateConnectivityTimer:(BOOL)a3;
@end

@implementation PBBridgeIDSServiceDelegate

- (void)beginSetupTransaction
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "BEGAN TRANSACTION!", &v15, 2u);
  }

  if (self->_service)
  {
    v4 = pbb_setupflow_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(PBBridgeIDSServiceDelegate *)v4 beginSetupTransaction];
    }
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277D18778]);
    v6 = [(PBBridgeIDSServiceDelegate *)self serviceIdentifier];
    v7 = [v5 initWithService:v6];
    service = self->_service;
    self->_service = v7;

    [(PBBridgeIDSServiceDelegate *)self setupServiceMessageSelectorMappings];
    [(IDSService *)self->_service addDelegate:self queue:MEMORY[0x277D85CD0]];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inflightMessages = self->_inflightMessages;
    self->_inflightMessages = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessages = self->_pendingMessages;
    self->_pendingMessages = v11;

    self->_listeningForIDSSentMessages = 1;
    v4 = pbb_setupflow_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_service;
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Created Service (%@) and set (%@) as delegate", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)endSetupTransaction
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "ENDED TRANSACTION!", &v11, 2u);
  }

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    v11 = 138412546;
    v12 = service;
    v13 = 2112;
    v14 = self;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Destroyed Service (%@) and removed (%@) as delegate", &v11, 0x16u);
  }

  [(IDSService *)self->_service removeDelegate:self];
  v6 = self->_service;
  self->_service = 0;

  [(NSMutableDictionary *)self->_inflightMessages removeAllObjects];
  inflightMessages = self->_inflightMessages;
  self->_inflightMessages = 0;

  [(NSMutableDictionary *)self->_pendingMessages removeAllObjects];
  pendingMessages = self->_pendingMessages;
  self->_pendingMessages = 0;

  [(NSTimer *)self->_transportReachabilityTimer invalidate];
  transportReachabilityTimer = self->_transportReachabilityTimer;
  self->_transportReachabilityTimer = 0;

  self->_shouldSuppressTransportReachabilityTimeout = 0;
  self->_listeningForIDSSentMessages = 0;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_postMessageSendFailureForErrorMessage:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_listeningForIDSSentMessages)
  {
    if (PBIsInternalInstall())
    {
      v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v6 = [v5 BOOLForKey:@"SuppressMessageFailError"];

      if ((v6 & 1) == 0)
      {
        v7 = [MEMORY[0x277CCAB98] defaultCenter];
        v10 = @"PBBridgeMessageError";
        v11[0] = v4;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
        [v7 postNotificationName:@"PBBridgeMessageFailedToSend" object:0 userInfo:v8];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_sendProtoBuf:(id)a3 service:(id)a4 priority:(int64_t)a5 responseIdentifier:(id)a6 expectsResponse:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a6;
  v14 = v13;
  if (self->_service)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__PBBridgeIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke;
    v18[3] = &unk_2799F4B20;
    v19 = v13;
    v20 = v12;
    v21 = self;
    v15 = PBProtoSend(a4, v20, a5, v19, v7, v18);

    v16 = v19;
  }

  else
  {
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [PBBridgeIDSServiceDelegate _sendProtoBuf:v14 service:v12 priority:v16 responseIdentifier:? expectsResponse:?];
    }

    v15 = 0;
  }

  return v15;
}

void __96__PBBridgeIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __96__PBBridgeIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 48);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to Send Message (Pre-Send): %@", *(a1 + 40)];
  [v5 _postMessageSendFailureForErrorMessage:v6];
}

- (BOOL)connectionStateWithDevices:(id)a3 accounts:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
  v8 = "ompanionController refreshTimeoutTimerWithNewActivationGranularState:]_block_invoke";
  if (v7)
  {
    v9 = v7;
    v25 = v5;
    v10 = *v33;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = pbb_setupflow_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 canSend];
          *buf = 138412546;
          v38 = v12;
          v39 = 1024;
          v40 = v14;
          _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "account: %@ canSend: %d", buf, 0x12u);
        }

        if ([v12 canSend])
        {
          v15 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_13:
    v5 = v25;
    v8 = "[PBBridgeCompanionController refreshTimeoutTimerWithNewActivationGranularState:]_block_invoke" + 11;
  }

  else
  {
    v15 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v26 = v15;
    v18 = *v29;
    v27 = *(v8 + 306);
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        v21 = [v20 isNearby];
        v22 = pbb_setupflow_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v38 = v20;
          v39 = 1024;
          v40 = v21;
          _os_log_impl(&dword_25DE64000, v22, OS_LOG_TYPE_DEFAULT, "device: %@ isNearby: %d", buf, 0x12u);
        }

        if (v21)
        {
          LOBYTE(v17) = 1;
          goto LABEL_27;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

LABEL_27:
    v15 = v26;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v15 & v17;
}

- (void)checkReachability
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(IDSService *)self->_service pb_mineTinkerDevices];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if ([v8 isDefaultPairedDevice])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = [v8 isNearby];

    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
  }

  if (self->_service)
  {
    [(PBBridgeIDSServiceDelegate *)self startReachabilityTimer];
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)startReachabilityTimer
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_transportReachabilityTimer && !self->_shouldSuppressTransportReachabilityTimeout)
  {
    v9 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_transportBecameUnreachable selector:0 userInfo:0 repeats:60.0];
    transportReachabilityTimer = self->_transportReachabilityTimer;
    self->_transportReachabilityTimer = v9;

    v11 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v11 addTimer:self->_transportReachabilityTimer forMode:*MEMORY[0x277CBE738]];

    v3 = pbb_setupflow_log();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    LOWORD(v12) = 0;
    v5 = "Started reachability timer.";
    v6 = v3;
    v7 = 2;
    goto LABEL_8;
  }

  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_shouldSuppressTransportReachabilityTimeout)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v12 = 138543362;
    v13 = v4;
    v5 = "Not starting reachability timer. (is suppressed? %{public}@)";
    v6 = v3;
    v7 = 12;
LABEL_8:
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, v5, &v12, v7);
  }

LABEL_9:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelReachabilityTimer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PBBridgeIDSServiceDelegate cancelReachabilityTimer]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(NSTimer *)self->_transportReachabilityTimer invalidate];
  transportReachabilityTimer = self->_transportReachabilityTimer;
  self->_transportReachabilityTimer = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetTransportReachabilityTimer
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PBBridgeIDSServiceDelegate resetTransportReachabilityTimer]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(PBBridgeIDSServiceDelegate *)self cancelReachabilityTimer];
  [(PBBridgeIDSServiceDelegate *)self startReachabilityTimer];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setShouldSuppressTransportReachabilityTimeout:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v8 = 136315394;
    v9 = "[PBBridgeIDSServiceDelegate setShouldSuppressTransportReachabilityTimeout:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s:%@", &v8, 0x16u);
  }

  if (self->_shouldSuppressTransportReachabilityTimeout != v3)
  {
    self->_shouldSuppressTransportReachabilityTimeout = v3;
    if (v3)
    {
      [(PBBridgeIDSServiceDelegate *)self cancelReachabilityTimer];
    }

    else
    {
      [(PBBridgeIDSServiceDelegate *)self checkReachability];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)transportBecameReachable
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "Transport became reachable.", v3, 2u);
  }
}

- (void)transportBecameUnreachable
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(PBBridgeIDSServiceDelegate *)v2 transportBecameUnreachable];
  }
}

- (void)stopListeningForIDSSentMessages
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[PBBridgeIDSServiceDelegate stopListeningForIDSSentMessages]";
  _os_log_error_impl(&dword_25DE64000, log, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateConnectivityTimer:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__PBBridgeIDSServiceDelegate_updateConnectivityTimer___block_invoke;
  v3[3] = &unk_2799F4760;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __54__PBBridgeIDSServiceDelegate_updateConnectivityTimer___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 8) & 1) == 0)
  {
    if ((*(a1 + 40) & 1) != 0 || !*(result + 16))
    {
      [result cancelReachabilityTimer];
      v3 = *(a1 + 32);

      return [v3 transportBecameReachable];
    }

    else
    {

      return [result startReachabilityTimer];
    }
  }

  return result;
}

- (BOOL)reportConnectionForService:(id)a3 accounts:(id)a4 devices:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PBBridgeIDSServiceDelegate *)self connectionStateWithDevices:v10 accounts:v9];
  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    v16 = 138413058;
    if (v11)
    {
      v13 = @"YES";
    }

    v17 = v13;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Connected: %@ (Service: %@ Accounts: %@ Devices: %@)", &v16, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Accounts Changed!", v10, 2u);
  }

  v9 = [v7 pb_mineTinkerDevices];
  [(PBBridgeIDSServiceDelegate *)self reportConnectionForService:v7 accounts:v6 devices:v9];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a3;
  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Devices Changed!", v10, 2u);
  }

  v7 = [v5 pb_mineTinkerDevices];
  v8 = [v5 accounts];
  v9 = [(PBBridgeIDSServiceDelegate *)self reportConnectionForService:v5 accounts:v8 devices:v7];

  [(PBBridgeIDSServiceDelegate *)self updateConnectivityTimer:v9];
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = a7;
  v12 = pbb_setupflow_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v14 = 138412802;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_fault_impl(&dword_25DE64000, v12, OS_LOG_TYPE_FAULT, "incomingUnhandledProtobuf: %@ from: %@ context: %@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = COERCE_DOUBLE(a4);
  v14 = a5;
  v15 = a7;
  v16 = [(NSMutableDictionary *)self->_inflightMessages objectForKey:v14];
  if (!v16)
  {
    v17 = pbb_setupflow_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 138413058;
    v40 = v14;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    v45 = 2112;
    v46 = *&v15;
    v19 = "Unknown message ID: %@ (%@ -- %@) Error: %@. Not taking any action.";
LABEL_16:
    _os_log_error_impl(&dword_25DE64000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x2Au);
    goto LABEL_25;
  }

  if (!v15 && a6)
  {
    kdebug_trace();
    v17 = [(NSMutableDictionary *)self->_pendingMessages objectForKey:v14];
    if ([v16 typeID]== 0xFFFF)
    {
      if ([v17 typeID]== 0xFFFF)
      {
        v26 = @"UNACCOUNTED MESSAGE!! Please file with Pepper Pairing!";
        goto LABEL_20;
      }

      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    v26 = [(PBBridgeIDSServiceDelegate *)self customDescriptionOfMessageType:[v18 typeID]];
LABEL_20:
    Current = CFAbsoluteTimeGetCurrent();
    v28 = [v16 sentAbsoluteTime];
    [v28 doubleValue];
    v30 = v29;

    if (PBLogPerformanceMetrics())
    {
      v31 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v31 addMeasurement:v26 timeSent:v14 activityType:Current - v30 activityIdentifier:v30];
    }

    [PBBridgeCAReporter pushCommunicationTimingType:0 withValue:Current - v30];
    v32 = pbb_setupflow_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v40 = v26;
      v41 = 2112;
      v42 = v14;
      v43 = 2048;
      v44 = Current - v30;
      v45 = 2048;
      v46 = Current;
      v47 = 2048;
      v48 = v30;
      _os_log_impl(&dword_25DE64000, v32, OS_LOG_TYPE_DEFAULT, "Success Sending Message: (%@) ID: (%@) Sending took (%f // %f -> %f)", buf, 0x34u);
    }

    [(NSMutableDictionary *)self->_inflightMessages removeObjectForKey:v14];
    [(NSMutableDictionary *)self->_pendingMessages removeObjectForKey:v14];

    goto LABEL_25;
  }

  v20 = pbb_setupflow_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    v40 = v14;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    v45 = 2112;
    v46 = *&v15;
    _os_log_error_impl(&dword_25DE64000, v20, OS_LOG_TYPE_ERROR, "Failed to send message ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to Send Message (Post-Send): %@ (%@ -- %@) Error: %@", v14, v12, *&v13, v15];
  [(PBBridgeIDSServiceDelegate *)self _postMessageSendFailureForErrorMessage:v21];

  CFPreferencesSetAppValue(@"LastFailedMessageID", v14, @"com.apple.pbbridge");
  CFPreferencesSetAppValue(@"LastIDSFailureCode", [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}], @"com.apple.pbbridge");
  v22 = [v16 retryCount];
  v23 = pbb_setupflow_log();
  v17 = v23;
  if (v22 < 1)
  {
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 138413058;
    v40 = v14;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    v45 = 2112;
    v46 = *&v15;
    v19 = "Failed fallback attempt(s) for message ID: %@ (%@ -- %@) Error: %@";
    goto LABEL_16;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v40 = v14;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    v45 = 2112;
    v46 = *&v15;
    _os_log_impl(&dword_25DE64000, v17, OS_LOG_TYPE_DEFAULT, "Attempt fallback message send for ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
  }

  [(NSMutableDictionary *)self->_inflightMessages removeObjectForKey:v14];
  [v16 setRetryCount:[v16 retryCount]- 1];
  [(NSMutableDictionary *)self->_pendingMessages setObject:v16 forKey:v14];
  [v16 retryInterval];
  v25 = dispatch_time(0, (v24 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__PBBridgeIDSServiceDelegate_service_account_identifier_didSendWithSuccess_error___block_invoke;
  block[3] = &unk_2799F49F8;
  v35 = v14;
  v36 = v12;
  v37 = *&v13;
  v38 = self;
  dispatch_after(v25, MEMORY[0x277D85CD0], block);

  v17 = v35;
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];
}

void __82__PBBridgeIDSServiceDelegate_service_account_identifier_didSendWithSuccess_error___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pbb_setupflow_log();
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
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "Firing fallback message ID: %@ (%@ -- %@)", &v11, 0x20u);
  }

  v6 = [*(a1[7] + 40) objectForKey:a1[4]];
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Firing messageInstance %@", &v11, 0xCu);
  }

  if (v6)
  {
    v8 = [v6 retryAction];

    if (v8)
    {
      [*(a1[7] + 32) setObject:v6 forKey:a1[4]];
      v9 = [v6 retryAction];
      v9[2]();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendProtoBuf:(os_log_t)log service:priority:responseIdentifier:expectsResponse:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = @"Response ";
  v5 = 138413058;
  if (!a1)
  {
    v3 = &stru_286FA8098;
  }

  v6 = v3;
  v7 = 1024;
  v8 = 142;
  v9 = 2080;
  v10 = "[PBBridgeIDSServiceDelegate _sendProtoBuf:service:priority:responseIdentifier:expectsResponse:]";
  v11 = 2112;
  v12 = a2;
  _os_log_fault_impl(&dword_25DE64000, log, OS_LOG_TYPE_FAULT, "Service Was Nil! %@Protobuf (%d %s) -- %@", &v5, 0x26u);
  v4 = *MEMORY[0x277D85DE8];
}

void __96__PBBridgeIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = @"Response ";
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = 138413314;
  if (!v4)
  {
    v3 = &stru_286FA8098;
  }

  v8 = v3;
  v9 = 1024;
  v10 = 145;
  v11 = 2080;
  v12 = "[PBBridgeIDSServiceDelegate _sendProtoBuf:service:priority:responseIdentifier:expectsResponse:]_block_invoke";
  v13 = 2112;
  v14 = v5;
  v15 = 2112;
  v16 = a2;
  _os_log_fault_impl(&dword_25DE64000, log, OS_LOG_TYPE_FAULT, "Failed to send IDS %@Protobuf (%d %s) -- %@ (Error: %@)", &v7, 0x30u);
  v6 = *MEMORY[0x277D85DE8];
}

@end