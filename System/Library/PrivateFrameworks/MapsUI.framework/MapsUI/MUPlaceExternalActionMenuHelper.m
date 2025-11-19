@interface MUPlaceExternalActionMenuHelper
- (MUPlaceExternalActionMenuHelper)initWithExternalActionController:(id)a3 iconCache:(id)a4;
- (NSString)actionName;
- (NSString)symbolName;
- (id)_buildMenuItemViewModelWithCachedImageForViewModel:(id)a3 isSingleProvider:(BOOL)a4;
- (id)buildMenuElementsWithPresentationOptions:(id)a3;
- (unint64_t)_imageVariantForViewModel:(id)a3 isSingleProvider:(BOOL)a4;
- (void)_downloadImageWithURL:(id)a3 variant:(unint64_t)a4 uniqueIdentifier:(id)a5 completion:(id)a6;
- (void)buildMenuItemViewModelsWithUpdateDelegate:(id)a3 completion:(id)a4;
@end

@implementation MUPlaceExternalActionMenuHelper

- (NSString)symbolName
{
  v2 = [(MUGroupedExternalActionController *)self->_resolver externalAction];
  v3 = [v2 symbolName];

  return v3;
}

- (NSString)actionName
{
  v2 = [(MUGroupedExternalActionController *)self->_resolver externalAction];
  v3 = [v2 actionName];

  return v3;
}

- (void)_downloadImageWithURL:(id)a3 variant:(unint64_t)a4 uniqueIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E696F3B8] sharedInstance];
  [v13 screenScale];
  v15 = v14;

  v16 = objc_alloc_init(MUAppLockupImageMetrics);
  [(MUAppLockupImageMetrics *)v16 setFrameSize:40.0, 40.0];
  [(MUAppLockupImageMetrics *)v16 setScale:v15];
  [(MUAppLockupImageMetrics *)v16 setVariant:a4];
  v17 = [[MUAppLockupImage alloc] initWithRemoteURL:v10 metrics:v16];
  [(NSMutableDictionary *)self->_lockupImagesByIdentifiers setObject:v17 forKeyedSubscript:v11];
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__MUPlaceExternalActionMenuHelper__downloadImageWithURL_variant_uniqueIdentifier_completion___block_invoke;
  v21[3] = &unk_1E82197D0;
  objc_copyWeak(&v25, &location);
  v18 = v17;
  v22 = v18;
  v19 = v11;
  v23 = v19;
  v20 = v12;
  v24 = v20;
  [(MUAppLockupImage *)v18 loadImageWithCompletion:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __93__MUPlaceExternalActionMenuHelper__downloadImageWithURL_variant_uniqueIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v7 = WeakRetained;
    v4 = [*(a1 + 32) cachedImage];
    [v3 setObject:v4 forKey:*(a1 + 40)];

    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) cachedImage];
    (*(v5 + 16))(v5, v6, 0);

    WeakRetained = v7;
  }
}

- (void)buildMenuItemViewModelsWithUpdateDelegate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  resolver = self->_resolver;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke;
  v11[3] = &unk_1E82182D0;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(MUGroupedExternalActionController *)resolver fetchProviderLockupsWithCompletion:v11];
}

void __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MUGetMUPlaceExternalActionMenuHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v46 = v6;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch vendor link models with error %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [v5 count];
    v10 = dispatch_group_create();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v28 = v5;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      v29 = *v41;
      do
      {
        v14 = 0;
        v30 = v12;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          dispatch_group_enter(v10);
          v16 = [*(a1 + 32) _buildMenuItemViewModelWithCachedImageForViewModel:v15 isSingleProvider:v9 == 1];
          [v16 setUpdateDelegate:*(a1 + 40)];
          [v8 addObject:v16];
          v17 = [v16 image];

          if (v17)
          {
            dispatch_group_leave(v10);
          }

          else
          {
            v32 = [*(a1 + 32) _imageVariantForViewModel:v15 isSingleProvider:v9 == 1];
            v18 = v8;
            v19 = *(a1 + 32);
            v20 = [v15 artworkURL];
            [v15 uniqueIdentifier];
            v21 = a1;
            v23 = v22 = v9;
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke_23;
            v37[3] = &unk_1E82182A8;
            v37[4] = v15;
            v38 = v10;
            v39 = v16;
            v24 = v19;
            v8 = v18;
            v13 = v29;
            [v24 _downloadImageWithURL:v20 variant:v32 uniqueIdentifier:v23 completion:v37];

            v9 = v22;
            a1 = v21;

            v12 = v30;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v12);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke_24;
    block[3] = &unk_1E821B8D8;
    v25 = *(a1 + 48);
    v35 = 0;
    v36 = v25;
    v34 = v8;
    v26 = v8;
    dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);

    v6 = 0;
    v5 = v28;
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke_23(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = MUGetMUPlaceExternalActionMenuHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) artworkURL];
      v9 = [*(a1 + 32) uniqueIdentifier];
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Failed to download artwork url %@ for model %@ with error %@", &v11, 0x20u);
    }
  }

  else
  {
    [*(a1 + 48) setImage:a2];
  }

  dispatch_group_leave(*(a1 + 40));

  v10 = *MEMORY[0x1E69E9840];
}

