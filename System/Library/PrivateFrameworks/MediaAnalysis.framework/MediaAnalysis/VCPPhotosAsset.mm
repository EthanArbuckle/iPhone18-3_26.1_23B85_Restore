@interface VCPPhotosAsset
+ (id)assetWithPHAsset:(id)asset;
+ (id)assetWithPHAsset:(id)asset downloadedData:(id)data;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)slomoRange;
- (BOOL)isMovieResourceLocalAvailable;
- (CGSize)originalMovieSize;
- (NSArray)resources;
- (VCPPhotosAsset)initWithPHAsset:(id)asset downloadedData:(id)data;
- (__CVBuffer)imageWithPreferredDimension:(unint64_t)dimension orientation:(unsigned int *)orientation;
- (float)originalPhotoOffsetSeconds;
- (float)photoOffsetSeconds;
- (float)slowmoRate;
- (id)allScenes;
- (id)exif;
- (id)faces;
- (id)mainFileURL;
- (id)movie;
- (id)originalMovie;
- (id)scenes;
- (id)streamedMovie:(BOOL)movie;
@end

@implementation VCPPhotosAsset

- (VCPPhotosAsset)initWithPHAsset:(id)asset downloadedData:(id)data
{
  assetCopy = asset;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = VCPPhotosAsset;
  v9 = [(VCPPhotosAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(&v10->_downloadedData, data);
  }

  return v10;
}

+ (id)assetWithPHAsset:(id)asset downloadedData:(id)data
{
  assetCopy = asset;
  dataCopy = data;
  v7 = [objc_alloc(objc_opt_class()) initWithPHAsset:assetCopy downloadedData:dataCopy];

  return v7;
}

+ (id)assetWithPHAsset:(id)asset
{
  assetCopy = asset;
  v4 = [objc_opt_class() assetWithPHAsset:assetCopy downloadedData:0];

  return v4;
}

- (NSArray)resources
{
  cachedResources = self->_cachedResources;
  if (!cachedResources)
  {
    v4 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:self->_asset];
    v5 = self->_cachedResources;
    self->_cachedResources = v4;

    cachedResources = self->_cachedResources;
  }

  return cachedResources;
}

- (id)mainFileURL
{
  resources = [(VCPPhotosAsset *)self resources];
  vcp_originalResource = [resources vcp_originalResource];
  privateFileURL = [vcp_originalResource privateFileURL];

  return privateFileURL;
}

- (id)allScenes
{
  v10[1] = *MEMORY[0x1E69E9840];
  localIdentifier = [(PHAsset *)self->_asset localIdentifier];

  if (localIdentifier)
  {
    v4 = MEMORY[0x1E6978A30];
    v10[0] = self->_asset;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [v4 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v5];

    localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
    v8 = [v6 objectForKeyedSubscript:localIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)scenes
{
  v34[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_onceScenes)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cachedScenes = selfCopy->_cachedScenes;
    selfCopy->_cachedScenes = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    localIdentifier = [(PHAsset *)selfCopy->_asset localIdentifier];

    if (localIdentifier)
    {
      v7 = MEMORY[0x1E6978A30];
      v34[0] = selfCopy->_asset;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      v9 = [v7 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v8];

      localIdentifier2 = [(PHAsset *)selfCopy->_asset localIdentifier];
      v11 = [v9 objectForKeyedSubscript:localIdentifier2];
      [array addObjectsFromArray:v11];
    }

    if (array)
    {
      if ([array count] >= 0xB)
      {
        [array sortUsingComparator:&__block_literal_global_42];
        v12 = [array subarrayWithRange:{0, 10}];
        v13 = [v12 mutableCopy];

        array = v13;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = array;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
            v20 = [vcp_sharedTaxonomy mad_sceneNameFromExtendedSceneId:{objc_msgSend(v18, "extendedSceneIdentifier")}];

            if (v20)
            {
              v21 = MEMORY[0x1E696AD98];
              [v18 confidence];
              v22 = [v21 numberWithDouble:?];
              [(NSMutableDictionary *)selfCopy->_cachedScenes setObject:v22 forKeyedSubscript:v20];
            }

            else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              extendedSceneIdentifier = [v18 extendedSceneIdentifier];
              *buf = 134217984;
              v33 = extendedSceneIdentifier;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Scene identifier %llu has no name; ignoring", buf, 0xCu);
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }
    }

    else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier3 = [(PHAsset *)selfCopy->_asset localIdentifier];
      *buf = 138412290;
      v33 = localIdentifier3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "  [%@] No scene classification result fetched from pre analysis", buf, 0xCu);
    }

    selfCopy->_onceScenes = 1;
  }

  objc_sync_exit(selfCopy);

  v25 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:selfCopy->_cachedScenes];

  return v25;
}

