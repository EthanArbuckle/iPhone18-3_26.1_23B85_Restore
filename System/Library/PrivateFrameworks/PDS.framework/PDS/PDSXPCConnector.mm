@interface PDSXPCConnector
- (BOOL)validateConnectionWithError:(id *)error;
- (PDSXPCConnector)initWithClientID:(id)d;
- (PDSXPCConnector)initWithClientID:(id)d interfaceVendor:(id)vendor connectionVendor:(id)connectionVendor;
- (id)_genericProxyWithError:(id *)error remoteBlock:(id)block;
- (id)_genericSyncProxyWithErrorHandler:(id)handler localStorage:(id *)storage remoteBlock:(id)block;
- (id)_lockedPerformConnectWithBlock:(id)block;
- (id)_lockedRemoteInternalObject;
- (id)_lockedRemoteObject;
- (id)_lockedXPCConnection;
- (id)internalRemoteObjectProxyWithError:(id *)error;
- (id)remoteObjectProxyWithError:(id *)error;
- (id)synchronousInternalRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
@end

@implementation PDSXPCConnector

- (PDSXPCConnector)initWithClientID:(id)d
{
  dCopy = d;
  v5 = +[PDSXPCAdapter defaultInterfaceVendor];
  v6 = +[PDSXPCAdapter defaultConnectionVendor];
  v7 = [(PDSXPCConnector *)self initWithClientID:dCopy interfaceVendor:v5 connectionVendor:v6];

  return v7;
}

