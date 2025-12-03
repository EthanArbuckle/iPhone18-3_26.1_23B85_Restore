@interface MPCAssetLoadPropertiesLocalFileEvaluator
- (BOOL)_shouldUpgradeCacheOnPlay:(id)play assetCachingIsAllowed:(BOOL)allowed;
- (BOOL)_shouldUpgradeDownloadOnPlay:(id)play defaults:(id)defaults;
- (BOOL)isHLSFileAsset:(id)asset;
- (MPCAssetLoadPropertiesLocalFileEvaluator)initWithPlaybackEngine:(id)engine;
- (MPCPlaybackEngine)playbackEngine;
- (id)evaluateAssetLoadProperties:(id)properties allowingCachedAssets:(BOOL)assets defaults:(id)defaults;
- (int64_t)_loadedAudioAssetTypeForFileAsset:(id)asset;
- (int64_t)_recommendationForEvaluation:(id)evaluation assetCachingIsAllowed:(BOOL)allowed userDefaults:(id)defaults;
@end

@implementation MPCAssetLoadPropertiesLocalFileEvaluator

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (BOOL)_shouldUpgradeCacheOnPlay:(id)play assetCachingIsAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v22 = *MEMORY[0x1E69E9840];
  playCopy = play;
  if ([playCopy fileIsDownloaded])
  {
    v7 = 0;
  }

  else
  {
    v8 = [playCopy status] == 3 || objc_msgSend(playCopy, "status") == 2;
    if ([playCopy fileIsCached])
    {
      fileShouldBeUpdated = [playCopy fileShouldBeUpdated];
    }

    else
    {
      fileShouldBeUpdated = 0;
    }

    v7 = allowedCopy & (v8 | fileShouldBeUpdated);
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138544386;
      selfCopy = self;
      v14 = 1024;
      v15 = allowedCopy;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = fileShouldBeUpdated;
      v20 = 1024;
      v21 = allowedCopy & (v8 | fileShouldBeUpdated);
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Caching decision process - assetCachingIsAllowed: %{BOOL}u - localFileDoesNotExist: %{BOOL}u - localFileIsCachedAndNeedsUpdating: %{BOOL}u => shouldUpgradeCacheOnPlay:%{BOOL}u.", &v12, 0x24u);
    }
  }

  return v7;
}

- (BOOL)_shouldUpgradeDownloadOnPlay:(id)play defaults:(id)defaults
{
  v28 = *MEMORY[0x1E69E9840];
  playCopy = play;
  defaultsCopy = defaults;
  if ([playCopy fileIsDownloaded])
  {
    fileShouldBeUpdated = [playCopy fileShouldBeUpdated];
  }

  else
  {
    fileShouldBeUpdated = 0;
  }

  prefersSpatialDownloads = [defaultsCopy prefersSpatialDownloads];
  preferredMusicDownloadResolution = [defaultsCopy preferredMusicDownloadResolution];

  if (_os_feature_enabled_impl())
  {
    v11 = fileShouldBeUpdated & (prefersSpatialDownloads | (preferredMusicDownloadResolution > 47999));
  }

  else
  {
    v11 = 0;
  }

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138544898;
    selfCopy = self;
    v16 = 1024;
    v17 = _os_feature_enabled_impl();
    v18 = 1024;
    fileIsDownloaded = [playCopy fileIsDownloaded];
    v20 = 1024;
    fileShouldBeUpdated2 = [playCopy fileShouldBeUpdated];
    v22 = 1024;
    v23 = prefersSpatialDownloads;
    v24 = 1024;
    v25 = preferredMusicDownloadResolution > 47999;
    v26 = 1024;
    v27 = v11;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Upgrade on play decision process - upgradeOnPlay enabled: %{BOOL}u - localFileIsDownloaded: %{BOOL}u - localFileShouldBeUpdated: %{BOOL}u - userExpectsSpatialDownload: %{BOOL}u - userExpectsLosslessDownload: %{BOOL}u => shouldUpgradeDownloadOnPlay: %{BOOL}u.", &v14, 0x30u);
  }

  return v11;
}

- (int64_t)_recommendationForEvaluation:(id)evaluation assetCachingIsAllowed:(BOOL)allowed userDefaults:(id)defaults
{
  allowedCopy = allowed;
  evaluationCopy = evaluation;
  defaultsCopy = defaults;
  if ([(MPCAssetLoadPropertiesLocalFileEvaluator *)self _shouldUpgradeCacheOnPlay:evaluationCopy assetCachingIsAllowed:allowedCopy])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(MPCAssetLoadPropertiesLocalFileEvaluator *)self _shouldUpgradeDownloadOnPlay:evaluationCopy defaults:defaultsCopy];
    v12 = 3;
    if (!allowedCopy)
    {
      v12 = 0;
    }

    if (v11)
    {
      v10 = 2;
    }

    else
    {
      v10 = v12;
    }
  }

  return v10;
}

