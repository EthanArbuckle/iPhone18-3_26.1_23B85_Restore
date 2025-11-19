@interface MIBUMulticastSocket
- (BOOL)isActive;
- (MIBUMulticastSocket)initWithConfiguration:(id)a3 delegate:(id)a4;
- (id)description;
- (void)_handleReadDispatchSource;
- (void)_handleSourceCancelled;
- (void)_sendPacket:(id)a3 retryCount:(unint64_t)a4 withCompletion:(id)a5;
- (void)_start;
- (void)_stop;
- (void)sendPacket:(id)a3 withCompletion:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MIBUMulticastSocket

- (MIBUMulticastSocket)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v55.receiver = self;
  v55.super_class = MIBUMulticastSocket;
  v8 = [(MIBUMulticastSocket *)&v55 init];
  if (!v8)
  {
    goto LABEL_83;
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.MIBUMulticastSocketQueue", v9);
  v11 = *(v8 + 2);
  *(v8 + 2) = v10;

  objc_storeStrong(v8 + 1, a4);
  v12 = [v6 objectForKey:@"GroupAddress"];
  v13 = [v6 objectForKey:@"GroupPort"];
  v14 = v13;
  if (!v12 || !v13)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUMulticastSocket initWithConfiguration:delegate:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUMulticastSocket initWithConfiguration:delegate:];
    }

    goto LABEL_24;
  }

  v15 = [v6 objectForKey:@"InterfaceName"];
  if (!v15)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUMulticastSocket initWithConfiguration:delegate:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUMulticastSocket initWithConfiguration:delegate:];
    }

LABEL_24:

    goto LABEL_25;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUMulticastSocket initWithConfiguration:delegate:];
  }

  v16 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v58 = v14;
    _os_log_impl(&dword_259B04000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating multicast socket: %@:%@", buf, 0x20u);
  }

  memset(buf, 0, sizeof(buf));
  LODWORD(v58) = 0;
  v17 = v12;
  [v12 UTF8String];
  if (!StringToSockAddr())
  {
    v19 = buf[1];
    if (buf[1] != 2 && buf[1] != 30)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }

      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }

      goto LABEL_14;
    }

    [v14 intValue];
    SockAddrSetPort();
    v20 = socket(v19, 2, 0);
    v21 = v20;
    if (v20 < 0)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }

      v27 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [MIBUMulticastSocket initWithConfiguration:v8 delegate:v27];
      }

      goto LABEL_14;
    }

    if (v19 == 30)
    {
      v56[0] = 0;
      if (setsockopt(v20, 41, 42, v56, 4u) < 0)
      {
        v35 = *__error();
        if (v35)
        {
          if (MIBUOnceToken != -1)
          {
            [MIBUMulticastSocket initWithConfiguration:delegate:];
          }

          v36 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            [(MIBUMulticastSocket *)v8 initWithConfiguration:v36 delegate:v35];
          }

          goto LABEL_14;
        }
      }
    }

    objc_initWeak(&location, v8);
    v22 = *(v8 + 1);
    if (objc_opt_respondsToSelector())
    {
      SocketSetNonBlocking();
      v53 = 1;
      if (setsockopt(v21, 0xFFFF, 512, &v53, 4u) < 0)
      {
        v37 = *__error();
        if (v37)
        {
          if (MIBUOnceToken != -1)
          {
            [MIBUMulticastSocket initWithConfiguration:delegate:];
          }

          v26 = MIBUConnObj;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            strerror(v37);
            [MIBUMulticastSocket initWithConfiguration:delegate:];
          }

LABEL_73:

LABEL_99:
          objc_destroyWeak(&location);

          goto LABEL_25;
        }
      }

      Size = SockAddrGetSize();
      if (bind(v21, buf, Size) < 0)
      {
        v38 = *__error();
        if (v38)
        {
          if (MIBUOnceToken != -1)
          {
            [MIBUMulticastSocket initWithConfiguration:delegate:];
          }

          v26 = MIBUConnObj;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            strerror(v38);
            [MIBUMulticastSocket initWithConfiguration:delegate:];
          }

          goto LABEL_73;
        }
      }

      v24 = v15;
      [v15 UTF8String];
      v25 = SocketJoinMulticast();
      if (v25)
      {
        if (MIBUOnceToken != -1)
        {
          [MIBUMulticastSocket initWithConfiguration:delegate:];
        }

        v26 = MIBUConnObj;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          strerror(v25);
          [MIBUMulticastSocket initWithConfiguration:delegate:];
        }

        goto LABEL_73;
      }

      v41 = dispatch_source_create(MEMORY[0x277D85D28], v21, 0, *(v8 + 2));
      if (!v41)
      {
        if (MIBUOnceToken != -1)
        {
          [MIBUMulticastSocket initWithConfiguration:delegate:];
        }

        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          [MIBUMulticastSocket initWithConfiguration:delegate:];
        }

        goto LABEL_99;
      }

      v32 = v41;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_43;
      handler[3] = &unk_2798EBA70;
      v33 = &v52;
      objc_copyWeak(&v52, &location);
      v34 = handler;
      goto LABEL_82;
    }

    v28 = v15;
    if (!if_nametoindex([v15 UTF8String]))
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }

      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }

      goto LABEL_99;
    }

    v29 = v15;
    [v15 UTF8String];
    if ((SocketSetMulticastInterface() & 0x80000000) != 0 && (v39 = *__error()) != 0)
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }

      v40 = MIBUConnObj;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        strerror(v39);
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }
    }

    else
    {
      v30 = SockAddrGetSize();
      if ((connect(v21, buf, v30) & 0x80000000) == 0 || (v46 = *__error()) == 0)
      {
        v31 = dispatch_source_create(MEMORY[0x277D85D50], v21, 0, *(v8 + 2));
        if (!v31)
        {
          if (MIBUOnceToken != -1)
          {
            [MIBUMulticastSocket initWithConfiguration:delegate:];
          }

          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            [MIBUMulticastSocket initWithConfiguration:delegate:];
          }

          goto LABEL_99;
        }

        v32 = v31;
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_55;
        v49[3] = &unk_2798EBA70;
        v33 = &v50;
        objc_copyWeak(&v50, &location);
        v34 = v49;
LABEL_82:
        dispatch_source_set_event_handler(v32, v34);
        objc_destroyWeak(v33);
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_2_56;
        v47[3] = &unk_2798EBA70;
        objc_copyWeak(&v48, &location);
        dispatch_source_set_cancel_handler(v32, v47);
        objc_storeStrong(v8 + 3, v32);
        *(v8 + 8) = v21;
        v42 = [MEMORY[0x277CBEAA8] now];
        v43 = *(v8 + 5);
        *(v8 + 5) = v42;

        objc_destroyWeak(&v48);
        objc_destroyWeak(&location);

LABEL_83:
        v18 = v8;
        goto LABEL_84;
      }

      if (MIBUOnceToken != -1)
      {
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }

      v40 = MIBUConnObj;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        strerror(v46);
        [MIBUMulticastSocket initWithConfiguration:delegate:];
      }
    }

    goto LABEL_99;
  }

  if (MIBUOnceToken != -1)
  {
    [MIBUMulticastSocket initWithConfiguration:delegate:];
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    [MIBUMulticastSocket initWithConfiguration:delegate:];
  }

