@interface CRKNonCatalystStudentDaemonProxy
- (CRKNonCatalystStudentDaemonProxy)initWithCallbackQueue:(id)a3;
- (id)setOfActiveRestrictionUUIDs:(id)a3;
- (void)_fetchAdHocConfiguration:(id)a3;
- (void)_fetchConfiguration:(id)a3;
- (void)_fetchConfigurationType:(id)a3;
- (void)_fetchResourceFromURL:(id)a3 completion:(id)a4;
- (void)_fetchSetOfActiveRestrictionUUIDsForClientType:(id)a3 completion:(id)a4;
- (void)_setActiveStudentIdentifier:(id)a3 completion:(id)a4;
- (void)_setAdHocConfiguration:(id)a3 completion:(id)a4;
- (void)_setConfiguration:(id)a3 completion:(id)a4;
- (void)_studentDidAuthenticate:(id)a3 completion:(id)a4;
- (void)fetchAdHocConfiguration:(id)a3;
- (void)fetchConfiguration:(id)a3;
- (void)fetchConfigurationType:(id)a3;
- (void)fetchResourceFromURL:(id)a3 completion:(id)a4;
- (void)fetchSetOfActiveRestrictionUUIDsForClientType:(id)a3 completion:(id)a4;
- (void)setActiveStudentIdentifier:(id)a3 completion:(id)a4;
- (void)setAdHocConfiguration:(id)a3 completion:(id)a4;
- (void)setConfiguration:(id)a3 completion:(id)a4;
- (void)studentDidAuthenticate:(id)a3 completion:(id)a4;
@end

@implementation CRKNonCatalystStudentDaemonProxy

- (CRKNonCatalystStudentDaemonProxy)initWithCallbackQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRKNonCatalystStudentDaemonProxy;
  v6 = [(CRKNonCatalystStudentDaemonProxy *)&v10 init];
  if (v6)
  {
    v7 = [[CRKValidXPCConnectionProvider alloc] initWithBuilder:&__block_literal_global_57];
    connectionProvider = v6->_connectionProvider;
    v6->_connectionProvider = v7;

    objc_storeStrong(&v6->_callbackQueue, a3);
  }

  return v6;
}

- (id)setOfActiveRestrictionUUIDs:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy_;
  v17[3] = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v6 = [v5 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__CRKNonCatalystStudentDaemonProxy_setOfActiveRestrictionUUIDs___block_invoke;
  v15[3] = &unk_278DC2270;
  v15[4] = &v16;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__CRKNonCatalystStudentDaemonProxy_setOfActiveRestrictionUUIDs___block_invoke_2;
  v14[3] = &unk_278DC2298;
  v14[4] = &v19;
  v14[5] = &v16;
  [v7 fetchSetOfActiveRestrictionUUIDsForClientType:v4 completion:v14];

  v8 = v20[5];
  if (!v8)
  {
    if (_CRKLogGeneral_onceToken_15 != -1)
    {
      [CRKNonCatalystStudentDaemonProxy setOfActiveRestrictionUUIDs:];
    }

    v9 = _CRKLogGeneral_logObj_15;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_15, OS_LOG_TYPE_ERROR))
    {
      [(CRKNonCatalystStudentDaemonProxy *)v17 setOfActiveRestrictionUUIDs:v9];
    }

    v10 = objc_opt_new();
    v11 = v20[5];
    v20[5] = v10;

    v8 = v20[5];
  }

  v12 = v8;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __64__CRKNonCatalystStudentDaemonProxy_setOfActiveRestrictionUUIDs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fetchConfigurationType:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CRKNonCatalystStudentDaemonProxy_fetchConfigurationType___block_invoke;
  v6[3] = &unk_278DC22C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKNonCatalystStudentDaemonProxy *)self _fetchConfigurationType:v6];
}

void __59__CRKNonCatalystStudentDaemonProxy_fetchConfigurationType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchConfigurationType:(id)a3
{
  v4 = a3;
  v5 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v6 = [v5 connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CRKNonCatalystStudentDaemonProxy__fetchConfigurationType___block_invoke;
  v12[3] = &unk_278DC19D0;
  v12[4] = self;
  v7 = v4;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__CRKNonCatalystStudentDaemonProxy__fetchConfigurationType___block_invoke_3;
  v10[3] = &unk_278DC22C0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 fetchConfigurationType:v10];
}

void __60__CRKNonCatalystStudentDaemonProxy__fetchConfigurationType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__CRKNonCatalystStudentDaemonProxy__fetchConfigurationType___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __60__CRKNonCatalystStudentDaemonProxy__fetchConfigurationType___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CRKNonCatalystStudentDaemonProxy__fetchConfigurationType___block_invoke_4;
  block[3] = &unk_278DC22E8;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)setAdHocConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CRKNonCatalystStudentDaemonProxy_setAdHocConfiguration_completion___block_invoke;
  v8[3] = &unk_278DC19D0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CRKNonCatalystStudentDaemonProxy *)self _setAdHocConfiguration:a3 completion:v8];
}

