@interface MADServicePhotosVideoAsset
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillTime;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)trimTimeRange;
- (MADServicePhotosVideoAsset)initWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD;
- (id)cachedSensitivity;
- (id)resources;
- (id)safetyScoresForLabels;
- (id)url;
- (id)videoURLWithAllowDownload:(BOOL)download progressHandler:(id)handler cancelBlock:(id)block;
- (int)_downloadAssetResourceURLWithCancelBlock:(id)block progressHandler:(id)handler;
- (signed)videoSensitivityAnalysisVersion;
- (void)persistToPhotosWithCompactSCSensitivityAnalysis:(int64_t)analysis screenTimeDeviceImageSensitivity:(signed __int16)sensitivity;
@end

@implementation MADServicePhotosVideoAsset

- (MADServicePhotosVideoAsset)initWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD
{
  assetCopy = asset;
  v13.receiver = self;
  v13.super_class = MADServicePhotosVideoAsset;
  v10 = [(MADServiceVideoAsset *)&v13 initWithClientBundleID:d clientTeamID:iD];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photosAsset, asset);
  }

  return v11;
}

- (id)resources
{
  resources = self->_resources;
  if (!resources)
  {
    v4 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:self->_photosAsset];
    v5 = self->_resources;
    self->_resources = v4;

    resources = self->_resources;
  }

  return resources;
}

- (signed)videoSensitivityAnalysisVersion
{
  mediaAnalysisProperties = [(PHAsset *)self->_photosAsset mediaAnalysisProperties];
  videoSensitivityAnalysisVersion = [mediaAnalysisProperties videoSensitivityAnalysisVersion];

  return videoSensitivityAnalysisVersion;
}

- (id)url
{
  v55 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [(PHAsset *)self->_photosAsset localIdentifier];
    [(PHAsset *)self->_photosAsset vcp_typeDescription];
    v5 = v4 = self;
    mediaType = [(PHAsset *)v4->_photosAsset mediaType];
    mediaSubtypes = [(PHAsset *)v4->_photosAsset mediaSubtypes];
    pixelWidth = [(PHAsset *)v4->_photosAsset pixelWidth];
    pixelHeight = [(PHAsset *)v4->_photosAsset pixelHeight];
    *buf = 138413570;
    v46 = localIdentifier;
    v47 = 2112;
    *v48 = v5;
    *&v48[8] = 1024;
    *v49 = mediaType;
    *&v49[4] = 1024;
    v50 = mediaSubtypes;
    v51 = 1024;
    v52 = pixelWidth;
    v53 = 1024;
    v54 = pixelHeight;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selecting resource for Asset Type: %@ [%d/%d] Resolution: %dx%d", buf, 0x2Eu);

    self = v4;
  }

  resources = [(MADServicePhotosVideoAsset *)self resources];
  v11 = [resources vcp_movieResourcesSorted:{-[PHAsset vcp_hasAdjustments](self->_photosAsset, "vcp_hasAdjustments")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v11 reverseObjectEnumerator];
  v12 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v12)
  {
    privateFileURL2 = 0;
    goto LABEL_30;
  }

  v13 = v12;
  v36 = v11;
  v37 = resources;
  selfCopy = self;
  v14 = *v41;
  v15 = MEMORY[0x1E69E9C10];
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v41 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v40 + 1) + 8 * i);
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier2 = [(PHAsset *)selfCopy->_photosAsset localIdentifier];
        type = [v17 type];
        pixelWidth2 = [v17 pixelWidth];
        pixelHeight2 = [v17 pixelHeight];
        *buf = 138413058;
        v46 = localIdentifier2;
        v47 = 1024;
        *v48 = type;
        *&v48[4] = 1024;
        *&v48[6] = pixelWidth2;
        *v49 = 1024;
        *&v49[2] = pixelHeight2;
        _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_DEFAULT, "[%@] Evaluating movie resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
      }

      if ([v17 vcp_isLocallyAvailable])
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        privateFileURL = [v17 privateFileURL];
        path = [privateFileURL path];
        v25 = [defaultManager fileExistsAtPath:path];

        v26 = MediaAnalysisLogLevel();
        if (v25)
        {
          if (v26 >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            localIdentifier3 = [(PHAsset *)selfCopy->_photosAsset localIdentifier];
            type2 = [v17 type];
            pixelWidth3 = [v17 pixelWidth];
            pixelHeight3 = [v17 pixelHeight];
            *buf = 138413058;
            v46 = localIdentifier3;
            v47 = 1024;
            *v48 = type2;
            *&v48[4] = 1024;
            *&v48[6] = pixelWidth3;
            *v49 = 1024;
            *&v49[2] = pixelHeight3;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selected resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
          }

          privateFileURL2 = [v17 privateFileURL];
          goto LABEL_28;
        }

        if (v26 >= 5 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier4 = [(PHAsset *)selfCopy->_photosAsset localIdentifier];
          *buf = 138412290;
          v46 = localIdentifier4;
          v28 = v15;
          v29 = "[%@] Resource marked available, but file does not exist; skipping resource";
LABEL_20:
          _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);

          continue;
        }
      }

      else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier4 = [(PHAsset *)selfCopy->_photosAsset localIdentifier];
        *buf = 138412290;
        v46 = localIdentifier4;
        v28 = v15;
        v29 = "[%@] Resource not locally available; skipping resource";
        goto LABEL_20;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  privateFileURL2 = 0;