- (BOOL)isHLSFileAsset:(id)asset
{
  assetCopy = asset;
  filePath = [assetCopy filePath];
  v5 = [filePath length];

  if (v5)
  {
    filePath2 = [assetCopy filePath];
    pathExtension = [filePath2 pathExtension];

    if (pathExtension)
    {
      v8 = MSVOfflineHLSFileExtensions();
      LOBYTE(v5) = [v8 containsObject:pathExtension];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (int64_t)_loadedAudioAssetTypeForFileAsset:(id)asset
{
  v29 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  isNonPurgeable = [assetCopy isNonPurgeable];
  if ([(MPCAssetLoadPropertiesLocalFileEvaluator *)self isHLSFileAsset:assetCopy])
  {
    traits = [assetCopy traits];
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:

      v20 = 4;
      v21 = 5;
      if ((traits & 4) == 0)
      {
        v21 = 2;
      }

      if ((traits & 2) == 0)
      {
        v20 = v21;
      }

      if ((traits & 0x38) != 0)
      {
        v14 = 3;
      }

      else
      {
        v14 = v20;
      }

      goto LABEL_35;
    }

    if (isNonPurgeable)
    {
      v8 = @"Downloaded";
    }

    else
    {
      v8 = @"Cached";
    }

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
    if (traits)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"adm"];
      [v9 addObject:v15];

      if ((traits & 2) == 0)
      {
LABEL_8:
        if ((traits & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }
    }

    else if ((traits & 2) == 0)
    {
      goto LABEL_8;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lossless"];
    [v9 addObject:v16];

    if ((traits & 4) == 0)
    {
LABEL_9:
      if ((traits & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"high-res lossless"];
    [v9 addObject:v17];

    if ((traits & 8) == 0)
    {
LABEL_10:
      if ((traits & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spatial"];
    [v9 addObject:v18];

    if ((traits & 0x10) == 0)
    {
LABEL_11:
      if ((traits & 0x20) == 0)
      {
LABEL_13:
        if ([v9 count])
        {
          v11 = [v9 componentsJoinedByString:{@", "}];
        }

        else
        {
          v11 = @"None";
        }

        v23 = 138543874;
        selfCopy2 = self;
        v25 = 2114;
        v26 = v8;
        v27 = 2114;
        v28 = v11;
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - %{public}@ file is HLS file - Traits: %{public}@", &v23, 0x20u);

        goto LABEL_28;
      }

LABEL_12:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"surround"];
      [v9 addObject:v10];

      goto LABEL_13;
    }

LABEL_24:
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"atmos"];
    [v9 addObject:v19];

    if ((traits & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"Cached";
    if (isNonPurgeable)
    {
      v13 = @"Downloaded";
    }

    v23 = 138543618;
    selfCopy2 = self;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - %{public}@ file is CRABS", &v23, 0x16u);
  }

  v14 = 1;
LABEL_35:

  return v14;
}

- (id)evaluateAssetLoadProperties:(id)properties allowingCachedAssets:(BOOL)assets defaults:(id)defaults
{
  assetsCopy = assets;
  v62 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  defaultsCopy = defaults;
  v10 = [MPCAssetLoadPropertiesLocalFileEvaluation alloc];
  fileAsset = [propertiesCopy fileAsset];
  v12 = [(MPCAssetLoadPropertiesLocalFileEvaluation *)v10 initWithFileAsset:fileAsset];

  [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:0];
  -[MPCAssetLoadPropertiesLocalFileEvaluation setHLSContentPolicy:](v12, "setHLSContentPolicy:", [propertiesCopy HLSContentPolicy]);
  fileAsset2 = [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileAsset];
  v14 = fileAsset2;
  if (fileAsset2)
  {
    -[MPCAssetLoadPropertiesLocalFileEvaluation setFileIsDownloaded:](v12, "setFileIsDownloaded:", [fileAsset2 isNonPurgeable]);
    -[MPCAssetLoadPropertiesLocalFileEvaluation setFileIsCached:](v12, "setFileIsCached:", [v14 isNonPurgeable] ^ 1);
    filePath = [v14 filePath];
    if (![filePath length])
    {
      v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy14 = self;
        _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Unusable local file asset [Missing cached or downloaded file]", buf, 0xCu);
      }

      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:3];
      v18 = [(MPCAssetLoadPropertiesLocalFileEvaluator *)self _recommendationForEvaluation:v12 assetCachingIsAllowed:assetsCopy userDefaults:defaultsCopy];
      v17 = v12;
      goto LABEL_14;
    }

    [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFilePath:filePath];
    if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileIsCached]&& !assetsCopy)
    {
      v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy14 = self;
        _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Unusable local file asset [Cached assets not allowed]", buf, 0xCu);
      }

      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:5];
      v17 = v12;
      v18 = 0;
LABEL_14:
      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v17 setRecommendation:v18];
LABEL_41:

      goto LABEL_42;
    }

    [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileIsHLS:[(MPCAssetLoadPropertiesLocalFileEvaluator *)self isHLSFileAsset:v14]];
    [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileAssetType:[(MPCAssetLoadPropertiesLocalFileEvaluator *)self _loadedAudioAssetTypeForFileAsset:v14]];
    -[MPCAssetLoadPropertiesLocalFileEvaluation setExpectedAssetType:](v12, "setExpectedAssetType:", [propertiesCopy preferredAudioAssetType]);
    -[MPCAssetLoadPropertiesLocalFileEvaluation setFileQualityType:](v12, "setFileQualityType:", [v14 qualityType]);
    if ([propertiesCopy prefersHighQualityContent])
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setExpectedQualityType:v21];
    if (-[MPCAssetLoadPropertiesLocalFileEvaluation fileIsHLS](v12, "fileIsHLS") && [propertiesCopy HLSContentPolicy] == 3)
    {
      v22 = 1;
    }

    else
    {
      v22 = 0;
      if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileIsHLS])
      {
        goto LABEL_29;
      }
    }

    playbackEngine = [(MPCAssetLoadPropertiesLocalFileEvaluator *)self playbackEngine];
    if ([playbackEngine isVocalAttenuationEnabled])
    {
      supportsVocalAttenuation = [propertiesCopy supportsVocalAttenuation];

      if (supportsVocalAttenuation)
      {
        v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy14 = self;
          _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Unusable local file asset [vocal attenuation enabled for supported item]", buf, 0xCu);
        }

        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:0];
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredFileFormat:0];
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:7];
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setRecommendation:0];
        v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    else
    {
    }

