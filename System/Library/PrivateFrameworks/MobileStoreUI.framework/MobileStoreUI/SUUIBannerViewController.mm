@interface SUUIBannerViewController
- (NSOperationQueue)resourceOperationQueue;
- (SUUIBannerViewDelegate)delegate;
- (id)_iconImage;
- (id)_itemArtworkContext;
- (id)_itemState;
- (void)_bannerViewAction:(id)a3;
- (void)_closeButtonAction:(id)a3;
- (void)_finishWithResponse:(id)a3 error:(id)a4;
- (void)_launchApp;
- (void)_launchURL:(id)a3 withBundleIdentifier:(id)a4;
- (void)_loadImages;
- (void)_reloadBannerView;
- (void)_setIcon:(id)a3 error:(id)a4;
- (void)_setScreenshot:(id)a3 forIndex:(int64_t)a4 error:(id)a5;
- (void)_warmItemStateCenter;
- (void)dealloc;
- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4;
- (void)loadView;
- (void)loadWithProductParameters:(id)a3 mainDocumentURL:(id)a4;
- (void)setClientContext:(id)a3;
@end

@implementation SUUIBannerViewController

- (void)dealloc
{
  v3 = [(SUUIBannerView *)self->_bannerView closeButton];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v4 = [(SUUIBannerView *)self->_bannerView itemOfferButton];
  [v4 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SUUIItemStateCenter *)self->_itemStateCenter removeObserver:self];
  v5.receiver = self;
  v5.super_class = SUUIBannerViewController;
  [(SUUIBannerViewController *)&v5 dealloc];
}

- (void)loadWithProductParameters:(id)a3 mainDocumentURL:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D69CF0]);
  v9 = [(SUUIClientContext *)self->_clientContext platformContext];
  v10 = [v8 initWithPlatformContext:v9];

  v11 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [v10 setStoreFrontSuffix:v11];

  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v14 = MEMORY[0x277D6A2D0];
  if (v13 != 1)
  {
    v14 = MEMORY[0x277D6A2C8];
  }

  [v10 setKeyProfile:*v14];
  [v10 setMainDocumentURL:v7];
  [v10 setShouldSuppressUserInfo:1];
  [v10 setAttribution:1];
  v15 = [v6 objectForKey:@"id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 stringValue];

    v15 = v16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [v10 setItemIdentifiers:v17];

    self->_itemIdentifier = [v15 longLongValue];
  }

  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __70__SUUIBannerViewController_loadWithProductParameters_mainDocumentURL___block_invoke;
  v22 = &unk_2798F67F0;
  objc_copyWeak(&v23, &location);
  [v10 setResponseBlock:&v19];
  v18 = [(SUUIBannerViewController *)self resourceOperationQueue:v19];
  [v18 addOperation:v10];

  [(SUUIBannerViewController *)self _warmItemStateCenter];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __70__SUUIBannerViewController_loadWithProductParameters_mainDocumentURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SUUIBannerViewController_loadWithProductParameters_mainDocumentURL___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __70__SUUIBannerViewController_loadWithProductParameters_mainDocumentURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (NSOperationQueue)resourceOperationQueue
{
  resourceOperationQueue = self->_resourceOperationQueue;
  if (!resourceOperationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_resourceOperationQueue;
    self->_resourceOperationQueue = v4;

    [(NSOperationQueue *)self->_resourceOperationQueue setMaxConcurrentOperationCount:1];
    resourceOperationQueue = self->_resourceOperationQueue;
  }

  return resourceOperationQueue;
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  if (self->_clientContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_clientContext, a3);
    [(SUUIBannerView *)self->_bannerView setClientContext:self->_clientContext];
    v5 = v6;
  }
}

