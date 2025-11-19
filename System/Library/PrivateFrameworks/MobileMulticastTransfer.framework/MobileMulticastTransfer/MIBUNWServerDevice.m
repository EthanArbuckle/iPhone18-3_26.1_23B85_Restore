@interface MIBUNWServerDevice
- (BOOL)connect;
- (MIBUNWServerDevice)initWithHostAddress:(id)a3 hostPort:(id)a4 interfaceName:(id)a5 connectOnDemand:(BOOL)a6 statusDelegate:(id)a7;
- (NSString)description;
- (void)_handleIncomingMessage:(id)a3;
- (void)_processPendingMessages:(BOOL)a3;
- (void)checkIn;
- (void)checkOutWithError:(id)a3 withSummary:(id)a4;
- (void)pingWithPayload:(id)a3;
- (void)unicastConnection:(id)a3 didReceiveMessage:(id)a4;
- (void)unicastConnectionDidClose:(id)a3 withError:(id)a4;
- (void)unicastConnectionDidOpen:(id)a3;
@end

@implementation MIBUNWServerDevice

- (MIBUNWServerDevice)initWithHostAddress:(id)a3 hostPort:(id)a4 interfaceName:(id)a5 connectOnDemand:(BOOL)a6 statusDelegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = MIBUNWServerDevice;
  v17 = [(MIBUNWDevice *)&v21 init];
  v18 = v17;
  if (!v17)
  {
    if (MEMORY[0x18])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  objc_storeWeak(&v17->_delegate, v16);
  objc_storeStrong(&v18->_hostAddress, a3);
  objc_storeStrong(&v18->_hostPort, a4);
  objc_storeStrong(&v18->_interfaceName, a5);
  v18->super._connectOnDemand = a6;
  connection = v18->super._connection;
  v18->super._connection = 0;

  if (!v18->super._connectOnDemand)
  {
LABEL_3:
    [(MIBUNWServerDevice *)v18 connect];
  }

LABEL_4:

  return v18;
}

- (BOOL)connect
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setObject:self->_hostAddress forKey:@"RemoteAddress"];
  [v3 setObject:self->_hostPort forKey:@"RemotePort"];
  interfaceName = self->_interfaceName;
  if (interfaceName)
  {
    [v3 setObject:interfaceName forKey:@"InterfaceName"];
  }

  v5 = [MIBUNWConnection alloc];
  v6 = +[MIBUNWMessage sharedFramer];
  v7 = [(MIBUNWConnection *)v5 initWithConfiguration:v3 messageFramer:v6 dispatchQueue:self->super._queue statusDelegate:self];
  connection = self->super._connection;
  self->super._connection = v7;

  if (self->super._connection)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerDevice connect];
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      hostAddress = self->_hostAddress;
      hostPort = self->_hostPort;
      v18 = 138543874;
      v19 = self;
      v20 = 2114;
      v21 = hostAddress;
      v22 = 2114;
      v23 = hostPort;
      _os_log_impl(&dword_259B04000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: connection with host %{public}@:%{public}@ created, will bootstrap connection", &v18, 0x20u);
    }

    [(MIBUNWDevice *)self bootstrap];
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerDevice connect];
    }

    v12 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      v16 = self->_hostAddress;
      v17 = self->_hostPort;
      v18 = 138543874;
      v19 = self;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_error_impl(&dword_259B04000, v12, OS_LOG_TYPE_ERROR, "%{public}@: not able to create connection with host %{public}@:%{public}@", &v18, 0x20u);
    }
  }

  v13 = self->super._connection != 0;

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __29__MIBUNWServerDevice_connect__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __29__MIBUNWServerDevice_connect__block_invoke_12()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)checkIn
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MGCopyAnswer();
  if (v4)
  {
    [v3 setObject:v4 forKey:@"SerialNumber"];
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerDevice checkIn];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending CheckIn message with payload: %{public}@", &v9, 0x16u);
  }

  v6 = [[MIBUNWMessage alloc] initWithType:1 andPayload:v3];
  [(MIBUNWDevice *)self _sendMessage:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverDeviceDidCheckIn:self];

  v8 = *MEMORY[0x277D85DE8];
}

void __29__MIBUNWServerDevice_checkIn__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)pingWithPayload:(id)a3
{
  v4 = a3;
  v5 = [[MIBUNWMessage alloc] initWithType:2 andPayload:v4];

  [(MIBUNWDevice *)self sendOutgoingMessage:v5 synchronous:0];
}

