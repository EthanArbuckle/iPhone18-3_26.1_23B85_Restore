@interface GEOAPUploadConfigProvider
- (BOOL)internalInstall;
- (BOOL)simulateFileWriteError;
- (BOOL)simulateNoURLs;
@end

@implementation GEOAPUploadConfigProvider

- (BOOL)simulateFileWriteError
{
  internalInstall = [(GEOAPUploadConfigProvider *)self internalInstall];
  if (internalInstall)
  {
    v3 = GeoAnalyticsConfig__debug_simulateFileWriteError[1];

    LOBYTE(internalInstall) = GEOConfigGetBOOL();
  }

  return internalInstall;
}

- (BOOL)simulateNoURLs
{
  internalInstall = [(GEOAPUploadConfigProvider *)self internalInstall];
  if (internalInstall)
  {
    v3 = GeoAnalyticsConfig__debug_simulateNoURLs[1];

    LOBYTE(internalInstall) = GEOConfigGetBOOL();
  }

  return internalInstall;
}

- (BOOL)internalInstall
{
  v2 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v2 isInternalInstall];

  return isInternalInstall;
}

@end