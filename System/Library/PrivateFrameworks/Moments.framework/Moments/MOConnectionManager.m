@interface MOConnectionManager
- (MOConnectionManager)initWithName:(id)a3 usingDelegate:(id)a4;
- (MOConnectionManagerDelegate)delegate;
- (id)_getActiveConnection;
- (id)_getSingleCallHandler:(id)a3;
- (id)_makeConnectionErrorWithReason:(id)a3;
- (id)getAsyncProxyProvider;
- (id)getSyncProxyProvider;
- (void)_callProxy:(id)a3 usingBlock:(id)a4 onError:(id)a5;
- (void)_callProxyProvider:(id)a3 usingBlock:(id)a4 onError:(id)a5;
- (void)_getActiveConnection;
- (void)_postProxy:(id)a3 usingBlock:(id)a4 onError:(id)a5;
- (void)_postProxyProvider:(id)a3 usingBlock:(id)a4 onError:(id)a5;
- (void)callAsyncProxyUsingBlock:(id)a3 onError:(id)a4;
- (void)callSyncProxyUsingBlock:(id)a3 onError:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)postAsyncProxyUsingBlock:(id)a3 onError:(id)a4;
- (void)postSyncProxyUsingBlock:(id)a3 onError:(id)a4;
- (void)withProxyProvider:(id)a3 proxyHandler:(id)a4 onError:(id)a5;
@end

@implementation MOConnectionManager

- (id)getSyncProxyProvider
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__MOConnectionManager_getSyncProxyProvider__block_invoke;
  v5[3] = &unk_278774BD0;
  v5[4] = self;
  v2 = MEMORY[0x2318D5790](v5, a2);
  v3 = MEMORY[0x2318D5790]();

  return v3;
}

id __43__MOConnectionManager_getSyncProxyProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __43__MOConnectionManager_getSyncProxyProvider__block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = [*(a1 + 32) _getActiveConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__MOConnectionManager_getSyncProxyProvider__block_invoke_34;
  v16[3] = &unk_278773648;
  v17 = v3;
  v13 = v3;
  v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v16];

  return v14;
}

- (id)_getActiveConnection
{
  v3 = self;
  objc_sync_enter(v3);
  p_xpc_connection = &v3->_xpc_connection;
  xpc_connection = v3->_xpc_connection;
  if (xpc_connection)
  {
    v6 = xpc_connection;
  }

  else
  {
    v7 = [(MOConnectionManager *)v3 delegate];

    if (v7)
    {
      v8 = [(MOConnectionManager *)v3 delegate];
      v9 = [v8 makeNewConnectionWithInterfaceFor:v3];

      v10 = [v9 remoteObjectInterface];

      if (!v10)
      {
        v11 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(MOConnectionManager *)v3 _getActiveConnection];
        }

        v12 = [MEMORY[0x277CCA890] currentHandler];
        [v12 handleFailureInMethod:a2 object:v3 file:@"MOConnectionManager.m" lineNumber:48 description:{@"Invalid '%@' connection .remoteObjectInterface (in %s:%d)", v3->_connectionName, "-[MOConnectionManager _getActiveConnection]", 48}];
      }

      objc_initWeak(&location, v3);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __43__MOConnectionManager__getActiveConnection__block_invoke;
      v18[3] = &unk_2787739A8;
      objc_copyWeak(&v19, &location);
      [v9 setInvalidationHandler:v18];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __43__MOConnectionManager__getActiveConnection__block_invoke_8;
      v16[3] = &unk_2787739A8;
      objc_copyWeak(&v17, &location);
      [v9 setInterruptionHandler:v16];
      objc_storeStrong(&v3->_xpc_connection, v9);
      v13 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(MOConnectionManager *)v3 _getActiveConnection];
      }

      [*p_xpc_connection activate];
      v6 = *p_xpc_connection;
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(MOConnectionManager *)v3 _getActiveConnection];
      }

      v6 = 0;
    }
  }

  objc_sync_exit(v3);

  return v6;
}

- (MOConnectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MOConnectionManager)initWithName:(id)a3 usingDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MOConnectionManager;
  v9 = [(MOConnectionManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    xpc_connection = v9->_xpc_connection;
    v9->_xpc_connection = 0;

    v12 = [[MOConnection alloc] initWithName:v10->_connectionName];
    mo_connection = v10->_mo_connection;
    v10->_mo_connection = v12;

    objc_storeStrong(&v10->_connectionName, a3);
    [(MOConnectionManager *)v10 setDelegate:v8];
  }

  return v10;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpc_connection invalidate];
  v3.receiver = self;
  v3.super_class = MOConnectionManager;
  [(MOConnectionManager *)&v3 dealloc];
}

