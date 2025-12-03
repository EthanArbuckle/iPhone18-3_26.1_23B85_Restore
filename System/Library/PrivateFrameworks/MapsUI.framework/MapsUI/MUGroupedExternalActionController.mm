@interface MUGroupedExternalActionController
- (BOOL)hasMultipleVendorsForAnalytics;
- (MUGroupedExternalActionController)initWithGroupedExternalAction:(id)action amsResultProvider:(id)provider supportsMultipleVendorSelection:(BOOL)selection actionHandler:(id)handler analyticsHandler:(id)analyticsHandler;
- (id)_viewModelsWithSortApplied;
- (int)resolvedAnalyticsTargetWithPresentationOptions:(id)options;
- (void)_executeBestIntegrationForProvider:(id)provider index:(unint64_t)index presentationOptions:(id)options;
- (void)_openMapsExtensionUsingExtensionParams:(id)params handlingOptions:(id)options;
- (void)captureGroupedMenuRevealAnalyticsIfNeededWithEnvironment:(id)environment;
- (void)fetchProviderLockupsWithCompletion:(id)completion;
- (void)openFirstPartnerActionWithPresentationOptions:(id)options;
- (void)openPartnerActionUsingViewModel:(id)model withPresentationOptions:(id)options;
@end

@implementation MUGroupedExternalActionController

- (void)captureGroupedMenuRevealAnalyticsIfNeededWithEnvironment:(id)environment
{
  v24 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  actionProviders = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
  v6 = [actionProviders count];

  if (v6 >= 2)
  {
    v7 = MUExternalActionRevealedAnalyticsModuleButtonsForAction(self->_externalAction);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v19 + 1) + 8 * v11++) setIsGroup:1];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    if ([environmentCopy isActionBar])
    {
      if ([(MUGroupedExternalActionController *)self hasMultipleVendorsForAnalytics])
      {
        v12 = 204;
      }

      else
      {
        v12 = 203;
      }
    }

    else if ([environmentCopy isQuickAction])
    {
      v12 = 30;
    }

    else
    {
      v12 = [(MUGroupedExternalActionController *)self resolvedAnalyticsTargetWithPresentationOptions:0];
    }

    v13 = objc_opt_new();
    [v13 setIsForActionBar:{objc_msgSend(environmentCopy, "isActionBar")}];
    [v13 setIsForActionBarMoreMenu:{objc_msgSend(environmentCopy, "isActionBarMoreMenu")}];
    if ([environmentCopy isActionBarMoreMenu])
    {
      v14 = @"SECONDARY";
    }

    else
    {
      isActionBar = [environmentCopy isActionBar];
      v14 = @"PRIMARY";
      if (!isActionBar)
      {
        v14 = 0;
      }
    }

    v16 = v14;
    WeakRetained = objc_loadWeakRetained(&self->_analyticsHandler);
    [WeakRetained instrumentExternalActionUsingAnalyticsAction:6074 target:v12 eventValue:0 sharedStateButtonList:v7 presentationOptions:v13 classification:v16];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (int)resolvedAnalyticsTargetWithPresentationOptions:(id)options
{
  optionsCopy = options;
  hasMultipleVendorsForAnalytics = [(MUGroupedExternalActionController *)self hasMultipleVendorsForAnalytics];
  isForActionBar = [optionsCopy isForActionBar];

  if (hasMultipleVendorsForAnalytics)
  {
    if (isForActionBar)
    {
      return 204;
    }

    else
    {

      return [(MUGroupedExternalActionController *)self multipleVendorAnalyticsTarget];
    }
  }

  else if (isForActionBar)
  {
    return 203;
  }

  else
  {

    return [(MUGroupedExternalActionController *)self singleVendorAnalyticsTarget];
  }
}

- (BOOL)hasMultipleVendorsForAnalytics
{
  supportsMultipleVendorSelection = [(MUGroupedExternalActionController *)self supportsMultipleVendorSelection];
  if (supportsMultipleVendorSelection)
  {
    LOBYTE(supportsMultipleVendorSelection) = [(NSArray *)self->_viewModels count]> 1;
  }

  return supportsMultipleVendorSelection;
}

