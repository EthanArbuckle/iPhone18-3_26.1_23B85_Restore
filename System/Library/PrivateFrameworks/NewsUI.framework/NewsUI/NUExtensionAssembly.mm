@interface NUExtensionAssembly
- (NUExtensionAssembly)initWithExtensionContextProvider:(id)provider;
- (NUExtensionContextProvider)extensionContextProvider;
- (void)loadInRegistry:(id)registry;
@end

@implementation NUExtensionAssembly

- (NUExtensionAssembly)initWithExtensionContextProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = NUExtensionAssembly;
  v5 = [(NUExtensionAssembly *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_extensionContextProvider, providerCopy);
  }

  return v6;
}

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v6 = [publicContainer registerProtocol:&unk_286E338F8 factory:&__block_literal_global_2];

  publicContainer2 = [registryCopy publicContainer];
  v8 = [publicContainer2 registerProtocol:&unk_286E2B898 factory:&__block_literal_global_53];

  publicContainer3 = [registryCopy publicContainer];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __38__NUExtensionAssembly_loadInRegistry___block_invoke_3;
  v31[3] = &unk_2799A3548;
  v31[4] = self;
  v10 = [publicContainer3 registerProtocol:&unk_286E4ADB0 factory:v31];

  publicContainer4 = [registryCopy publicContainer];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __38__NUExtensionAssembly_loadInRegistry___block_invoke_4;
  v30[3] = &unk_2799A3570;
  v30[4] = self;
  v12 = [publicContainer4 registerProtocol:&unk_286E13A60 factory:v30];

  publicContainer5 = [registryCopy publicContainer];
  v14 = [publicContainer5 registerProtocol:&unk_286E25D28 factory:&__block_literal_global_82];

  publicContainer6 = [registryCopy publicContainer];
  v16 = [publicContainer6 registerProtocol:&unk_286E25F18 factory:&__block_literal_global_94];

  publicContainer7 = [registryCopy publicContainer];
  v18 = [publicContainer7 registerProtocol:&unk_286E2EDF8 factory:&__block_literal_global_101];

  publicContainer8 = [registryCopy publicContainer];
  v20 = [publicContainer8 registerProtocol:&unk_286E35228 factory:&__block_literal_global_109];

  publicContainer9 = [registryCopy publicContainer];
  v22 = [publicContainer9 registerProtocol:&unk_286E26538 factory:&__block_literal_global_117];

  privateContainer = [registryCopy privateContainer];
  v24 = [privateContainer registerClass:objc_opt_class() factory:&__block_literal_global_121];
  v25 = [v24 inScope:2];

  privateContainer2 = [registryCopy privateContainer];

  v27 = objc_opt_class();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __38__NUExtensionAssembly_loadInRegistry___block_invoke_11;
  v29[3] = &unk_2799A3658;
  v29[4] = self;
  v28 = [privateContainer2 registerClass:v27 factory:v29];
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