LABEL_14:

LABEL_25:
  v18 = 0;
LABEL_84:

  v44 = *MEMORY[0x277D85DE8];
  return v18;
}

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_11()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_14()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_17()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_20()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_23()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_26()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_31()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_34()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_37()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_40()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_43(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReadDispatchSource];
}

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_2()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_46()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_49()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_52()
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

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWriteDispatchSource];
}

void __54__MIBUMulticastSocket_initWithConfiguration_delegate___block_invoke_2_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSourceCancelled];
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MIBUMulticastSocket_start__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)stop
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__MIBUMulticastSocket_stop__block_invoke;
  block[3] = &unk_2798EB9A8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)sendPacket:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MIBUMulticastSocket_sendPacket_withCompletion___block_invoke;
  block[3] = &unk_2798EB9D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)isActive
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:self->_lastActivity];
  LOBYTE(self) = v4 < 120.0;

  return self;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@>", v4];

  return v5;
}

- (void)_start
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUMulticastSocket _start];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting multicast socket.", &v6, 0xCu);
  }

  dispatch_activate(self->_dispatchSource);
  socketDelegate = self->_socketDelegate;
  if (socketDelegate)
  {
    [(MIBUMulticastSocketDelegate *)socketDelegate multicastSocketDidStart:self];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __29__MIBUMulticastSocket__start__block_invoke()
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

- (void)_stop
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (MIBUOnceToken != -1)
  {
    [MIBUMulticastSocket _stop];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping multicast socket.", &v5, 0xCu);
  }

  dispatch_source_cancel(self->_dispatchSource);
  v4 = *MEMORY[0x277D85DE8];
}

void __28__MIBUMulticastSocket__stop__block_invoke()
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

- (void)_sendPacket:(id)a3 retryCount:(unint64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  size = dispatch_data_get_size(v8);
  if (send(self->_socketFD, [v8 bytes], size, 0) == size)
  {
    v9[2](v9, 0);
  }

  else
  {
    v11 = __error();
    if (a4 <= 9 && *v11 == 55)
    {
      v12 = dispatch_time(0, 30000000);
      dispatchQueue = self->_dispatchQueue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__MIBUMulticastSocket__sendPacket_retryCount_withCompletion___block_invoke;
      v17[3] = &unk_2798EBA98;
      v17[4] = self;
      v18 = v8;
      v20 = a4;
      v19 = v9;
      dispatch_after(v12, dispatchQueue, v17);
    }

    else
    {
      v14 = *MEMORY[0x277CCA5B8];
      v15 = *__error();
      v16 = NSErrorF();
      (v9)[2](v9, v16);
    }
  }
}

