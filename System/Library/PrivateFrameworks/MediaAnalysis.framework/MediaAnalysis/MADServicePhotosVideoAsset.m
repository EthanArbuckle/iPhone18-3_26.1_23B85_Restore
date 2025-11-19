@interface MADServicePhotosVideoAsset
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillTime;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)trimTimeRange;
- (MADServicePhotosVideoAsset)initWithPhotosAsset:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5;
- (id)cachedSensitivity;
- (id)resources;
- (id)safetyScoresForLabels;
- (id)url;
- (id)videoURLWithAllowDownload:(BOOL)a3 progressHandler:(id)a4 cancelBlock:(id)a5;
- (int)_downloadAssetResourceURLWithCancelBlock:(id)a3 progressHandler:(id)a4;
- (signed)videoSensitivityAnalysisVersion;
- (void)persistToPhotosWithCompactSCSensitivityAnalysis:(int64_t)a3 screenTimeDeviceImageSensitivity:(signed __int16)a4;
@end

@implementation MADServicePhotosVideoAsset

- (MADServicePhotosVideoAsset)initWithPhotosAsset:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MADServicePhotosVideoAsset;
  v10 = [(MADServiceVideoAsset *)&v13 initWithClientBundleID:a4 clientTeamID:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photosAsset, a3);
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
  v2 = [(PHAsset *)self->_photosAsset mediaAnalysisProperties];
  v3 = [v2 videoSensitivityAnalysisVersion];

  return v3;
}

- (id)url
{
  v55 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(PHAsset *)self->_photosAsset localIdentifier];
    [(PHAsset *)self->_photosAsset vcp_typeDescription];
    v5 = v4 = self;
    v6 = [(PHAsset *)v4->_photosAsset mediaType];
    v7 = [(PHAsset *)v4->_photosAsset mediaSubtypes];
    v8 = [(PHAsset *)v4->_photosAsset pixelWidth];
    v9 = [(PHAsset *)v4->_photosAsset pixelHeight];
    *buf = 138413570;
    v46 = v3;
    v47 = 2112;
    *v48 = v5;
    *&v48[8] = 1024;
    *v49 = v6;
    *&v49[4] = 1024;
    v50 = v7;
    v51 = 1024;
    v52 = v8;
    v53 = 1024;
    v54 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selecting resource for Asset Type: %@ [%d/%d] Resolution: %dx%d", buf, 0x2Eu);

    self = v4;
  }

  v10 = [(MADServicePhotosVideoAsset *)self resources];
  v11 = [v10 vcp_movieResourcesSorted:{-[PHAsset vcp_hasAdjustments](self->_photosAsset, "vcp_hasAdjustments")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v11 reverseObjectEnumerator];
  v12 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v12)
  {
    v30 = 0;
    goto LABEL_30;
  }

  v13 = v12;
  v36 = v11;
  v37 = v10;
  v38 = self;
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
        v18 = [(PHAsset *)v38->_photosAsset localIdentifier];
        v19 = [v17 type];
        v20 = [v17 pixelWidth];
        v21 = [v17 pixelHeight];
        *buf = 138413058;
        v46 = v18;
        v47 = 1024;
        *v48 = v19;
        *&v48[4] = 1024;
        *&v48[6] = v20;
        *v49 = 1024;
        *&v49[2] = v21;
        _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_DEFAULT, "[%@] Evaluating movie resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
      }

      if ([v17 vcp_isLocallyAvailable])
      {
        v22 = [MEMORY[0x1E696AC08] defaultManager];
        v23 = [v17 privateFileURL];
        v24 = [v23 path];
        v25 = [v22 fileExistsAtPath:v24];

        v26 = MediaAnalysisLogLevel();
        if (v25)
        {
          if (v26 >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v31 = [(PHAsset *)v38->_photosAsset localIdentifier];
            v32 = [v17 type];
            v33 = [v17 pixelWidth];
            v34 = [v17 pixelHeight];
            *buf = 138413058;
            v46 = v31;
            v47 = 1024;
            *v48 = v32;
            *&v48[4] = 1024;
            *&v48[6] = v33;
            *v49 = 1024;
            *&v49[2] = v34;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selected resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
          }

          v30 = [v17 privateFileURL];
          goto LABEL_28;
        }

        if (v26 >= 5 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [(PHAsset *)v38->_photosAsset localIdentifier];
          *buf = 138412290;
          v46 = v27;
          v28 = v15;
          v29 = "[%@] Resource marked available, but file does not exist; skipping resource";
LABEL_20:
          _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);

          continue;
        }
      }

      else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(PHAsset *)v38->_photosAsset localIdentifier];
        *buf = 138412290;
        v46 = v27;
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

  v30 = 0;
LABEL_28:
  v11 = v36;
  v10 = v37;
LABEL_30:

  return v30;
}

