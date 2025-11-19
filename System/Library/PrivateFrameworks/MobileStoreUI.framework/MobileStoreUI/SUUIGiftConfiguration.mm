@interface SUUIGiftConfiguration
- (SUUIGiftConfiguration)initWithOperationQueue:(id)a3 clientContext:(id)a4;
- (_NSRange)giftAmountRange;
- (id)charityForIdentifier:(id)a3;
- (id)logoImageForCharity:(id)a3;
- (void)_finishLoadAccountInfoWithResponse:(id)a3 error:(id)a4 block:(id)a5;
- (void)_finishLoadWithResponse:(id)a3 error:(id)a4 block:(id)a5;
- (void)_loadThemeImages;
- (void)_setHeaderImage:(id)a3 forTheme:(id)a4;
- (void)_setLogoImage:(id)a3 forCharity:(id)a4;
- (void)addObserver:(id)a3;
- (void)loadConfigurationWithCompletionBlock:(id)a3;
- (void)loadLogoForCharity:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SUUIGiftConfiguration

- (SUUIGiftConfiguration)initWithOperationQueue:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUUIGiftConfiguration;
  v9 = [(SUUIGiftConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_operationQueue, a3);
  }

  return v10;
}

- (void)addObserver:(id)a3
{
  objc_initWeak(&location, a3);
  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  v7 = objc_loadWeakRetained(&location);
  [(NSHashTable *)observers addObject:v7];

  objc_destroyWeak(&location);
}

- (id)charityForIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_charities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)loadConfigurationWithCompletionBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SUUIGiftConfiguration *)a2 loadConfigurationWithCompletionBlock:?];
  }

  v6 = self->_operationQueue;
  objc_initWeak(&location, self);
  v7 = [(SUUIClientContext *)self->_clientContext URLBag];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__SUUIGiftConfiguration_loadConfigurationWithCompletionBlock___block_invoke;
  v10[3] = &unk_2798F7438;
  v8 = v5;
  v12 = v8;
  v10[4] = self;
  objc_copyWeak(&v13, &location);
  v9 = v6;
  v11 = v9;
  [v7 loadValueForKey:@"giftPageData" completionBlock:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __62__SUUIGiftConfiguration_loadConfigurationWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
    v8 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v7];
    v9 = +[(SSVURLDataConsumer *)SUUIJSONDataConsumer];
    [v8 setDataConsumer:v9];

    v10 = [*(*(a1 + 32) + 24) valueForConfigurationKey:@"sfsuffix"];
    [v8 setStoreFrontSuffix:v10];

    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __62__SUUIGiftConfiguration_loadConfigurationWithCompletionBlock___block_invoke_2;
    v14 = &unk_2798F7410;
    objc_copyWeak(&v16, (a1 + 56));
    v15 = *(a1 + 48);
    [v8 setOutputBlock:&v11];
    [*(a1 + 40) addOperation:{v8, v11, v12, v13, v14}];

    objc_destroyWeak(&v16);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __62__SUUIGiftConfiguration_loadConfigurationWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SUUIGiftConfiguration_loadConfigurationWithCompletionBlock___block_invoke_3;
  v9[3] = &unk_2798F73E8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __62__SUUIGiftConfiguration_loadConfigurationWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishLoadWithResponse:*(a1 + 32) error:*(a1 + 40) block:*(a1 + 48)];
}

- (void)loadLogoForCharity:(id)a3
{
  v4 = a3;
  charityImages = self->_charityImages;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)charityImages objectForKey:v6];

  if (!v7)
  {
    v8 = [v4 logoArtwork];
    v9 = [v8 URL];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v9];
      v11 = +[(SSVURLDataConsumer *)SUUIImageDataConsumer];
      [v10 setDataConsumer:v11];

      [v10 setITunesStoreRequest:0];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44__SUUIGiftConfiguration_loadLogoForCharity___block_invoke;
      v12[3] = &unk_2798F7460;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      [v10 setOutputBlock:v12];
      [(NSOperationQueue *)self->_operationQueue addOperation:v10];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __44__SUUIGiftConfiguration_loadLogoForCharity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SUUIGiftConfiguration_loadLogoForCharity___block_invoke_2;
    block[3] = &unk_2798F6530;
    objc_copyWeak(&v7, (a1 + 40));
    v5 = v3;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v7);
  }
}

void __44__SUUIGiftConfiguration_loadLogoForCharity___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setLogoImage:*(a1 + 32) forCharity:*(a1 + 40)];
}

- (id)logoImageForCharity:(id)a3
{
  charityImages = self->_charityImages;
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)charityImages objectForKey:v4];

  return v5;
}