void __43__MOConnectionManager__getActiveConnection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;

    v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v2[3];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22D8C5000, v4, OS_LOG_TYPE_INFO, "Connection '%@' Invalidated", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __43__MOConnectionManager__getActiveConnection__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[2] onConnectionInterrupted];
    WeakRetained = v3;
  }
}

- (id)_getSingleCallHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__MOConnectionManager__getSingleCallHandler___block_invoke_2;
    v7[3] = &unk_278774AB8;
    objc_copyWeak(&v10, &location);
    v9 = v12;
    v8 = v4;
    v5 = MEMORY[0x2318D5790](v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    _Block_object_dispose(v12, 8);
  }

  else
  {
    v5 = &__block_literal_global_4;
  }

  return v5;
}

void __45__MOConnectionManager__getSingleCallHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_loadWeakRetained((a1 + 48));
  objc_sync_enter(v3);
  v4 = *(*(a1 + 40) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(v3);
}

- (id)_makeConnectionErrorWithReason:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA450];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(MOConnectionManager *)self getConnectionName];
  v7 = [v4 stringWithFormat:@"%@:%@", v6, v5];

  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_callProxy:(id)a3 usingBlock:(id)a4 onError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    objc_initWeak(&location, self);
    mo_connection = self->_mo_connection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__MOConnectionManager__callProxy_usingBlock_onError___block_invoke;
    v21[3] = &unk_278774AE0;
    v13 = v9;
    v23 = v13;
    v14 = v8;
    v22 = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__MOConnectionManager__callProxy_usingBlock_onError___block_invoke_2;
    v16[3] = &unk_278774B08;
    objc_copyWeak(&v20, &location);
    v18 = v11;
    v19 = v13;
    v17 = v14;
    [(MOConnection *)mo_connection callBlock:v21 onInterruption:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else if (v10)
  {
    v15 = [(MOConnectionManager *)self _makeConnectionErrorWithReason:@"nil proxy"];
    (v11)[2](v11, v15);
  }
}

void __53__MOConnectionManager__callProxy_usingBlock_onError___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __53__MOConnectionManager__callProxy_usingBlock_onError___block_invoke_2_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = WeakRetained[2];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__MOConnectionManager__callProxy_usingBlock_onError___block_invoke_20;
    v17[3] = &unk_278774AE0;
    v19 = a1[6];
    v18 = a1[4];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__MOConnectionManager__callProxy_usingBlock_onError___block_invoke_2_21;
    v15[3] = &unk_278773648;
    v16 = a1[5];
    [v13 callBlock:v17 onInterruption:v15];
  }

  else
  {
    v14 = a1[5];
    if (v14)
    {
      v14[2](v14, v3);
    }
  }
}

uint64_t __53__MOConnectionManager__callProxy_usingBlock_onError___block_invoke_2_21(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_postProxy:(id)a3 usingBlock:(id)a4 onError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    mo_connection = self->_mo_connection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__MOConnectionManager__postProxy_usingBlock_onError___block_invoke;
    v16[3] = &unk_278774AE0;
    v18 = v9;
    v17 = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__MOConnectionManager__postProxy_usingBlock_onError___block_invoke_2;
    v14[3] = &unk_278773648;
    v15 = v11;
    [(MOConnection *)mo_connection callBlock:v16 onInterruption:v14];
  }

  else if (v10)
  {
    v13 = [(MOConnectionManager *)self _makeConnectionErrorWithReason:@"nil proxy"];
    (v11)[2](v11, v13);
  }
}

uint64_t __53__MOConnectionManager__postProxy_usingBlock_onError___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_postProxyProvider:(id)a3 usingBlock:(id)a4 onError:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MOConnectionManager *)self _getSingleCallHandler:a5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__MOConnectionManager__postProxyProvider_usingBlock_onError___block_invoke;
  v13[3] = &unk_278774B58;
  v13[4] = self;
  v14 = v8;
  v15 = v10;
  v11 = v10;
  v12 = v8;
  [(MOConnectionManager *)self withProxyProvider:v9 proxyHandler:v13 onError:v11];
}

void __61__MOConnectionManager__postProxyProvider_usingBlock_onError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__MOConnectionManager__postProxyProvider_usingBlock_onError___block_invoke_2;
  v8[3] = &unk_278774B30;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = v3;
  [v4 _postProxy:v7 usingBlock:v8 onError:v6];
}

void __61__MOConnectionManager__postProxyProvider_usingBlock_onError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v3 + 16);
  v6 = a3;
  v5(v3, v4);
  v6[2]();
}

