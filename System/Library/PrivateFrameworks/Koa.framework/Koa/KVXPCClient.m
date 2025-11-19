@interface KVXPCClient
+ (void)initialize;
- (KVXPCClient)init;
- (id)_errorHandlerWithCompletion:(id)a3;
- (id)_failureHandlerWithResponse:(unsigned __int16)a3;
- (id)_remoteObjectProxy:(BOOL)a3 errorCompletion:(id)a4;
- (void)dealloc;
- (void)serviceArrayRespondingRequestWithCompletion:(id)a3 usingBlock:(id)a4;
@end

@implementation KVXPCClient

- (id)_remoteObjectProxy:(BOOL)a3 errorCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v11 = objc_msgSend__errorHandlerWithCompletion_(self, v7, v6, v8, v9, v10);
  v17 = objc_msgSend_connection(self, v12, v13, v14, v15, v16);
  v22 = v17;
  if (v4)
  {
    objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v17, v18, v11, v19, v20, v21);
  }

  else
  {
    objc_msgSend_remoteObjectProxyWithErrorHandler_(v17, v18, v11, v19, v20, v21);
  }
  v23 = ;

  if (v6 && !v23)
  {
    v29 = objc_msgSend_failureCode(self, v24, v25, v26, v27, v28);
    v6[2](v6, v29);
  }

  return v23;
}

- (void)serviceArrayRespondingRequestWithCompletion:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2559AEF48;
  v13[3] = &unk_279803A00;
  v8 = v6;
  v14 = v8;
  v12 = objc_msgSend__remoteObjectProxy_errorCompletion_(self, v9, 1, v13, v10, v11);
  if (v12)
  {
    v7[2](v7, v12, v8);
  }
}

- (id)_errorHandlerWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2559AF2D4;
  v8[3] = &unk_2798039D8;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
  v6 = MEMORY[0x259C45590](v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_failureHandlerWithResponse:(unsigned __int16)a3
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2559AF4E0;
  v6[3] = &unk_2798039B0;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  v4 = MEMORY[0x259C45590](v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (void)dealloc
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_DEBUG))
  {
    v10 = v3;
    v16 = objc_msgSend_clientId(self, v11, v12, v13, v14, v15);
    *buf = 136315394;
    v19 = "[KVXPCClient dealloc]";
    v20 = 2112;
    v21 = v16;
    _os_log_debug_impl(&dword_2559A5000, v10, OS_LOG_TYPE_DEBUG, "%s Invalidating XPC connection for client %@", buf, 0x16u);
  }

  objc_msgSend_invalidate(self->_connection, v4, v5, v6, v7, v8);
  v17.receiver = self;
  v17.super_class = KVXPCClient;
  [(KVXPCClient *)&v17 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (KVXPCClient)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

+ (void)initialize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end