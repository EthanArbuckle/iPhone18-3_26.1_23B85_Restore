@interface NUCoreAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation NUCoreAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerClass:objc_opt_class() factory:&__block_literal_global_4];
  v6 = [v5 inScope:2];

  v7 = [v3 publicContainer];
  v8 = [v7 registerProtocol:&unk_286E4B788 factory:&__block_literal_global_186];

  v9 = [v3 publicContainer];
  v10 = [v9 registerProtocol:&unk_286E4BEB0 factory:&__block_literal_global_269];

  v11 = [v3 publicContainer];
  v12 = [v11 registerProtocol:&unk_286E4C1D0 factory:&__block_literal_global_308];
  v13 = [v12 withConfiguration:&__block_literal_global_311];

  v14 = [v3 publicContainer];
  v15 = [v14 registerClass:objc_opt_class() factory:&__block_literal_global_315];

  v16 = [v3 publicContainer];
  v17 = [v16 registerClass:objc_opt_class() factory:&__block_literal_global_319];
  v18 = [v17 inScope:2];

  v19 = [v3 publicContainer];
  v20 = [v19 registerClass:objc_opt_class() factory:&__block_literal_global_323];
  v21 = [v20 inScope:2];

  v22 = [v3 publicContainer];
  v23 = [v22 registerClass:objc_opt_class() factory:&__block_literal_global_327];
  v24 = [v23 inScope:2];

  v25 = [v3 publicContainer];
  v26 = [v25 registerClass:objc_opt_class() factory:&__block_literal_global_331];
  v27 = [v26 inScope:2];

  v28 = [v3 publicContainer];
  v29 = [v28 registerClass:objc_opt_class() factory:&__block_literal_global_335];
  v30 = [v29 inScope:2];

  v31 = [v3 publicContainer];
  v32 = [v31 registerClass:objc_opt_class() factory:&__block_literal_global_339];
  v33 = [v32 inScope:2];

  v34 = [v3 publicContainer];
  v35 = [v34 registerClass:objc_opt_class() factory:&__block_literal_global_343];
  v36 = [v35 inScope:2];

  v37 = [v3 publicContainer];
  v38 = [v37 registerClass:objc_opt_class() factory:&__block_literal_global_347];
  v39 = [v38 inScope:2];

  v40 = [v3 publicContainer];
  v41 = [v40 registerProtocol:&unk_286E4C428 factory:&__block_literal_global_384];
  v42 = [v41 inScope:2];

  v43 = [v3 publicContainer];
  v44 = [v43 registerClass:objc_opt_class() factory:&__block_literal_global_388];
  v45 = [v44 inScope:2];

  v46 = [v3 publicContainer];
  v47 = [v46 registerProtocol:&unk_286E4C590 factory:&__block_literal_global_406];
  v48 = [v47 inScope:2];

  v49 = [v3 publicContainer];
  v50 = [v49 registerClass:objc_opt_class() factory:&__block_literal_global_409];
  v51 = [v50 inScope:2];

  v52 = [v3 publicContainer];
  v53 = [v52 registerProtocol:&unk_286E4C7C8 factory:&__block_literal_global_428];
  v54 = [v53 inScope:2];

  v55 = [v3 publicContainer];
  v56 = [v55 registerClass:objc_opt_class() factory:&__block_literal_global_432];
  v57 = [v56 inScope:2];

  v58 = [v3 publicContainer];
  v59 = [v58 registerProtocol:&unk_286E4CFD8 factory:&__block_literal_global_521];
  v60 = [v59 inScope:2];

  v61 = [v3 publicContainer];
  v62 = [v61 registerProtocol:&unk_286E4D090 factory:&__block_literal_global_531];
  v63 = [v62 inScope:2];

  v64 = [v3 publicContainer];
  v65 = [v64 registerProtocol:&unk_286E26AA8 factory:&__block_literal_global_540];
  v66 = [v65 inScope:2];

  v67 = [v3 publicContainer];
  v68 = [v67 registerProtocol:&unk_286E2F518 factory:&__block_literal_global_547];
  v69 = [v68 inScope:0];

  v71 = [v3 publicContainer];

  v70 = [v71 registerProtocol:&unk_286E2F420 factory:&__block_literal_global_557];
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