- (void)_openMapsExtensionUsingExtensionParams:(id)params handlingOptions:(id)options
{
  v28[1] = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  optionsCopy = options;
  extensionDiscoveryManager = self->_extensionDiscoveryManager;
  if (!extensionDiscoveryManager)
  {
    v9 = [MUPlaceExtensionDiscoveryManager alloc];
    v28[0] = paramsCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v11 = [(MUPlaceExtensionDiscoveryManager *)v9 initWithExtensionDataItems:v10 amsResultProvider:self->_amsResultProvider];
    v12 = self->_extensionDiscoveryManager;
    self->_extensionDiscoveryManager = v11;

    extensionDiscoveryManager = self->_extensionDiscoveryManager;
  }

  v13 = [(MUPlaceExtensionDiscoveryManager *)extensionDiscoveryManager discoveryResultForDataItem:paramsCopy];
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_actionHandler);
    extension = [v13 extension];
    appStoreApp = [v13 appStoreApp];
    [(MUAMSResultProviderFetchOptions *)WeakRetained handleMapsExtension:extension usingAppStoreApp:appStoreApp options:optionsCopy parameters:paramsCopy];
  }

  else
  {
    v17 = [MUAMSResultProviderFetchOptions alloc];
    mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
    [mEMORY[0x1E696F3B8] screenScale];
    WeakRetained = [(MUAMSResultProviderFetchOptions *)v17 initWithDisplayScale:[(MUGroupedExternalActionController *)self source] artworkSize:v19 source:40.0, 40.0];

    objc_initWeak(&location, self);
    v20 = self->_extensionDiscoveryManager;
    v21 = MEMORY[0x1E69E96A0];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __92__MUGroupedExternalActionController__openMapsExtensionUsingExtensionParams_handlingOptions___block_invoke;
    v23[3] = &unk_1E8219370;
    objc_copyWeak(&v26, &location);
    v24 = optionsCopy;
    v25 = paramsCopy;
    [(MUPlaceExtensionDiscoveryManager *)v20 performExtensionDiscoveryWithOptions:WeakRetained callbackQueue:MEMORY[0x1E69E96A0] completion:v23];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __92__MUGroupedExternalActionController__openMapsExtensionUsingExtensionParams_handlingOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v10 = [a2 firstObject];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained(WeakRetained + 1);
      v8 = [v10 extension];
      v9 = [v10 appStoreApp];
      [v7 handleMapsExtension:v8 usingAppStoreApp:v9 options:*(a1 + 32) parameters:*(a1 + 40)];
    }
  }
}