uint64_t __24__VCPPhotosAsset_scenes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 <= v8)
  {
    [v4 confidence];
    v11 = v10;
    [v5 confidence];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)faces
{
  v10[4] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PHAsset *)self->_asset photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  v5 = *MEMORY[0x1E6978D70];
  v10[0] = *MEMORY[0x1E6978D80];
  v10[1] = v5;
  v6 = *MEMORY[0x1E6978D90];
  v10[2] = *MEMORY[0x1E6978D68];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  [librarySpecificFetchOptions setFetchPropertySets:v7];

  v8 = [MEMORY[0x1E69787D0] fetchFacesInAsset:self->_asset options:librarySpecificFetchOptions];

  return v8;
}

- (id)exif
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_onceExif)
  {
    resources = [(VCPPhotosAsset *)selfCopy resources];
    v4 = [resources vcp_localPhotoResourcesSorted:{-[PHAsset hasAdjustments](selfCopy->_asset, "hasAdjustments")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v4;
    reverseObjectEnumerator = [v4 reverseObjectEnumerator];
    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        if ([v9 vcp_isDecodable])
        {
          v10 = MEMORY[0x1E695DF20];
          privateFileURL = [v9 privateFileURL];
          v12 = [v10 vcp_exifFromImageURL:privateFileURL];
          cachedExif = selfCopy->_cachedExif;
          selfCopy->_cachedExif = v12;

          if (selfCopy->_cachedExif)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    selfCopy->_onceExif = 1;
  }

  objc_sync_exit(selfCopy);

  v14 = selfCopy->_cachedExif;

  return v14;
}

- (__CVBuffer)imageWithPreferredDimension:(unint64_t)dimension orientation:(unsigned int *)orientation
{
  v45 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  resources = [(VCPPhotosAsset *)self resources];
  v10 = [resources vcp_localPhotoResourcesSorted:{-[PHAsset hasAdjustments](self->_asset, "hasAdjustments")}];

  v11 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v11)
  {
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        if ([v14 vcp_fileSize] <= 0x800000 && objc_msgSend(v14, "vcp_isDecodable"))
        {
          [v14 vcp_size];
          if (v15 < v16)
          {
            v15 = v16;
          }

          if (v15 >= dimension)
          {
            v17 = array2;
          }

          else
          {
            v17 = array;
          }

          [v17 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v11);
  }

  v18 = +[VCPImageManager sharedImageManager];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = array2;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v20)
  {
    v21 = *v35;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = [v18 imageForResource:*(*(&v34 + 1) + 8 * j) pixelFormat:875704422 maxDimension:dimension orientation:orientation];
        if (v23)
        {
          reverseObjectEnumerator = v19;
          goto LABEL_35;
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  reverseObjectEnumerator = [array reverseObjectEnumerator];
  v25 = [reverseObjectEnumerator countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v25)
  {
    obj = reverseObjectEnumerator;
    v26 = *v31;
LABEL_26:
    v27 = 0;
    while (1)
    {
      if (*v31 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v23 = [v18 imageForResource:*(*(&v30 + 1) + 8 * v27) pixelFormat:875704422 maxDimension:dimension orientation:orientation];
      if (v23)
      {
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v25)
        {
          goto LABEL_26;
        }

        v23 = 0;
        break;
      }
    }

    reverseObjectEnumerator = obj;
  }

  else
  {
    v23 = 0;
  }

LABEL_35:

  return v23;
}

- (float)photoOffsetSeconds
{
  Seconds = 0.0;
  if ([(VCPAsset *)self isLivePhoto])
  {
    photoIrisProperties = [(PHAsset *)self->_asset photoIrisProperties];
    v5 = photoIrisProperties;
    if (photoIrisProperties)
    {
      [photoIrisProperties photoIrisStillDisplayTime];
      Seconds = CMTimeGetSeconds(&time);
    }

    else
    {
      v8.receiver = self;
      v8.super_class = VCPPhotosAsset;
      [(VCPAsset *)&v8 photoOffsetSeconds];
      Seconds = v6;
    }
  }

  return Seconds;
}

- (float)originalPhotoOffsetSeconds
{
  v3 = 0.0;
  if (![(VCPAsset *)self isLivePhoto])
  {
    return v3;
  }

  if ([(PHAsset *)self->_asset hasAdjustments])
  {
    resources = [(VCPPhotosAsset *)self resources];
    vcp_originalVideoResource = [resources vcp_originalVideoResource];

    if (vcp_originalVideoResource && [vcp_originalVideoResource isLocallyAvailable])
    {
      v6 = MEMORY[0x1E6988168];
      privateFileURL = [vcp_originalVideoResource privateFileURL];
      v8 = [v6 assetWithURL:privateFileURL];

      if (v8)
      {
        [v8 duration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      Seconds = CMTimeGetSeconds(&time);
      movie = [(VCPPhotosAsset *)self movie];
      v12 = movie;
      if (movie)
      {
        [movie duration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v13 = vabdd_f64(Seconds, CMTimeGetSeconds(&time));

      if (v13 < 0.00999999978)
      {
        memset(&time, 0, sizeof(time));
        if (v8)
        {
          [v8 vcp_livePhotoStillDisplayTime];
          if (time.flags)
          {
            v15 = time;
            v3 = CMTimeGetSeconds(&v15);

            goto LABEL_19;
          }
        }
      }
    }

    [(VCPPhotosAsset *)self photoOffsetSeconds];
    v3 = v14;
LABEL_19:

    return v3;
  }

  [(VCPPhotosAsset *)self photoOffsetSeconds];
  return result;
}

- (float)slowmoRate
{
  resources = [(VCPPhotosAsset *)self resources];
  [resources vcp_getFpsRate];
  v4 = v3;

  return v4;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)slomoRange
{
  v21 = *MEMORY[0x1E69E9840];
  result = [(VCPAsset *)self isSlowmo];
  if (result)
  {
    resources = [(VCPPhotosAsset *)self resources];
    vcp_adjustmentsResource = [resources vcp_adjustmentsResource];
    privateFileURL = [vcp_adjustmentsResource privateFileURL];

    if (privateFileURL)
    {
      v9 = [objc_alloc(MEMORY[0x1E69C0908]) initWithURL:privateFileURL];
      v10 = v9;
      if (v9 && ([v9 hasSlowMotionAdjustments] & 1) != 0)
      {
        [v10 slowMotionTimeRange];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          localIdentifier = [(VCPPhotosAsset *)self localIdentifier];
          v19 = 138412290;
          v20 = localIdentifier;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis][%@] No slow-mo timestamp mapping file found", &v19, 0xCu);
        }

        v14 = MEMORY[0x1E6960C98];
        v15 = *(MEMORY[0x1E6960C98] + 16);
        *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
        *&retstr->var0.var3 = v15;
        *&retstr->var1.var1 = *(v14 + 32);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        localIdentifier2 = [(VCPPhotosAsset *)self localIdentifier];
        v19 = 138412290;
        v20 = localIdentifier2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MediaAnalysis][%@] No slow-mo timestamp mapping file URL found", &v19, 0xCu);
      }

      v17 = MEMORY[0x1E6960C98];
      v18 = *(MEMORY[0x1E6960C98] + 16);
      *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
      *&retstr->var0.var3 = v18;
      *&retstr->var1.var1 = *(v17 + 32);
    }
  }

  else
  {
    v11 = MEMORY[0x1E6960C98];
    v12 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v12;
    *&retstr->var1.var1 = *(v11 + 32);
  }

  return result;
}

- (id)movie
{
  resources = [(VCPPhotosAsset *)self resources];
  if ([(PHAsset *)self->_asset vcp_isVideoSlowmo])
  {
    vcp_originalResource = [resources vcp_originalResource];
    if (-[PHAsset vcp_hasAdjustments](self->_asset, "vcp_hasAdjustments") || ![vcp_originalResource vcp_isLocallyAvailable] || (objc_msgSend(vcp_originalResource, "vcp_avAsset"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      vcp_hasAdjustments = [(PHAsset *)self->_asset vcp_hasAdjustments];
      if ([resources vcp_hasLocalSlowmo:vcp_hasAdjustments] && (objc_msgSend(resources, "vcp_avAsset:", vcp_hasAdjustments), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        vcp_adjustmentsResource = [resources vcp_adjustmentsResource];
        [(PHAsset *)self->_asset duration];
        v5 = [v7 vcp_assetWithoutAdjustments:vcp_adjustmentsResource duration:?];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = [resources vcp_avAsset:{-[PHAsset hasAdjustments](self->_asset, "hasAdjustments")}];
  }

  return v5;
}

- (BOOL)isMovieResourceLocalAvailable
{
  vcp_hasAdjustments = [(PHAsset *)self->_asset vcp_hasAdjustments];
  resources = [(VCPPhotosAsset *)self resources];
  v5 = [resources vcp_localMovieResourcesSorted:vcp_hasAdjustments];
  v6 = [v5 count] != 0;

  return v6;
}

- (id)streamedMovie:(BOOL)movie
{
  v15 = *MEMORY[0x1E69E9840];
  resources = [(VCPPhotosAsset *)self resources];
  vcp_smallMovieDerivativeResource = [resources vcp_smallMovieDerivativeResource];

  if (vcp_smallMovieDerivativeResource)
  {
    if (movie || !_os_feature_enabled_impl())
    {
      v10 = +[VCPDownloadManager sharedManager];
      v8 = [v10 requestDownloadOfResource:vcp_smallMovieDerivativeResource];

      if (!v8)
      {
LABEL_9:
        v9 = 0;
LABEL_12:

        goto LABEL_17;
      }
    }

    else
    {
      if (!self->_downloadedData && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier = [(PHAsset *)self->_asset localIdentifier];
        v13 = 138412290;
        v14 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Asset has not been downloaded.", &v13, 0xCu);
      }

      v8 = self->_downloadedData;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v9 = [VCPInMemoryAVAsset assetWithData:v8];
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
    v13 = 138412290;
    v14 = localIdentifier2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Asset has no small video derivative; cannot download", &v13, 0xCu);
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)originalMovie
{
  v2 = [MEMORY[0x1E69786D0] vcp_allResourcesForAsset:self->_asset];
  vcp_originalVideoResource = [v2 vcp_originalVideoResource];

  if ([vcp_originalVideoResource vcp_isLocallyAvailable])
  {
    vcp_avAsset = [vcp_originalVideoResource vcp_avAsset];
  }

  else
  {
    vcp_avAsset = 0;
  }

  return vcp_avAsset;
}

- (CGSize)originalMovieSize
{
  v2 = [MEMORY[0x1E69786D0] vcp_allResourcesForAsset:self->_asset];
  vcp_originalVideoResource = [v2 vcp_originalVideoResource];

  [vcp_originalVideoResource vcp_size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end