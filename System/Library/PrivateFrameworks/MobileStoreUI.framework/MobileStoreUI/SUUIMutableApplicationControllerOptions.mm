@interface SUUIMutableApplicationControllerOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIMutableApplicationControllerOptions

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(SUUIApplicationControllerOptions);
  *(result + 8) = self->super._supportsFullApplicationReload;
  *(result + 2) = self->super._tabBarControllerStyle;
  *(result + 24) = self->super._pageRenderMetricsEnabled;
  *(result + 25) = self->super._requiresLocalBootstrapScript;
  *(result + 26) = self->super._bootstrapScriptFallbackEnabled;
  *(result + 4) = *&self->super._bootstrapScriptFallbackMaximumAge;
  *(result + 5) = *&self->super._bootstrapScriptTimeoutInterval;
  *(result + 48) = self->super._useTransientStorageForTests;
  return result;
}

@end