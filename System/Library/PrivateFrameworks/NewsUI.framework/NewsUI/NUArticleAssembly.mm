@interface NUArticleAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation NUArticleAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_286E3DAA8 factory:&__block_literal_global_10];

  v6 = [v3 publicContainer];
  v7 = [v6 registerProtocol:&unk_286E2C210 factory:&__block_literal_global_206];

  v8 = [v3 publicContainer];
  v9 = [v8 registerProtocol:&unk_286E33C50 factory:&__block_literal_global_216];

  v10 = [v3 publicContainer];
  v11 = [v10 registerProtocol:&unk_286E2F2E0 factory:&__block_literal_global_224];
  v12 = [v11 inScope:3];

  v13 = [v3 publicContainer];
  v14 = [v13 registerProtocol:&unk_286E348F8 factory:&__block_literal_global_239];
  v15 = [v14 inScope:2];

  v16 = [v3 publicContainer];
  v17 = [v16 registerProtocol:&unk_286E25978 factory:&__block_literal_global_251];

  v18 = [v3 publicContainer];
  v19 = [v18 registerProtocol:&unk_286E268B8 factory:&__block_literal_global_288];

  v20 = [v3 publicContainer];
  v21 = [v20 registerClass:objc_opt_class() factory:&__block_literal_global_312];

  v22 = [v3 publicContainer];
  v23 = [v22 registerClass:objc_opt_class() factory:&__block_literal_global_316];

  v24 = [v3 publicContainer];
  v25 = [v24 registerProtocol:&unk_286E3CE80 factory:&__block_literal_global_330];

  v26 = [v3 publicContainer];
  v27 = [v26 registerClass:objc_opt_class() factory:&__block_literal_global_335_0];

  v28 = [v3 publicContainer];
  v29 = [v28 registerProtocol:&unk_286E327C0 factory:&__block_literal_global_341];

  v30 = [v3 publicContainer];
  v31 = [v30 registerProtocol:&unk_286E3D3E0 factory:&__block_literal_global_353];

  v32 = [v3 publicContainer];
  v33 = [v32 registerProtocol:&unk_286E2B778 factory:&__block_literal_global_357];

  v34 = [v3 publicContainer];
  v35 = [v34 registerProtocol:&unk_286E326D8 factory:&__block_literal_global_365];

  v36 = [v3 publicContainer];
  v37 = [v36 registerClass:objc_opt_class() factory:&__block_literal_global_463];

  v38 = [v3 publicContainer];
  v39 = [v38 registerClass:objc_opt_class() factory:&__block_literal_global_911];

  v40 = [v3 publicContainer];
  v41 = [v40 registerProtocol:&unk_286E2EFB8 factory:&__block_literal_global_919];

  v42 = [v3 publicContainer];
  v43 = [v42 registerProtocol:&unk_286E2C160 factory:&__block_literal_global_944];

  v44 = [v3 publicContainer];
  v45 = [v44 registerProtocol:&unk_286E2B898 factory:&__block_literal_global_951];

  v46 = [v3 publicContainer];
  v47 = [v46 registerProtocol:&unk_286E2B990 factory:&__block_literal_global_960];

  v48 = [v3 publicContainer];
  v49 = [v48 registerClass:objc_opt_class() factory:&__block_literal_global_963];
  v50 = [v49 withConfiguration:&__block_literal_global_966];

  v51 = [v3 publicContainer];
  v52 = [v51 registerProtocol:&unk_286E2BE78 factory:&__block_literal_global_972];

  v53 = [v3 publicContainer];
  v54 = [v53 registerProtocol:&unk_286E2BF00 factory:&__block_literal_global_975];
  v55 = [v54 inScope:2];

  v56 = [v3 privateContainer];
  v57 = [v56 registerProtocol:&unk_286E339F0 factory:&__block_literal_global_987];

  v58 = [v3 publicContainer];
  v59 = [v58 registerProtocol:&unk_286E2F840 factory:&__block_literal_global_994];

  v60 = [v3 publicContainer];
  v61 = [v60 registerProtocol:&unk_286E34DD8 factory:&__block_literal_global_1000];

  v62 = [v3 publicContainer];
  v63 = [v62 registerProtocol:&unk_286E34298 factory:&__block_literal_global_1008];

  v64 = [v3 publicContainer];
  v65 = [v64 registerClass:objc_opt_class() factory:&__block_literal_global_1011];
  v66 = [v65 withConfiguration:&__block_literal_global_1014];

  v67 = [v3 publicContainer];
  v68 = [v67 registerClass:objc_opt_class() factory:&__block_literal_global_1017];

  v69 = [v3 publicContainer];
  v70 = [v69 registerProtocol:&unk_286E26DA8 factory:&__block_literal_global_1019];

  v72 = [v3 publicContainer];

  v71 = [v72 registerProtocol:&unk_286E30410 factory:&__block_literal_global_1022];
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