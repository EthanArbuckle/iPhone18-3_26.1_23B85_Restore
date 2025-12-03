@interface MASecureMobileAssetTypes
+ (id)sharedInstance;
- (BOOL)fsTag:(unsigned int *)tag forAssetType:(id)type specifier:(id)specifier;
- (BOOL)supportsDarwin:(id)darwin;
- (BOOL)supportsLoadableTrustCache:(id)cache;
- (MASecureMobileAssetTypes)init;
- (id)_loadTypes;
@end

@implementation MASecureMobileAssetTypes

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MASecureMobileAssetTypes sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __42__MASecureMobileAssetTypes_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(MASecureMobileAssetTypes);

  return MEMORY[0x1EEE66BB8]();
}

- (MASecureMobileAssetTypes)init
{
  v7.receiver = self;
  v7.super_class = MASecureMobileAssetTypes;
  v2 = [(MASecureMobileAssetTypes *)&v7 init];
  v3 = v2;
  if (v2)
  {
    _loadTypes = [(MASecureMobileAssetTypes *)v2 _loadTypes];
    types = v3->_types;
    v3->_types = _loadTypes;
  }

  return v3;
}

- (BOOL)supportsDarwin:(id)darwin
{
  darwinCopy = darwin;
  types = [(MASecureMobileAssetTypes *)self types];
  v6 = [types objectForKeyedSubscript:darwinCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"SupportsDarwin"];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)supportsLoadableTrustCache:(id)cache
{
  cacheCopy = cache;
  types = [(MASecureMobileAssetTypes *)self types];
  v6 = [types objectForKeyedSubscript:cacheCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"SupportsLoadableTrustCache"];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)fsTag:(unsigned int *)tag forAssetType:(id)type specifier:(id)specifier
{
  specifierCopy = specifier;
  typeCopy = type;
  types = [(MASecureMobileAssetTypes *)self types];
  v11 = [types objectForKeyedSubscript:typeCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 objectForKeyedSubscript:@"FSTags"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKeyedSubscript:specifierCopy];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v15 = isKindOfClass;
      if (tag && (isKindOfClass & 1) != 0)
      {
        *tag = [v13 unsignedIntValue];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (id)_loadTypes
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileAsset.framework"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pathForResource:@"SecureMobileAssetTypes" ofType:@"plist"];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
      v6 = v5;
      if (v5)
      {
        v6 = v5;
        v7 = v6;
      }

      else
      {
        v8 = _MAClientLog(@"SecureMA");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "Failed to load SecureMobileAssetTypes.plist", v10, 2u);
        }

        v7 = 0;
      }
    }

    else
    {
      v6 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, "Failed to find SecureMobileAssetTypes.plist", v11, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v4 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_ERROR, "Failed to load MobileAsset.framework bundle", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

@end