- (void)removeObserver:(id)a3
{
  observers = self->_observers;
  v4 = a3;
  [(NSHashTable *)observers removeObject:v4];
}

- (void)_finishLoadWithResponse:(id)a3 error:(id)a4 block:(id)a5
{
  v99 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  v79 = v7;
  v72 = v8;
  if (objc_opt_isKindOfClass())
  {
    v70 = v9;
    v71 = [v7 objectForKey:@"charities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v11 = v71;
      v12 = [v11 countByEnumeratingWithState:&v92 objects:v98 count:16];
      if (v12)
      {
        v13 = *v93;
        do
        {
          v14 = 0;
          do
          {
            if (*v93 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v92 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[SUUIGiftCharity alloc] initWithCharityDictionary:v15];
              [v10 addObject:v16];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v92 objects:v98 count:16];
        }

        while (v12);
      }

      v17 = [v10 copy];
      charities = self->_charities;
      self->_charities = v17;
    }

    v73 = [v79 objectForKey:@"currency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = [v73 objectForKey:@"symbol"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v68 copy];
        currencySymbol = self->_currencySymbol;
        self->_currencySymbol = v19;
      }

      v67 = [v73 objectForKey:@"symbolPlacement"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v67 isEqualToString:@"LEFT"] ^ 1;
      }

      else
      {
        v21 = 0;
      }

      self->_currencySymbolPosition = v21;
      v69 = [v73 objectForKey:@"range"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v69 objectForKey:@"min"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v22 objectForKey:@"value"];
          if (objc_opt_respondsToSelector())
          {
            self->_giftAmountRange.location = [v23 integerValue];
          }
        }

        v24 = [v69 objectForKey:@"max"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [v24 objectForKey:@"value"];
          if (objc_opt_respondsToSelector())
          {
            self->_giftAmountRange.length = [v25 integerValue] - self->_giftAmountRange.location;
          }
        }
      }

      v66 = [v73 objectForKey:@"amounts"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [MEMORY[0x277D75418] currentDevice];
        v27 = [v26 userInterfaceIdiom] == 1;

        if (v27)
        {
          v28 = @"iPad";
        }

        else
        {
          v28 = @"iPhone";
        }

        v65 = [v66 objectForKey:v28];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v90 = 0u;
          v91 = 0u;
          v89 = 0u;
          v88 = 0u;
          v29 = v65;
          v30 = [v29 countByEnumeratingWithState:&v88 objects:v97 count:16];
          if (v30)
          {
            v31 = *v89;
            do
            {
              v32 = 0;
              do
              {
                if (*v89 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                v33 = *(*(&v88 + 1) + 8 * v32);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = [v33 objectForKey:@"label"];
                  v35 = [v33 objectForKey:@"value"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
                  {
                    [v77 addObject:v34];
                    v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v35, "integerValue")}];
                    [v75 addObject:v36];
                  }
                }

                ++v32;
              }

              while (v30 != v32);
              v30 = [v29 countByEnumeratingWithState:&v88 objects:v97 count:16];
            }

            while (v30);
          }

          v37 = [v77 copy];
          fixedGiftAmountLabels = self->_fixedGiftAmountLabels;
          self->_fixedGiftAmountLabels = v37;

          v39 = [v75 copy];
          fixedGiftAmountValues = self->_fixedGiftAmountValues;
          self->_fixedGiftAmountValues = v39;
        }
      }
    }

    v41 = [v79 objectForKey:{@"giftBuyUrl", v65}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v41];
      giftPurchaseURL = self->_giftPurchaseURL;
      self->_giftPurchaseURL = v42;
    }

    v78 = [v79 objectForKey:@"giftValidateUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v78];
      giftValidationURL = self->_giftValidationURL;
      self->_giftValidationURL = v44;
    }

    v76 = [v79 objectForKey:@"messageMaxLength"];
    if (objc_opt_respondsToSelector())
    {
      self->_maximumMessageLength = [v76 integerValue];
    }

    v46 = [v79 objectForKey:@"storeFront"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [v46 objectForKey:@"adjectiveCountryName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = [v47 copy];
        storeFrontName = self->_storeFrontName;
        self->_storeFrontName = v48;
      }
    }

    v50 = [v79 objectForKey:@"ubers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v52 = v50;
      v53 = [v52 countByEnumeratingWithState:&v84 objects:v96 count:16];
      if (v53)
      {
        v54 = *v85;
        do
        {
          v55 = 0;
          do
          {
            if (*v85 != v54)
            {
              objc_enumerationMutation(v52);
            }

            v56 = *(*(&v84 + 1) + 8 * v55);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v57 = [[SUUIGiftTheme alloc] initWithThemeDictionary:v56];
              if (v57)
              {
                [v51 addObject:v57];
              }
            }

            ++v55;
          }

          while (v53 != v55);
          v53 = [v52 countByEnumeratingWithState:&v84 objects:v96 count:16];
        }

        while (v53);
      }

      v58 = [v51 copy];
      themes = self->_themes;
      self->_themes = v58;

      [(SUUIGiftConfiguration *)self _loadThemeImages];
    }

    v60 = [v79 objectForKey:@"giftAccountInfoUrl"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v61 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v60]) != 0)
    {
      objc_initWeak(&location, self);
      v62 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v61];
      v63 = +[(SSVURLDataConsumer *)SUUIJSONDataConsumer];
      [v62 setDataConsumer:v63];

      v64 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
      [v62 setStoreFrontSuffix:v64];

      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __61__SUUIGiftConfiguration__finishLoadWithResponse_error_block___block_invoke;
      v80[3] = &unk_2798F7410;
      objc_copyWeak(&v82, &location);
      v81 = v70;
      [v62 setOutputBlock:v80];
      [(NSOperationQueue *)self->_operationQueue addOperation:v62];

      objc_destroyWeak(&v82);
      objc_destroyWeak(&location);
    }

    else
    {
      v70[2](v70, 1, 0);
    }

    v9 = v70;
  }

  else
  {
    (*(v9 + 2))(v9, 0, v8);
  }
}

