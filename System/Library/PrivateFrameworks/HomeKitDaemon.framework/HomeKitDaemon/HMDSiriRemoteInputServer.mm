@interface HMDSiriRemoteInputServer
- (BOOL)registerSiriSession:(id)session;
- (HMDSiriRemoteInputServer)initWithQueue:(id)queue;
- (id)sessionForIdentifier:(id)identifier;
- (void)dealloc;
- (void)deregisterSiriSession:(id)session;
- (void)handleCheckInMsg:(id)msg;
- (void)handleConnection:(id)connection;
- (void)handleConnectionEvent:(id)event;
- (void)handleDisconnection;
- (void)handleMsg:(id)msg;
- (void)handleServerEvent:(id)event;
- (void)handleStartStreamMsg:(id)msg args:(id)args;
- (void)handleStopStreamMsg:(id)msg;
- (void)invalidate;
- (void)sendMsg:(id)msg args:(id)args;
- (void)sendMsgIfCheckedIn:(id)in args:(id)args;
@end

@implementation HMDSiriRemoteInputServer

- (id)sessionForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  siriSessions = [(HMDSiriRemoteInputServer *)self siriSessions];
  v6 = [siriSessions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(siriSessions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [siriSessions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)handleStopStreamMsg:(id)msg
{
  v4 = [msg objectForKeyedSubscript:@"kMsgArgIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v8 = [(HMDSiriRemoteInputServer *)self sessionForIdentifier:v6];

  v7 = v8;
  if (v8)
  {
    [v8 handleStopStream];
    v7 = v8;
  }
}

- (void)handleStartStreamMsg:(id)msg args:(id)args
{
  msgCopy = msg;
  v6 = [args objectForKeyedSubscript:@"kMsgArgIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HMDSiriRemoteInputServer *)self sessionForIdentifier:v8];

  if (v9)
  {
    [v9 handleStartStream];
    [v9 setBoostMessage:msgCopy];
  }
}

- (void)handleCheckInMsg:(id)msg
{
  v12 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Siri checked in", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendMsg:(id)msg args:(id)args
{
  v23 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  argsCopy = args;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "kMsgId", [msgCopy UTF8String]);
  if (argsCopy)
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v8, "kMsgArgs", v9);
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    xpcConnection = [(HMDSiriRemoteInputServer *)selfCopy xpcConnection];
    v17 = 138543874;
    v18 = v13;
    v19 = 2048;
    v20 = xpcConnection;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Sending Siri XPC message to %p: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  xpcConnection2 = [(HMDSiriRemoteInputServer *)selfCopy xpcConnection];
  xpc_connection_send_message(xpcConnection2, v8);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendMsgIfCheckedIn:(id)in args:(id)args
{
  v16 = *MEMORY[0x277D85DE8];
  inCopy = in;
  argsCopy = args;
  xpcConnection = [(HMDSiriRemoteInputServer *)self xpcConnection];

  if (xpcConnection)
  {
    [(HMDSiriRemoteInputServer *)self sendMsg:inCopy args:argsCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Cannot send; no XPC client is checked in yet", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleMsg:(id)msg
{
  v26 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    xpcConnection = [(HMDSiriRemoteInputServer *)selfCopy xpcConnection];
    v20 = 138543874;
    v21 = v8;
    v22 = 2048;
    v23 = xpcConnection;
    v24 = 2112;
    v25 = msgCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received Siri XPC message to %p: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  string = xpc_dictionary_get_string(msgCopy, "kMsgId");
  v11 = xpc_dictionary_get_value(msgCopy, "kMsgArgs");
  v12 = _CFXPCCreateCFObjectFromXPCObject();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!strcmp(string, "CheckIn"))
  {
    [(HMDSiriRemoteInputServer *)selfCopy handleCheckInMsg:v14];
  }

  else if (!strcmp(string, "StartStream"))
  {
    [(HMDSiriRemoteInputServer *)selfCopy handleStartStreamMsg:msgCopy args:v14];
  }

  else if (!strcmp(string, "StopStream"))
  {
    [(HMDSiriRemoteInputServer *)selfCopy handleStopStreamMsg:v14];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2080;
      v23 = string;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpected message: '%s'", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleConnectionEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = MEMORY[0x22AAD53D0]();
  if (v5 != MEMORY[0x277D86468])
  {
    if (v5 == MEMORY[0x277D86480])
    {
      if (eventCopy == MEMORY[0x277D863F8])
      {
        [(HMDSiriRemoteInputServer *)self handleDisconnection];
        goto LABEL_11;
      }

      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = eventCopy;
      v10 = "%{public}@Siri XPC connection error: %@";
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        objc_autoreleasePoolPop(v6);
        goto LABEL_11;
      }

      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = eventCopy;
      v10 = "%{public}@Unexpected Siri XPC connection event: %@";
    }

    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, v10, &v12, 0x16u);

    goto LABEL_10;
  }

  [(HMDSiriRemoteInputServer *)self handleMsg:eventCopy];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleDisconnection
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    xpcConnection = [(HMDSiriRemoteInputServer *)selfCopy xpcConnection];
    *buf = 138543618;
    v21 = v6;
    v22 = 2112;
    v23 = xpcConnection;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Siri received disconnect on XPC connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  siriSessions = [(HMDSiriRemoteInputServer *)selfCopy siriSessions];
  v9 = [siriSessions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(siriSessions);
        }

        [*(*(&v15 + 1) + 8 * v12++) handleResetStream];
      }

      while (v10 != v12);
      v10 = [siriSessions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(HMDSiriRemoteInputServer *)selfCopy setXpcConnection:0];
  xpcServer = [(HMDSiriRemoteInputServer *)selfCopy xpcServer];
  xpc_connection_resume(xpcServer);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleConnection:(id)connection
{
  v38 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = xpc_connection_copy_entitlement_value();
  v6 = v5;
  if (v5 && xpc_BOOL_get_value(v5))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v10;
      v34 = 2048;
      v35 = connectionCopy;
      v36 = 2112;
      v37 = connectionCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Siri received incoming XPC connection: %p %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    xpcServer = [(HMDSiriRemoteInputServer *)selfCopy xpcServer];
    xpc_connection_suspend(xpcServer);

    [(HMDSiriRemoteInputServer *)selfCopy setXpcConnection:connectionCopy];
    xpcConnection = [(HMDSiriRemoteInputServer *)selfCopy xpcConnection];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__HMDSiriRemoteInputServer_handleConnection___block_invoke;
    handler[3] = &unk_27867D068;
    handler[4] = selfCopy;
    xpc_connection_set_event_handler(xpcConnection, handler);

    xpcConnection2 = [(HMDSiriRemoteInputServer *)selfCopy xpcConnection];
    queue = [(HMDSiriRemoteInputServer *)selfCopy queue];
    xpc_connection_set_target_queue(xpcConnection2, queue);

    xpcConnection3 = [(HMDSiriRemoteInputServer *)selfCopy xpcConnection];
    xpc_connection_resume(xpcConnection3);

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    siriSessions = [(HMDSiriRemoteInputServer *)selfCopy siriSessions];
    v17 = [siriSessions countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(siriSessions);
          }

          [*(*(&v26 + 1) + 8 * v20++) publish];
        }

        while (v18 != v20);
        v18 = [siriSessions countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Siri received incoming XPC connection but was not entitled; closing.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    xpc_connection_cancel(connectionCopy);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleServerEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (MEMORY[0x22AAD53D0]() == MEMORY[0x277D86450])
  {
    [(HMDSiriRemoteInputServer *)self handleConnection:eventCopy];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = eventCopy;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected Siri XPC server event: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  siriSessions = [(HMDSiriRemoteInputServer *)self siriSessions];
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HMDSiriRemoteInputServer *)self setSiriSessions:weakObjectsHashTable];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = siriSessions;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMDSiriRemoteInputServer *)self deregisterSiriSession:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deregisterSiriSession:(id)session
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  identifier = [sessionCopy identifier];
  v6 = [(HMDSiriRemoteInputServer *)self sessionForIdentifier:identifier];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = sessionCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Deregistering session %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [sessionCopy invalidate];
    siriSessions = [(HMDSiriRemoteInputServer *)selfCopy siriSessions];
    [siriSessions removeObject:sessionCopy];

    [sessionCopy setServer:0];
  }

  else
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      identifier2 = [sessionCopy identifier];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = identifier2;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Session deregistration with identifier %@ but was not registered!", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerSiriSession:(id)session
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  identifier = [sessionCopy identifier];
  v6 = [(HMDSiriRemoteInputServer *)self sessionForIdentifier:identifier];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      identifier2 = [sessionCopy identifier];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = identifier2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Session with identifier %@ already exists!", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = sessionCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Registering session %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [sessionCopy setServer:selfCopy];
    siriSessions = [(HMDSiriRemoteInputServer *)selfCopy siriSessions];
    [siriSessions addObject:sessionCopy];

    [sessionCopy publish];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = notify_set_state(xpcServerNotifyToken, 0);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v4;
      _os_log_impl(&dword_229538000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to set state to stopped (%d)", buf, 8u);
    }
  }

  v5 = notify_post("com.apple.homekit.audio.running");
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v6;
      _os_log_impl(&dword_229538000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to post (%d)", buf, 8u);
    }
  }

  v8.receiver = self;
  v8.super_class = HMDSiriRemoteInputServer;
  [(HMDSiriRemoteInputServer *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDSiriRemoteInputServer)initWithQueue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = HMDSiriRemoteInputServer;
  v6 = [(HMDSiriRemoteInputServer *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    mach_service = xpc_connection_create_mach_service("com.apple.homekit.audio.xpc", queueCopy, 1uLL);
    xpcServer = v7->_xpcServer;
    v7->_xpcServer = mach_service;

    xpcConnection = v7->_xpcConnection;
    v7->_xpcConnection = 0;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    siriSessions = v7->_siriSessions;
    v7->_siriSessions = weakObjectsHashTable;

    xpcServer = [(HMDSiriRemoteInputServer *)v7 xpcServer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__HMDSiriRemoteInputServer_initWithQueue___block_invoke;
    handler[3] = &unk_27867D068;
    v14 = v7;
    v25 = v14;
    xpc_connection_set_event_handler(xpcServer, handler);

    xpcServer2 = [(HMDSiriRemoteInputServer *)v14 xpcServer];
    xpc_connection_resume(xpcServer2);

    if (xpcServerNotifyToken == -1)
    {
      v22 = notify_register_check("com.apple.homekit.audio.running", &xpcServerNotifyToken);
      if (v22)
      {
        v23 = v22;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v28 = v23;
          _os_log_impl(&dword_229538000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to retrieve token (%d)", buf, 8u);
        }
      }
    }

    v16 = notify_set_state(xpcServerNotifyToken, 1uLL);
    if (v16)
    {
      v17 = v16;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v28 = v17;
        _os_log_impl(&dword_229538000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to set state to ready (%d)", buf, 8u);
      }
    }

    v18 = notify_post("com.apple.homekit.audio.running");
    if (v18)
    {
      v19 = v18;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v28 = v19;
        _os_log_impl(&dword_229538000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to post (%d)", buf, 8u);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

@end