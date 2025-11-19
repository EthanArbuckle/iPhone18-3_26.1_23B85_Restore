@interface HMDSiriRemoteInputServer
- (BOOL)registerSiriSession:(id)a3;
- (HMDSiriRemoteInputServer)initWithQueue:(id)a3;
- (id)sessionForIdentifier:(id)a3;
- (void)dealloc;
- (void)deregisterSiriSession:(id)a3;
- (void)handleCheckInMsg:(id)a3;
- (void)handleConnection:(id)a3;
- (void)handleConnectionEvent:(id)a3;
- (void)handleDisconnection;
- (void)handleMsg:(id)a3;
- (void)handleServerEvent:(id)a3;
- (void)handleStartStreamMsg:(id)a3 args:(id)a4;
- (void)handleStopStreamMsg:(id)a3;
- (void)invalidate;
- (void)sendMsg:(id)a3 args:(id)a4;
- (void)sendMsgIfCheckedIn:(id)a3 args:(id)a4;
@end

@implementation HMDSiriRemoteInputServer

- (id)sessionForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDSiriRemoteInputServer *)self siriSessions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)handleStopStreamMsg:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kMsgArgIdentifier"];
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

- (void)handleStartStreamMsg:(id)a3 args:(id)a4
{
  v10 = a3;
  v6 = [a4 objectForKeyedSubscript:@"kMsgArgIdentifier"];
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
    [v9 setBoostMessage:v10];
  }
}