void __69__CRKNonCatalystStudentDaemonProxy_setAdHocConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_setAdHocConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v9 = [v8 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__CRKNonCatalystStudentDaemonProxy__setAdHocConfiguration_completion___block_invoke;
  v15[3] = &unk_278DC19D0;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__CRKNonCatalystStudentDaemonProxy__setAdHocConfiguration_completion___block_invoke_3;
  v13[3] = &unk_278DC19D0;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 setAdHocConfiguration:v7 completion:v13];
}

void __70__CRKNonCatalystStudentDaemonProxy__setAdHocConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__CRKNonCatalystStudentDaemonProxy__setAdHocConfiguration_completion___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __70__CRKNonCatalystStudentDaemonProxy__setAdHocConfiguration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__CRKNonCatalystStudentDaemonProxy__setAdHocConfiguration_completion___block_invoke_4;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchAdHocConfiguration:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CRKNonCatalystStudentDaemonProxy_fetchAdHocConfiguration___block_invoke;
  v6[3] = &unk_278DC2310;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKNonCatalystStudentDaemonProxy *)self _fetchAdHocConfiguration:v6];
}

void __60__CRKNonCatalystStudentDaemonProxy_fetchAdHocConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchAdHocConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v6 = [v5 connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__CRKNonCatalystStudentDaemonProxy__fetchAdHocConfiguration___block_invoke;
  v12[3] = &unk_278DC19D0;
  v12[4] = self;
  v7 = v4;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__CRKNonCatalystStudentDaemonProxy__fetchAdHocConfiguration___block_invoke_3;
  v10[3] = &unk_278DC2310;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 fetchAdHocConfiguration:v10];
}

void __61__CRKNonCatalystStudentDaemonProxy__fetchAdHocConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CRKNonCatalystStudentDaemonProxy__fetchAdHocConfiguration___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__CRKNonCatalystStudentDaemonProxy__fetchAdHocConfiguration___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CRKNonCatalystStudentDaemonProxy__fetchAdHocConfiguration___block_invoke_4;
  block[3] = &unk_278DC1630;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)setConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__CRKNonCatalystStudentDaemonProxy_setConfiguration_completion___block_invoke;
  v8[3] = &unk_278DC19D0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CRKNonCatalystStudentDaemonProxy *)self _setConfiguration:a3 completion:v8];
}

void __64__CRKNonCatalystStudentDaemonProxy_setConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_setConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v9 = [v8 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__CRKNonCatalystStudentDaemonProxy__setConfiguration_completion___block_invoke;
  v15[3] = &unk_278DC19D0;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__CRKNonCatalystStudentDaemonProxy__setConfiguration_completion___block_invoke_3;
  v13[3] = &unk_278DC19D0;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 setConfiguration:v7 completion:v13];
}

void __65__CRKNonCatalystStudentDaemonProxy__setConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CRKNonCatalystStudentDaemonProxy__setConfiguration_completion___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __65__CRKNonCatalystStudentDaemonProxy__setConfiguration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CRKNonCatalystStudentDaemonProxy__setConfiguration_completion___block_invoke_4;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchConfiguration:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CRKNonCatalystStudentDaemonProxy_fetchConfiguration___block_invoke;
  v6[3] = &unk_278DC2310;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKNonCatalystStudentDaemonProxy *)self _fetchConfiguration:v6];
}

void __55__CRKNonCatalystStudentDaemonProxy_fetchConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v6 = [v5 connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__CRKNonCatalystStudentDaemonProxy__fetchConfiguration___block_invoke;
  v12[3] = &unk_278DC19D0;
  v12[4] = self;
  v7 = v4;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__CRKNonCatalystStudentDaemonProxy__fetchConfiguration___block_invoke_3;
  v10[3] = &unk_278DC2310;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 fetchConfiguration:v10];
}

void __56__CRKNonCatalystStudentDaemonProxy__fetchConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CRKNonCatalystStudentDaemonProxy__fetchConfiguration___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __56__CRKNonCatalystStudentDaemonProxy__fetchConfiguration___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CRKNonCatalystStudentDaemonProxy__fetchConfiguration___block_invoke_4;
  block[3] = &unk_278DC1630;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)setActiveStudentIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__CRKNonCatalystStudentDaemonProxy_setActiveStudentIdentifier_completion___block_invoke;
  v8[3] = &unk_278DC19D0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CRKNonCatalystStudentDaemonProxy *)self _setActiveStudentIdentifier:a3 completion:v8];
}

void __74__CRKNonCatalystStudentDaemonProxy_setActiveStudentIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_setActiveStudentIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v9 = [v8 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__CRKNonCatalystStudentDaemonProxy__setActiveStudentIdentifier_completion___block_invoke;
  v15[3] = &unk_278DC19D0;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__CRKNonCatalystStudentDaemonProxy__setActiveStudentIdentifier_completion___block_invoke_3;
  v13[3] = &unk_278DC19D0;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 setActiveStudentIdentifier:v7 completion:v13];
}