- (void)_handleReadDispatchSource
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  data = dispatch_source_get_data(self->_dispatchSource);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (data >= 0x404)
  {
    v7 = data / 0x404;
    v8 = *MEMORY[0x277D85CB0];
    while (1)
    {
      v9 = malloc_type_malloc(0x404uLL, 0xBA4FAC6EuLL);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = recv(self->_socketFD, v9, 0x404uLL, 0);
      if (v11 < 0)
      {
        if (MIBUOnceToken != -1)
        {
          [MIBUMulticastSocket _handleReadDispatchSource];
        }

        v14 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = __error();
          v17 = strerror(*v16);
          v21 = 136315138;
          v22 = v17;
          _os_log_impl(&dword_259B04000, v15, OS_LOG_TYPE_DEFAULT, "Failed to read data from socket: %s", &v21, 0xCu);
        }

        goto LABEL_23;
      }

      if (v11 != 1028)
      {
        v18 = v11;
        if (MIBUOnceToken != -1)
        {
          [MIBUMulticastSocket _handleReadDispatchSource];
        }

        v19 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 134217984;
          v22 = v18;
          _os_log_impl(&dword_259B04000, v19, OS_LOG_TYPE_DEFAULT, "Unexpected size of data read from socket: %ld", &v21, 0xCu);
        }

LABEL_23:
        free(v10);
        goto LABEL_24;
      }

      v12 = dispatch_data_create(v10, 0x404uLL, 0, v8);
      [v4 addObject:v12];

      if (!--v7)
      {
        goto LABEL_2;
      }
    }

    if (MIBUOnceToken != -1)
    {
      [MIBUMulticastSocket _handleReadDispatchSource];
    }

    v13 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = 1028;
      _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "Failed to allocate buffer of size: %lu", &v21, 0xCu);
    }
  }

  else
  {
LABEL_2:
    v5 = [MEMORY[0x277CBEAA8] now];
    objc_storeStrong(&self->_lastActivity, v5);
    socketDelegate = self->_socketDelegate;
    if (socketDelegate)
    {
      [(MIBUMulticastSocketDelegate *)socketDelegate multicastSocket:self didReceivePackets:v4 atTime:v5];
    }
  }

LABEL_24:

  v20 = *MEMORY[0x277D85DE8];
}

void __48__MIBUMulticastSocket__handleReadDispatchSource__block_invoke()
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

void __48__MIBUMulticastSocket__handleReadDispatchSource__block_invoke_69()
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

void __48__MIBUMulticastSocket__handleReadDispatchSource__block_invoke_72()
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

- (void)_handleSourceCancelled
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  socketFD = self->_socketFD;
  if (socketFD)
  {
    close(socketFD);
    self->_socketFD = -1;
  }

  socketDelegate = self->_socketDelegate;
  if (socketDelegate)
  {

    [(MIBUMulticastSocketDelegate *)socketDelegate multicastSocketDidStop:self withError:0];
  }
}

- (void)initWithConfiguration:delegate:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:delegate:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: Invalid group address specified: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:(int)a3 delegate:.cold.7(uint64_t a1, void *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  strerror(a3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9(&dword_259B04000, v5, v6, "%{public}@: Failed to set IPV6_USE_MIN_MTU on socket: %s", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:delegate:.cold.9()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_259B04000, "%{public}@: Failed to select multicast interface: %s", v3, v4);
}

- (void)initWithConfiguration:delegate:.cold.11()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_259B04000, "%{public}@: Failed to connect to socket: %s", v3, v4);
}

- (void)initWithConfiguration:delegate:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:delegate:.cold.15()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: Failed to get network interface index for: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:delegate:.cold.17()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_259B04000, "%{public}@: Failed to set SO_REUSEPORT on socket: %s", v3, v4);
}

- (void)initWithConfiguration:delegate:.cold.19()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0(v0, v1, v2, 5.778e-34);
  OUTLINED_FUNCTION_4_0(&dword_259B04000, "%{pubilic}@: Failed to bind socket to address: %s", v3, v4);
}

- (void)initWithConfiguration:delegate:.cold.21()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0(v0, v1, v2, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_259B04000, "%{public}@: Failed to join multicast group: %s", v3, v4);
}

- (void)initWithConfiguration:delegate:.cold.23()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:(uint64_t)a1 delegate:(void *)a2 .cold.25(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9(&dword_259B04000, v4, v5, "%{public}@: Failed to create socket: %s", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:delegate:.cold.27()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6(&dword_259B04000, v0, v1, "%{public}@: Invalid IPv4 or IPv6 group address specified: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfiguration:delegate:.cold.29()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end