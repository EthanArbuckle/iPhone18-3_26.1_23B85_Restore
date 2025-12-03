@interface NUArticleAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation NUArticleAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_286E3DAA8 factory:&__block_literal_global_10];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerProtocol:&unk_286E2C210 factory:&__block_literal_global_206];

  publicContainer3 = [registryCopy publicContainer];
  v9 = [publicContainer3 registerProtocol:&unk_286E33C50 factory:&__block_literal_global_216];

  publicContainer4 = [registryCopy publicContainer];
  v11 = [publicContainer4 registerProtocol:&unk_286E2F2E0 factory:&__block_literal_global_224];
  v12 = [v11 inScope:3];

  publicContainer5 = [registryCopy publicContainer];
  v14 = [publicContainer5 registerProtocol:&unk_286E348F8 factory:&__block_literal_global_239];
  v15 = [v14 inScope:2];

  publicContainer6 = [registryCopy publicContainer];
  v17 = [publicContainer6 registerProtocol:&unk_286E25978 factory:&__block_literal_global_251];

  publicContainer7 = [registryCopy publicContainer];
  v19 = [publicContainer7 registerProtocol:&unk_286E268B8 factory:&__block_literal_global_288];

  publicContainer8 = [registryCopy publicContainer];
  v21 = [publicContainer8 registerClass:objc_opt_class() factory:&__block_literal_global_312];

  publicContainer9 = [registryCopy publicContainer];
  v23 = [publicContainer9 registerClass:objc_opt_class() factory:&__block_literal_global_316];

  publicContainer10 = [registryCopy publicContainer];
  v25 = [publicContainer10 registerProtocol:&unk_286E3CE80 factory:&__block_literal_global_330];

  publicContainer11 = [registryCopy publicContainer];
  v27 = [publicContainer11 registerClass:objc_opt_class() factory:&__block_literal_global_335_0];

  publicContainer12 = [registryCopy publicContainer];
  v29 = [publicContainer12 registerProtocol:&unk_286E327C0 factory:&__block_literal_global_341];

  publicContainer13 = [registryCopy publicContainer];
  v31 = [publicContainer13 registerProtocol:&unk_286E3D3E0 factory:&__block_literal_global_353];

  publicContainer14 = [registryCopy publicContainer];
  v33 = [publicContainer14 registerProtocol:&unk_286E2B778 factory:&__block_literal_global_357];

  publicContainer15 = [registryCopy publicContainer];
  v35 = [publicContainer15 registerProtocol:&unk_286E326D8 factory:&__block_literal_global_365];

  publicContainer16 = [registryCopy publicContainer];
  v37 = [publicContainer16 registerClass:objc_opt_class() factory:&__block_literal_global_463];

  publicContainer17 = [registryCopy publicContainer];
  v39 = [publicContainer17 registerClass:objc_opt_class() factory:&__block_literal_global_911];

  publicContainer18 = [registryCopy publicContainer];
  v41 = [publicContainer18 registerProtocol:&unk_286E2EFB8 factory:&__block_literal_global_919];

  publicContainer19 = [registryCopy publicContainer];
  v43 = [publicContainer19 registerProtocol:&unk_286E2C160 factory:&__block_literal_global_944];

  publicContainer20 = [registryCopy publicContainer];
  v45 = [publicContainer20 registerProtocol:&unk_286E2B898 factory:&__block_literal_global_951];

  publicContainer21 = [registryCopy publicContainer];
  v47 = [publicContainer21 registerProtocol:&unk_286E2B990 factory:&__block_literal_global_960];

  publicContainer22 = [registryCopy publicContainer];
  v49 = [publicContainer22 registerClass:objc_opt_class() factory:&__block_literal_global_963];
  v50 = [v49 withConfiguration:&__block_literal_global_966];

  publicContainer23 = [registryCopy publicContainer];
  v52 = [publicContainer23 registerProtocol:&unk_286E2BE78 factory:&__block_literal_global_972];

  publicContainer24 = [registryCopy publicContainer];
  v54 = [publicContainer24 registerProtocol:&unk_286E2BF00 factory:&__block_literal_global_975];
  v55 = [v54 inScope:2];

  privateContainer = [registryCopy privateContainer];
  v57 = [privateContainer registerProtocol:&unk_286E339F0 factory:&__block_literal_global_987];

  publicContainer25 = [registryCopy publicContainer];
  v59 = [publicContainer25 registerProtocol:&unk_286E2F840 factory:&__block_literal_global_994];

  publicContainer26 = [registryCopy publicContainer];
  v61 = [publicContainer26 registerProtocol:&unk_286E34DD8 factory:&__block_literal_global_1000];

  publicContainer27 = [registryCopy publicContainer];
  v63 = [publicContainer27 registerProtocol:&unk_286E34298 factory:&__block_literal_global_1008];

  publicContainer28 = [registryCopy publicContainer];
  v65 = [publicContainer28 registerClass:objc_opt_class() factory:&__block_literal_global_1011];
  v66 = [v65 withConfiguration:&__block_literal_global_1014];

  publicContainer29 = [registryCopy publicContainer];
  v68 = [publicContainer29 registerClass:objc_opt_class() factory:&__block_literal_global_1017];

  publicContainer30 = [registryCopy publicContainer];
  v70 = [publicContainer30 registerProtocol:&unk_286E26DA8 factory:&__block_literal_global_1019];

  publicContainer31 = [registryCopy publicContainer];

  v71 = [publicContainer31 registerProtocol:&unk_286E30410 factory:&__block_literal_global_1022];
}

