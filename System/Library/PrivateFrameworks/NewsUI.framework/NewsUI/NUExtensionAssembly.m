@interface NUExtensionAssembly
- (NUExtensionAssembly)initWithExtensionContextProvider:(id)a3;
- (NUExtensionContextProvider)extensionContextProvider;
- (void)loadInRegistry:(id)a3;
@end

@implementation NUExtensionAssembly

- (NUExtensionAssembly)initWithExtensionContextProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NUExtensionAssembly;
  v5 = [(NUExtensionAssembly *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_extensionContextProvider, v4);
  }

  return v6;
}

- (void)loadInRegistry:(id)a3
{
  v4 = a3;
  v5 = [v4 publicContainer];
  v6 = [v5 registerProtocol:&unk_286E338F8 factory:&__block_literal_global_2];

  v7 = [v4 publicContainer];
  v8 = [v7 registerProtocol:&unk_286E2B898 factory:&__block_literal_global_53];

  v9 = [v4 publicContainer];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __38__NUExtensionAssembly_loadInRegistry___block_invoke_3;
  v31[3] = &unk_2799A3548;
  v31[4] = self;
  v10 = [v9 registerProtocol:&unk_286E4ADB0 factory:v31];

  v11 = [v4 publicContainer];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __38__NUExtensionAssembly_loadInRegistry___block_invoke_4;
  v30[3] = &unk_2799A3570;
  v30[4] = self;
  v12 = [v11 registerProtocol:&unk_286E13A60 factory:v30];

  v13 = [v4 publicContainer];
  v14 = [v13 registerProtocol:&unk_286E25D28 factory:&__block_literal_global_82];

  v15 = [v4 publicContainer];
  v16 = [v15 registerProtocol:&unk_286E25F18 factory:&__block_literal_global_94];

  v17 = [v4 publicContainer];
  v18 = [v17 registerProtocol:&unk_286E2EDF8 factory:&__block_literal_global_101];

  v19 = [v4 publicContainer];
  v20 = [v19 registerProtocol:&unk_286E35228 factory:&__block_literal_global_109];

  v21 = [v4 publicContainer];
  v22 = [v21 registerProtocol:&unk_286E26538 factory:&__block_literal_global_117];

  v23 = [v4 privateContainer];
  v24 = [v23 registerClass:objc_opt_class() factory:&__block_literal_global_121];
  v25 = [v24 inScope:2];

  v26 = [v4 privateContainer];

  v27 = objc_opt_class();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __38__NUExtensionAssembly_loadInRegistry___block_invoke_11;
  v29[3] = &unk_2799A3658;
  v29[4] = self;
  v28 = [v26 registerClass:v27 factory:v29];
}

id __38__NUExtensionAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __38__NUExtensionAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __38__NUExtensionAssembly_loadInRegistry___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D55098]);
  v3 = [*(a1 + 32) extensionContextProvider];
  v4 = [v3 extensionContext];
  v5 = [v2 initWithExtensionContext:v4];

  return v5;
}

NUExtensionDevice *__38__NUExtensionAssembly_loadInRegistry___block_invoke_4(uint64_t a1)
{
  v2 = [NUExtensionDevice alloc];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [*(a1 + 32) extensionContextProvider];
  v5 = [v4 hostViewController];
  v6 = [(NUExtensionDevice *)v2 initWithScreen:v3 hostViewController:v5];

  return v6;
}

id __38__NUExtensionAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __38__NUExtensionAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

NUMailPresenter *__38__NUExtensionAssembly_loadInRegistry___block_invoke_7()
{
  v0 = objc_alloc_init(NUMailPresenter);

  return v0;
}

NUMessagePresenter *__38__NUExtensionAssembly_loadInRegistry___block_invoke_8()
{
  v0 = objc_alloc_init(NUMessagePresenter);

  return v0;
}

NUIdleWebViewControllerFactory *__38__NUExtensionAssembly_loadInRegistry___block_invoke_9()
{
  v0 = objc_alloc_init(NUIdleWebViewControllerFactory);

  return v0;
}

NUExtensionAppActivityMonitor *__38__NUExtensionAssembly_loadInRegistry___block_invoke_10()
{
  v0 = [NUExtensionAppActivityMonitor alloc];
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [(NUExtensionAppActivityMonitor *)v0 initWithNotificationCenter:v1];

  return v2;
}

NUExtensionURLHandler *__38__NUExtensionAssembly_loadInRegistry___block_invoke_11(uint64_t a1)
{
  v2 = [NUExtensionURLHandler alloc];
  v3 = [*(a1 + 32) extensionContextProvider];
  v4 = [v3 extensionContext];
  v5 = [(NUExtensionURLHandler *)v2 initWithExtensionContext:v4];

  return v5;
}

- (NUExtensionContextProvider)extensionContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContextProvider);

  return WeakRetained;
}

@end