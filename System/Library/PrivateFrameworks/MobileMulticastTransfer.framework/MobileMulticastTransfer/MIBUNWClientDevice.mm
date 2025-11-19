@interface MIBUNWClientDevice
- (MIBUNWClientDevice)initWithNWConnection:(id)a3;
- (MIBUNWClientDeviceDelegate)delegate;
- (void)_checkOutAck;
- (void)unicastConnection:(id)a3 didReceiveMessage:(id)a4;
- (void)unicastConnectionDidClose:(id)a3 withError:(id)a4;
- (void)unicastConnectionDidOpen:(id)a3;
@end

@implementation MIBUNWClientDevice

- (MIBUNWClientDevice)initWithNWConnection:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MIBUNWClientDevice;
  v5 = [(MIBUNWDevice *)&v12 init];
  if (v5)
  {
    v6 = [[MIBUNWConnection alloc] initWithNWConnection:v4 dispatchQueue:v5->super._queue statusDelegate:v5];
    connection = v5->super._connection;
    v5->super._connection = v6;

    if (!v5->super._connection)
    {
      v10 = 0;
      goto LABEL_6;
    }

    clientSerialNumber = v5->_clientSerialNumber;
    v5->_clientSerialNumber = 0;

    clientIPv6Address = v5->_clientIPv6Address;
    v5->_clientIPv6Address = 0;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)_checkOutAck
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MIBUNWClientDevice__checkOutAck__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__MIBUNWClientDevice__checkOutAck__block_invoke(uint64_t a1)
{
  v2 = [[MIBUNWMessage alloc] initWithType:5 andPayload:0];
  [*(a1 + 32) _sendMessage:v2];
}

- (void)unicastConnectionDidOpen:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientDevice unicastConnectionDidOpen:];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_259B04000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Unicast connection opened.", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 clientDeviceDidConnect:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __47__MIBUNWClientDevice_unicastConnectionDidOpen___block_invoke()
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
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientDevice unicastConnectionDidClose:withError:];
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = self;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Unicast connection closed.", &v13, 0xCu);
  }

  connection = self->super._connection;
  self->super._connection = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 clientDeviceDidDisconnect:self];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__MIBUNWClientDevice_unicastConnectionDidClose_withError___block_invoke()
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
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientDevice unicastConnection:didReceiveMessage:];
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v44 = self;
    v45 = 1024;
    LODWORD(v46) = [v7 type];
    _os_log_impl(&dword_259B04000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Received client message of type: %u", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    goto LABEL_33;
  }

  v11 = [v7 type];
  switch(v11)
  {
    case 3:
      v41 = v6;
      [(MIBUNWClientDevice *)self _checkOutAck];
      v22 = [v7 payload];
      v23 = [v22 objectForKey:@"ErrorDomain"];

      v24 = [v7 payload];
      v25 = [v24 objectForKey:@"ErrorCode"];

      v26 = 0;
      if (v23 && v25)
      {
        v27 = [v7 payload];
        v28 = [v27 objectForKey:@"ErrorMessage"];

        if (v28)
        {
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v28 forKey:*MEMORY[0x277CCA450]];
        }

        else
        {
          v29 = 0;
        }

        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:v23 code:objc_msgSend(v25 userInfo:{"integerValue"), v29}];
      }

      v32 = [v7 payload];
      v33 = [v32 objectForKey:@"Summary"];

      if (v33)
      {
        v42 = 0;
        v34 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v33 options:0 error:&v42];
        v35 = v42;
        if (v34)
        {
LABEL_32:
          v39 = objc_loadWeakRetained(&self->_delegate);
          [v39 clientDevice:self didCheckOutWithError:v26 withSummary:v34];

          v6 = v41;
          goto LABEL_33;
        }

        if (MIBUOnceToken != -1)
        {
          [MIBUNWClientDevice unicastConnection:didReceiveMessage:];
        }

        v36 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          v38 = [v26 localizedDescription];
          *buf = 138543618;
          v44 = self;
          v45 = 2112;
          v46 = v38;
          _os_log_impl(&dword_259B04000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: failed to deserialize summary: %@", buf, 0x16u);
        }
      }

      else
      {
        v35 = 0;
      }

      v34 = 0;
      goto LABEL_32;
    case 2:
      if (MIBUOnceToken == -1)
      {
        v18 = MIBUConnObj;
        if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
LABEL_13:
          v17 = objc_loadWeakRetained(&self->_delegate);
          v21 = [v7 payload];
          [v17 clientDevice:self didPingWithPayload:v21];

          goto LABEL_21;
        }
      }

      else
      {
        [MIBUNWClientDevice unicastConnection:didReceiveMessage:];
        v18 = MIBUConnObj;
        if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }
      }

      v19 = v18;
      v20 = [v7 payload];
      *buf = 138543618;
      v44 = self;
      v45 = 2114;
      v46 = v20;
      _os_log_impl(&dword_259B04000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Got new progress: %{public}@", buf, 0x16u);

      goto LABEL_13;
    case 1:
      v12 = [(MIBUNWConnection *)self->super._connection remoteIPv6Address];
      clientIPv6Address = self->_clientIPv6Address;
      self->_clientIPv6Address = v12;

      v14 = [v7 payload];
      v15 = [v14 objectForKey:@"SerialNumber"];
      clientSerialNumber = self->_clientSerialNumber;
      self->_clientSerialNumber = v15;

      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 clientDeviceDidCheckIn:self];
LABEL_21:

      goto LABEL_33;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUNWClientDevice unicastConnection:didReceiveMessage:];
    v30 = MIBUConnObj;
    if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  v30 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
LABEL_20:
    v17 = v30;
    v31 = [v7 type];
    *buf = 138543618;
    v44 = self;
    v45 = 1024;
    LODWORD(v46) = v31;
    _os_log_impl(&dword_259B04000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignore unknown client message :%hu.", buf, 0x12u);
    goto LABEL_21;
  }

LABEL_33:

  v40 = *MEMORY[0x277D85DE8];
}

void __58__MIBUNWClientDevice_unicastConnection_didReceiveMessage___block_invoke()
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

void __58__MIBUNWClientDevice_unicastConnection_didReceiveMessage___block_invoke_9()
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

void __58__MIBUNWClientDevice_unicastConnection_didReceiveMessage___block_invoke_27()
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

void __58__MIBUNWClientDevice_unicastConnection_didReceiveMessage___block_invoke_30()
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

- (MIBUNWClientDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end