- (id)_viewModelsWithSortApplied
{
  if (self->_viewModels)
  {
    if (!self->_vendorLinkSorter)
    {
      v3 = [MUVendorLinkSorter alloc];
      v4 = [(NSArray *)self->_viewModels copy];
      v5 = [(MUVendorLinkSorter *)v3 initWithViewModels:v4];
      vendorLinkSorter = self->_vendorLinkSorter;
      self->_vendorLinkSorter = v5;
    }

    v7 = objc_alloc_init(MUVendorLinkSortParameters);
    [(MUVendorLinkSortParameters *)v7 setSortAlphabetically:1];
    winningAdamId = [(GEOPlaceExternalAction *)self->_externalAction winningAdamId];
    [(MUVendorLinkSortParameters *)v7 setWinningAdamId:winningAdamId];

    actionProviders = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
    v10 = MUMap(actionProviders, &__block_literal_global_8152);

    [(MUVendorLinkSortParameters *)v7 setPreferredOrdering:v10];
    v11 = [(MUVendorLinkSorter *)self->_vendorLinkSorter sortedViewModelsForParameters:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_executeBestIntegrationForProvider:(id)provider index:(unint64_t)index presentationOptions:(id)options
{
  v65[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  optionsCopy = options;
  supportedIntegrations = [providerCopy supportedIntegrations];
  v11 = [supportedIntegrations count];

  if (v11 <= index)
  {
    goto LABEL_28;
  }

  supportedIntegrations2 = [providerCopy supportedIntegrations];
  v13 = [supportedIntegrations2 objectAtIndex:index];

  type = [v13 type];
  hasMultipleVendorsForAnalytics = [(MUGroupedExternalActionController *)self hasMultipleVendorsForAnalytics];
  if ((type - 1) < 2)
  {
    goto LABEL_5;
  }

  if (type == 3)
  {
    v16 = !hasMultipleVendorsForAnalytics;
    v17 = 6036;
    v18 = 318;
    goto LABEL_7;
  }

  if (type == 4)
  {
LABEL_5:
    v16 = !hasMultipleVendorsForAnalytics;
    v17 = 6074;
    v18 = 283;
LABEL_7:
    if (!v16)
    {
      v17 = v18;
    }

    v52 = v17;
    goto LABEL_10;
  }

  v52 = 0;
LABEL_10:
  v19 = [(MUGroupedExternalActionController *)self resolvedAnalyticsTargetWithPresentationOptions:optionsCopy];
  v20 = objc_alloc_init(MEMORY[0x1E69A24B0]);
  categoryId = [(GEOPlaceExternalAction *)self->_externalAction categoryId];
  [v20 setMetadata:categoryId];

  appAdamId = [providerCopy appAdamId];
  [v20 setVendor:appAdamId];

  v23 = [v13 type] - 1;
  if (v23 > 3)
  {
    v24 = 0;
  }

  else
  {
    v24 = dword_1C5879FD0[v23];
  }

  [v20 setLinkType:v24];
  [v20 setIsGroup:{-[MUGroupedExternalActionController hasMultipleVendorsForAnalytics](self, "hasMultipleVendorsForAnalytics")}];
  v65[0] = v20;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
  v25 = objc_alloc_init(MUExternalActionHandlingOptions);
  [(MUExternalActionHandlingOptions *)v25 setAnalyticsTarget:v19];
  type2 = [v13 type];
  if (type2 > 2)
  {
    if (type2 == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_analyticsHandler);
      [WeakRetained instrumentExternalActionUsingAnalyticsAction:v52 target:v19 eventValue:0 sharedStateButtonList:v53 presentationOptions:optionsCopy classification:0];

      siriExtensionParams = [v13 siriExtensionParams];
      [(MUGroupedExternalActionController *)self _openMapsExtensionUsingExtensionParams:siriExtensionParams handlingOptions:v25];
    }

    else if (type2 == 4)
    {
      webLinkParams = [v13 webLinkParams];
      v37 = [webLinkParams url];

      absoluteString = [v37 absoluteString];
      [(MUExternalActionHandlingOptions *)v25 setAnalyticsEventValue:absoluteString];

      v39 = MUGetMUGroupedExternalActionControllerLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        absoluteString2 = [v37 absoluteString];
        *buf = 138412290;
        v64 = absoluteString2;
        _os_log_impl(&dword_1C5620000, v39, OS_LOG_TYPE_INFO, "Opening flexible action link with url %@", buf, 0xCu);
      }

      v41 = objc_loadWeakRetained(&self->_analyticsHandler);
      analyticsEventValue = [(MUExternalActionHandlingOptions *)v25 analyticsEventValue];
      [v41 instrumentExternalActionUsingAnalyticsAction:v52 target:v19 eventValue:analyticsEventValue sharedStateButtonList:v53 presentationOptions:optionsCopy classification:0];

      webLinkParams2 = [v13 webLinkParams];
      -[MUExternalActionHandlingOptions setForcePunchout:](v25, "setForcePunchout:", [webLinkParams2 supportsEmbeddedWebBrowser] ^ 1);

      v44 = objc_loadWeakRetained(&self->_actionHandler);
      [v44 handleWebLink:v37 options:v25];
    }
  }

  else if (type2 == 1)
  {
    appClipRepresentedAsQuickLink = [v13 appClipRepresentedAsQuickLink];
    uRLString = [appClipRepresentedAsQuickLink URLString];
    [(MUExternalActionHandlingOptions *)v25 setAnalyticsEventValue:uRLString];

    objc_initWeak(buf, self);
    mEMORY[0x1E696F1B0] = [MEMORY[0x1E696F1B0] sharedInstance];
    appClipRepresentedAsQuickLink2 = [v13 appClipRepresentedAsQuickLink];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __98__MUGroupedExternalActionController__executeBestIntegrationForProvider_index_presentationOptions___block_invoke;
    v54[3] = &unk_1E8219328;
    objc_copyWeak(v60, buf);
    v55 = v13;
    v56 = providerCopy;
    v60[1] = index;
    v57 = optionsCopy;
    v61 = v52;
    v62 = v19;
    v58 = v25;
    v59 = v53;
    [mEMORY[0x1E696F1B0] appClipWithQuickLink:appClipRepresentedAsQuickLink2 completion:v54];

    objc_destroyWeak(v60);
    objc_destroyWeak(buf);
  }

  else if (type2 == 2)
  {
    quickLink = [v13 quickLink];
    uRLString2 = [quickLink URLString];
    [(MUExternalActionHandlingOptions *)v25 setAnalyticsEventValue:uRLString2];

    v29 = MUGetMUGroupedExternalActionControllerLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      quickLink2 = [v13 quickLink];
      uRLString3 = [quickLink2 URLString];
      *buf = 138412290;
      v64 = uRLString3;
      _os_log_impl(&dword_1C5620000, v29, OS_LOG_TYPE_INFO, "Opening quick link with url %@", buf, 0xCu);
    }

    v32 = objc_loadWeakRetained(&self->_analyticsHandler);
    analyticsEventValue2 = [(MUExternalActionHandlingOptions *)v25 analyticsEventValue];
    [v32 instrumentExternalActionUsingAnalyticsAction:v52 target:v19 eventValue:analyticsEventValue2 sharedStateButtonList:v53 presentationOptions:optionsCopy classification:0];

    v34 = objc_loadWeakRetained(&self->_actionHandler);
    quickLink3 = [v13 quickLink];
    [v34 handleQuickLink:quickLink3 options:v25];
  }

LABEL_28:
  v51 = *MEMORY[0x1E69E9840];
}

void __98__MUGroupedExternalActionController__executeBestIntegrationForProvider_index_presentationOptions___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v5 = MUGetMUGroupedExternalActionControllerLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) appClipRepresentedAsQuickLink];
        v8 = [v7 URLString];
        v9 = [*(a1 + 32) appClipRepresentedAsQuickLink];
        v10 = [v9 bundleID];
        v21 = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Opening app clip with url %@ bundle identifier %@", &v21, 0x16u);
      }

      v11 = objc_loadWeakRetained(WeakRetained + 2);
      v12 = *(a1 + 88);
      v13 = *(a1 + 92);
      v14 = [*(a1 + 56) analyticsEventValue];
      [v11 instrumentExternalActionUsingAnalyticsAction:v12 target:v13 eventValue:v14 sharedStateButtonList:*(a1 + 64) presentationOptions:*(a1 + 48) classification:0];

      v15 = objc_loadWeakRetained(WeakRetained + 1);
      [v15 handleAppClip:v3 options:*(a1 + 56)];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 32) appClipRepresentedAsQuickLink];
        v17 = [v16 URLString];
        v18 = [*(a1 + 32) appClipRepresentedAsQuickLink];
        v19 = [v18 bundleID];
        v21 = 138412546;
        v22 = v17;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_ERROR, "Failed to open app clip with url %@ bundle identifier %@", &v21, 0x16u);
      }

      [WeakRetained _executeBestIntegrationForProvider:*(a1 + 40) index:*(a1 + 80) + 1 presentationOptions:*(a1 + 48)];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)openFirstPartnerActionWithPresentationOptions:(id)options
{
  optionsCopy = options;
  actionProviders = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
  v6 = [actionProviders count];

  if (!v6)
  {
    v11 = MUGetMUGroupedExternalActionControllerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v12 = "No action providers.  Early return";
      v13 = &v17;
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
LABEL_11:
      _os_log_impl(&dword_1C5620000, v14, v15, v12, v13, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  actionProviders2 = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
  v8 = [actionProviders2 count];

  if (v8 != 1)
  {
    if ([(NSArray *)self->_viewModels count])
    {
      _viewModelsWithSortApplied = [(MUGroupedExternalActionController *)self _viewModelsWithSortApplied];
      firstObject = [_viewModelsWithSortApplied firstObject];
      [(MUGroupedExternalActionController *)self openPartnerActionUsingViewModel:firstObject withPresentationOptions:optionsCopy];
      goto LABEL_8;
    }

    v11 = MUGetMUGroupedExternalActionControllerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v12 = "No refined view models.  Early return";
      v13 = &v16;
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  _viewModelsWithSortApplied = [(GEOPlaceExternalAction *)self->_externalAction actionProviders];
  firstObject = [_viewModelsWithSortApplied firstObject];
  [(MUGroupedExternalActionController *)self _executeBestIntegrationForProvider:firstObject index:0 presentationOptions:optionsCopy];
LABEL_8:

LABEL_13:
}

- (void)openPartnerActionUsingViewModel:(id)model withPresentationOptions:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  if (modelCopy)
  {
    externalAction = self->_externalAction;
    partnerId = [modelCopy partnerId];
    v10 = [(GEOPlaceExternalAction *)externalAction partnerActionForPartnerId:partnerId];

    if (v10)
    {
      [(MUGroupedExternalActionController *)self _executeBestIntegrationForProvider:v10 index:0 presentationOptions:optionsCopy];
    }

    else
    {
      v11 = MUGetMUGroupedExternalActionControllerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        uniqueIdentifier = [modelCopy uniqueIdentifier];
        appAdamId = [modelCopy appAdamId];
        v15 = 138412546;
        v16 = uniqueIdentifier;
        v17 = 2112;
        v18 = appAdamId;
        _os_log_impl(&dword_1C5620000, v11, OS_LOG_TYPE_ERROR, "Unable to find a matching provider for a view model with identifier %@ and adam id %@.  Early return", &v15, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = MUGetMUGroupedExternalActionControllerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_ERROR, "Attempting to open a nil view model.  Early return", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)fetchProviderLockupsWithCompletion:(id)completion
{
  v101 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(NSArray *)self->_viewModels count])
  {
    _viewModelsWithSortApplied = [(MUGroupedExternalActionController *)self _viewModelsWithSortApplied];
    v5 = completionCopy;
    (*(completionCopy + 2))(completionCopy, _viewModelsWithSortApplied, 0);

    goto LABEL_39;
  }

  val = self;
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v8 = v7;

  v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = [[MUAMSResultProviderFetchOptions alloc] initWithDisplayScale:[(MUGroupedExternalActionController *)val source] artworkSize:v8 source:40.0, 40.0];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  actionProviders = [(GEOPlaceExternalAction *)val->_externalAction actionProviders];
  v10 = [actionProviders countByEnumeratingWithState:&v95 objects:v100 count:16];
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = *v96;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v96 != v11)
      {
        objc_enumerationMutation(actionProviders);
      }

      v13 = *(*(&v95 + 1) + 8 * i);
      supportedIntegrations = [v13 supportedIntegrations];
      firstObject = [supportedIntegrations firstObject];

      if (firstObject)
      {
        [v66 addObject:firstObject];
      }

      appAdamId = [v13 appAdamId];
      type = [firstObject type];
      if (type > 2)
      {
        if (type == 3)
        {
          siriExtensionParams = [firstObject siriExtensionParams];
          attributionAppForMapsExtension = [firstObject attributionAppForMapsExtension];
          appBundleIdentifier = [attributionAppForMapsExtension appBundleIdentifier];
          [v60 setObject:siriExtensionParams forKey:appBundleIdentifier];

          identifier = [v13 identifier];
          [v57 setObject:identifier forKey:appAdamId];
        }

        else
        {
          if (type != 4)
          {
            goto LABEL_20;
          }

          identifier = [firstObject webLinkParams];
          identifier2 = [v13 identifier];
          [v67 setObject:identifier forKey:identifier2];
        }
      }

      else if (type == 1)
      {
        identifier = [firstObject appClipRepresentedAsQuickLink];
        [v61 addObject:identifier];
        uRLString = [identifier URLString];
        [v59 setObject:appAdamId forKey:uRLString];

        identifier3 = [v13 identifier];
        [v58 setObject:identifier3 forKey:appAdamId];
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_20;
        }

        identifier = [v13 identifier];
        [v62 setObject:identifier forKey:appAdamId];
      }

LABEL_20:
    }

    v10 = [actionProviders countByEnumeratingWithState:&v95 objects:v100 count:16];
  }

  while (v10);
