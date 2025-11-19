@interface IsolatedCoreAudioClientNSXPCListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IsolatedCoreAudioClientNSXPCListenerDelegate)initWithInterface:(id)a3 andEntitlement:(id)a4;
- (uint64_t)initWithInterface:andEntitlement:;
- (void)setClientReaper:(function<void)(int;
- (void)setMClientReaper:(function<void)(int;
@end

@implementation IsolatedCoreAudioClientNSXPCListenerDelegate

- (void)setMClientReaper:(function<void)(int
{
  v10[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v8, a3);
  p_mClientReaper = &self->_mClientReaper;
  if (&self->_mClientReaper != v8)
  {
    v5 = v9;
    f = self->_mClientReaper.__f_.__f_;
    if (v9 == v8)
    {
      if (f == p_mClientReaper)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(*self->_mClientReaper.__f_.__f_ + 24))(self->_mClientReaper.__f_.__f_, v8);
        (*(*self->_mClientReaper.__f_.__f_ + 32))(self->_mClientReaper.__f_.__f_);
        self->_mClientReaper.__f_.__f_ = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, &self->_mClientReaper);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = self->_mClientReaper.__f_.__f_;
      }

      self->_mClientReaper.__f_.__f_ = p_mClientReaper;
    }

    else if (f == p_mClientReaper)
    {
      (*(*f->__f_.__buf_.__data + 24))(self->_mClientReaper.__f_.__f_, v8);
      (*(*self->_mClientReaper.__f_.__f_ + 32))(self->_mClientReaper.__f_.__f_);
      self->_mClientReaper.__f_.__f_ = v9;
      v9 = v8;
    }

    else
    {
      v9 = self->_mClientReaper.__f_.__f_;
      self->_mClientReaper.__f_.__f_ = v5;
    }
  }

  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setClientReaper:(function<void)(int
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v5, a3);
  [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self setMClientReaper:v5];
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mEntitlementString];

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mEntitlementString];
  v8 = [v5 valueForEntitlement:v7];
  v9 = [v8 BOOLValue];

  if (v9)
  {

LABEL_4:
    v10 = sIsolatedCoreAudioServerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "IsolatedCoreAudioClientNSXPCListenerDelegate.mm";
      *&buf[12] = 1024;
      *&buf[14] = 41;
      _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioClientNSXPCListenerDelegate - Listener", buf, 0x12u);
    }

    v11 = [v5 getProcessID];
    v12 = v11;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v30 = __Block_byref_object_copy_;
    *(&v30 + 1) = __Block_byref_object_dispose_;
    v31 = [[IsolatedCoreAudioUseCaseConnection alloc] initWithConnection:v5];
    v14 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mInterface];
    [v5 setExportedInterface:v14];

    [v5 setExportedObject:self];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __83__IsolatedCoreAudioClientNSXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke;
    v28[3] = &unk_2797ED2F0;
    v28[4] = buf;
    [v5 setInterruptionHandler:v28];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __83__IsolatedCoreAudioClientNSXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_3;
    v24 = &unk_2797ED318;
    v25 = self;
    v27 = v12;
    v7 = v13;
    v26 = v7;
    [v5 setInvalidationHandler:&v21];
    v15 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mConnections:v21];
    objc_sync_enter(v15);
    v16 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self mConnections];
    [v16 setObject:*(*&buf[8] + 40) forKey:v7];

    objc_sync_exit(v15);
    [v5 resume];

    _Block_object_dispose(buf, 8);
    v17 = 1;
    goto LABEL_10;
  }

  v18 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "IsolatedCoreAudioClientNSXPCListenerDelegate.mm";
    *&buf[12] = 1024;
    *&buf[14] = 36;
    *&buf[18] = 1024;
    *&buf[20] = [v5 processIdentifier];
    LOWORD(v30) = 2112;
    *(&v30 + 2) = v7;
    _os_log_impl(&dword_255576000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Process %i does not have the %@ entitlement", buf, 0x22u);
  }

  v17 = 0;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __83__IsolatedCoreAudioClientNSXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "IsolatedCoreAudioClientNSXPCListenerDelegate.mm";
    v7 = 1024;
    v8 = 49;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientNSXPCListenerDelegate - interruptionHandler", &v5, 0x12u);
  }

  result = [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __83__IsolatedCoreAudioClientNSXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v7[0]) = 136315394;
    *(v7 + 4) = "IsolatedCoreAudioClientNSXPCListenerDelegate.mm";
    WORD6(v7[0]) = 1024;
    *(v7 + 14) = 54;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientNSXPCListenerDelegate - invalidationHandler", v7, 0x12u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 mClientReaper];
    v3 = *(&v7[1] + 1);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  std::function<void ()(int)>::operator()(v3, *(a1 + 48));
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v7);
  v4 = [*(a1 + 32) mConnections];
  objc_sync_enter(v4);
  v5 = [*(a1 + 32) mConnections];
  [v5 removeObjectForKey:*(a1 + 40)];

  objc_sync_exit(v4);
  v6 = *MEMORY[0x277D85DE8];
}

- (IsolatedCoreAudioClientNSXPCListenerDelegate)initWithInterface:(id)a3 andEntitlement:(id)a4
{
  v14[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = IsolatedCoreAudioClientNSXPCListenerDelegate;
  v8 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v8 setMInterface:v6];
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v9 setMEntitlementString:v7];
    v10 = [MEMORY[0x277CBEB38] dictionary];
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v9 setMConnections:v10];

    v14[0] = &unk_286775780;
    v14[3] = v14;
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v9 setMClientReaper:v14];
    std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v14);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)initWithInterface:andEntitlement:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z81-[IsolatedCoreAudioClientNSXPCListenerDelegate initWithInterface:andEntitlement:]E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end