@interface LACFlags
+ (LACFlags)sharedInstance;
@end

@implementation LACFlags

id __44__LACFlags_valueForFlagCompanionMockDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (os_variant_allows_internal_security_policies())
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v6 environment];
    v8 = [v7 objectForKeyedSubscript:v4];

    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = [v10 environment];
    v12 = [v11 objectForKeyedSubscript:v4];
    v13 = [v9 numberFromString:v12];

    if (!v13)
    {
LABEL_4:
      v14 = [MEMORY[0x1E695E000] standardUserDefaults];
      v15 = [v14 persistentDomainForName:*MEMORY[0x1E696A400]];

      v16 = [v15 objectForKeyedSubscript:v4];
      if (v16 && (v17 = v16, [v15 objectForKeyedSubscript:v4], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, v17, (isKindOfClass & 1) != 0))
      {
        v20 = [v15 objectForKeyedSubscript:v4];
      }

      else
      {
        v20 = v5;
      }

      v13 = v20;
    }
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

+ (LACFlags)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__LACFlags_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __26__LACFlags_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65__LACFlags_valueForFlagAuthDialogUseAlwaysOnPasswordFieldEnabled__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (os_variant_allows_internal_security_policies())
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v6 = [v5 environment];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AE30] processInfo];
      v9 = [v8 environment];
      v10 = [v9 objectForKeyedSubscript:v4];
      a3 = [v10 BOOLValue];
    }

    else
    {
      v12 = [MEMORY[0x1E695E000] standardUserDefaults];
      v8 = [v12 persistentDomainForName:*MEMORY[0x1E696A400]];

      v13 = [v8 objectForKeyedSubscript:v4];
      if (!v13)
      {
        goto LABEL_5;
      }

      v14 = v13;
      v15 = [v8 objectForKeyedSubscript:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_5;
      }

      v9 = [v8 objectForKeyedSubscript:v4];
      a3 = [v9 BOOLValue];
    }

LABEL_5:
  }

  return a3;
}

id __54__LACFlags_valueForFlagCompanionSessionAuthentication__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (os_variant_allows_internal_security_policies())
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v6 environment];
    v8 = [v7 objectForKeyedSubscript:v4];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AE30] processInfo];
      v10 = [v9 environment];
      v11 = [v10 objectForKeyedSubscript:v4];
      v12 = [v11 dataUsingEncoding:4];
    }

    else
    {
      v13 = [MEMORY[0x1E695E000] standardUserDefaults];
      v9 = [v13 persistentDomainForName:*MEMORY[0x1E696A400]];

      v14 = [v9 objectForKeyedSubscript:v4];
      if (v14 && (v15 = v14, [v9 objectForKeyedSubscript:v4], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, v15, (isKindOfClass & 1) != 0))
      {
        v18 = [v9 objectForKeyedSubscript:v4];
      }

      else
      {
        v18 = v5;
      }

      v12 = v18;
    }
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

@end