LABEL_22:

  actionName = [(GEOPlaceExternalAction *)val->_externalAction actionName];
  group = dispatch_group_create();
  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v67 count])
  {
    dispatch_group_enter(group);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = [v67 allKeys];
    v25 = [obj countByEnumeratingWithState:&v91 objects:v99 count:16];
    if (v25)
    {
      v26 = *v92;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v92 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v91 + 1) + 8 * j);
          v29 = [v67 objectForKeyedSubscript:v28];
          icon = [v29 icon];
          v31 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];
          v32 = [icon bestPhotoForFrameSize:v31 displayScale:40.0 options:{40.0, v8}];
          v33 = [v32 url];

          v34 = [MUVendorLinkViewModel alloc];
          displayName = [v29 displayName];
          displayName2 = [v29 displayName];
          v37 = [(MUVendorLinkViewModel *)v34 initWithPartnerId:v28 linkType:4 artworkURL:v33 providerName:displayName appAdamId:0 appShortName:displayName2 actionName:actionName fallbackSymbolName:@"safari"];

          [v64 addObject:v37];
        }

        v25 = [obj countByEnumeratingWithState:&v91 objects:v99 count:16];
      }

      while (v25);
    }

    dispatch_group_leave(group);
  }

  if ([v61 count])
  {
    dispatch_group_enter(group);
    mEMORY[0x1E696F1B0] = [MEMORY[0x1E696F1B0] sharedInstance];
    v39 = [v61 copy];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke;
    v85[3] = &unk_1E82192B0;
    v86 = v59;
    v87 = v58;
    v88 = actionName;
    v89 = v64;
    v90 = group;
    [mEMORY[0x1E696F1B0] appClipsFromQuickLinks:v39 completion:v85];
  }

  if ([v62 count] && val->_amsResultProvider)
  {
    dispatch_group_enter(group);
    amsResultProvider = val->_amsResultProvider;
    allKeys = [v62 allKeys];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke_3;
    v80[3] = &unk_1E82192D8;
    v81 = v62;
    v82 = actionName;
    v83 = v64;
    v84 = group;
    [(MUAMSResultProvider *)amsResultProvider fetchResultsForAdamIds:allKeys options:v53 callbackQueue:MEMORY[0x1E69E96A0] completion:v80];
  }

  if ([v60 count])
  {
    dispatch_group_enter(group);
    location[0] = 0;
    location[1] = location;
    location[2] = 0x2020000000;
    v79 = 0;
    v42 = [MUPlaceExtensionDiscoveryManager alloc];
    allValues = [v60 allValues];
    reverseObjectEnumerator = [allValues reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v46 = [(MUPlaceExtensionDiscoveryManager *)v42 initWithExtensionDataItems:allObjects amsResultProvider:val->_amsResultProvider];
    extensionDiscoveryManager = val->_extensionDiscoveryManager;
    val->_extensionDiscoveryManager = v46;

    v48 = val->_extensionDiscoveryManager;
    v49 = MEMORY[0x1E69E96A0];
    v50 = MEMORY[0x1E69E96A0];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke_4;
    v72[3] = &unk_1E8219300;
    v73 = v57;
    v74 = actionName;
    v75 = v64;
    v77 = location;
    v76 = group;
    [(MUPlaceExtensionDiscoveryManager *)v48 performExtensionDiscoveryWithOptions:v53 callbackQueue:v49 completion:v72];

    _Block_object_dispose(location, 8);
  }

  objc_initWeak(location, val);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke_5;
  block[3] = &unk_1E82194C8;
  objc_copyWeak(&v71, location);
  v69 = v64;
  v70 = completionCopy;
  v51 = v64;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v71);
  objc_destroyWeak(location);

  v5 = completionCopy;