- (void)loadView
{
  bannerView = self->_bannerView;
  if (!bannerView)
  {
    v4 = objc_alloc_init(SUUIBannerView);
    v5 = self->_bannerView;
    self->_bannerView = v4;

    [(SUUIBannerView *)self->_bannerView setClientContext:self->_clientContext];
    [(SUUIBannerView *)self->_bannerView sizeToFit];
    v6 = [(SUUIBannerView *)self->_bannerView closeButton];
    [v6 addTarget:self action:sel__closeButtonAction_ forControlEvents:64];

    v7 = [(SUUIBannerView *)self->_bannerView itemOfferButton];
    [v7 addTarget:self action:sel__bannerViewAction_ forControlEvents:64];

    [(SUUIBannerViewController *)self _reloadBannerView];
    bannerView = self->_bannerView;
  }

  [(SUUIBannerViewController *)self setView:bannerView];
}

- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SUUIBannerViewController_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __62__SUUIBannerViewController_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 1024))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = [v7 itemIdentifier];
          v9 = [v8 longLongValue];
          v10 = *(*(a1 + 32) + 1032);

          if (v9 == v10)
          {
            [*(*(a1 + 32) + 992) setItemState:v7];
            goto LABEL_12;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_bannerViewAction:(id)a3
{
  v4 = a3;
  v5 = [(SUUIBannerViewController *)self _itemState];
  v6 = [v5 state];

  if ((v6 & 4) != 0)
  {
    [(SUUIBannerViewController *)self _launchApp];
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__41;
    v15 = __Block_byref_object_dispose__41;
    v16 = [(SSLookupItem *)self->_item productPageURL];
    if (v12[5])
    {
      v7 = [(NSDictionary *)self->_scriptContextDictionary objectForKey:@"affiliateData"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v7 unescapedValues:1];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __46__SUUIBannerViewController__bannerViewAction___block_invoke;
        v10[3] = &unk_2798F6490;
        v10[4] = &v11;
        [v8 enumerateKeysAndObjectsUsingBlock:v10];
      }

      v9 = [MEMORY[0x277D75128] sharedApplication];
      [v9 openURL:v12[5] options:MEMORY[0x277CBEC10] completionHandler:0];
    }

    _Block_object_dispose(&v11, 8);
  }
}

uint64_t __46__SUUIBannerViewController__bannerViewAction___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(*(*(a1 + 32) + 8) + 40) URLByAppendingQueryParameter:a2 value:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

- (void)_closeButtonAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 bannerViewDidClose:self];
  }
}

- (void)_finishWithResponse:(id)a3 error:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12)
  {
    v7 = [v12 allItems];
    if ([v7 count] == 1)
    {
      v8 = [v7 objectAtIndex:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&self->_item, v8);
  [(SUUIBannerViewController *)self _reloadBannerView];
  [(SUUIBannerViewController *)self _loadImages];
  if (!self->_item)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 bannerView:self didFailWithError:v6];
    }
  }
}

- (id)_iconImage
{
  v3 = self->_iconImage;
  if (!v3)
  {
    v4 = [(SUUIBannerViewController *)self _itemArtworkContext];
    v5 = [SUUIItem alloc];
    v6 = [(SSLookupItem *)self->_item lookupDictionary];
    v7 = [(SUUIItem *)v5 initWithLookupDictionary:v6];
    v3 = [v4 placeholderImageForItem:v7];
  }

  return v3;
}

- (id)_itemState
{
  if (self->_itemIdentifier < 1)
  {
    v3 = 0;
  }

  else
  {
    [(SUUIBannerViewController *)self _warmItemStateCenter];
    v3 = [(SUUIItemStateCenter *)self->_itemStateCenter stateForItemWithIdentifier:self->_itemIdentifier];
  }

  return v3;
}