void __88__MUPlaceExternalActionMenuHelper_buildMenuItemViewModelsWithUpdateDelegate_completion___block_invoke_24(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] openPartnerActionUsingViewModel:*(a1 + 32) withPresentationOptions:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = MUGetMUPlaceExternalActionMenuHelperLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) uniqueIdentifier];
      *buf = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_ERROR, "Failed to download artwork url %@ for model %@ with error %@", buf, 0x20u);
    }
  }

  else
  {
    v8 = [*(a1 + 48) contextMenuInteraction];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke_20;
    v13[3] = &unk_1E8218258;
    objc_copyWeak(&v15, (a1 + 56));
    v14 = *(a1 + 40);
    [v8 updateVisibleMenuWithBlock:v13];

    objc_destroyWeak(&v15);
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __102__MUPlaceExternalActionMenuHelper__buildMenuElementForViewModel_presentationOptions_isSingleProvider___block_invoke_20(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v23 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v3;
    v4 = [v3 _mapsui_allChildren];
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [v10 identifier];
            v12 = [WeakRetained[1] objectForKeyedSubscript:v11];
            if (v12)
            {
              v13 = v12;
              v14 = [*(v23 + 32) uniqueIdentifier];
              v15 = [v11 isEqual:v14];

              if (v15)
              {
                v16 = MUGetMUPlaceExternalActionMenuHelperLog();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  v17 = [*(v23 + 32) uniqueIdentifier];
                  *buf = 138412290;
                  v30 = v17;
                  _os_log_impl(&dword_1C5620000, v16, OS_LOG_TYPE_INFO, "Updating image for view model %@", buf, 0xCu);
                }

                v18 = [WeakRetained[1] objectForKeyedSubscript:v11];
                [v10 setImage:v18];

                goto LABEL_17;
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v3 = v22;
  }

  v19 = [v3 copy];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (unint64_t)_imageVariantForViewModel:(id)a3 isSingleProvider:(BOOL)a4
{
  if (!a4)
  {
    return 1;
  }

  if ([a3 linkType] == 1)
  {
    return 2;
  }

  return 1;
}

- (id)_buildMenuItemViewModelWithCachedImageForViewModel:(id)a3 isSingleProvider:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 artworkURL];
  iconCache = self->_iconCache;
  v9 = [v6 uniqueIdentifier];
  v10 = [(MUTimeExpirableLRUCache *)iconCache objectForKeyedSubscript:v9];

  if (a4)
  {
    [(MUPlaceExternalActionMenuHelper *)self actionName];
  }

  else
  {
    [v6 appShortName];
  }
  v11 = ;
  if (!v7)
  {
    v12 = [v6 fallbackSymbolName];

    if (v12)
    {
      v13 = MEMORY[0x1E69DCAB8];
      v14 = [v6 fallbackSymbolName];
      v15 = [v13 _systemImageNamed:v14 variant:0];

      v10 = v15;
    }
  }

  v16 = [[MUVendorLinkMenuItemViewModel alloc] initWithTitle:v11 image:v10 vendorLinkViewModel:v6];

  return v16;
}

- (id)buildMenuElementsWithPresentationOptions:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC928];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke;
  v11[3] = &unk_1E8218230;
  objc_copyWeak(&v13, &location);
  v6 = v4;
  v12 = v6;
  v7 = [v5 elementWithProvider:v11];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_opt_new();
    [v5 setIsQuickAction:{objc_msgSend(WeakRetained, "isQuickAction")}];
    [v5 setIsActionBar:{objc_msgSend(*(a1 + 32), "isForActionBar")}];
    [WeakRetained[3] captureGroupedMenuRevealAnalyticsIfNeededWithEnvironment:v5];
    v6 = WeakRetained[3];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke_2;
    v7[3] = &unk_1E821A848;
    v9 = v3;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = *(a1 + 32);
    [v6 fetchProviderLockupsWithCompletion:v7];

    objc_destroyWeak(&v10);
  }
}

void __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MUGetMUPlaceExternalActionMenuHelperLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch vendor link models with error %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke_8;
      v15[3] = &unk_1E8218208;
      v15[4] = WeakRetained;
      v16 = *(a1 + 32);
      v17 = v5;
      v10 = MUMap(v17, v15);
      v11 = v9[5];
      v9[5] = v10;

      v12 = *(a1 + 40);
      v13 = [v9[5] copy];
      (*(v12 + 16))(v12, v13);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

id __76__MUPlaceExternalActionMenuHelper_buildMenuElementsWithPresentationOptions___block_invoke_8(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v2 _buildMenuElementForViewModel:v5 presentationOptions:v3 isSingleProvider:{objc_msgSend(v4, "count") == 1}];

  return v6;
}

- (MUPlaceExternalActionMenuHelper)initWithExternalActionController:(id)a3 iconCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUPlaceExternalActionMenuHelper;
  v9 = [(MUPlaceExternalActionMenuHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_iconCache, a4);
    objc_storeStrong(&v10->_resolver, a3);
  }

  return v10;
}

@end