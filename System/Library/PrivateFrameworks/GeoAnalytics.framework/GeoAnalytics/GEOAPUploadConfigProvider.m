@interface GEOAPUploadConfigProvider
- (BOOL)internalInstall;
- (BOOL)simulateFileWriteError;
- (BOOL)simulateNoURLs;
@end

@implementation GEOAPUploadConfigProvider

- (BOOL)simulateFileWriteError
{
  v2 = [(GEOAPUploadConfigProvider *)self internalInstall];
  if (v2)
  {
    v3 = GeoAnalyticsConfig__debug_simulateFileWriteError[1];

    LOBYTE(v2) = GEOConfigGetBOOL();
  }

  return v2;
}

- (BOOL)simulateNoURLs
{
  v2 = [(GEOAPUploadConfigProvider *)self internalInstall];
  if (v2)
  {
    v3 = GeoAnalyticsConfig__debug_simulateNoURLs[1];

    LOBYTE(v2) = GEOConfigGetBOOL();
  }

  return v2;
}

- (BOOL)internalInstall
{
  v2 = +[GEOPlatform sharedPlatform];
  v3 = [v2 isInternalInstall];

  return v3;
}

@end