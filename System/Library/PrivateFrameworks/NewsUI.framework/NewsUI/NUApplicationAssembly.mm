@interface NUApplicationAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation NUApplicationAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_286E338F8 factory:&__block_literal_global_15];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerProtocol:&unk_286E4ADB0 factory:&__block_literal_global_56];

  publicContainer3 = [registryCopy publicContainer];
  v9 = [publicContainer3 registerProtocol:&unk_286E13A60 factory:&__block_literal_global_65];

  publicContainer4 = [registryCopy publicContainer];
  v11 = [publicContainer4 registerProtocol:&unk_286E25D28 factory:&__block_literal_global_79];

  publicContainer5 = [registryCopy publicContainer];
  v13 = [publicContainer5 registerProtocol:&unk_286E25F18 factory:&__block_literal_global_91];

  publicContainer6 = [registryCopy publicContainer];
  v15 = [publicContainer6 registerProtocol:&unk_286E2EDF8 factory:&__block_literal_global_98];

  publicContainer7 = [registryCopy publicContainer];
  v17 = [publicContainer7 registerProtocol:&unk_286E35228 factory:&__block_literal_global_106];

  publicContainer8 = [registryCopy publicContainer];
  v19 = [publicContainer8 registerProtocol:&unk_286E261B8 factory:&__block_literal_global_121_0];

  privateContainer = [registryCopy privateContainer];

  v20 = [privateContainer registerProtocol:&unk_286E25F78 factory:&__block_literal_global_124];
  v21 = [v20 inScope:2];
}

NUApplicationURLHandler *__40__NUApplicationAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(NUApplicationURLHandler);

  return v0;
}

id __40__NUApplicationAssembly_loadInRegistry___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D55090]);
  v1 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [v0 initWithApplication:v1];

  return v2;
}

NUApplicationDevice *__40__NUApplicationAssembly_loadInRegistry___block_invoke_3()
{
  v0 = [NUApplicationDevice alloc];
  v1 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [(NUApplicationDevice *)v0 initWithApplication:v1 screen:v2];

  return v3;
}

NUMailPresenter *__40__NUApplicationAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(NUMailPresenter);

  return v0;
}

NUMessagePresenter *__40__NUApplicationAssembly_loadInRegistry___block_invoke_7()
{
  v0 = objc_alloc_init(NUMessagePresenter);

  return v0;
}

NUApplicationAppActivityMonitorIOS *__40__NUApplicationAssembly_loadInRegistry___block_invoke_9()
{
  v0 = objc_alloc_init(NUApplicationAppActivityMonitorIOS);

  return v0;
}

@end