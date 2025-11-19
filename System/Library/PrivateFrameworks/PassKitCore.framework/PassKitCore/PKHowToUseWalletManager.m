@interface PKHowToUseWalletManager
+ (id)sharedInstance;
- (BOOL)hasContent;
- (PKHowToUseWalletManager)init;
- (id)_hiddenCardsPassingTest:(id)a3;
- (id)_jsonDictionaryForURL:(id)a3;
- (id)howToUseWalletModelForURL:(id)a3 bundle:(id)a4;
- (id)latestCardForLotIdentifier:(id)a3;
- (id)latestHowToUseWalletModel;
@end

@implementation PKHowToUseWalletManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PKHowToUseWalletManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_255 != -1)
  {
    dispatch_once(&_MergedGlobals_255, block);
  }

  v2 = qword_1ED6D1F98;

  return v2;
}

void __41__PKHowToUseWalletManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6D1F98;
  qword_1ED6D1F98 = v1;
}

- (PKHowToUseWalletManager)init
{
  v6.receiver = self;
  v6.super_class = PKHowToUseWalletManager;
  v2 = [(PKHowToUseWalletManager *)&v6 init];
  if (v2)
  {
    v3 = +[PKMobileAssetManager sharedInstance];
    mobileAssetManager = v2->_mobileAssetManager;
    v2->_mobileAssetManager = v3;
  }

  return v2;
}

- (BOOL)hasContent
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(PKHowToUseWalletManager *)self latestHowToUseWalletModel];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 sections];
    v5 = [v4 count];

    if (v5)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [v3 sections];
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v16 + 1) + 8 * i) cards];
            v12 = [v11 count];

            if (v12)
            {
              v14 = 1;
              goto LABEL_20;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v6 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "How to Use Wallet model does not have cards to display";
LABEL_18:
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      }
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "How to Use Wallet model has no sections to display";
        goto LABEL_18;
      }
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "How to Use Wallet model not found, so no content is available";
      goto LABEL_18;
    }
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (id)latestHowToUseWalletModel
{
  p_cachedBaseModel = &self->_cachedBaseModel;
  v4 = self->_cachedBaseModel;
  if (!v4)
  {
    v5 = [(PKHowToUseWalletManager *)self _baseResourceBundle];
    v6 = [v5 URLForResource:@"WalletEducation/how-to-use-wallet" withExtension:@"json"];
    v4 = [(PKHowToUseWalletManager *)self howToUseWalletModelForURL:v6 bundle:v5];
    objc_storeStrong(p_cachedBaseModel, v4);
  }

  v7 = self->_cachedMobileAssetModel;
  if (v7)
  {
    v8 = v7;
    v9 = v4;
LABEL_5:
    if (v4 && (-[PKHowToUseWalletModel version](v8, "version"), v10 = objc_claimAutoreleasedReturnValue(), -[PKHowToUseWalletModel version](v4, "version"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 compare:v11], v11, v10, v12 != 1))
    {
      v13 = v4;
    }

    else
    {
      v8 = v8;

      v13 = v8;
    }

    goto LABEL_13;
  }

  v14 = [(PKMobileAssetManager *)self->_mobileAssetManager cachedHowToUseWalletModelAsset];
  if (v14)
  {
    v15 = v14;
    v8 = [[PKHowToUseWalletModel alloc] initWithMobileAssetBundle:v14];
    cachedMobileAssetModel = self->_cachedMobileAssetModel;
    self->_cachedMobileAssetModel = v8;

    v17 = v4;
    if (v8)
    {
      goto LABEL_5;
    }

    v13 = v17;
  }

  else
  {
    v13 = v4;
    v8 = 0;
  }

LABEL_13:

  return v13;
}

- (id)howToUseWalletModelForURL:(id)a3 bundle:(id)a4
{
  v6 = a4;
  v7 = [(PKHowToUseWalletManager *)self _jsonDictionaryForURL:a3];
  v8 = [[PKHowToUseWalletModel alloc] initWithDictionary:v7 bundle:v6];

  return v8;
}

