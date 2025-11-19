@interface UTTypeRecord(IconServicesAdditions)
- (id)_ICP_filenameExtensions;
- (id)_IS_iconProvidingRecordAcceptingWildCard:()IconServicesAdditions;
- (id)_IS_symbolHeroName;
- (id)_IS_symbolName;
- (id)_IS_symbolNameForVariantKey:()IconServicesAdditions;
- (id)_IS_symbolProvidingRecordWithVariantKey:()IconServicesAdditions allowNonVariantMatch:preferHeroOverBaseSymbol:;
- (uint64_t)_IS_allowsArbitraryExtensionAsText;
@end

@implementation UTTypeRecord(IconServicesAdditions)

- (uint64_t)_IS_allowsArbitraryExtensionAsText
{
  v1 = [a1 iconDictionary];
  v2 = [v1 objectForKeyedSubscript:0x1F1A4F3E0];

  v3 = [v2 isEqual:@"*"];
  return v3;
}

- (id)_IS_symbolName
{
  v1 = [a1 iconDictionary];
  v2 = [v1 _IF_stringForKey:0x1F1A4F400];

  return v2;
}

- (id)_IS_symbolHeroName
{
  v1 = [a1 iconDictionary];
  v2 = [v1 _IF_stringForKey:0x1F1A4F440];

  return v2;
}

- (id)_IS_iconProvidingRecordAcceptingWildCard:()IconServicesAdditions
{
  v5 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__UTTypeRecord_IconServicesAdditions___IS_iconProvidingRecordAcceptingWildCard___block_invoke;
  v13[3] = &__block_descriptor_33_e22_B16__0__UTTypeRecord_8l;
  v14 = a3;
  v6 = MEMORY[0x1AC55B6D0](v13);
  if ((v6)[2](v6, v5))
  {
    objc_storeStrong(v16 + 5, a1);
  }

  v7 = v16[5];
  if (!v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__UTTypeRecord_IconServicesAdditions___IS_iconProvidingRecordAcceptingWildCard___block_invoke_2;
    v10[3] = &unk_1E77C6510;
    v11 = v6;
    v12 = &v15;
    [v5 enumeratePedigreeWithBlock:v10];

    v7 = v16[5];
  }

  v8 = v7;

  _Block_object_dispose(&v15, 8);

  return v8;
}

- (id)_IS_symbolNameForVariantKey:()IconServicesAdditions
{
  v4 = a3;
  v5 = [a1 iconDictionary];
  v6 = [v5 _IF_dictionaryForKey:0x1F1A4F420];
  v7 = [v6 _IF_stringForKey:v4];

  return v7;
}

- (id)_IS_symbolProvidingRecordWithVariantKey:()IconServicesAdditions allowNonVariantMatch:preferHeroOverBaseSymbol:
{
  v8 = a3;
  v9 = a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __125__UTTypeRecord_IconServicesAdditions___IS_symbolProvidingRecordWithVariantKey_allowNonVariantMatch_preferHeroOverBaseSymbol___block_invoke;
  v18[3] = &unk_1E77C6538;
  v10 = v8;
  v19 = v10;
  v20 = a4;
  v21 = a5;
  v11 = MEMORY[0x1AC55B6D0](v18);
  if ((v11)[2](v11, v9))
  {
    objc_storeStrong(v23 + 5, a1);
  }

  v12 = v23[5];
  if (!v12)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __125__UTTypeRecord_IconServicesAdditions___IS_symbolProvidingRecordWithVariantKey_allowNonVariantMatch_preferHeroOverBaseSymbol___block_invoke_2;
    v15[3] = &unk_1E77C6510;
    v16 = v11;
    v17 = &v22;
    [v9 enumeratePedigreeWithBlock:v15];

    v12 = v23[5];
  }

  v13 = v12;

  _Block_object_dispose(&v22, 8);

  return v13;
}

- (id)_ICP_filenameExtensions
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 tagSpecification];
  v3 = *MEMORY[0x1E6963710];
  v4 = [v2 objectForKey:*MEMORY[0x1E6963710] ofClass:objc_opt_class()];

  if (v4)
  {
    v13[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v6 = [a1 tagSpecification];
    v7 = objc_opt_class();
    v8 = [v6 objectForKey:v3 ofClass:v7 valuesOfClass:objc_opt_class()];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v5 = v10;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

@end