LABEL_28:
  v11 = v36;
  resources = v37;
LABEL_30:

  return privateFileURL2;
}

- (int)_downloadAssetResourceURLWithCancelBlock:(id)block progressHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  handlerCopy = handler;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MADServicePhotosVideoAsset_downloadAssetResource", "", buf, 2u);
  }

  resources = [(MADServicePhotosVideoAsset *)self resources];
  v13 = [resources vcp_movieResourcesSorted:{-[PHAsset vcp_hasAdjustments](self->_photosAsset, "vcp_hasAdjustments")}];
  if ([v13 count])
  {
    spid = v9;
    v35 = v9 - 1;
    vcp_smallMovieDerivativeResource = [resources vcp_smallMovieDerivativeResource];
    if (!vcp_smallMovieDerivativeResource)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier = [(PHAsset *)self->_photosAsset localIdentifier];
        *buf = 138412290;
        v40 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No small video derivative, trying the original resource...", buf, 0xCu);
      }

      vcp_smallMovieDerivativeResource = [v13 objectAtIndexedSubscript:0];
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      [(PHAsset *)self->_photosAsset localIdentifier];
      v16 = v36 = v13;
      v17 = blockCopy;
      type = [vcp_smallMovieDerivativeResource type];
      v19 = handlerCopy;
      pixelWidth = [vcp_smallMovieDerivativeResource pixelWidth];
      pixelHeight = [vcp_smallMovieDerivativeResource pixelHeight];
      *buf = 138413058;
      v40 = v16;
      v41 = 1024;
      v42 = type;
      blockCopy = v17;
      v43 = 1024;
      v44 = pixelWidth;
      handlerCopy = v19;
      v45 = 1024;
      v46 = pixelHeight;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Video resource to download (Type: %d Resolution: %dx%d)", buf, 0x1Eu);

      v13 = v36;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier2 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412290;
      v40 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Downloading video resource.", buf, 0xCu);
    }

    v37 = handlerCopy;
    v38 = 0;
    v23 = blockCopy;
    v24 = [MEMORY[0x1E69786E8] vcp_requestFileURLForAssetResource:vcp_smallMovieDerivativeResource withTaskID:0 toResourceURL:&v38 progressHandler:handlerCopy cancel:blockCopy];
    v25 = v38;
    v26 = v38;
    v27 = MediaAnalysisLogLevel();
    if (v26)
    {
      if (v27 >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier3 = [(PHAsset *)self->_photosAsset localIdentifier];
        *buf = 138412290;
        v40 = localIdentifier3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Downloaded video resource", buf, 0xCu);
      }

      objc_storeStrong(&self->_downloadedVideoURL, v25);
    }

    else if (v27 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier4 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412546;
      v40 = localIdentifier4;
      v41 = 1024;
      v42 = v24;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to download video resource, err:%d", buf, 0x12u);
    }

    v31 = VCPSignPostLog();
    v32 = v31;
    if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, spid, "MADServicePhotosVideoAsset_downloadAssetResource", "", buf, 2u);
    }

    blockCopy = v23;
    handlerCopy = v37;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier5 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412290;
      v40 = localIdentifier5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] No available video resource; skipping", buf, 0xCu);
    }

    v24 = -18;
  }

  return v24;
}

