@interface VCPPhotosAsset
+ (id)assetWithPHAsset:(id)a3;
+ (id)assetWithPHAsset:(id)a3 downloadedData:(id)a4;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)slomoRange;
- (BOOL)isMovieResourceLocalAvailable;
- (CGSize)originalMovieSize;
- (NSArray)resources;
- (VCPPhotosAsset)initWithPHAsset:(id)a3 downloadedData:(id)a4;
- (__CVBuffer)imageWithPreferredDimension:(unint64_t)a3 orientation:(unsigned int *)a4;
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
- (id)streamedMovie:(BOOL)a3;
@end

@implementation VCPPhotosAsset

- (VCPPhotosAsset)initWithPHAsset:(id)a3 downloadedData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VCPPhotosAsset;
  v9 = [(VCPPhotosAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    objc_storeStrong(&v10->_downloadedData, a4);
  }

  return v10;
}

+ (id)assetWithPHAsset:(id)a3 downloadedData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithPHAsset:v5 downloadedData:v6];

  return v7;
}

+ (id)assetWithPHAsset:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() assetWithPHAsset:v3 downloadedData:0];

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
  v2 = [(VCPPhotosAsset *)self resources];
  v3 = [v2 vcp_originalResource];
  v4 = [v3 privateFileURL];

  return v4;
}