LABEL_29:
    v57 = assetsCopy;
    storeAsset = [propertiesCopy storeAsset];
    if ([storeAsset endpointType] == 2)
    {

      goto LABEL_33;
    }

    v28 = v22;
    storeAsset2 = [propertiesCopy storeAsset];
    selfCopy4 = self;
    v31 = filePath;
    v32 = defaultsCopy;
    endpointType = [storeAsset2 endpointType];

    v34 = endpointType == 1;
    defaultsCopy = v32;
    filePath = v31;
    self = selfCopy4;
    if (v34)
    {
LABEL_33:
      v35 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy14 = self;
        _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Local file asset is usable as is [Purchased or matched content]", buf, 0xCu);
      }

      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredFileFormat:1];
      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:1];
      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:1];
      if (v57)
      {
        v36 = 3;
      }

      else
      {
        v36 = 0;
      }

      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setRecommendation:v36];
      v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    expectedAssetType = [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 expectedAssetType];
    v40 = expectedAssetType;
    if (expectedAssetType < 2 || [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileIsHLS])
    {
      v41 = ![(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileIsHLS];
      if (v40 > 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v41;
      }
    }

    else
    {
      v42 = 0;
    }

    [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredFileFormat:v42];
    if (v28)
    {
      if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileAssetType]>= 2 && [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 expectedAssetType]== 1)
      {
        v43 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy14 = selfCopy4;
          _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Local HLS asset of compatible quality [HLS file for CRABS desired playback] - Overriding HLSPolicyContentForbidden", buf, 0xCu);
        }

        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:1];
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:1];
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setRecommendation:[(MPCAssetLoadPropertiesLocalFileEvaluator *)selfCopy4 _recommendationForEvaluation:v12 assetCachingIsAllowed:v57 userDefaults:defaultsCopy]];
        v26 = _MPCLogCategoryPlayback();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v47 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy14 = selfCopy4;
          _os_log_impl(&dword_1C5C61000, v47, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Unusable local file asset [HLS file not allowed for playback]", buf, 0xCu);
        }

        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:0];
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredFileFormat:0];
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:6];
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setRecommendation:[(MPCAssetLoadPropertiesLocalFileEvaluator *)selfCopy4 _recommendationForEvaluation:v12 assetCachingIsAllowed:v57 userDefaults:defaultsCopy]];
        v26 = _MPCLogCategoryPlayback();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }
      }

      goto LABEL_39;
    }

    hlsKeyServerURL = [v14 hlsKeyServerURL];
    if ([hlsKeyServerURL length])
    {
      hlsKeyCertificateURL = [v14 hlsKeyCertificateURL];
      v46 = [hlsKeyCertificateURL length] != 0;
    }

    else
    {
      v46 = 0;
    }

    if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileIsHLS]&& !v46)
    {
      v48 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy14 = self;
        _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Unusable local file asset [HLS file with missing hls keys]", buf, 0xCu);
      }

      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:4];
      [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setRecommendation:[(MPCAssetLoadPropertiesLocalFileEvaluator *)self _recommendationForEvaluation:v12 assetCachingIsAllowed:v57 userDefaults:defaultsCopy]];
      v26 = _MPCLogCategoryPlayback();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