- (void)checkOutWithError:(id)a3 withSummary:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v12)
  {
    v8 = [v12 domain];
    [v7 setObject:v8 forKey:@"ErrorDomain"];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "code")}];
    [v7 setObject:v9 forKey:@"ErrorCode"];

    v10 = [v12 localizedDescription];
    if (v10)
    {
      [v7 setObject:v10 forKey:@"ErrorMessage"];
    }
  }

  if (v6)
  {
    [v7 setObject:v6 forKey:@"Summary"];
  }

  if (![v7 count])
  {

    v7 = 0;
  }

  v11 = [[MIBUNWMessage alloc] initWithType:3 andPayload:v7];
  [(MIBUNWDevice *)self sendOutgoingMessage:v11 synchronous:1];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  hostAddress = self->_hostAddress;
  v7 = [v3 stringWithFormat:@"<%@: %@:%@>", v5, hostAddress, self->_hostPort];

  return v7;
}

- (void)_handleIncomingMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->super._queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerDevice _handleIncomingMessage:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v12 = 138543618;
    v13 = self;
    v14 = 1024;
    v15 = [v4 type];
    _os_log_impl(&dword_259B04000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server message of type: %u", &v12, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    if ([v4 type] == 5)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 serverDeviceDidCheckOut:self];
LABEL_11:

      goto LABEL_12;
    }

    if (MIBUOnceToken != -1)
    {
      [MIBUNWServerDevice _handleIncomingMessage:];
      v9 = MIBUConnObj;
      if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      v8 = v9;
      v10 = [v4 type];
      v12 = 138543618;
      v13 = self;
      v14 = 1024;
      v15 = v10;
      _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignore unknown client message :%u", &v12, 0x12u);
      goto LABEL_11;
    }
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

void __45__MIBUNWServerDevice__handleIncomingMessage___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __45__MIBUNWServerDevice__handleIncomingMessage___block_invoke_39()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_processPendingMessages:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->super._messages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v8 = *v18;
  if (a3)
  {
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MIBUNWDevice *)self _sendMessage:*(*(&v17 + 1) + 8 * i)];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
    goto LABEL_21;
  }

  while (2)
  {
    for (j = 0; j != v7; ++j)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * j);
      if (MIBUOnceToken == -1)
      {
        v12 = MIBUConnObj;
        if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

LABEL_16:
        *buf = 0;
        _os_log_impl(&dword_259B04000, v12, OS_LOG_TYPE_DEFAULT, "Giving up pending message because on-demand connection cannot be set up.", buf, 2u);
        goto LABEL_17;
      }

      [MIBUNWServerDevice _processPendingMessages:];
      v12 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

LABEL_17:
      v13 = [v11 syncSemaphore];

      if (v13)
      {
        v14 = [v11 syncSemaphore];
        dispatch_semaphore_signal(v14);
      }
    }

    v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_21:

  [(NSMutableArray *)self->super._messages removeAllObjects];
  v15 = *MEMORY[0x277D85DE8];
}

void __46__MIBUNWServerDevice__processPendingMessages___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)unicastConnection:(id)a3 didReceiveMessage:(id)a4
{
  queue = self->super._queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  [(MIBUNWServerDevice *)self _handleIncomingMessage:v6];
}

- (void)unicastConnectionDidOpen:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerDevice unicastConnectionDidOpen:];
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_259B04000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Unicast connection opened.", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 serverDeviceDidConnect:self];
  }

  [(MIBUNWServerDevice *)self checkIn];
  [(MIBUNWServerDevice *)self _processPendingMessages:1];
  v7 = *MEMORY[0x277D85DE8];
}

void __47__MIBUNWServerDevice_unicastConnectionDidOpen___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)unicastConnectionDidClose:(id)a3 withError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super._queue);
  if (MIBUOnceToken != -1)
  {
    [MIBUNWServerDevice unicastConnectionDidClose:withError:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Unicast connection closed.", &v10, 0xCu);
  }

  connection = self->super._connection;
  self->super._connection = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 serverDeviceDidDisconnect:self];
  }

  [(MIBUNWServerDevice *)self _processPendingMessages:0];
  v9 = *MEMORY[0x277D85DE8];
}

void __58__MIBUNWServerDevice_unicastConnectionDidClose_withError___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

@end