- (void)_launchApp
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_scriptContextDictionary objectForKey:@"app-argument"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_scriptContextDictionary objectForKey:@"applicationLaunchArgument"];
  }

  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  if (self->_itemIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:self->_itemIdentifier];
    v6 = objc_alloc_init(MEMORY[0x277D69C68]);
    v10[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SUUIBannerViewController__launchApp__block_invoke;
    v8[3] = &unk_2798F7F78;
    v8[4] = self;
    v9 = v4;
    [v6 getLibraryItemsForITunesStoreItemIdentifiers:v7 completionBlock:v8];
  }

  else
  {
    [(SUUIBannerViewController *)self _launchURL:v4 withBundleIdentifier:0];
  }
}

void __38__SUUIBannerViewController__launchApp__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count] == 1)
  {
    v3 = [v5 objectAtIndex:0];
    v4 = [v3 valueForProperty:*MEMORY[0x277D6A5B0]];
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) _launchURL:*(a1 + 40) withBundleIdentifier:v4];
}

- (void)_launchURL:(id)a3 withBundleIdentifier:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (v9)
    {
      v8 = v9;
      SUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptions(v7, v8, 0, 0, 0);
      CFRelease(v8);
    }

    else
    {
      SUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptions(v7, 0, 0, 0, 0);
    }

    CFRelease(v7);
  }

  else
  {
    SUUIMetricsOpenURL(v9);
  }
}

- (void)_loadImages
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = 75.0;
  }

  else
  {
    v4 = 64.0;
  }

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  [(SSLookupItem *)self->_item artwork];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  obj = v81 = 0u;
  v8 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v8)
  {
    v9 = *v81;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v81 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v80 + 1) + 8 * v10);
      if ([v11 width] == (v4 * v7))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v57 = v11;

    if (v57)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

  if ([obj count] && (objc_msgSend(obj, "objectAtIndex:", 0), (v57 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_16:
    v12 = [(SUUIBannerViewController *)self _itemArtworkContext];
    v13 = [SUUIItem alloc];
    v14 = [(SSLookupItem *)self->_item lookupDictionary];
    v15 = [(SUUIItem *)v13 initWithLookupDictionary:v14];
    v16 = [v12 dataConsumerForItem:v15];

    v17 = objc_alloc(MEMORY[0x277D69CD8]);
    v18 = [v57 URL];
    v19 = [v17 initWithURL:v18];

    [v19 setDataConsumer:v16];
    [v19 setITunesStoreRequest:0];
    v20 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v19 setStoreFrontSuffix:v20];

    objc_initWeak(location, self);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __39__SUUIBannerViewController__loadImages__block_invoke;
    v78[3] = &unk_2798F5E28;
    objc_copyWeak(&v79, location);
    [v19 setOutputBlock:v78];
    v21 = [(SUUIBannerViewController *)self resourceOperationQueue];
    [v21 addOperation:v19];

    objc_destroyWeak(&v79);
    objc_destroyWeak(location);
  }

  else
  {
    v57 = 0;
  }

  v22 = [MEMORY[0x277D75418] currentDevice];
  v23 = [v22 userInterfaceIdiom] == 1;

  if (v23)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    screenshotImages = self->_screenshotImages;
    self->_screenshotImages = v25;

    v27 = [(SSLookupItem *)self->_item lookupDictionary];
    v56 = [v27 objectForKey:*MEMORY[0x277D6A3D0]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [v56 objectForKey:*MEMORY[0x277D6A3B8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v60 = v55;
        v28 = [v60 countByEnumeratingWithState:&v74 objects:v85 count:16];
        if (v28)
        {
          v61 = *v75;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v75 != v61)
              {
                objc_enumerationMutation(v60);
              }

              v30 = *(*(&v74 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = [MEMORY[0x277D759A0] mainScreen];
                [v31 scale];
                v33 = v32 == 2.0;

                if (v33)
                {
                  v34 = 180.0;
                }

                else
                {
                  v34 = 82.0;
                }

                if (v33)
                {
                  v35 = 135.0;
                }

                else
                {
                  v35 = 62.0;
                }

                if (v33)
                {
                  v36 = 148.0;
                }

                else
                {
                  v36 = 34.0;
                }

                v72 = 0u;
                v73 = 0u;
                if (v33)
                {
                  v37 = 83.0;
                }

                else
                {
                  v37 = 60.0;
                }

                v70 = 0uLL;
                v71 = 0uLL;
                v38 = v30;
                v39 = [v38 countByEnumeratingWithState:&v70 objects:v84 count:16];
                if (v39)
                {
                  v40 = *v71;
                  do
                  {
                    for (j = 0; j != v39; ++j)
                    {
                      if (*v71 != v40)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v42 = [[SUUIArtwork alloc] initWithArtworkDictionary:*(*(&v70 + 1) + 8 * j)];
                      v43 = [(SUUIArtwork *)v42 width];
                      v44 = [(SUUIArtwork *)v42 height];
                      v45 = v34 == v43 && v35 == v44;
                      if (v45 || (v36 == v43 ? (v46 = v37 == v44) : (v46 = 0), v46))
                      {
                        [v24 addObject:{v42, v55}];
                      }
                    }

                    v39 = [v38 countByEnumeratingWithState:&v70 objects:v84 count:16];
                  }

                  while (v39);
                }
              }
            }

            v28 = [v60 countByEnumeratingWithState:&v74 objects:v85 count:16];
          }

          while (v28);
        }
      }
    }

    v47 = [(SUUIBannerViewController *)self resourceOperationQueue];
    v48 = [(SUUIBannerViewController *)self _screenshotConsumerWithSize:100.0, 75.0];
    v49 = [(SUUIBannerViewController *)self _screenshotConsumerWithSize:56.0, 75.0];
    v50 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    location[0] = 0;
    location[1] = location;
    location[2] = 0x2020000000;
    location[3] = 0x4076200000000000;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __39__SUUIBannerViewController__loadImages__block_invoke_3;
    v62[3] = &unk_2798FA720;
    v51 = v49;
    v63 = v51;
    v52 = v48;
    v64 = v52;
    v68 = location;
    v53 = v50;
    v65 = v53;
    v66 = self;
    v54 = v47;
    v67 = v54;
    [v24 enumerateObjectsUsingBlock:v62];
    [(SUUIBannerView *)self->_bannerView setScreenshotImages:self->_screenshotImages];

    _Block_object_dispose(location, 8);
  }
}

