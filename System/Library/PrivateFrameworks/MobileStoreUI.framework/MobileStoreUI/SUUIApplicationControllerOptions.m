@interface SUUIApplicationControllerOptions
- (BOOL)isEqual:(id)a3;
- (SUUIApplicationControllerOptions)init;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SUUIApplicationControllerOptions

- (SUUIApplicationControllerOptions)init
{
  v3.receiver = self;
  v3.super_class = SUUIApplicationControllerOptions;
  result = [(SUUIApplicationControllerOptions *)&v3 init];
  if (result)
  {
    result->_supportsFullApplicationReload = 1;
    result->_tabBarControllerStyle = 0;
    *(&result->_tabBarControllerStyle + 7) = 0;
    result->_bootstrapScriptFallbackMaximumAge = 604800.0;
    result->_bootstrapScriptTimeoutInterval = 30.0;
    result->_useTransientStorageForTests = 0;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = 10;
  if (!self->_supportsFullApplicationReload)
  {
    v2 = 0;
  }

  v3 = v2 | self->_requiresLocalBootstrapScript;
  v4 = 100;
  if (!self->_pageRenderMetricsEnabled)
  {
    v4 = 0;
  }

  v5 = (v3 | v4) + 1000 * self->_tabBarControllerStyle;
  v6 = 10000;
  if (!self->_bootstrapScriptFallbackEnabled)
  {
    v6 = 0;
  }

  v7 = v5 + v6 + 100000 * self->_bootstrapScriptFallbackMaximumAge + 1000000 * self->_bootstrapScriptTimeoutInterval;
  v8 = 10000000;
  if (!self->_useTransientStorageForTests)
  {
    v8 = 0;
  }

  return v7 + v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_requiresLocalBootstrapScript == v5->_requiresLocalBootstrapScript && self->_supportsFullApplicationReload == v5->_supportsFullApplicationReload && self->_pageRenderMetricsEnabled == v5->_pageRenderMetricsEnabled && self->_tabBarControllerStyle == v5->_tabBarControllerStyle && self->_bootstrapScriptFallbackEnabled == v5->_bootstrapScriptFallbackEnabled && self->_bootstrapScriptFallbackMaximumAge == v5->_bootstrapScriptFallbackMaximumAge && self->_bootstrapScriptTimeoutInterval == v5->_bootstrapScriptTimeoutInterval && self->_useTransientStorageForTests == v5->_useTransientStorageForTests;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SUUIMutableApplicationControllerOptions);
  [(SUUIMutableApplicationControllerOptions *)v4 setSupportsFullApplicationReload:self->_supportsFullApplicationReload];
  [(SUUIMutableApplicationControllerOptions *)v4 setTabBarControllerStyle:self->_tabBarControllerStyle];
  [(SUUIMutableApplicationControllerOptions *)v4 setPageRenderMetricsEnabled:self->_pageRenderMetricsEnabled];
  [(SUUIMutableApplicationControllerOptions *)v4 setRequiresLocalBootstrapScript:self->_requiresLocalBootstrapScript];
  [(SUUIMutableApplicationControllerOptions *)v4 setBootstrapScriptFallbackEnabled:self->_bootstrapScriptFallbackEnabled];
  [(SUUIMutableApplicationControllerOptions *)v4 setBootstrapScriptFallbackMaximumAge:self->_bootstrapScriptFallbackMaximumAge];
  [(SUUIMutableApplicationControllerOptions *)v4 setBootstrapScriptTimeoutInterval:self->_bootstrapScriptTimeoutInterval];
  [(SUUIMutableApplicationControllerOptions *)v4 setUseTransientStorageForTests:self->_useTransientStorageForTests];
  return v4;
}

@end