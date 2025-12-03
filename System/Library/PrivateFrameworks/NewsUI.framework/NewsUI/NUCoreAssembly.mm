@interface NUCoreAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation NUCoreAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_4];
  v6 = [v5 inScope:2];

  publicContainer2 = [registryCopy publicContainer];
  v8 = [publicContainer2 registerProtocol:&unk_286E4B788 factory:&__block_literal_global_186];

  publicContainer3 = [registryCopy publicContainer];
  v10 = [publicContainer3 registerProtocol:&unk_286E4BEB0 factory:&__block_literal_global_269];

  publicContainer4 = [registryCopy publicContainer];
  v12 = [publicContainer4 registerProtocol:&unk_286E4C1D0 factory:&__block_literal_global_308];
  v13 = [v12 withConfiguration:&__block_literal_global_311];

  publicContainer5 = [registryCopy publicContainer];
  v15 = [publicContainer5 registerClass:objc_opt_class() factory:&__block_literal_global_315];

  publicContainer6 = [registryCopy publicContainer];
  v17 = [publicContainer6 registerClass:objc_opt_class() factory:&__block_literal_global_319];
  v18 = [v17 inScope:2];

  publicContainer7 = [registryCopy publicContainer];
  v20 = [publicContainer7 registerClass:objc_opt_class() factory:&__block_literal_global_323];
  v21 = [v20 inScope:2];

  publicContainer8 = [registryCopy publicContainer];
  v23 = [publicContainer8 registerClass:objc_opt_class() factory:&__block_literal_global_327];
  v24 = [v23 inScope:2];

  publicContainer9 = [registryCopy publicContainer];
  v26 = [publicContainer9 registerClass:objc_opt_class() factory:&__block_literal_global_331];
  v27 = [v26 inScope:2];

  publicContainer10 = [registryCopy publicContainer];
  v29 = [publicContainer10 registerClass:objc_opt_class() factory:&__block_literal_global_335];
  v30 = [v29 inScope:2];

  publicContainer11 = [registryCopy publicContainer];
  v32 = [publicContainer11 registerClass:objc_opt_class() factory:&__block_literal_global_339];
  v33 = [v32 inScope:2];

  publicContainer12 = [registryCopy publicContainer];
  v35 = [publicContainer12 registerClass:objc_opt_class() factory:&__block_literal_global_343];
  v36 = [v35 inScope:2];

  publicContainer13 = [registryCopy publicContainer];
  v38 = [publicContainer13 registerClass:objc_opt_class() factory:&__block_literal_global_347];
  v39 = [v38 inScope:2];

  publicContainer14 = [registryCopy publicContainer];
  v41 = [publicContainer14 registerProtocol:&unk_286E4C428 factory:&__block_literal_global_384];
  v42 = [v41 inScope:2];

  publicContainer15 = [registryCopy publicContainer];
  v44 = [publicContainer15 registerClass:objc_opt_class() factory:&__block_literal_global_388];
  v45 = [v44 inScope:2];

  publicContainer16 = [registryCopy publicContainer];
  v47 = [publicContainer16 registerProtocol:&unk_286E4C590 factory:&__block_literal_global_406];
  v48 = [v47 inScope:2];

  publicContainer17 = [registryCopy publicContainer];
  v50 = [publicContainer17 registerClass:objc_opt_class() factory:&__block_literal_global_409];
  v51 = [v50 inScope:2];

  publicContainer18 = [registryCopy publicContainer];
  v53 = [publicContainer18 registerProtocol:&unk_286E4C7C8 factory:&__block_literal_global_428];
  v54 = [v53 inScope:2];

  publicContainer19 = [registryCopy publicContainer];
  v56 = [publicContainer19 registerClass:objc_opt_class() factory:&__block_literal_global_432];
  v57 = [v56 inScope:2];

  publicContainer20 = [registryCopy publicContainer];
  v59 = [publicContainer20 registerProtocol:&unk_286E4CFD8 factory:&__block_literal_global_521];
  v60 = [v59 inScope:2];

  publicContainer21 = [registryCopy publicContainer];
  v62 = [publicContainer21 registerProtocol:&unk_286E4D090 factory:&__block_literal_global_531];
  v63 = [v62 inScope:2];

  publicContainer22 = [registryCopy publicContainer];
  v65 = [publicContainer22 registerProtocol:&unk_286E26AA8 factory:&__block_literal_global_540];
  v66 = [v65 inScope:2];

  publicContainer23 = [registryCopy publicContainer];
  v68 = [publicContainer23 registerProtocol:&unk_286E2F518 factory:&__block_literal_global_547];
  v69 = [v68 inScope:0];

  publicContainer24 = [registryCopy publicContainer];

  v70 = [publicContainer24 registerProtocol:&unk_286E2F420 factory:&__block_literal_global_557];
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D30F18];
  v3 = a2;
  v4 = [v2 defaultConfiguration];
  v5 = FCURLForContainerizedUserAccountCachesDirectory();
  v6 = objc_alloc(MEMORY[0x277D30EF8]);
  v7 = [MEMORY[0x277D31050] sharedInstance];
  v8 = [v6 initWithContextConfiguration:v4 contentHostDirectoryFileURL:v5 feldsparIDProvider:v7];

  v9 = objc_alloc(MEMORY[0x277D30EE0]);
  v10 = FCURLForContainerizedUserAccountDocumentDirectory();
  v11 = [MEMORY[0x277D31140] sharedNetworkReachability];
  v12 = [v3 resolveProtocol:&unk_286E25D28];

  v13 = [MEMORY[0x277D75418] currentDevice];
  v14 = [v13 userInterfaceIdiom] == 1;
  v15 = [MEMORY[0x277D31200] defaultAvailability];
  LOBYTE(v18) = v14;
  v16 = [v9 initWithConfiguration:v4 configurationManager:v8 contentHostDirectory:v5 privateDataHostDirectory:v10 privateDataActionProvider:0 networkBehaviorMonitor:0 networkReachability:v11 appActivityMonitor:v12 desiredHeadlineFieldOptions:0xF87FFFFC1 feedUsage:6 deviceIsiPad:v18 backgroundTaskable:0 privateDataSyncAvailability:v15 pptContext:0 options:0];

  return v16;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4B788];
  v3 = [v2 appConfigurationManager];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4B788];
  v3 = [v2 articleController];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 readingList];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 shortcutList];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 shortcutCategoryList];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 userInfo];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 tagSettings];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 readingHistory];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 puzzleHistory];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 puzzleTypeSettings];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 issueReadingHistory];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 subscriptionList];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4BEB0];
  v3 = [v2 audioPlaylist];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_286E4B788];
  v3 = [v2 flintResourceManager];

  return v3;
}

id __33__NUCoreAssembly_loadInRegistry___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  v4 = [v3 currentIssuesChecker];

  return v4;
}

NUFontManager *__33__NUCoreAssembly_loadInRegistry___block_invoke_23()
{
  v0 = objc_alloc_init(NUFontManager);

  return v0;
}

NUSettings *__33__NUCoreAssembly_loadInRegistry___block_invoke_24()
{
  v0 = objc_alloc_init(NUSettings);

  return v0;
}

NUErrorMessageFactory *__33__NUCoreAssembly_loadInRegistry___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUErrorMessageFactory alloc];
  v4 = [v2 resolveProtocol:&unk_286E4C7C8];

  v5 = [(NUErrorMessageFactory *)v3 initWithNetworkReachability:v4];

  return v5;
}

@end