LABEL_39:

  v52 = *MEMORY[0x1E69E9840];
}

void __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke_2;
  v11[3] = &unk_1E8219288;
  v12 = v3;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v15 = a1[8];
  v10 = v3;
  [MapsUIUtilities performOnMainIfNecessary:v11];
}

void __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
        v10 = [MUVendorLinkViewModel alloc];
        v11 = [v7 artworkURL];
        v12 = [v7 artistName];
        v13 = [v7 shortName];
        v14 = [(MUVendorLinkViewModel *)v10 initWithPartnerId:v9 linkType:2 artworkURL:v11 providerName:v12 appAdamId:v8 appShortName:v13 actionName:*(a1 + 40) fallbackSymbolName:0];

        [*(a1 + 48) addObject:v14];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 56));

  v15 = *MEMORY[0x1E69E9840];
}

void __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v20)
  {
    v19 = *v23;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * i);
        v5 = [v4 appStoreApp];
        v6 = [v5 identifier];

        v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v8 = [MUVendorLinkViewModel alloc];
        v21 = [v4 appStoreApp];
        v9 = [v21 artworkURL];
        v10 = [v4 appStoreApp];
        [v10 artistName];
        v12 = v11 = a1;
        v13 = [v4 appStoreApp];
        v14 = [v13 shortName];
        v15 = [(MUVendorLinkViewModel *)v8 initWithPartnerId:v7 linkType:3 artworkURL:v9 providerName:v12 appAdamId:v6 appShortName:v14 actionName:*(v11 + 40) fallbackSymbolName:0];

        a1 = v11;
        [*(v11 + 48) addObject:v15];
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v20);
  }

  v16 = *(*(a1 + 64) + 8);
  if ((*(v16 + 24) & 1) == 0)
  {
    *(v16 + 24) = 1;
    dispatch_group_leave(*(a1 + 56));
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [*(a1 + 32) copy];
    v4 = v7[3];
    v7[3] = v3;

    v5 = *(a1 + 40);
    v6 = [v7 _viewModelsWithSortApplied];
    (*(v5 + 16))(v5, v6, 0);

    WeakRetained = v7;
  }
}