- (id)latestCardForLotIdentifier:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v4;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Fetching latest card for lotIdentifier '%@'", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKHowToUseWalletManager_latestCardForLotIdentifier___block_invoke;
  aBlock[3] = &unk_1E79CEC30;
  v7 = v6;
  v38 = v7;
  v8 = _Block_copy(aBlock);
  v27 = [(PKMobileAssetManager *)self->_mobileAssetManager cachedHowToUseWalletCardAssetsForLotIdentifier:v4];
  v9 = [v27 pk_arrayBySafelyApplyingBlock:&__block_literal_global_177];
  v8[2](v8, v9);
  v10 = [(PKHowToUseWalletManager *)self latestHowToUseWalletModel];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __54__PKHowToUseWalletManager_latestCardForLotIdentifier___block_invoke_3;
  v35[3] = &unk_1E79DDFE8;
  v11 = v4;
  v36 = v11;
  v26 = v10;
  v12 = [v10 cardsPassingTest:v35];

  v8[2](v8, v12);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __54__PKHowToUseWalletManager_latestCardForLotIdentifier___block_invoke_4;
  v33[3] = &unk_1E79DDFE8;
  v25 = v11;
  v34 = v25;
  v13 = [(PKHowToUseWalletManager *)self _hiddenCardsPassingTest:v33];

  v8[2](v8, v13);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = v7;
  v14 = [v7 allValues];
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v30;
    do
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = [PKHowToUseWalletCard cardToPrioritize:v20 otherCard:*(*(&v29 + 1) + 8 * v19)];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v20;
        }

        v17 = v23;

        ++v19;
        v20 = v17;
      }

      while (v16 != v19);
      v16 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __54__PKHowToUseWalletManager_latestCardForLotIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [*(a1 + 32) objectForKey:v8];
        if (!v9 || ([v7 version], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "version"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "compare:", v11), v11, v10, v12 == 1))
        {
          [*(a1 + 32) setObject:v7 forKey:v8];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

PKHowToUseWalletCard *__54__PKHowToUseWalletManager_latestCardForLotIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKHowToUseWalletCard alloc] initWithMobileAssetBundle:v2];

  return v3;
}

uint64_t __54__PKHowToUseWalletManager_latestCardForLotIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 lotIdentifier];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 isEqualToString:v5];
    }
  }

  return v8;
}

uint64_t __54__PKHowToUseWalletManager_latestCardForLotIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 lotIdentifier];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 isEqualToString:v5];
    }
  }

  return v8;
}

- (id)_hiddenCardsPassingTest:(id)a3
{
  v29 = a3;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSDictionary *)self->_cachedHiddenCards mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = v6;

  v8 = 0;
  v28 = v7;
  v9 = @"cardWithDemo";
  v10 = 1;
  v11 = 0x1E696A000uLL;
  v26 = self;
  while (1)
  {
    v12 = v8;
    v13 = [*(v11 + 3480) numberWithUnsignedInteger:{v10, v26}];
    v14 = [(NSDictionary *)v7 objectForKey:v13];

    if (!v14)
    {
      break;
    }

    v31 = 0;
    if (v29[2](v29, v14, &v31))
    {
      [v27 addObject:v14];
    }

    if (v31)
    {
      v23 = v14;
      goto LABEL_20;
    }

LABEL_18:

    v8 = 1;
    v9 = @"cardWithoutDemo";
    v10 = 2;
    if (v12)
    {
      goto LABEL_21;
    }
  }

  v23 = [(PKHowToUseWalletManager *)self _baseResourceBundleHiddenCards];
  v15 = [v23 bundleURL];
  v16 = [v15 URLByAppendingPathComponent:@"WalletEducation/HiddenCards/HowToUseApplePay"];

  v17 = [MEMORY[0x1E696AAE8] bundleWithURL:v16];
  v18 = v9;
  if (![@"WalletEducation/HiddenCards/HowToUseApplePay" length] || !-[__CFString length](v18, "length"))
  {
LABEL_17:

    v7 = v28;
    v11 = 0x1E696A000;
    goto LABEL_18;
  }

  v19 = [v17 URLForResource:v18 withExtension:@"json"];
  v20 = [(PKHowToUseWalletManager *)self _jsonDictionaryForURL:v19];
  v21 = [[PKHowToUseWalletCard alloc] initWithDictionary:v20 bundle:v17];
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  [(NSDictionary *)v28 setObject:v21 forKey:v22];

  v30 = 0;
  if (v29[2](v29, v21, &v30))
  {
    [v27 addObject:v21];
  }

  if ((v30 & 1) == 0)
  {
LABEL_16:

    self = v26;
    goto LABEL_17;
  }

  self = v26;
  v7 = v28;
LABEL_20:

LABEL_21:
  cachedHiddenCards = self->_cachedHiddenCards;
  self->_cachedHiddenCards = v7;

  return v27;
}

- (id)_jsonDictionaryForURL:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3];
  if ([v4 length])
  {
    v11 = 0;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to serialize data for how to use wallet dictionary: %@", buf, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 absoluteString];
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "JSON not found at provided URL: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

@end