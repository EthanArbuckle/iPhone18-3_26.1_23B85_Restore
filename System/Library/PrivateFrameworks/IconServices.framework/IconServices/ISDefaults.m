@interface ISDefaults
+ (id)sharedInstance;
- (BOOL)isEnhancedGlassEnabled;
- (BOOL)isSolariumCornerRadiusEnabled;
- (BOOL)isUniversalGladeEnabled;
- (BOOL)isUnsupportedDecorationDisabled;
- (BOOL)safeBoot;
- (BOOL)usePerstentCache;
- (ISDefaults)init;
- (NSURL)cacheURL;
- (NSURL)metalCacheURL;
- (double)prepareImageDelay;
- (id)forceSymbolEmbossment;
- (id)tintColor;
- (int64_t)forceApperance;
- (int64_t)forceApperanceVariant;
- (void)cacheURL;
@end

@implementation ISDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[ISDefaults sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

- (id)tintColor
{
  if (tintColor_once != -1)
  {
    [ISDefaults tintColor];
  }

  v3 = tintColor_ifcolor;

  return v3;
}

- (int64_t)forceApperanceVariant
{
  if (forceApperanceVariant_once != -1)
  {
    [ISDefaults forceApperanceVariant];
  }

  return forceApperanceVariant_apperanceVariant;
}

- (int64_t)forceApperance
{
  if (forceApperance_once != -1)
  {
    [ISDefaults forceApperance];
  }

  return forceApperance_appearance;
}

void __28__ISDefaults_forceApperance__block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v0 stringForKey:@"ISForceApperance"];

    v1 = v3;
    if (v3)
    {
      if ([v3 caseInsensitiveCompare:@"dark"])
      {
        v2 = 2 * ([v3 caseInsensitiveCompare:@"tintable"] == 0);
      }

      else
      {
        v2 = 1;
      }

      forceApperance_appearance = v2;
      v1 = v3;
    }
  }
}

void __35__ISDefaults_forceApperanceVariant__block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v0 stringForKey:@"ISForceApperancVariant"];

    v1 = v4;
    if (v4)
    {
      if ([v4 caseInsensitiveCompare:@"feature-icons"])
      {
        if ([v4 caseInsensitiveCompare:@"tintable"])
        {
          v2 = [v4 caseInsensitiveCompare:@"clear"];
          v3 = 3;
          if (v2)
          {
            v3 = 0;
          }
        }

        else
        {
          v3 = 2;
        }
      }

      else
      {
        v3 = 1;
      }

      forceApperanceVariant_apperanceVariant = v3;
      v1 = v4;
    }
  }
}

void __23__ISDefaults_tintColor__block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v0 stringForKey:@"ISTintColor"];

    if (v1)
    {
      v2 = _ISColorForString(v1);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&tintColor_ifcolor, v2);
      }

      else if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v3 = [v2 intValue];
        v4 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:v3];
        v5 = tintColor_ifcolor;
        tintColor_ifcolor = v4;
      }

      else
      {
        v6 = _ISDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __23__ISDefaults_tintColor__block_invoke_cold_1(v2, v6);
        }
      }
    }
  }
}

- (ISDefaults)init
{
  v14.receiver = self;
  v14.super_class = ISDefaults;
  v2 = [(ISDefaults *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.iconservices" encoding:4];
    serviceName = v2->_serviceName;
    v2->_serviceName = v3;

    v5 = MGCopyAnswer();
    v6 = MGCopyAnswer();
    v7 = &stru_1F1A4DB80;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &stru_1F1A4DB80;
    }

    if (v6)
    {
      v7 = v6;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%@%@", "20:59:51", v8, v7];
    v10 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v9];
    v11 = [v10 UUIDString];

    cacheSaltString = v2->_cacheSaltString;
    v2->_cacheSaltString = v11;
  }

  return v2;
}

