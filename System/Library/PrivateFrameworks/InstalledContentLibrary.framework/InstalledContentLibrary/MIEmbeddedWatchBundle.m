@interface MIEmbeddedWatchBundle
- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)a3 withError:(id *)a4;
- (id)extensionKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4;
- (id)extensionKitBundlesWithError:(id *)a3;
- (id)pluginKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4;
- (id)pluginKitBundlesWithError:(id *)a3;
@end

@implementation MIEmbeddedWatchBundle

- (id)currentOSVersionForValidationUsingPlatform:(unint64_t *)a3 withError:(id *)a4
{
  if (a3)
  {
    *a3 = 1;
  }

  return @"26.9999";
}

- (id)pluginKitBundlesWithError:(id *)a3
{
  v5.receiver = self;
  v5.super_class = MIEmbeddedWatchBundle;
  v3 = [(MIBundle *)&v5 pluginKitBundlesPerformingPlatformValidation:2 withError:a3];

  return v3;
}

- (id)pluginKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4
{
  v6.receiver = self;
  v6.super_class = MIEmbeddedWatchBundle;
  v4 = [(MIBundle *)&v6 pluginKitBundlesPerformingPlatformValidation:a3 & 2 withError:a4];

  return v4;
}

- (id)extensionKitBundlesWithError:(id *)a3
{
  v5.receiver = self;
  v5.super_class = MIEmbeddedWatchBundle;
  v3 = [(MIBundle *)&v5 extensionKitBundlesPerformingPlatformValidation:2 withError:a3];

  return v3;
}

- (id)extensionKitBundlesPerformingPlatformValidation:(unsigned __int8)a3 withError:(id *)a4
{
  v6.receiver = self;
  v6.super_class = MIEmbeddedWatchBundle;
  v4 = [(MIBundle *)&v6 extensionKitBundlesPerformingPlatformValidation:a3 & 2 withError:a4];

  return v4;
}

@end