- (PDSXPCConnector)initWithClientID:(id)d interfaceVendor:(id)vendor connectionVendor:(id)connectionVendor
{
  dCopy = d;
  vendorCopy = vendor;
  connectionVendorCopy = connectionVendor;
  if (dCopy)
  {
    if (vendorCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [PDSXPCConnector initWithClientID:a2 interfaceVendor:self connectionVendor:?];
    if (connectionVendorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [PDSXPCConnector initWithClientID:a2 interfaceVendor:self connectionVendor:?];
  if (!vendorCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (connectionVendorCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [PDSXPCConnector initWithClientID:a2 interfaceVendor:self connectionVendor:?];
LABEL_4:
  v16.receiver = self;
  v16.super_class = PDSXPCConnector;
  v13 = [(PDSXPCConnector *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_clientID, d);
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_interfaceVendor, vendor);
    objc_storeStrong(&v14->_connectionVendor, connectionVendor);
  }

  return v14;
}

- (BOOL)validateConnectionWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  _lockedRemoteObject = [(PDSXPCConnector *)self _lockedRemoteObject];
  connectionError = [(PDSXPCConnector *)self connectionError];
  v7 = connectionError;
  if (error && connectionError)
  {
    v8 = connectionError;
    *error = v7;
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _lockedRemoteObject == 0;
  }

  v10 = !v9;
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PDSXPCConnector_synchronousRemoteObjectProxyWithErrorHandler___block_invoke;
  v7[3] = &unk_2799F7838;
  v7[4] = self;
  v5 = [(PDSXPCConnector *)self _genericSyncProxyWithErrorHandler:handlerCopy localStorage:&self->_syncRemoteObject remoteBlock:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)remoteObjectProxyWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PDSXPCConnector_remoteObjectProxyWithError___block_invoke;
  v7[3] = &unk_2799F7838;
  v7[4] = self;
  v5 = [(PDSXPCConnector *)self _genericProxyWithError:error remoteBlock:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)synchronousInternalRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__PDSXPCConnector_synchronousInternalRemoteObjectProxyWithErrorHandler___block_invoke;
  v7[3] = &unk_2799F7838;
  v7[4] = self;
  v5 = [(PDSXPCConnector *)self _genericSyncProxyWithErrorHandler:handlerCopy localStorage:&self->_syncInternalRemoteObject remoteBlock:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)internalRemoteObjectProxyWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__PDSXPCConnector_internalRemoteObjectProxyWithError___block_invoke;
  v7[3] = &unk_2799F7838;
  v7[4] = self;
  v5 = [(PDSXPCConnector *)self _genericProxyWithError:error remoteBlock:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lockedRemoteObject
{
  os_unfair_lock_assert_owner(&self->_lock);
  remoteObject = self->_remoteObject;
  if (!remoteObject)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__PDSXPCConnector__lockedRemoteObject__block_invoke;
    v7[3] = &unk_2799F7860;
    v7[4] = self;
    v4 = [(PDSXPCConnector *)self _lockedPerformConnectWithBlock:v7];
    v5 = self->_remoteObject;
    self->_remoteObject = v4;

    remoteObject = self->_remoteObject;
  }

  return remoteObject;
}

- (id)_lockedRemoteInternalObject
{
  os_unfair_lock_assert_owner(&self->_lock);
  internalRemoteObject = self->_internalRemoteObject;
  if (!internalRemoteObject)
  {
    v4 = [(PDSXPCConnector *)self _lockedPerformConnectWithBlock:&__block_literal_global_0];
    v5 = self->_internalRemoteObject;
    self->_internalRemoteObject = v4;

    internalRemoteObject = self->_internalRemoteObject;
  }

  return internalRemoteObject;
}

- (id)_genericProxyWithError:(id *)error remoteBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  connectionError = [(PDSXPCConnector *)self connectionError];

  if (connectionError)
  {
    if (error)
    {
      [(PDSXPCConnector *)self connectionError];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = blockCopy[2](blockCopy);
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (error)
    {
      *error = [(PDSXPCConnector *)self connectionError];
    }
  }

  return v8;
}

- (id)_genericSyncProxyWithErrorHandler:(id)handler localStorage:(id *)storage remoteBlock:(id)block
{
  handlerCopy = handler;
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  v10 = *storage;
  if (!*storage)
  {
    v20 = 0;
    v11 = [(PDSXPCConnector *)self _genericProxyWithError:&v20 remoteBlock:blockCopy];
    v12 = v20;
    v13 = v12;
    if (v11)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __78__PDSXPCConnector__genericSyncProxyWithErrorHandler_localStorage_remoteBlock___block_invoke;
      v18[3] = &unk_2799F78A8;
      v19 = handlerCopy;
      v14 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v18];
      v15 = *storage;
      *storage = v14;
    }

    else if (handlerCopy && v12)
    {
      (*(handlerCopy + 2))(handlerCopy, v12);
    }

    v10 = *storage;
  }

  v16 = v10;

  return v10;
}

uint64_t __78__PDSXPCConnector__genericSyncProxyWithErrorHandler_localStorage_remoteBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_lockedPerformConnectWithBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_connectionError)
  {
    v5 = 0;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy_;
    v29 = __Block_byref_object_dispose_;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v6 = self->_handshakeProxy;
    if (!self->_handshakeProxy)
    {
      _lockedXPCConnection = [(PDSXPCConnector *)self _lockedXPCConnection];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __50__PDSXPCConnector__lockedPerformConnectWithBlock___block_invoke;
      v18[3] = &unk_2799F78D0;
      v18[4] = &v25;
      v8 = [_lockedXPCConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
      handshakeProxy = self->_handshakeProxy;
      self->_handshakeProxy = v8;

      v10 = self->_handshakeProxy;
      if (v26[5])
      {
        v11 = self->_handshakeProxy;
        self->_handshakeProxy = 0;
      }

      v12 = pds_defaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v26[5];
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_25DECA000, v12, OS_LOG_TYPE_DEFAULT, "PDSXPCConnection acquired handshake proxy {selfPointer: %p, XPCError: %@}", buf, 0x16u);
      }

      v6 = v10;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    if (v6)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __50__PDSXPCConnector__lockedPerformConnectWithBlock___block_invoke_17;
      v17[3] = &unk_2799F78F8;
      v17[4] = &v19;
      v17[5] = buf;
      blockCopy[2](blockCopy, v6, v17);
    }

    if (v26[5] || v20[5])
    {
      [(PDSXPCConnector *)self setConnectionError:?];
      v14 = self->_handshakeProxy;
      self->_handshakeProxy = 0;
    }

    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

void __50__PDSXPCConnector__lockedPerformConnectWithBlock___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_lockedXPCConnection
{
  os_unfair_lock_assert_owner(&self->_lock);
  p_XPCConnection = &self->_XPCConnection;
  XPCConnection = self->_XPCConnection;
  if (!XPCConnection)
  {
    v5 = [(PDSXPCConnectionVendor *)self->_connectionVendor connectionForMachService:@"com.apple.identityservicesd.pds"];
    objc_initWeak(&location, self);
    v6 = [PDSXPCInterface handShakeInterfaceFromVendor:self->_interfaceVendor];
    [v5 setRemoteObjectInterface:v6];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__PDSXPCConnector__lockedXPCConnection__block_invoke;
    v10[3] = &unk_2799F7920;
    objc_copyWeak(&v11, &location);
    [v5 setInterruptionHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__PDSXPCConnector__lockedXPCConnection__block_invoke_21;
    v8[3] = &unk_2799F7920;
    objc_copyWeak(&v9, &location);
    [v5 setInvalidationHandler:v8];
    objc_storeStrong(p_XPCConnection, v5);
    [v5 resume];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);

    XPCConnection = *p_XPCConnection;
  }

  return XPCConnection;
}

void __39__PDSXPCConnector__lockedXPCConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pds_defaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = WeakRetained;
      _os_log_impl(&dword_25DECA000, v2, OS_LOG_TYPE_DEFAULT, "PDSXPCConnection interrupted {selfPointer: %p}", &v7, 0xCu);
    }

    if (os_unfair_lock_trylock(WeakRetained + 2))
    {
      v3 = *&WeakRetained[10]._os_unfair_lock_opaque;
      *&WeakRetained[10]._os_unfair_lock_opaque = 0;

      v4 = *&WeakRetained[12]._os_unfair_lock_opaque;
      *&WeakRetained[12]._os_unfair_lock_opaque = 0;

      v5 = *&WeakRetained[8]._os_unfair_lock_opaque;
      *&WeakRetained[8]._os_unfair_lock_opaque = 0;

      os_unfair_lock_unlock(WeakRetained + 2);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __39__PDSXPCConnector__lockedXPCConnection__block_invoke_21(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pds_defaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = WeakRetained;
      _os_log_impl(&dword_25DECA000, v2, OS_LOG_TYPE_DEFAULT, "PDSXPCConnection interrupted {selfPointer: %p}", &v10, 0xCu);
    }

    if (os_unfair_lock_trylock(WeakRetained + 2))
    {
      v3 = *&WeakRetained[10]._os_unfair_lock_opaque;
      *&WeakRetained[10]._os_unfair_lock_opaque = 0;

      v4 = *&WeakRetained[12]._os_unfair_lock_opaque;
      *&WeakRetained[12]._os_unfair_lock_opaque = 0;

      v5 = *&WeakRetained[6]._os_unfair_lock_opaque;
      *&WeakRetained[6]._os_unfair_lock_opaque = 0;

      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:PDSXPCErrorDomain code:-300 userInfo:0];
      v7 = *&WeakRetained[18]._os_unfair_lock_opaque;
      *&WeakRetained[18]._os_unfair_lock_opaque = v6;

      v8 = *&WeakRetained[6]._os_unfair_lock_opaque;
      *&WeakRetained[6]._os_unfair_lock_opaque = 0;

      os_unfair_lock_unlock(WeakRetained + 2);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithClientID:(uint64_t)a1 interfaceVendor:(uint64_t)a2 connectionVendor:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSXPCConnector.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"clientID"}];
}

- (void)initWithClientID:(uint64_t)a1 interfaceVendor:(uint64_t)a2 connectionVendor:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSXPCConnector.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"interfaceVendor"}];
}

- (void)initWithClientID:(uint64_t)a1 interfaceVendor:(uint64_t)a2 connectionVendor:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSXPCConnector.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"connectionVendor"}];
}

@end