void __72__MUGroupedExternalActionController_fetchProviderLockupsWithCompletion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v17 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * i);
        v6 = [v5 appClipURL];
        v7 = [v6 absoluteString];

        v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
        v9 = [*(a1 + 48) objectForKeyedSubscript:v8];
        v10 = [MUVendorLinkViewModel alloc];
        v11 = [v5 artworkURL];
        v12 = [v5 provider];
        v13 = [v5 appShortName];
        v14 = [(MUVendorLinkViewModel *)v10 initWithPartnerId:v9 linkType:1 artworkURL:v11 providerName:v12 appAdamId:v8 appShortName:v13 actionName:*(a1 + 56) fallbackSymbolName:0];

        [*(a1 + 64) addObject:v14];
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  dispatch_group_leave(*(a1 + 72));
  v15 = *MEMORY[0x1E69E9840];
}

- (MUGroupedExternalActionController)initWithGroupedExternalAction:(id)action amsResultProvider:(id)provider supportsMultipleVendorSelection:(BOOL)selection actionHandler:(id)handler analyticsHandler:(id)analyticsHandler
{
  actionCopy = action;
  providerCopy = provider;
  handlerCopy = handler;
  analyticsHandlerCopy = analyticsHandler;
  v20.receiver = self;
  v20.super_class = MUGroupedExternalActionController;
  v17 = [(MUGroupedExternalActionController *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_externalAction, action);
    objc_storeWeak(&v18->_actionHandler, handlerCopy);
    objc_storeWeak(&v18->_analyticsHandler, analyticsHandlerCopy);
    objc_storeStrong(&v18->_amsResultProvider, provider);
    v18->_supportsMultipleVendorSelection = selection;
  }

  return v18;
}

@end