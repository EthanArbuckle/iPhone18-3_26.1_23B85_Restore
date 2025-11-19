@interface DDSTrialAsset
+ (id)attributesWithLocalURL:(id)a3;
+ (id)createWithExperimentIdentifiers:(id)a3 localURL:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DDSTrialAsset)initWithExperimentIdentifiers:(id)a3 attributes:(id)a4 localURL:(id)a5;
- (unint64_t)hash;
@end

@implementation DDSTrialAsset

+ (id)attributesWithLocalURL:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithURL:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLForResource:@"Info" withExtension:@"plist"];
    if (v5)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5];
      v7 = [v6 objectForKey:@"MobileAssetProperties"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 objectForKey:@"MobileAssetProperties"];
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
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)createWithExperimentIdentifiers:(id)a3 localURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 attributesWithLocalURL:v7];
  if (v8)
  {
    v9 = [v7 URLByAppendingPathComponent:@"AssetData"];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v9 path];
    v12 = [v10 fileExistsAtPath:v11];

    if (v12)
    {
      v13 = [[DDSTrialAsset alloc] initWithExperimentIdentifiers:v6 attributes:v8 localURL:v9];
    }

    else
    {
      v15 = DefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [DDSTrialAsset createWithExperimentIdentifiers:v9 localURL:v15];
      }

      v13 = 0;
    }

    v7 = v9;
  }

  else
  {
    v14 = DefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DDSTrialAsset createWithExperimentIdentifiers:v7 localURL:v14];
    }

    v13 = 0;
  }

  return v13;
}

- (DDSTrialAsset)initWithExperimentIdentifiers:(id)a3 attributes:(id)a4 localURL:(id)a5
{
  v20[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = DDSTrialAsset;
  v10 = [(DDSAsset *)&v18 initWithAttributes:a4 localURL:v9];
  if (v10)
  {
    v11 = [v8 copy];
    experimentIdentifiers = v10->_experimentIdentifiers;
    v10->_experimentIdentifiers = v11;

    v19[0] = @"localURL";
    v19[1] = @"experimentIdentifiers";
    v20[0] = v9;
    v20[1] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v14 = [v13 description];
    description = v10->_description;
    v10->_description = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v11.receiver = self, v11.super_class = DDSTrialAsset, [(DDSAsset *)&v11 isEqual:v6]))
  {
    v7 = [(DDSTrialAsset *)self experimentIdentifiers];
    v8 = [v6 experimentIdentifiers];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = DDSTrialAsset;
  v3 = [(DDSAsset *)&v7 hash];
  v4 = [(DDSTrialAsset *)self experimentIdentifiers];
  v5 = [v4 hash];

  return v5 ^ v3;
}

+ (void)createWithExperimentIdentifiers:(uint64_t)a1 localURL:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Failed to create trial asset, AssetData directory doesn't exist: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)createWithExperimentIdentifiers:(uint64_t)a1 localURL:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_ERROR, "Failed to create trial asset for url attributes missing: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end