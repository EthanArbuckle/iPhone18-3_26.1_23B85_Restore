@interface MIEmbeddedWatchBundle
- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)platform withError:(id *)error;
- (id)extensionKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error;
- (id)extensionKitBundlesWithError:(id *)error;
- (id)pluginKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error;
- (id)pluginKitBundlesWithError:(id *)error;
@end

@implementation MIEmbeddedWatchBundle

- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)platform withError:(id *)error
{
  if (platform)
  {
    *platform = 1;
  }

  return @"26.9999";
}

- (id)pluginKitBundlesWithError:(id *)error
{
  v5.receiver = self;
  v5.super_class = MIEmbeddedWatchBundle;
  v3 = [(MIBundle *)&v5 pluginKitBundlesPerformingPlatformValidation:2 withError:error];

  return v3;
}

- (id)pluginKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error
{
  v6.receiver = self;
  v6.super_class = MIEmbeddedWatchBundle;
  v4 = [(MIBundle *)&v6 pluginKitBundlesPerformingPlatformValidation:validation & 2 withError:error];

  return v4;
}

- (id)extensionKitBundlesWithError:(id *)error
{
  v5.receiver = self;
  v5.super_class = MIEmbeddedWatchBundle;
  v3 = [(MIBundle *)&v5 extensionKitBundlesPerformingPlatformValidation:2 withError:error];

  return v3;
}

- (id)extensionKitBundlesPerformingPlatformValidation:(unsigned __int8)validation withError:(id *)error
{
  v6.receiver = self;
  v6.super_class = MIEmbeddedWatchBundle;
  v4 = [(MIBundle *)&v6 extensionKitBundlesPerformingPlatformValidation:validation & 2 withError:error];

  return v4;
}

@end