@interface PKHowToUseWalletModel
- (BOOL)containsCardPassingTest:(id)a3;
- (PKHowToUseWalletModel)initWithDictionary:(id)a3 bundle:(id)a4;
- (PKHowToUseWalletModel)initWithMobileAssetBundle:(id)a3;
- (id)cardsPassingTest:(id)a3;
- (id)localizationBundle;
@end

@implementation PKHowToUseWalletModel

- (PKHowToUseWalletModel)initWithMobileAssetBundle:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLForResource:@"model" withExtension:@"json"];
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6];
    if ([v7 length])
    {
      v14 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v14];
      v9 = v14;
      if (v9)
      {
        v10 = PKLogFacilityTypeGetObject(0xBuLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v9;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to serialize json from mobile assets: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if ([v8 count])
    {
      self = [(PKHowToUseWalletModel *)self initWithDictionary:v8 bundle:v5];
      v11 = self;
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0xBuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Empty dictionary found when serializing how to use model data", buf, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0xBuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "No bundle when creating model found", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (PKHowToUseWalletModel)initWithDictionary:(id)a3 bundle:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = PKHowToUseWalletModel;
  v8 = [(PKHowToUseWalletModel *)&v39 init];
  if (!v8)
  {
LABEL_15:
    v29 = v8;
    goto LABEL_19;
  }

  v9 = [v6 PKNumberForKey:@"version"];
  version = v8->_version;
  v8->_version = v9;

  v11 = [v6 PKStringForKey:@"titleKey"];
  titleKey = v8->_titleKey;
  v8->_titleKey = v11;

  v13 = [v6 PKStringForKey:@"localizationBundlePath"];
  v14 = [v7 bundleURL];
  if ([v13 length])
  {
    v15 = [v14 URLByAppendingPathComponent:v13];
  }

  else
  {
    v15 = v14;
  }

  p_localizationBundleURL = &v8->_localizationBundleURL;
  localizationBundleURL = v8->_localizationBundleURL;
  v8->_localizationBundleURL = v15;

  v18 = v8->_version;
  if (v18 && *p_localizationBundleURL)
  {
    v33 = v14;
    v34 = v13;
    v19 = [v6 PKArrayForKey:@"sections"];
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        v25 = 0;
        do
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [[PKHowToUseWalletSection alloc] initWithDictionary:*(*(&v35 + 1) + 8 * v25) bundle:v7];
          [v20 safelyAddObject:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v23);
    }

    v27 = [PKHowToUseWalletSection sectionsByPriority:v20];
    sections = v8->_sections;
    v8->_sections = v27;

    goto LABEL_15;
  }

  v30 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *p_localizationBundleURL;
    *buf = 138412546;
    v42 = v18;
    v43 = 2112;
    v44 = v31;
    _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "Missing a version or localization bundle and both are required: version=%@ localization bundle=%@", buf, 0x16u);
  }

  v29 = 0;
LABEL_19:

  return v29;
}

- (BOOL)containsCardPassingTest:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PKHowToUseWalletModel_containsCardPassingTest___block_invoke;
  v9[3] = &unk_1E79CA4F0;
  v10 = v4;
  v5 = v4;
  v6 = [(PKHowToUseWalletModel *)self cardsPassingTest:v9];
  v7 = [v6 count] != 0;

  return v7;
}

uint64_t __49__PKHowToUseWalletModel_containsCardPassingTest___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

- (id)cardsPassingTest:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_sections;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __42__PKHowToUseWalletModel_cardsPassingTest___block_invoke;
      v13[3] = &unk_1E79CDFC8;
      v14 = v4;
      v15 = &v16;
      v11 = [v10 cardsPassingTest:v13];
      [v5 addObjectsFromArray:v11];

      LOBYTE(v11) = *(v17 + 24);
      _Block_object_dispose(&v16, 8);
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v5;
}

uint64_t __42__PKHowToUseWalletModel_cardsPassingTest___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a3 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (id)localizationBundle
{
  v2 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:self->_localizationBundleURL];

  return v2;
}

@end