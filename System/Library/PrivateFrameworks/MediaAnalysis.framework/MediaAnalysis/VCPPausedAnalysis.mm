@interface VCPPausedAnalysis
+ (id)filepathForPhotoLibrary:(id)library;
+ (id)pausedAnalysis:(id)analysis forAsset:(id)asset;
+ (id)persistedPausedAnalysisFromPhotoLibrary:(id)library;
- (VCPPausedAnalysis)initWithAnalysis:(id)analysis forAsset:(id)asset;
- (VCPPausedAnalysis)initWithFileFromPhotoLibrary:(id)library;
- (int)persist;
@end

@implementation VCPPausedAnalysis

+ (id)filepathForPhotoLibrary:(id)library
{
  vcp_mediaAnalysisDirectory = [library vcp_mediaAnalysisDirectory];
  v4 = [vcp_mediaAnalysisDirectory stringByAppendingPathComponent:@"paused.plist"];

  return v4;
}

- (VCPPausedAnalysis)initWithFileFromPhotoLibrary:(id)library
{
  libraryCopy = library;
  v5 = [objc_opt_class() filepathForPhotoLibrary:libraryCopy];
  v6 = +[NSFileManager defaultManager];
  if ([v6 fileExistsAtPath:v5])
  {
    v19.receiver = self;
    v19.super_class = VCPPausedAnalysis;
    self = [(VCPPausedAnalysis *)&v19 init];
    if (self)
    {
      v7 = [NSDictionary dictionaryWithContentsOfFile:v5];
      [v6 removeItemAtPath:v5 error:0];
      if (v7 && ([v7 objectForKey:@"pausedAnalysis"], v8 = objc_claimAutoreleasedReturnValue(), analysis = self->_analysis, self->_analysis = v8, analysis, self->_analysis) && (objc_msgSend(v7, "objectForKey:", @"localIdentifier"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = [PHAsset vcp_fetchOptionsForLibrary:libraryCopy forTaskID:1];
        v20 = v10;
        v12 = [NSArray arrayWithObjects:&v20 count:1];
        v13 = [PHAsset fetchAssetsWithLocalIdentifiers:v12 options:v11];

        if ([v13 count] == 1)
        {
          v14 = [v13 objectAtIndexedSubscript:0];
          asset = self->_asset;
          self->_asset = v14;

          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }

    v17 = selfCopy;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)persistedPausedAnalysisFromPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithFileFromPhotoLibrary:libraryCopy];

  return v4;
}

- (VCPPausedAnalysis)initWithAnalysis:(id)analysis forAsset:(id)asset
{
  analysisCopy = analysis;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = VCPPausedAnalysis;
  v9 = [(VCPPausedAnalysis *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(&v10->_analysis, analysis);
  }

  return v10;
}

+ (id)pausedAnalysis:(id)analysis forAsset:(id)asset
{
  analysisCopy = analysis;
  assetCopy = asset;
  v7 = [objc_alloc(objc_opt_class()) initWithAnalysis:analysisCopy forAsset:assetCopy];

  return v7;
}

- (int)persist
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      localIdentifier = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v23 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "  [%@] Persisting paused analysis", buf, 0xCu);
    }
  }

  v5 = objc_opt_class();
  photoLibrary = [(PHAsset *)self->_asset photoLibrary];
  v7 = [v5 filepathForPhotoLibrary:photoLibrary];

  v8 = +[NSFileManager defaultManager];
  if ([v8 fileExistsAtPath:v7])
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v9 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "  Overwriting existing paused analysis", buf, 2u);
      }
    }
  }

  v20 = NSFileProtectionKey;
  v21 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
  v18[1] = @"pausedAnalysis";
  v19[0] = localIdentifier2;
  v19[1] = self->_analysis;
  v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  v13 = [NSPropertyListSerialization dataWithPropertyList:v12 format:200 options:0 error:0];
  if (v13)
  {
    if ([v8 createFileAtPath:v7 contents:v13 attributes:v10])
    {
      v14 = 0;
      goto LABEL_16;
    }

    v14 = -20;
  }

  else
  {
    v14 = -18;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v15 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v23 = localIdentifier3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "  [%@] Failed to persist paused analysis", buf, 0xCu);
    }
  }

LABEL_16:

  return v14;
}

@end