- (int)_downloadAssetResourceURLWithCancelBlock:(id)a3 progressHandler:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MADServicePhotosVideoAsset_downloadAssetResource", "", buf, 2u);
  }

  v12 = [(MADServicePhotosVideoAsset *)self resources];
  v13 = [v12 vcp_movieResourcesSorted:{-[PHAsset vcp_hasAdjustments](self->_photosAsset, "vcp_hasAdjustments")}];
  if ([v13 count])
  {
    spid = v9;
    v35 = v9 - 1;
    v14 = [v12 vcp_smallMovieDerivativeResource];
    if (!v14)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(PHAsset *)self->_photosAsset localIdentifier];
        *buf = 138412290;
        v40 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No small video derivative, trying the original resource...", buf, 0xCu);
      }

      v14 = [v13 objectAtIndexedSubscript:0];
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      [(PHAsset *)self->_photosAsset localIdentifier];
      v16 = v36 = v13;
      v17 = v6;
      v18 = [v14 type];
      v19 = v7;
      v20 = [v14 pixelWidth];
      v21 = [v14 pixelHeight];
      *buf = 138413058;
      v40 = v16;
      v41 = 1024;
      v42 = v18;
      v6 = v17;
      v43 = 1024;
      v44 = v20;
      v7 = v19;
      v45 = 1024;
      v46 = v21;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Video resource to download (Type: %d Resolution: %dx%d)", buf, 0x1Eu);

      v13 = v36;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412290;
      v40 = v22;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Downloading video resource.", buf, 0xCu);
    }

    v37 = v7;
    v38 = 0;
    v23 = v6;
    v24 = [MEMORY[0x1E69786E8] vcp_requestFileURLForAssetResource:v14 withTaskID:0 toResourceURL:&v38 progressHandler:v7 cancel:v6];
    v25 = v38;
    v26 = v38;
    v27 = MediaAnalysisLogLevel();
    if (v26)
    {
      if (v27 >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(PHAsset *)self->_photosAsset localIdentifier];
        *buf = 138412290;
        v40 = v28;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Downloaded video resource", buf, 0xCu);
      }

      objc_storeStrong(&self->_downloadedVideoURL, v25);
    }

    else if (v27 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412546;
      v40 = v30;
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

    v6 = v23;
    v7 = v37;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412290;
      v40 = v29;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] No available video resource; skipping", buf, 0xCu);
    }

    v24 = -18;
  }

  return v24;
}

- (id)videoURLWithAllowDownload:(BOOL)a3 progressHandler:(id)a4 cancelBlock:(id)a5
{
  v6 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (self->_downloadedVideoURL)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PHAsset *)self->_photosAsset localIdentifier];
      v18 = 138412290;
      v19 = v10;
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
          v16 = [(PHAsset *)self->_photosAsset localIdentifier];
          v18 = 138412290;
          v19 = v16;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Use local video resource", &v18, 0xCu);

          downloadedVideoURL = v12;
        }
      }
    }

    else
    {
      if (v6)
      {
        [(MADServicePhotosVideoAsset *)self _downloadAssetResourceURLWithCancelBlock:v9 progressHandler:v8];
      }

      downloadedVideoURL = self->_downloadedVideoURL;
    }

    v11 = downloadedVideoURL;
  }

  return v11;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillTime
{
  v4 = [(PHAsset *)self->_photosAsset photoIrisProperties];
  if (v4)
  {
    v6 = v4;
    [v4 photoIrisStillDisplayTime];
    v4 = v6;
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
  v5 = [(PHAsset *)self->_photosAsset mediaAnalysisProperties];
  v6 = [v5 mediaAnalysisTimeStamp];
  v7 = [(PHAsset *)self->_photosAsset adjustmentVersion];
  if (![v6 isEqual:v7])
  {

    goto LABEL_10;
  }

  v8 = [v5 mediaAnalysisVersion];

  if (!v8)
  {
LABEL_10:
    v9 = MEMORY[0x1E6960C98];
    v10 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v10;
    *&retstr->var1.var1 = *(v9 + 32);
    goto LABEL_11;
  }

  if ([v5 mediaAnalysisVersion] != 75 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = [v5 mediaAnalysisVersion];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Using trim range from older analysis version (%d)", v12, 8u);
  }

  if (v5)
  {
    [v5 bestVideoTimeRange];
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
    v4 = [(PHAsset *)self->_photosAsset mediaAnalysisProperties];
    v5 = [v4 screenTimeDeviceImageSensitivity];

    if (v5 != -1)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
      goto LABEL_11;
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v3 = [(PHAsset *)self->_photosAsset localIdentifier];
    v8 = 138412290;
    v9 = v3;
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
      v3 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] scoresForLabels not available, asset needs processing for full analysis", buf, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
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
              [v5 setObject:v14 forKeyedSubscript:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    v4 = v15;
  }

  return v4;
}

- (void)persistToPhotosWithCompactSCSensitivityAnalysis:(int64_t)a3 screenTimeDeviceImageSensitivity:(signed __int16)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = [(PHAsset *)self->_photosAsset photoLibrary];
    v16 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __111__MADServicePhotosVideoAsset_persistToPhotosWithCompactSCSensitivityAnalysis_screenTimeDeviceImageSensitivity___block_invoke;
    v17[3] = &unk_1E83500A0;
    v17[4] = self;
    v17[5] = a3;
    v18 = a4;
    v8 = [v7 performChangesAndWait:v17 error:&v16];
    v9 = v16;
    v10 = MediaAnalysisLogLevel();
    if (v8)
    {
      if (v10 < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412546;
      v20 = v11;
      v21 = 2048;
      v22 = a3;
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

      v11 = [(PHAsset *)self->_photosAsset localIdentifier];
      *buf = 138412802;
      v20 = v11;
      v21 = 2048;
      v22 = a3;
      v23 = 2112;
      v24 = v9;
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
    v9 = [(PHAsset *)self->_photosAsset localIdentifier];
    *buf = 138412290;
    v20 = v9;
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