void __39__SUUIBannerViewController__loadImages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUUIBannerViewController__loadImages__block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __39__SUUIBannerViewController__loadImages__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setIcon:*(a1 + 32) error:*(a1 + 40)];
}

void __39__SUUIBannerViewController__loadImages__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 width];
  v7 = [v5 height];
  v8 = 40;
  if (v6 >= v7)
  {
    v9 = 100.0;
  }

  else
  {
    v8 = 32;
    v9 = 56.0;
  }

  v10 = *(a1 + v8);
  if (v9 < *(*(*(a1 + 72) + 8) + 24))
  {
    v11 = objc_alloc(MEMORY[0x277D69CD8]);
    v12 = [v5 URL];
    v13 = [v11 initWithURL:v12];

    [v13 setDataConsumer:v10];
    [v13 setITunesStoreRequest:0];
    [v13 setStoreFrontSuffix:*(a1 + 48)];
    objc_initWeak(&location, *(a1 + 56));
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__SUUIBannerViewController__loadImages__block_invoke_4;
    v17[3] = &unk_2798FA6F8;
    objc_copyWeak(v18, &location);
    v18[1] = a3;
    [v13 setOutputBlock:v17];
    [*(a1 + 64) addOperation:v13];
    *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) - (v9 + 15.0);
    v14 = *(*(a1 + 56) + 1056);
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    v16 = [v10 imageForColor:v15];
    [v14 addObject:v16];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

void __39__SUUIBannerViewController__loadImages__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SUUIBannerViewController__loadImages__block_invoke_5;
  v9[3] = &unk_2798FA6D0;
  objc_copyWeak(v12, (a1 + 32));
  v12[1] = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(v12);
}