- (id)videoURLWithAllowDownload:(BOOL)download progressHandler:(id)handler cancelBlock:(id)block
{
  downloadCopy = download;
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  blockCopy = block;
  if (self->_downloadedVideoURL)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier = [(PHAsset *)self->_photosAsset localIdentifier];
      v18 = 138412290;
      v19 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Reuse downloaded video resource", &v18, 0xCu);
    }

    v11 = self->_downloadedVideoURL;
  }

  else
  {
    v12 = [(MADServicePhotosVideoAsset *)self url];
    if (v12)
    {
      v13 = MediaAnalysisLogLevel();
      downloadedVideoURL = v12;
      if (v13 >= 5)
      {
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        downloadedVideoURL = v12;
        if (v15)
        {
          localIdentifier2 = [(PHAsset *)self->_photosAsset localIdentifier];
          v18 = 138412290;
          v19 = localIdentifier2;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Use local video resource", &v18, 0xCu);

          downloadedVideoURL = v12;
        }
      }
    }

    else
    {
      if (downloadCopy)
      {
        [(MADServicePhotosVideoAsset *)self _downloadAssetResourceURLWithCancelBlock:blockCopy progressHandler:handlerCopy];
      }

      downloadedVideoURL = self->_downloadedVideoURL;
    }

    v11 = downloadedVideoURL;
  }

  return v11;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillTime
{
  photoIrisProperties = [(PHAsset *)self->_photosAsset photoIrisProperties];
  if (photoIrisProperties)
  {
    v6 = photoIrisProperties;
    [photoIrisProperties photoIrisStillDisplayTime];
    photoIrisProperties = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)trimTimeRange
{
  v13 = *MEMORY[0x1E69E9840];
  mediaAnalysisProperties = [(PHAsset *)self->_photosAsset mediaAnalysisProperties];
  mediaAnalysisTimeStamp = [mediaAnalysisProperties mediaAnalysisTimeStamp];
  adjustmentVersion = [(PHAsset *)self->_photosAsset adjustmentVersion];
  if (![mediaAnalysisTimeStamp isEqual:adjustmentVersion])
  {

    goto LABEL_10;
  }

  mediaAnalysisVersion = [mediaAnalysisProperties mediaAnalysisVersion];

  if (!mediaAnalysisVersion)
  {
LABEL_10:
    v9 = MEMORY[0x1E6960C98];
    v10 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v10;
    *&retstr->var1.var1 = *(v9 + 32);
    goto LABEL_11;
  }

  if ([mediaAnalysisProperties mediaAnalysisVersion] != 75 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = [mediaAnalysisProperties mediaAnalysisVersion];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Using trim range from older analysis version (%d)", v12, 8u);
  }

  if (mediaAnalysisProperties)
  {
    [mediaAnalysisProperties bestVideoTimeRange];
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

LABEL_11:

  return result;
}

- (id)cachedSensitivity
{
  v10 = *MEMORY[0x1E69E9840];
  if ((![(MADServicePhotosVideoAsset *)self isSharedPhotosAsset]|| [(MADServicePhotosVideoAsset *)self videoSensitivityAnalysisVersion]== 1) && ([(MADServicePhotosVideoAsset *)self isSharedPhotosAsset]|| ![(PHAsset *)self->_photosAsset vcp_needsFullAnalysisProcessing:0]))
  {
    mediaAnalysisProperties = [(PHAsset *)self->_photosAsset mediaAnalysisProperties];
    screenTimeDeviceImageSensitivity = [mediaAnalysisProperties screenTimeDeviceImageSensitivity];

    if (screenTimeDeviceImageSensitivity != -1)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:screenTimeDeviceImageSensitivity];
      goto LABEL_11;
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier = [(PHAsset *)self->_photosAsset localIdentifier];
    v8 = 138412290;
    v9 = localIdentifier;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Asset not processed or outdated for full analysis", &v8, 0xCu);
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (id)safetyScoresForLabels
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(PHAsset *)self->_photosAsset mad_isShared]|| [(PHAsset *)self->_photosAsset vcp_needsFullAnalysisProcessing:0])
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412290;
      v23 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] scoresForLabels not available, asset needs processing for full analysis", buf, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6 = [(PHAsset *)self->_photosAsset sceneClassificationsOfTypes:&unk_1F49BEE00];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 extendedSceneIdentifier] > 0x7FFFF8F5 && objc_msgSend(v11, "extendedSceneIdentifier") < 0x7FFFF900 || objc_msgSend(v11, "extendedSceneIdentifier") > 0x7FFFF6FD && objc_msgSend(v11, "extendedSceneIdentifier") < 0x7FFFF700)
          {
            v12 = VCPSpecialLabelFromExtendedSceneClassificationID([v11 extendedSceneIdentifier]);
            if (v12)
            {
              v13 = MEMORY[0x1E696AD98];
              [v11 confidence];
              v14 = [v13 numberWithDouble:?];
              [dictionary setObject:v14 forKeyedSubscript:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    if ([dictionary count])
    {
      v15 = dictionary;
    }

    else
    {
      v15 = 0;
    }

    v4 = v15;
  }

  return v4;
}

- (void)persistToPhotosWithCompactSCSensitivityAnalysis:(int64_t)analysis screenTimeDeviceImageSensitivity:(signed __int16)sensitivity
{
  v25 = *MEMORY[0x1E69E9840];
  if (analysis)
  {
    photoLibrary = [(PHAsset *)self->_photosAsset photoLibrary];
    v16 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __111__MADServicePhotosVideoAsset_persistToPhotosWithCompactSCSensitivityAnalysis_screenTimeDeviceImageSensitivity___block_invoke;
    v17[3] = &unk_1E83500A0;
    v17[4] = self;
    v17[5] = analysis;
    sensitivityCopy = sensitivity;
    v8 = [photoLibrary performChangesAndWait:v17 error:&v16];
    localIdentifier2 = v16;
    v10 = MediaAnalysisLogLevel();
    if (v8)
    {
      if (v10 < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      localIdentifier = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412546;
      v20 = localIdentifier;
      v21 = 2048;
      analysisCopy2 = analysis;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "[%@] Successfully persisted compactSCSensitivityAnalysis %lld to Photos";
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 22;
    }

    else
    {
      if (v10 < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      localIdentifier = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412802;
      v20 = localIdentifier;
      v21 = 2048;
      analysisCopy2 = analysis;
      v23 = 2112;
      v24 = localIdentifier2;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "[%@] Failed persisting compactSCSensitivityAnalysis %lld to Photos, error:%@";
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
    }

    _os_log_impl(&dword_1C9B70000, v12, v14, v13, buf, v15);

LABEL_13:
    goto LABEL_14;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localIdentifier2 = [(PHAsset *)self->_photosAsset localIdentifier];
    *buf = 138412290;
    v20 = localIdentifier2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Could not persist invalid compactSCSensitivityAnalysis to Photos", buf, 0xCu);
LABEL_14:
  }
}

void __111__MADServicePhotosVideoAsset_persistToPhotosWithCompactSCSensitivityAnalysis_screenTimeDeviceImageSensitivity___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978640] changeRequestForAsset:*(*(a1 + 32) + 88)];
  [v2 setCompactVideoSCSensitivityAnalysis:*(a1 + 40) videoSensitivityAnalysisVersion:1];
  [v2 setScreenTimeDeviceImageSensitivity:*(a1 + 48)];
}

@end