NUANFArticleDataProviderFactory *__36__NUArticleAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUANFArticleDataProviderFactory alloc];
  v4 = [v2 resolveProtocol:&unk_286E4B788];
  v5 = [v2 resolveProtocol:&unk_286E26AA8];
  v6 = [v2 resolveProtocol:&unk_286E4ADB0];
  v7 = [v2 resolveProtocol:&unk_286E2BF00];
  v8 = [v2 resolveClass:objc_opt_class()];

  v9 = [(NUANFArticleDataProviderFactory *)v3 initWithContentContext:v4 fontRegistration:v5 host:v6 embedDataManager:v7 linkedContentManagerFactory:v8];

  return v9;
}

NUANFArticleFactory *__36__NUArticleAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUANFArticleFactory alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(NUANFArticleFactory *)v3 initWithArticleController:v4];

  return v5;
}

NUDocumentSectionBlueprintProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_3()
{
  v0 = objc_alloc_init(NUDocumentSectionBlueprintProvider);

  return v0;
}

NUNoopChromeControl *__36__NUArticleAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(NUNoopChromeControl);

  return v0;
}

NUArticlePrefetcher *__36__NUArticleAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUArticlePrefetcher alloc];
  v4 = [v2 resolveProtocol:&unk_286E2C210];
  v5 = [v2 resolveProtocol:&unk_286E3DAA8];

  v6 = [(NUArticlePrefetcher *)v3 initWithArticleFactory:v4 articleDataProviderFactory:v5];

  return v6;
}

NUArticleViewControllerFactory *__36__NUArticleAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUArticleViewControllerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_286E3DAA8];
  v5 = [v2 resolveProtocol:&unk_286E25F18];
  v6 = [v2 resolveProtocol:&unk_286E26DA8];
  v7 = [v2 resolveProtocol:&unk_286E33C50];
  v8 = [v2 resolveProtocol:&unk_286E348F8];
  v9 = [v2 resolveProtocol:&unk_286E30410];
  v10 = [v2 resolveOptionalProtocol:&unk_286E4D2C0];
  v11 = [(NUArticleViewControllerFactory *)v3 initWithArticleDataProviderFactory:v4 appStateMonitor:v5 keyCommandManager:v6 headerBlueprintProvider:v7 articlePrefetcher:v8 articleScrollPositionManager:v9 spotlightManager:v10 resolver:v2];

  return v11;
}