- (void)handleCheckInMsg:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Siri checked in", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendMsg:(id)a3 args:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "kMsgId", [v6 UTF8String]);
  if (v7)
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v8, "kMsgArgs", v9);
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [(HMDSiriRemoteInputServer *)v11 xpcConnection];
    v17 = 138543874;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Sending Siri XPC message to %p: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [(HMDSiriRemoteInputServer *)v11 xpcConnection];
  xpc_connection_send_message(v15, v8);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendMsgIfCheckedIn:(id)a3 args:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriRemoteInputServer *)self xpcConnection];

  if (v8)
  {
    [(HMDSiriRemoteInputServer *)self sendMsg:v6 args:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Cannot send; no XPC client is checked in yet", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleMsg:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDSiriRemoteInputServer *)v6 xpcConnection];
    v20 = 138543874;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received Siri XPC message to %p: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  string = xpc_dictionary_get_string(v4, "kMsgId");
  v11 = xpc_dictionary_get_value(v4, "kMsgArgs");
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
    [(HMDSiriRemoteInputServer *)v6 handleCheckInMsg:v14];
  }

  else if (!strcmp(string, "StartStream"))
  {
    [(HMDSiriRemoteInputServer *)v6 handleStartStreamMsg:v4 args:v14];
  }

  else if (!strcmp(string, "StopStream"))
  {
    [(HMDSiriRemoteInputServer *)v6 handleStopStreamMsg:v14];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2080;
      v23 = string;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpected message: '%s'", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleConnectionEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x259C04520]();
  if (v5 != MEMORY[0x277D86468])
  {
    if (v5 == MEMORY[0x277D86480])
    {
      if (v4 == MEMORY[0x277D863F8])
      {
        [(HMDSiriRemoteInputServer *)self handleDisconnection];
        goto LABEL_11;
      }

      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      v10 = "%{public}@Siri XPC connection error: %@";
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
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
      v15 = v4;
      v10 = "%{public}@Unexpected Siri XPC connection event: %@";
    }

    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, v10, &v12, 0x16u);

    goto LABEL_10;
  }

  [(HMDSiriRemoteInputServer *)self handleMsg:v4];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleDisconnection
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDSiriRemoteInputServer *)v4 xpcConnection];
    *buf = 138543618;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Siri received disconnect on XPC connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(HMDSiriRemoteInputServer *)v4 siriSessions];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) handleResetStream];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(HMDSiriRemoteInputServer *)v4 setXpcConnection:0];
  v13 = [(HMDSiriRemoteInputServer *)v4 xpcServer];
  xpc_connection_resume(v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleConnection:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = xpc_connection_copy_entitlement_value();
  v6 = v5;
  if (v5 && xpc_BOOL_get_value(v5))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v10;
      v34 = 2048;
      v35 = v4;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Siri received incoming XPC connection: %p %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDSiriRemoteInputServer *)v8 xpcServer];
    xpc_connection_suspend(v11);

    [(HMDSiriRemoteInputServer *)v8 setXpcConnection:v4];
    v12 = [(HMDSiriRemoteInputServer *)v8 xpcConnection];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__HMDSiriRemoteInputServer_handleConnection___block_invoke;
    handler[3] = &unk_279727800;
    handler[4] = v8;
    xpc_connection_set_event_handler(v12, handler);

    v13 = [(HMDSiriRemoteInputServer *)v8 xpcConnection];
    v14 = [(HMDSiriRemoteInputServer *)v8 queue];
    xpc_connection_set_target_queue(v13, v14);

    v15 = [(HMDSiriRemoteInputServer *)v8 xpcConnection];
    xpc_connection_resume(v15);

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [(HMDSiriRemoteInputServer *)v8 siriSessions];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(v16);
          }

          [*(*(&v26 + 1) + 8 * v20++) publish];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Siri received incoming XPC connection but was not entitled; closing.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    xpc_connection_cancel(v4);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleServerEvent:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MEMORY[0x259C04520]() == MEMORY[0x277D86450])
  {
    [(HMDSiriRemoteInputServer *)self handleConnection:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected Siri XPC server event: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriRemoteInputServer *)self siriSessions];
  v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  [(HMDSiriRemoteInputServer *)self setSiriSessions:v4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
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

- (void)deregisterSiriSession:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(HMDSiriRemoteInputServer *)self sessionForIdentifier:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
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
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Deregistering session %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v4 invalidate];
    v12 = [(HMDSiriRemoteInputServer *)v8 siriSessions];
    [v12 removeObject:v4];

    [v4 setServer:0];
  }

  else
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v4 identifier];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Session deregistration with identifier %@ but was not registered!", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerSiriSession:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(HMDSiriRemoteInputServer *)self sessionForIdentifier:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 identifier];
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Session with identifier %@ already exists!", &v17, 0x16u);
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
      v20 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Registering session %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v4 setServer:v8];
    v14 = [(HMDSiriRemoteInputServer *)v8 siriSessions];
    [v14 addObject:v4];

    [v4 publish];
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
      _os_log_impl(&dword_2531F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to set state to stopped (%d)", buf, 8u);
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
      _os_log_impl(&dword_2531F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to post (%d)", buf, 8u);
    }
  }

  v8.receiver = self;
  v8.super_class = HMDSiriRemoteInputServer;
  [(HMDSiriRemoteInputServer *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDSiriRemoteInputServer)initWithQueue:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = HMDSiriRemoteInputServer;
  v6 = [(HMDSiriRemoteInputServer *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    mach_service = xpc_connection_create_mach_service("com.apple.homekit.audio.xpc", v5, 1uLL);
    xpcServer = v7->_xpcServer;
    v7->_xpcServer = mach_service;

    xpcConnection = v7->_xpcConnection;
    v7->_xpcConnection = 0;

    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    siriSessions = v7->_siriSessions;
    v7->_siriSessions = v11;

    v13 = [(HMDSiriRemoteInputServer *)v7 xpcServer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__HMDSiriRemoteInputServer_initWithQueue___block_invoke;
    handler[3] = &unk_279727800;
    v14 = v7;
    v25 = v14;
    xpc_connection_set_event_handler(v13, handler);

    v15 = [(HMDSiriRemoteInputServer *)v14 xpcServer];
    xpc_connection_resume(v15);

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
          _os_log_impl(&dword_2531F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to retrieve token (%d)", buf, 8u);
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
        _os_log_impl(&dword_2531F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to set state to ready (%d)", buf, 8u);
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
        _os_log_impl(&dword_2531F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[Siri Server] Notify: failed to post (%d)", buf, 8u);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

@end