LABEL_39:
      humanDescription = [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 humanDescription];
      *buf = 138543618;
      selfCopy14 = self;
      v60 = 2114;
      v61 = humanDescription;
      _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - %{public}@", buf, 0x16u);

LABEL_40:
      goto LABEL_41;
    }

    [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:1];
    fileIsHLS = [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileIsHLS];
    v50 = _os_feature_enabled_impl();
    if (fileIsHLS)
    {
      if ((v50 & 1) == 0 && [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileIsDownloaded])
      {
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:1];
        v51 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy14 = self;
          v52 = "[AL] - %{public}@: [Asset caching] - Downloaded asset matches quality [Upgrade on play is off]";
LABEL_94:
          _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
          goto LABEL_95;
        }

        goto LABEL_95;
      }

      if (![(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileMatchesRequiredFileFormat])
      {
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:0];
        if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileAssetType]>= 2 && [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 expectedAssetType]== 1)
        {
          [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:1];
          v51 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy14 = self;
            v52 = "[AL] - %{public}@: [Asset caching] - Local HLS asset of compatible quality [HLS file for CRABS desired playback] - Overriding file format mismatch";
            goto LABEL_94;
          }

          goto LABEL_95;
        }

        if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileAssetType]>= 2 && ![(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 expectedAssetType])
        {
          [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:1];
          v51 = _MPCLogCategoryPlayback();
          if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_95;
          }

          *buf = 138543362;
          selfCopy14 = self;
          v52 = "[AL] - %{public}@: [Asset caching] - Unexpected combination local HLS file for unspecified requirement [HLS file for non-specified desired playback] - Overriding file format mismatch";
          goto LABEL_94;
        }

LABEL_103:
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setRecommendation:[(MPCAssetLoadPropertiesLocalFileEvaluator *)self _recommendationForEvaluation:v12 assetCachingIsAllowed:v57 userDefaults:defaultsCopy]];
        v26 = _MPCLogCategoryPlayback();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if ([(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileAssetType]>= 3 && [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 expectedAssetType]== 2)
      {
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:1];
        v51 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy14 = self;
          v52 = "[AL] - %{public}@: [Asset caching] - Local asset of acceptable quality [Higher than desired quality]";
          goto LABEL_94;
        }

        goto LABEL_95;
      }

      fileAssetType = [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileAssetType];
      v54 = fileAssetType == [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 expectedAssetType];
    }

    else
    {
      if ((v50 & 1) == 0 && [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileIsDownloaded])
      {
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:1];
        v51 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy14 = self;
          v52 = "[AL] - %{public}@: [Asset caching] - Downloaded asset matches quality [Upgrade on play is off]";
          goto LABEL_94;
        }

LABEL_95:

        goto LABEL_103;
      }

      if (![(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileMatchesRequiredFileFormat])
      {
        [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:0];
        v51 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy14 = self;
          v52 = "[AL] - %{public}@: [Asset caching] - Local asset of incorrect quality [File format differs from requirements]";
          goto LABEL_94;
        }

        goto LABEL_95;
      }

      fileQualityType = [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileQualityType];
      if (fileQualityType == [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 expectedQualityType])
      {
        v54 = 1;
      }

      else
      {
        fileQualityType2 = [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 fileQualityType];
        v54 = fileQualityType2 > [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 expectedQualityType];
      }
    }

    [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setFileMatchesRequiredQuality:v54];
    goto LABEL_103;
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy14 = self;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[AL] - %{public}@: [Asset caching] - Unusable local file asset [No cached or downloaded file]", buf, 0xCu);
  }

  [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setStatus:2];
  [(MPCAssetLoadPropertiesLocalFileEvaluation *)v12 setRecommendation:assetsCopy];
LABEL_42:

  return v12;
}

- (MPCAssetLoadPropertiesLocalFileEvaluator)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v8.receiver = self;
  v8.super_class = MPCAssetLoadPropertiesLocalFileEvaluator;
  v5 = [(MPCAssetLoadPropertiesLocalFileEvaluator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, engineCopy);
  }

  return v6;
}

@end