@interface NUApplicationAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation NUApplicationAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_286E338F8 factory:&__block_literal_global_15];

  v6 = [v3 publicContainer];
  v7 = [v6 registerProtocol:&unk_286E4ADB0 factory:&__block_literal_global_56];

  v8 = [v3 publicContainer];
  v9 = [v8 registerProtocol:&unk_286E13A60 factory:&__block_literal_global_65];

  v10 = [v3 publicContainer];
  v11 = [v10 registerProtocol:&unk_286E25D28 factory:&__block_literal_global_79];

  v12 = [v3 publicContainer];
  v13 = [v12 registerProtocol:&unk_286E25F18 factory:&__block_literal_global_91];

  v14 = [v3 publicContainer];
  v15 = [v14 registerProtocol:&unk_286E2EDF8 factory:&__block_literal_global_98];

  v16 = [v3 publicContainer];
  v17 = [v16 registerProtocol:&unk_286E35228 factory:&__block_literal_global_106];

  v18 = [v3 publicContainer];
  v19 = [v18 registerProtocol:&unk_286E261B8 factory:&__block_literal_global_121_0];

  v22 = [v3 privateContainer];

  v20 = [v22 registerProtocol:&unk_286E25F78 factory:&__block_literal_global_124];
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