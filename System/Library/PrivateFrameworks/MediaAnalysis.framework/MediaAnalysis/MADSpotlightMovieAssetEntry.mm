@interface MADSpotlightMovieAssetEntry
+ (id)entryWithAsset:(id)asset;
- (MADSpotlightMovieAssetEntry)initWithAsset:(id)asset;
- (int)consumeSandboxExtension;
- (void)dealloc;
@end

@implementation MADSpotlightMovieAssetEntry

- (MADSpotlightMovieAssetEntry)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = MADSpotlightMovieAssetEntry;
  v6 = [(MADSpotlightMovieAssetEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    v7->_previousStatus = [assetCopy status];
    v7->_status = 0;
    v7->_sandboxHandle = -1;
  }

  return v7;
}

+ (id)entryWithAsset:(id)asset
{
  assetCopy = asset;
  v4 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy];

  return v4;
}

- (void)dealloc
{
  if ((self->_sandboxHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = MADSpotlightMovieAssetEntry;
  [(MADSpotlightMovieAssetEntry *)&v3 dealloc];
}

- (int)consumeSandboxExtension
{
  if ((self->_sandboxHandle & 0x8000000000000000) == 0)
  {
    return 0;
  }

  sandboxToken = [(MADManagedSpotlightEntry *)self->_asset sandboxToken];
  [sandboxToken UTF8String];
  self->_sandboxHandle = sandbox_extension_consume();

  if ((self->_sandboxHandle & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v5 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      uniqueIdentifier = [(MADManagedSpotlightEntry *)self->_asset uniqueIdentifier];
      v7 = 138412290;
      v8 = uniqueIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@] Failed to consume sandbox extension", &v7, 0xCu);
    }
  }

  return -18;
}

@end