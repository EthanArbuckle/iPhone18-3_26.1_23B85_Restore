@interface MASecureMobileAssetTypes
+ (id)sharedInstance;
- (BOOL)fsTag:(unsigned int *)a3 forAssetType:(id)a4 specifier:(id)a5;
- (BOOL)supportsDarwin:(id)a3;
- (BOOL)supportsLoadableTrustCache:(id)a3;
- (MASecureMobileAssetTypes)init;
- (id)_loadTypes;
@end

@implementation MASecureMobileAssetTypes

+ (id)sharedInstance
{
  if (qword_10000CB60 != -1)
  {
    sub_10000466C();
  }

  v3 = qword_10000CB68;

  return v3;
}

- (MASecureMobileAssetTypes)init
{
  v7.receiver = self;
  v7.super_class = MASecureMobileAssetTypes;
  v2 = [(MASecureMobileAssetTypes *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MASecureMobileAssetTypes *)v2 _loadTypes];
    types = v3->_types;
    v3->_types = v4;
  }

  return v3;
}

- (BOOL)supportsDarwin:(id)a3
{
  v4 = a3;
  v5 = [(MASecureMobileAssetTypes *)self types];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"SupportsDarwin"];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)supportsLoadableTrustCache:(id)a3
{
  v4 = a3;
  v5 = [(MASecureMobileAssetTypes *)self types];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"SupportsLoadableTrustCache"];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)fsTag:(unsigned int *)a3 forAssetType:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(MASecureMobileAssetTypes *)self types];
  v11 = [v10 objectForKeyedSubscript:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 objectForKeyedSubscript:@"FSTags"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKeyedSubscript:v8];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v15 = isKindOfClass;
      if (a3 && (isKindOfClass & 1) != 0)
      {
        *a3 = [v13 unsignedIntValue];
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
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/MobileAsset.framework"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pathForResource:@"SecureMobileAssetTypes" ofType:@"plist"];
    if (v4)
    {
      v5 = [NSDictionary dictionaryWithContentsOfFile:v4];
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
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to load SecureMobileAssetTypes.plist", v10, 2u);
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
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to find SecureMobileAssetTypes.plist", v11, 2u);
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to load MobileAsset.framework bundle", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

@end