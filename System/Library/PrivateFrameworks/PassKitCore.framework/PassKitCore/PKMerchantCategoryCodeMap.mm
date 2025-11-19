@interface PKMerchantCategoryCodeMap
- (PKMerchantCategoryCodeMap)init;
- (int64_t)categoryForIndustryCode:(int64_t)a3;
@end

@implementation PKMerchantCategoryCodeMap

- (PKMerchantCategoryCodeMap)init
{
  v22.receiver = self;
  v22.super_class = PKMerchantCategoryCodeMap;
  v2 = [(PKMerchantCategoryCodeMap *)&v22 init];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = PKPassKitCoreBundle();
  v4 = [v3 URLForResource:@"MCCMapping" withExtension:@"json"];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v4];
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:0];
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __33__PKMerchantCategoryCodeMap_init__block_invoke;
      v19[3] = &unk_1E79C8F58;
      v9 = v8;
      v20 = v9;
      [v7 enumerateKeysAndObjectsUsingBlock:v19];
      v10 = [v9 count];
      v11 = PKLogFacilityTypeGetObject(7uLL);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          *buf = 0;
          v13 = "Successfully generated MCC code to category map";
LABEL_15:
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
        }
      }

      else if (v12)
      {
        *buf = 0;
        v13 = "Error generating MCC code to category map";
        goto LABEL_15;
      }

      v16 = [v9 copy];
      mccCodeToMerchantCategory = v2->_mccCodeToMerchantCategory;
      v2->_mccCodeToMerchantCategory = v16;

LABEL_17:
      v15 = v2;
      goto LABEL_18;
    }

    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Error creating PKMerchantCategoryCodeMap: resourceData is nil", buf, 2u);
    }
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error creating PKMerchantCategoryCodeMap: resourceURL is nil", buf, 2u);
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

void __33__PKMerchantCategoryCodeMap_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = PKMerchantCategoryFromString(v5);

  if (v6 >= 1 && v7)
  {
    v8 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    [v8 setObject:v10 forKey:v9];
  }
}

- (int64_t)categoryForIndustryCode:(int64_t)a3
{
  if (a3 < 1)
  {
    return 0;
  }

  mccCodeToMerchantCategory = self->_mccCodeToMerchantCategory;
  if (!mccCodeToMerchantCategory)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v5 = [(NSDictionary *)mccCodeToMerchantCategory objectForKey:v4];
  v6 = [v5 integerValue];

  return v6;
}

@end