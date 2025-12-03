@interface DDSTrialAsset
+ (id)attributesWithLocalURL:(id)l;
+ (id)createWithExperimentIdentifiers:(id)identifiers localURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (DDSTrialAsset)initWithExperimentIdentifiers:(id)identifiers attributes:(id)attributes localURL:(id)l;
- (unint64_t)hash;
@end

@implementation DDSTrialAsset

+ (id)attributesWithLocalURL:(id)l
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithURL:l];
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

+ (id)createWithExperimentIdentifiers:(id)identifiers localURL:(id)l
{
  identifiersCopy = identifiers;
  lCopy = l;
  v8 = [self attributesWithLocalURL:lCopy];
  if (v8)
  {
    v9 = [lCopy URLByAppendingPathComponent:@"AssetData"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v9 path];
    v12 = [defaultManager fileExistsAtPath:path];

    if (v12)
    {
      v13 = [[DDSTrialAsset alloc] initWithExperimentIdentifiers:identifiersCopy attributes:v8 localURL:v9];
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

    lCopy = v9;
  }

  else
  {
    v14 = DefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DDSTrialAsset createWithExperimentIdentifiers:lCopy localURL:v14];
    }

    v13 = 0;
  }

  return v13;
}

- (DDSTrialAsset)initWithExperimentIdentifiers:(id)identifiers attributes:(id)attributes localURL:(id)l
{
  v20[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = DDSTrialAsset;
  v10 = [(DDSAsset *)&v18 initWithAttributes:attributes localURL:lCopy];
  if (v10)
  {
    v11 = [identifiersCopy copy];
    experimentIdentifiers = v10->_experimentIdentifiers;
    v10->_experimentIdentifiers = v11;

    v19[0] = @"localURL";
    v19[1] = @"experimentIdentifiers";
    v20[0] = lCopy;
    v20[1] = identifiersCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v14 = [v13 description];
    description = v10->_description;
    v10->_description = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v11.receiver = self, v11.super_class = DDSTrialAsset, [(DDSAsset *)&v11 isEqual:v6]))
  {
    experimentIdentifiers = [(DDSTrialAsset *)self experimentIdentifiers];
    experimentIdentifiers2 = [v6 experimentIdentifiers];
    v9 = [experimentIdentifiers isEqual:experimentIdentifiers2];
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
  experimentIdentifiers = [(DDSTrialAsset *)self experimentIdentifiers];
  v5 = [experimentIdentifiers hash];

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