void __61__SUUIGiftConfiguration__finishLoadWithResponse_error_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SUUIGiftConfiguration__finishLoadWithResponse_error_block___block_invoke_2;
  v9[3] = &unk_2798F73E8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __61__SUUIGiftConfiguration__finishLoadWithResponse_error_block___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishLoadAccountInfoWithResponse:*(a1 + 32) error:*(a1 + 40) block:*(a1 + 48)];
}

- (void)_finishLoadAccountInfoWithResponse:(id)a3 error:(id)a4 block:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = [v14 objectForKey:@"status"];
    v10 = v8;
    if (objc_opt_respondsToSelector())
    {
      v10 = v8;
      if (![v11 integerValue])
      {
        v12 = [v14 objectForKey:@"senderEmail"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_senderEmailAddress, v12);
        }

        v13 = [v14 objectForKey:@"fromName"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_senderName, v13);
        }

        v10 = 0;
      }
    }
  }

  (v9)[2](v9, 1, v10);
}

- (void)_loadThemeImages
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_themes;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 headerImageURL];
        v9 = [v7 headerImage];
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = v8 == 0;
        }

        v11 = !v10;

        if (v11)
        {
          v12 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v8];
          v13 = +[(SSVURLDataConsumer *)SUUIImageDataConsumer];
          [v12 setDataConsumer:v13];

          [v12 setITunesStoreRequest:0];
          objc_initWeak(&location, self);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __41__SUUIGiftConfiguration__loadThemeImages__block_invoke;
          v14[3] = &unk_2798F7460;
          objc_copyWeak(&v15, &location);
          v14[4] = v7;
          [v12 setOutputBlock:v14];
          [(NSOperationQueue *)self->_operationQueue addOperation:v12];
          objc_destroyWeak(&v15);
          objc_destroyWeak(&location);
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

void __41__SUUIGiftConfiguration__loadThemeImages__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SUUIGiftConfiguration__loadThemeImages__block_invoke_2;
    block[3] = &unk_2798F6530;
    objc_copyWeak(&v9, (a1 + 40));
    v4 = v3;
    v5 = *(a1 + 32);
    v7 = v4;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v9);
  }
}

void __41__SUUIGiftConfiguration__loadThemeImages__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setHeaderImage:*(a1 + 32) forTheme:*(a1 + 40)];
}

- (void)_setHeaderImage:(id)a3 forTheme:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_themes indexOfObjectIdenticalTo:v7]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSHashTable *)self->_observers allObjects];
    [v7 setHeaderImage:v6];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v14 giftConfigurationController:self didLoadImageForTheme:{v7, v15}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)_setLogoImage:(id)a3 forCharity:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_charities indexOfObjectIdenticalTo:v7]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    charityImages = self->_charityImages;
    if (!charityImages)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_charityImages;
      self->_charityImages = v9;

      charityImages = self->_charityImages;
    }

    v11 = [v7 identifier];
    [(NSMutableDictionary *)charityImages setObject:v6 forKey:v11];

    v12 = [(NSHashTable *)self->_observers allObjects];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 giftConfigurationController:self didLoadLogoForCharity:v7];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (_NSRange)giftAmountRange
{
  length = self->_giftAmountRange.length;
  location = self->_giftAmountRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)loadConfigurationWithCompletionBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIGiftConfiguration.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

@end