void __39__SUUIBannerViewController__loadImages__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setScreenshot:*(a1 + 32) forIndex:*(a1 + 56) error:*(a1 + 40)];
}

- (void)_reloadBannerView
{
  item = self->_item;
  if (item)
  {
    bannerView = self->_bannerView;
    v5 = [(SSLookupItem *)item artistName];
    [(SUUIBannerView *)bannerView setArtistName:v5];

    v6 = self->_bannerView;
    v7 = [(SUUIBannerViewController *)self _iconImage];
    [(SUUIBannerView *)v6 setIconImage:v7];

    [(SUUIBannerView *)self->_bannerView setScreenshotImages:self->_screenshotImages];
    v8 = self->_bannerView;
    v9 = [(SSLookupItem *)self->_item displayName];
    [(SUUIBannerView *)v8 setTitle:v9];

    v10 = self->_bannerView;
    [(SSLookupItem *)self->_item userRating];
    *&v12 = v11 / 5.0;
    [(SUUIBannerView *)v10 setUserRating:v12];
    v19 = [(SSLookupItem *)self->_item offers];
    v13 = [v19 count];
    v14 = self->_bannerView;
    if (v13)
    {
      v15 = [v19 objectAtIndex:0];
      [(SUUIBannerView *)v14 setItemOffer:v15];
    }

    else
    {
      [(SUUIBannerView *)self->_bannerView setItemOffer:0];
    }

    v16 = [(SSLookupItem *)self->_item ITunesStoreIdentifier];
    self->_itemIdentifier = [v16 longLongValue];

    v17 = self->_bannerView;
    v18 = [(SUUIBannerViewController *)self _itemState];
    [(SUUIBannerView *)v17 setItemState:v18];
  }
}

- (void)_setIcon:(id)a3 error:(id)a4
{
  objc_storeStrong(&self->_iconImage, a3);
  v6 = a3;
  bannerView = self->_bannerView;
  v8 = [(SUUIBannerViewController *)self _iconImage];
  [(SUUIBannerView *)bannerView setIconImage:v8];
}

- (void)_setScreenshot:(id)a3 forIndex:(int64_t)a4 error:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (v9 && [(NSMutableArray *)self->_screenshotImages count]> a4)
  {
    [(NSMutableArray *)self->_screenshotImages replaceObjectAtIndex:a4 withObject:v9];
    [(SUUIBannerView *)self->_bannerView setScreenshotImages:self->_screenshotImages];
  }
}

- (void)_warmItemStateCenter
{
  if (!self->_itemStateCenter)
  {
    v3 = +[SUUIItemStateCenter defaultCenter];
    itemStateCenter = self->_itemStateCenter;
    self->_itemStateCenter = v3;

    v5 = self->_itemStateCenter;

    [(SUUIItemStateCenter *)v5 addObserver:self];
  }
}

- (id)_itemArtworkContext
{
  itemArtworkContext = self->_itemArtworkContext;
  if (!itemArtworkContext)
  {
    v4 = objc_alloc_init(SUUIItemArtworkContext);
    v5 = self->_itemArtworkContext;
    self->_itemArtworkContext = v4;

    v6 = self->_itemArtworkContext;
    v7 = +[SUUIStyledImageDataConsumer safariBannerIconConsumer];
    [(SUUIItemArtworkContext *)v6 setIconConsumer:v7];

    v8 = self->_itemArtworkContext;
    v9 = +[SUUIProductImageDataConsumer smartBannerConsumer];
    [(SUUIItemArtworkContext *)v8 setGeneralConsumer:v9];

    v10 = self->_itemArtworkContext;
    v11 = +[SUUIStyledImageDataConsumer safariBannerProductImageConsumer];
    [(SUUIItemArtworkContext *)v10 setNewsstandConsumer:v11];

    itemArtworkContext = self->_itemArtworkContext;
  }

  return itemArtworkContext;
}

- (SUUIBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end