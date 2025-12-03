@interface NSBundle(CoreMaterialAdditions)
+ (id)coreMaterialOverrideRecipeBundleURL;
+ (void)_setCoreMaterialOverrideRecipeBundleURL:()CoreMaterialAdditions;
+ (void)coreMaterialOverrideRecipeBundle;
@end

@implementation NSBundle(CoreMaterialAdditions)

+ (void)coreMaterialOverrideRecipeBundle
{
  v1 = __coreMaterialOverrideRecipeBundle;
  if (!__coreMaterialOverrideRecipeBundle)
  {
    coreMaterialOverrideRecipeBundleURL = [self coreMaterialOverrideRecipeBundleURL];
    if (coreMaterialOverrideRecipeBundleURL)
    {
      v3 = [MEMORY[0x1E696AAE8] bundleWithURL:coreMaterialOverrideRecipeBundleURL];
      v4 = __coreMaterialOverrideRecipeBundle;
      __coreMaterialOverrideRecipeBundle = v3;
    }

    if (!__coreMaterialOverrideRecipeBundle)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v6 = __coreMaterialOverrideRecipeBundle;
      __coreMaterialOverrideRecipeBundle = null;
    }

    v1 = __coreMaterialOverrideRecipeBundle;
  }

  null2 = [MEMORY[0x1E695DFB0] null];
  if (v1 == null2)
  {
    v8 = 0;
  }

  else
  {
    v8 = __coreMaterialOverrideRecipeBundle;
  }

  v9 = v8;

  return v8;
}

+ (id)coreMaterialOverrideRecipeBundleURL
{
  v0 = _MTGetCoreMaterialPlatformConfiguration();
  overrideRecipeBundleURL = [v0 overrideRecipeBundleURL];

  return overrideRecipeBundleURL;
}

+ (void)_setCoreMaterialOverrideRecipeBundleURL:()CoreMaterialAdditions
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  MTRegisterCoreMaterialLogging();
  v4 = _MTGetCoreMaterialPlatformConfiguration();
  overrideRecipeBundleURL = [v4 overrideRecipeBundleURL];
  if (v3 | overrideRecipeBundleURL && ([v3 isEqual:overrideRecipeBundleURL] & 1) == 0)
  {
    v6 = objc_opt_respondsToSelector();
    v7 = MTLogConfiguration;
    if (v6)
    {
      if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v3;
        _os_log_impl(&dword_1BF527000, v7, OS_LOG_TYPE_DEFAULT, "Updating CoreMaterial override recipe bundle URL: %{public}@", &v10, 0xCu);
      }

      [v4 setOverrideRecipeBundleURL:v3];
      v8 = __coreMaterialOverrideRecipeBundle;
      __coreMaterialOverrideRecipeBundle = 0;
    }

    else if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(NSBundle(CoreMaterialAdditions) *)v3 _setCoreMaterialOverrideRecipeBundleURL:v4, v7];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)_setCoreMaterialOverrideRecipeBundleURL:()CoreMaterialAdditions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1BF527000, log, OS_LOG_TYPE_ERROR, "Attempt to override recipe bundle URL (%{public}@) not supported by platform configuration: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end