uint64_t __28__ISDefaults_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_2 = objc_alloc_init(ISDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (double)prepareImageDelay
{
  v2 = pthread_main_np();
  result = 0.0;
  if (v2 == 1)
  {
    if (prepareImageDelay_onceToken != -1)
    {
      [ISDefaults prepareImageDelay];
    }

    return *&prepareImageDelay_delay;
  }

  return result;
}

- (NSURL)cacheURL
{
  cacheURL = self->__cacheURL;
  if (!cacheURL)
  {
    v14 = 1;
    v4 = container_system_group_path_for_identifier();
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
      v7 = [v6 URLByAppendingPathComponent:@"Library/Caches" isDirectory:1];

      free(v5);
    }

    else
    {
      v8 = _ISDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(ISDefaults *)&v14 cacheURL];
      }

      v7 = 0;
    }

    v9 = [v7 URLByAppendingPathComponent:@"com.apple.IconsCache" isDirectory:1];
    v10 = [(ISDefaults *)self cacheSaltString];
    v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:1];
    v12 = self->__cacheURL;
    self->__cacheURL = v11;

    cacheURL = self->__cacheURL;
  }

  return cacheURL;
}

- (NSURL)metalCacheURL
{
  metalCacheURL = self->_metalCacheURL;
  if (!metalCacheURL)
  {
    v4 = [(ISDefaults *)self cacheURL];
    v5 = [v4 URLByAppendingPathComponent:@"__METAL_CACHE__"];
    v6 = self->_metalCacheURL;
    self->_metalCacheURL = v5;

    metalCacheURL = self->_metalCacheURL;
  }

  return metalCacheURL;
}

- (BOOL)usePerstentCache
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->__usePerstentCache)
  {
    v3 = getenv("IS_USE_PERSISTENT_CACHE");
    if (v3)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInt:atoi(v3) > 0];
    }

    else
    {
      v4 = MEMORY[0x1E695E118];
    }

    usePerstentCache = self->__usePerstentCache;
    self->__usePerstentCache = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = self->__usePerstentCache;

  return [(NSNumber *)v6 BOOLValue];
}

void __31__ISDefaults_prepareImageDelay__block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v1 doubleForKey:@"IconServicesMainThreadPrepareDelay"];
  prepareImageDelay_delay = v0;
}

- (id)forceSymbolEmbossment
{
  if (forceSymbolEmbossment_once != -1)
  {
    [ISDefaults forceSymbolEmbossment];
  }

  v3 = forceSymbolEmbossment_symbolName;

  return v3;
}

void __35__ISDefaults_forceSymbolEmbossment__block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v0 = [v2 stringForKey:@"ISForceSymbolEmbossment"];
    v1 = forceSymbolEmbossment_symbolName;
    forceSymbolEmbossment_symbolName = v0;
  }
}

- (BOOL)isUnsupportedDecorationDisabled
{
  if (isUnsupportedDecorationDisabled_once != -1)
  {
    [ISDefaults isUnsupportedDecorationDisabled];
  }

  return isUnsupportedDecorationDisabled_result;
}

void __45__ISDefaults_isUnsupportedDecorationDisabled__block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v0 BOOLForKey:@"ISDisableUnsupportedDecoration"];

    if (v1)
    {
      isUnsupportedDecorationDisabled_result = 1;
    }
  }
}

- (BOOL)isUniversalGladeEnabled
{
  if ([(ISDefaults *)self featureOverride])
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)isEnhancedGlassEnabled
{
  v3 = [(ISDefaults *)self isSolariumEnabled];
  if (v3)
  {
    if ([(ISDefaults *)self featureOverride])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = _os_feature_enabled_impl();
    }
  }

  return v3;
}

- (BOOL)isSolariumCornerRadiusEnabled
{
  v3 = [(ISDefaults *)self isSolariumEnabled];
  if (v3)
  {
    if ([(ISDefaults *)self featureOverride])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = _os_feature_enabled_impl();
    }
  }

  return v3;
}

- (BOOL)safeBoot
{
  if (safeBoot_onceToken != -1)
  {
    [ISDefaults safeBoot];
  }

  return safeBoot_inSafeMode;
}

uint64_t __22__ISDefaults_safeBoot__block_invoke()
{
  v3 = 8;
  v4 = 0;
  result = sysctlbyname("kern.safeboot", &v4, &v3, 0, 0);
  v2 = result != -1 && v4 != 0;
  safeBoot_inSafeMode = v2;
  return result;
}

- (void)cacheURL
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Failed to get cache path with error: %llu.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __23__ISDefaults_tintColor__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Unexpected color %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end