void __75__CRKNonCatalystStudentDaemonProxy__setActiveStudentIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__CRKNonCatalystStudentDaemonProxy__setActiveStudentIdentifier_completion___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __75__CRKNonCatalystStudentDaemonProxy__setActiveStudentIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__CRKNonCatalystStudentDaemonProxy__setActiveStudentIdentifier_completion___block_invoke_4;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)studentDidAuthenticate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CRKNonCatalystStudentDaemonProxy_studentDidAuthenticate_completion___block_invoke;
  v8[3] = &unk_278DC19D0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CRKNonCatalystStudentDaemonProxy *)self _studentDidAuthenticate:a3 completion:v8];
}

void __70__CRKNonCatalystStudentDaemonProxy_studentDidAuthenticate_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_studentDidAuthenticate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v9 = [v8 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__CRKNonCatalystStudentDaemonProxy__studentDidAuthenticate_completion___block_invoke;
  v15[3] = &unk_278DC19D0;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__CRKNonCatalystStudentDaemonProxy__studentDidAuthenticate_completion___block_invoke_3;
  v13[3] = &unk_278DC19D0;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 studentDidAuthenticate:v7 completion:v13];
}

void __71__CRKNonCatalystStudentDaemonProxy__studentDidAuthenticate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CRKNonCatalystStudentDaemonProxy__studentDidAuthenticate_completion___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __71__CRKNonCatalystStudentDaemonProxy__studentDidAuthenticate_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__CRKNonCatalystStudentDaemonProxy__studentDidAuthenticate_completion___block_invoke_4;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchResourceFromURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__CRKNonCatalystStudentDaemonProxy_fetchResourceFromURL_completion___block_invoke;
  v8[3] = &unk_278DC2338;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CRKNonCatalystStudentDaemonProxy *)self _fetchResourceFromURL:a3 completion:v8];
}

void __68__CRKNonCatalystStudentDaemonProxy_fetchResourceFromURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchResourceFromURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v9 = [v8 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__CRKNonCatalystStudentDaemonProxy__fetchResourceFromURL_completion___block_invoke;
  v15[3] = &unk_278DC19D0;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__CRKNonCatalystStudentDaemonProxy__fetchResourceFromURL_completion___block_invoke_3;
  v13[3] = &unk_278DC2338;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 fetchResourceFromURL:v7 completion:v13];
}

void __69__CRKNonCatalystStudentDaemonProxy__fetchResourceFromURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__CRKNonCatalystStudentDaemonProxy__fetchResourceFromURL_completion___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __69__CRKNonCatalystStudentDaemonProxy__fetchResourceFromURL_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CRKNonCatalystStudentDaemonProxy__fetchResourceFromURL_completion___block_invoke_4;
  block[3] = &unk_278DC1630;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchSetOfActiveRestrictionUUIDsForClientType:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__CRKNonCatalystStudentDaemonProxy_fetchSetOfActiveRestrictionUUIDsForClientType_completion___block_invoke;
  v8[3] = &unk_278DC2360;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(CRKNonCatalystStudentDaemonProxy *)self _fetchSetOfActiveRestrictionUUIDsForClientType:a3 completion:v8];
}

void __93__CRKNonCatalystStudentDaemonProxy_fetchSetOfActiveRestrictionUUIDsForClientType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchSetOfActiveRestrictionUUIDsForClientType:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRKNonCatalystStudentDaemonProxy *)self connectionProvider];
  v9 = [v8 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__CRKNonCatalystStudentDaemonProxy__fetchSetOfActiveRestrictionUUIDsForClientType_completion___block_invoke;
  v15[3] = &unk_278DC19D0;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__CRKNonCatalystStudentDaemonProxy__fetchSetOfActiveRestrictionUUIDsForClientType_completion___block_invoke_3;
  v13[3] = &unk_278DC2360;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 fetchSetOfActiveRestrictionUUIDsForClientType:v7 completion:v13];
}

void __94__CRKNonCatalystStudentDaemonProxy__fetchSetOfActiveRestrictionUUIDsForClientType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__CRKNonCatalystStudentDaemonProxy__fetchSetOfActiveRestrictionUUIDsForClientType_completion___block_invoke_2;
  v7[3] = &unk_278DC0FB8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __94__CRKNonCatalystStudentDaemonProxy__fetchSetOfActiveRestrictionUUIDsForClientType_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__CRKNonCatalystStudentDaemonProxy__fetchSetOfActiveRestrictionUUIDsForClientType_completion___block_invoke_4;
  block[3] = &unk_278DC1630;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)setOfActiveRestrictionUUIDs:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch setOfActiveRestrictionUUIDs: %{public}@", &v3, 0xCu);
}

@end