NUArticleHostViewControllerFactory *__36__NUArticleAssembly_loadInRegistry___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUArticleHostViewControllerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_286E25978];
  v5 = [v2 resolveProtocol:&unk_286E2F518];
  v6 = [v2 resolveProtocol:&unk_286E2F420];
  v7 = [v2 resolveProtocol:&unk_286E350C0];

  v8 = [(NUArticleHostViewControllerFactory *)v3 initWithArticleViewControllerFactory:v4 settings:v5 errorMessageFactory:v6 contentSizeManager:v7];

  return v8;
}

NUArticleHostViewControllerProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_8()
{
  v0 = objc_alloc_init(NUArticleHostViewControllerProvider);

  return v0;
}

NUArticleContainerViewController *__36__NUArticleAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUArticleContainerViewController alloc];
  v4 = [v2 resolveProtocol:&unk_286E3CE80];
  v5 = [v2 resolveProtocol:&unk_286E2B778];

  v6 = [(NUArticleContainerViewController *)v3 initWithPagingFactory:v4 router:v5];

  return v6;
}

NUPagingEngine *__36__NUArticleAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUPagingEngine alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(NUPagingEngine *)v3 initWithArticlePageFactory:v4];

  return v5;
}

NUArticlePageFactory *__36__NUArticleAssembly_loadInRegistry___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUArticlePageFactory alloc];
  v4 = [v2 resolveProtocol:&unk_286E2C210];
  v5 = [v2 resolveProtocol:&unk_286E327C0];
  v6 = [v2 resolveProtocol:&unk_286E268B8];

  v7 = [(NUArticlePageFactory *)v3 initWithArticleFactory:v4 articleActivityFactory:v5 articleHostViewControllerFactory:v6];

  return v7;
}

NUArticleActivityManagerFactory *__36__NUArticleAssembly_loadInRegistry___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_286E338F8];
  v7 = [v2 resolveProtocol:&unk_286E3D3E0];

  v8 = [[NUArticleActivityManagerFactory alloc] initWithReadingHistory:v4 readingList:v3 subscriptionList:v5 URLHandler:v6 optionsProvider:v7];

  return v8;
}

NUArticleActivityDefaultOptionsProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_13()
{
  v0 = objc_alloc_init(NUArticleActivityDefaultOptionsProvider);

  return v0;
}

NURouter *__36__NUArticleAssembly_loadInRegistry___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NURouter alloc];
  v4 = [v2 resolveProtocol:&unk_286E338F8];

  v5 = [(NURouter *)v3 initWithURLHandler:v4];

  return v5;
}

NUStoreFrontProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUStoreFrontProvider alloc];
  v4 = [v2 resolveProtocol:&unk_286E4CFD8];

  v5 = [(NUStoreFrontProvider *)v3 initWithAppleAccount:v4];

  return v5;
}

NUMediaSharingPolicyProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUMediaSharingPolicyProvider alloc];
  v4 = [v2 resolveProtocol:&unk_286E4ACC8];
  v5 = [v2 resolveProtocol:&unk_286E4C1D0];

  v6 = [(NUMediaSharingPolicyProvider *)v3 initWithHeadline:v4 appConfigurationManager:v5];

  return v6;
}

NUWebContentLoadingPolicyProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUWebContentLoadingPolicyProvider alloc];
  v4 = [v2 resolveProtocol:&unk_286E4ACC8];

  v5 = [(NUWebContentLoadingPolicyProvider *)v3 initWithHeadline:v4];

  return v5;
}

NUReachabilityProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUReachabilityProvider alloc];
  v4 = [v2 resolveProtocol:&unk_286E4C7C8];

  v5 = [(NUReachabilityProvider *)v3 initWithNetworkReachability:v4];

  return v5;
}

NUANFDebugSettingsProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_19()
{
  v0 = objc_alloc_init(NUANFDebugSettingsProvider);

  return v0;
}

id __36__NUArticleAssembly_loadInRegistry___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __36__NUArticleAssembly_loadInRegistry___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

NUURLHandler *__36__NUArticleAssembly_loadInRegistry___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveProtocol:&unk_286E4C1D0];
  v4 = [v3 appConfiguration];
  v5 = [NUURLHandler alloc];
  v6 = [v2 resolveProtocol:&unk_286E338F8];

  v7 = -[NUURLHandler initWithURLHandling:universalLinksEnabled:](v5, "initWithURLHandling:universalLinksEnabled:", v6, [v4 universalLinksEnabled]);

  return v7;
}

void __36__NUArticleAssembly_loadInRegistry___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v7 = objc_alloc_init(NUDeepLinkURLModifier);
  [v4 addModifier:v7];
  v6 = [v5 resolveProtocol:&unk_286E26538];

  [v4 setWebViewControllerFactory:v6];
}

NUEmbedDataManager *__36__NUArticleAssembly_loadInRegistry___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUEmbedDataManager alloc];
  v4 = [v2 resolveProtocol:&unk_286E339F0];

  v5 = [(NUEmbedDataManager *)v3 initWithEmbedConfigurationLoader:v4];

  return v5;
}

NUANFEmbedConfigurationLoader *__36__NUArticleAssembly_loadInRegistry___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUANFEmbedConfigurationLoader alloc];
  v4 = [v2 resolveProtocol:&unk_286E4C1D0];
  v5 = [v2 resolveClass:objc_opt_class()];

  v6 = [(NUANFEmbedConfigurationLoader *)v3 initWithAppConfigManager:v4 flintResourceManager:v5];

  return v6;
}

NUWebContentContentRuleProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUWebContentContentRuleProvider alloc];
  v4 = [v2 resolveProtocol:&unk_286E4C1D0];
  v5 = [v2 resolveProtocol:&unk_286E4ACC8];

  v6 = [(NUWebContentContentRuleProvider *)v3 initWithAppConfigurationManager:v4 headline:v5];

  return v6;
}

NUWebContentComponentDeveloperSettingsProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_28(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUWebContentComponentDeveloperSettingsProvider alloc];
  v4 = [v2 resolveProtocol:&unk_286E4ACC8];

  v5 = [(NUWebContentComponentDeveloperSettingsProvider *)v3 initWithHeadline:v4];

  return v5;
}

NUANFRenderingConfigurationProvider *__36__NUArticleAssembly_loadInRegistry___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUANFRenderingConfigurationProvider alloc];
  v4 = [v2 resolveProtocol:&unk_286E4C1D0];

  v5 = [(NUANFRenderingConfigurationProvider *)v3 initWithAppConfigurationManager:v4];

  return v5;
}

NULinkedContentManagerFactory *__36__NUArticleAssembly_loadInRegistry___block_invoke_30()
{
  v0 = objc_alloc_init(NULinkedContentManagerFactory);

  return v0;
}

void __36__NUArticleAssembly_loadInRegistry___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];

  [v4 addLinkedContentProviderFactory:v6];
}

NUANFLinkedContentProviderFactory *__36__NUArticleAssembly_loadInRegistry___block_invoke_32(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NUANFLinkedContentProviderFactory alloc];
  v4 = [v2 resolveProtocol:&unk_286E4B788];

  v5 = [(NUANFLinkedContentProviderFactory *)v3 initWithContentContext:v4];

  return v5;
}

NUArticleKeyCommandManager *__36__NUArticleAssembly_loadInRegistry___block_invoke_33()
{
  v0 = objc_alloc_init(NUArticleKeyCommandManager);

  return v0;
}

NUArticleScrollPositionManager *__36__NUArticleAssembly_loadInRegistry___block_invoke_34()
{
  v0 = objc_alloc_init(NUArticleScrollPositionManager);

  return v0;
}

@end