- (id)allScenes
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PHAsset *)self->_asset localIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E6978A30];
    v10[0] = self->_asset;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [v4 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v5];

    v7 = [(PHAsset *)self->_asset localIdentifier];
    v8 = [v6 objectForKeyedSubscript:v7];
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
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_onceScenes)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    cachedScenes = v2->_cachedScenes;
    v2->_cachedScenes = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [(PHAsset *)v2->_asset localIdentifier];

    if (v6)
    {
      v7 = MEMORY[0x1E6978A30];
      v34[0] = v2->_asset;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      v9 = [v7 fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v8];

      v10 = [(PHAsset *)v2->_asset localIdentifier];
      v11 = [v9 objectForKeyedSubscript:v10];
      [v5 addObjectsFromArray:v11];
    }

    if (v5)
    {
      if ([v5 count] >= 0xB)
      {
        [v5 sortUsingComparator:&__block_literal_global_42];
        v12 = [v5 subarrayWithRange:{0, 10}];
        v13 = [v12 mutableCopy];

        v5 = v13;
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v5;
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
            v19 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
            v20 = [v19 mad_sceneNameFromExtendedSceneId:{objc_msgSend(v18, "extendedSceneIdentifier")}];

            if (v20)
            {
              v21 = MEMORY[0x1E696AD98];
              [v18 confidence];
              v22 = [v21 numberWithDouble:?];
              [(NSMutableDictionary *)v2->_cachedScenes setObject:v22 forKeyedSubscript:v20];
            }

            else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v18 extendedSceneIdentifier];
              *buf = 134217984;
              v33 = v23;
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
      v24 = [(PHAsset *)v2->_asset localIdentifier];
      *buf = 138412290;
      v33 = v24;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "  [%@] No scene classification result fetched from pre analysis", buf, 0xCu);
    }

    v2->_onceScenes = 1;
  }

  objc_sync_exit(v2);

  v25 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v2->_cachedScenes];

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
  v3 = [(PHAsset *)self->_asset photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  [v4 setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [v4 setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  v5 = *MEMORY[0x1E6978D70];
  v10[0] = *MEMORY[0x1E6978D80];
  v10[1] = v5;
  v6 = *MEMORY[0x1E6978D90];
  v10[2] = *MEMORY[0x1E6978D68];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  [v4 setFetchPropertySets:v7];

  v8 = [MEMORY[0x1E69787D0] fetchFacesInAsset:self->_asset options:v4];

  return v8;
}

- (id)exif
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_onceExif)
  {
    v3 = [(VCPPhotosAsset *)v2 resources];
    v4 = [v3 vcp_localPhotoResourcesSorted:{-[PHAsset hasAdjustments](v2->_asset, "hasAdjustments")}];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v4;
    v5 = [v4 reverseObjectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        if ([v9 vcp_isDecodable])
        {
          v10 = MEMORY[0x1E695DF20];
          v11 = [v9 privateFileURL];
          v12 = [v10 vcp_exifFromImageURL:v11];
          cachedExif = v2->_cachedExif;
          v2->_cachedExif = v12;

          if (v2->_cachedExif)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v2->_onceExif = 1;
  }

  objc_sync_exit(v2);

  v14 = v2->_cachedExif;

  return v14;
}

- (__CVBuffer)imageWithPreferredDimension:(unint64_t)a3 orientation:(unsigned int *)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [(VCPPhotosAsset *)self resources];
  v10 = [v9 vcp_localPhotoResourcesSorted:{-[PHAsset hasAdjustments](self->_asset, "hasAdjustments")}];

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

          if (v15 >= a3)
          {
            v17 = v8;
          }

          else
          {
            v17 = v7;
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
  v19 = v8;
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

        v23 = [v18 imageForResource:*(*(&v34 + 1) + 8 * j) pixelFormat:875704422 maxDimension:a3 orientation:a4];
        if (v23)
        {
          v24 = v19;
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
  v24 = [v7 reverseObjectEnumerator];
  v25 = [v24 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v25)
  {
    obj = v24;
    v26 = *v31;
LABEL_26:
    v27 = 0;
    while (1)
    {
      if (*v31 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v23 = [v18 imageForResource:*(*(&v30 + 1) + 8 * v27) pixelFormat:875704422 maxDimension:a3 orientation:a4];
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

    v24 = obj;
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
    v4 = [(PHAsset *)self->_asset photoIrisProperties];
    v5 = v4;
    if (v4)
    {
      [v4 photoIrisStillDisplayTime];
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
    v4 = [(VCPPhotosAsset *)self resources];
    v5 = [v4 vcp_originalVideoResource];

    if (v5 && [v5 isLocallyAvailable])
    {
      v6 = MEMORY[0x1E6988168];
      v7 = [v5 privateFileURL];
      v8 = [v6 assetWithURL:v7];

      if (v8)
      {
        [v8 duration];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      Seconds = CMTimeGetSeconds(&time);
      v11 = [(VCPPhotosAsset *)self movie];
      v12 = v11;
      if (v11)
      {
        [v11 duration];
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
  v2 = [(VCPPhotosAsset *)self resources];
  [v2 vcp_getFpsRate];
  v4 = v3;

  return v4;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)slomoRange
{
  v21 = *MEMORY[0x1E69E9840];
  result = [(VCPAsset *)self isSlowmo];
  if (result)
  {
    v6 = [(VCPPhotosAsset *)self resources];
    v7 = [v6 vcp_adjustmentsResource];
    v8 = [v7 privateFileURL];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E69C0908]) initWithURL:v8];
      v10 = v9;
      if (v9 && ([v9 hasSlowMotionAdjustments] & 1) != 0)
      {
        [v10 slowMotionTimeRange];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v13 = [(VCPPhotosAsset *)self localIdentifier];
          v19 = 138412290;
          v20 = v13;
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
        v16 = [(VCPPhotosAsset *)self localIdentifier];
        v19 = 138412290;
        v20 = v16;
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
  v3 = [(VCPPhotosAsset *)self resources];
  if ([(PHAsset *)self->_asset vcp_isVideoSlowmo])
  {
    v4 = [v3 vcp_originalResource];
    if (-[PHAsset vcp_hasAdjustments](self->_asset, "vcp_hasAdjustments") || ![v4 vcp_isLocallyAvailable] || (objc_msgSend(v4, "vcp_avAsset"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [(PHAsset *)self->_asset vcp_hasAdjustments];
      if ([v3 vcp_hasLocalSlowmo:v6] && (objc_msgSend(v3, "vcp_avAsset:", v6), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = [v3 vcp_adjustmentsResource];
        [(PHAsset *)self->_asset duration];
        v5 = [v7 vcp_assetWithoutAdjustments:v8 duration:?];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = [v3 vcp_avAsset:{-[PHAsset hasAdjustments](self->_asset, "hasAdjustments")}];
  }

  return v5;
}

- (BOOL)isMovieResourceLocalAvailable
{
  v3 = [(PHAsset *)self->_asset vcp_hasAdjustments];
  v4 = [(VCPPhotosAsset *)self resources];
  v5 = [v4 vcp_localMovieResourcesSorted:v3];
  v6 = [v5 count] != 0;

  return v6;
}

- (id)streamedMovie:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(VCPPhotosAsset *)self resources];
  v6 = [v5 vcp_smallMovieDerivativeResource];

  if (v6)
  {
    if (a3 || !_os_feature_enabled_impl())
    {
      v10 = +[VCPDownloadManager sharedManager];
      v8 = [v10 requestDownloadOfResource:v6];

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
        v7 = [(PHAsset *)self->_asset localIdentifier];
        v13 = 138412290;
        v14 = v7;
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
    v11 = [(PHAsset *)self->_asset localIdentifier];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Asset has no small video derivative; cannot download", &v13, 0xCu);
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)originalMovie
{
  v2 = [MEMORY[0x1E69786D0] vcp_allResourcesForAsset:self->_asset];
  v3 = [v2 vcp_originalVideoResource];

  if ([v3 vcp_isLocallyAvailable])
  {
    v4 = [v3 vcp_avAsset];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)originalMovieSize
{
  v2 = [MEMORY[0x1E69786D0] vcp_allResourcesForAsset:self->_asset];
  v3 = [v2 vcp_originalVideoResource];

  [v3 vcp_size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end