- (void)_callProxyProvider:(id)a3 usingBlock:(id)a4 onError:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MOConnectionManager *)self _getSingleCallHandler:a5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__MOConnectionManager__callProxyProvider_usingBlock_onError___block_invoke;
  v13[3] = &unk_278774B58;
  v13[4] = self;
  v14 = v8;
  v15 = v10;
  v11 = v10;
  v12 = v8;
  [(MOConnectionManager *)self withProxyProvider:v9 proxyHandler:v13 onError:v11];
}

- (void)postSyncProxyUsingBlock:(id)a3 onError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MOConnectionManager *)self getSyncProxyProvider];
  [(MOConnectionManager *)self _postProxyProvider:v8 usingBlock:v7 onError:v6];
}

- (void)postAsyncProxyUsingBlock:(id)a3 onError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MOConnectionManager *)self getAsyncProxyProvider];
  [(MOConnectionManager *)self _postProxyProvider:v8 usingBlock:v7 onError:v6];
}

- (void)callSyncProxyUsingBlock:(id)a3 onError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MOConnectionManager *)self getSyncProxyProvider];
  [(MOConnectionManager *)self _callProxyProvider:v8 usingBlock:v7 onError:v6];
}

- (void)callAsyncProxyUsingBlock:(id)a3 onError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MOConnectionManager *)self getAsyncProxyProvider];
  [(MOConnectionManager *)self _callProxyProvider:v8 usingBlock:v7 onError:v6];
}

- (void)withProxyProvider:(id)a3 proxyHandler:(id)a4 onError:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v12 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOConnectionManager withProxyProvider:proxyHandler:onError:];
    }

    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MOConnectionManager.m" lineNumber:210 description:{@"Should use valid sync proxy block handler (in %s:%d)", "-[MOConnectionManager withProxyProvider:proxyHandler:onError:]", 210}];
  }

  [(MOConnectionManager *)self _getSingleCallHandler:v11];
  v14 = v20 = v9;
  v15 = v10;
  v16 = v9[2];
  v17 = v9;
  v18 = v16();
  if (v18)
  {
    v15[2](v15, v18);
  }

  else
  {
    v19 = [(MOConnectionManager *)self _makeConnectionErrorWithReason:@"nil proxy @1"];
    v14[2](v14, v19);
  }
}

void __62__MOConnectionManager_withProxyProvider_proxyHandler_onError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__MOConnectionManager_withProxyProvider_proxyHandler_onError___block_invoke_cold_1(a1, v3);
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __62__MOConnectionManager_withProxyProvider_proxyHandler_onError___block_invoke_27;
  v15 = &unk_278774B80;
  v5 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v9 = (*(v5 + 16))(v5, &v12);
  if (v9)
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), v9, v6, v7, v8);
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) _makeConnectionErrorWithReason:{@"nil proxy @2", v12, v13, v14, v15, v16}];
    (*(v10 + 16))(v10, v11);
  }
}

void __62__MOConnectionManager_withProxyProvider_proxyHandler_onError___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__MOConnectionManager_withProxyProvider_proxyHandler_onError___block_invoke_27_cold_1(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)getAsyncProxyProvider
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__MOConnectionManager_getAsyncProxyProvider__block_invoke;
  v5[3] = &unk_278774BD0;
  v5[4] = self;
  v2 = MEMORY[0x2318D5790](v5, a2);
  v3 = MEMORY[0x2318D5790]();

  return v3;
}

id __44__MOConnectionManager_getAsyncProxyProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __44__MOConnectionManager_getAsyncProxyProvider__block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = [*(a1 + 32) _getActiveConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__MOConnectionManager_getAsyncProxyProvider__block_invoke_36;
  v16[3] = &unk_278773648;
  v17 = v3;
  v13 = v3;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v16];

  return v14;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(NSXPCConnection *)obj->_xpc_connection invalidate];
  objc_sync_exit(obj);
}

- (void)_getActiveConnection
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(&dword_22D8C5000, v2, OS_LOG_TYPE_ERROR, "Can't activate connection '%@': nil delegate", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)withProxyProvider:proxyHandler:onError:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v3 = 1024;
  v4 = 210;
  _os_log_error_impl(&dword_22D8C5000, v0, OS_LOG_TYPE_ERROR, "Should use valid sync proxy block handler (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void __62__MOConnectionManager_withProxyProvider_proxyHandler_onError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) getConnectionName];
  v4 = [a2 localizedDescription];
  v5 = [a2 localizedFailureReason];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_1(&dword_22D8C5000, v6, v7, "%@: proxy error, %@, %@, retrying...", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __62__MOConnectionManager_withProxyProvider_proxyHandler_onError___block_invoke_27_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) getConnectionName];
  v4 = [a2 localizedDescription];
  v5 = [a2 localizedFailureReason];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_1(&dword_22D8C5000, v6, v7, "%@: proxy error, %@, %@.", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end