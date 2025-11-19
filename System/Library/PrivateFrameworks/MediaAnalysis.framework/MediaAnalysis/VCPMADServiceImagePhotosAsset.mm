@interface VCPMADServiceImagePhotosAsset
- (BOOL)fromGenerativePlayground;
- (BOOL)hasCachedParseData;
- (BOOL)hasValidSceneProcessing;
- (CGSize)resolution;
- (VCPMADServiceImagePhotosAsset)initWithPhotosAsset:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5;
- (VCPMADServiceImagePhotosAsset)initWithPhotosAsset:(id)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 clientBundleID:(id)a6 clientTeamID:(id)a7;
- (id).cxx_construct;
- (id)barcodeObservations;
- (id)cachedParseData;
- (id)documentObservations;
- (id)facesWithDetectionTypes:(id)a3;
- (id)isSensitive;
- (id)nsfwClassifications;
- (id)resources;
- (id)scenenetClassifications;
- (id)thumbnailResource;
- (int)loadHighResPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4;
- (int)loadLowResPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4 error:(id *)a5;
- (int)loadPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4 error:(id *)a5;
- (void)persistOCRMRC;
- (void)setBarcodeObservations:(id)a3;
- (void)setCachedParseData:(id)a3 overwriteExisting:(BOOL)a4;
- (void)setDocumentObservations:(id)a3;
@end

@implementation VCPMADServiceImagePhotosAsset

- (VCPMADServiceImagePhotosAsset)initWithPhotosAsset:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = VCPMADServiceImagePhotosAsset;
  v10 = [(VCPMADServiceImageAsset *)&v13 initWithClientBundleID:a4 clientTeamID:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_asset, a3);
  }

  return v11;
}

- (VCPMADServiceImagePhotosAsset)initWithPhotosAsset:(id)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 clientBundleID:(id)a6 clientTeamID:(id)a7
{
  v13 = a3;
  v19.receiver = self;
  v19.super_class = VCPMADServiceImagePhotosAsset;
  v14 = [(VCPMADServiceImageAsset *)&v19 initWithClientBundleID:a6 clientTeamID:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, a3);
    if (a4)
    {
      v16 = CFRetain(a4);
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;
    CF<__CVBuffer *>::operator=(&v15->_pixelBuffer.value_, &v18);
    CF<__CVBuffer *>::~CF(&v18);
    v15->_orientation = a5;
  }

  return v15;
}

- (id)facesWithDetectionTypes:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PHAsset *)self->_asset faceAnalysisVersion]|| ([(PHAsset *)self->_asset localIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if ([(PHAsset *)self->_asset vcp_needsFaceProcessing])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v5 = [(PHAsset *)self->_asset localIdentifier];
        v26 = 138412290;
        v27 = v5;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Faces][%@] Asset not processed or outdated", &v26, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v7 = [(PHAsset *)self->_asset localIdentifier];
      v26 = 138412290;
      v27 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Faces][%@] Re-fetching asset ...", &v26, 0xCu);
    }

    v8 = MEMORY[0x1E6978628];
    v9 = [(PHAsset *)self->_asset photoLibrary];
    v10 = [v8 vcp_fetchOptionsForLibrary:v9 forTaskID:3];

    v11 = MEMORY[0x1E6978628];
    v12 = [(PHAsset *)self->_asset localIdentifier];
    v30[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v14 = [v11 fetchAssetsWithLocalIdentifiers:v13 options:v10];
    v15 = [v14 firstObject];

    if (!v15)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = [(PHAsset *)self->_asset localIdentifier];
        v26 = 138412290;
        v27 = v17;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Faces][%@] Failed to fetch asset to check faceAnalysisVersion", &v26, 0xCu);
      }

      goto LABEL_18;
    }

    if ([v15 vcp_needsFaceProcessing])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v16 = [(PHAsset *)self->_asset localIdentifier];
        v26 = 138412290;
        v27 = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Faces][%@] Asset (re-fetched) not processed or outdated", &v26, 0xCu);
      }

LABEL_18:

LABEL_19:
      v18 = 0;
      goto LABEL_33;
    }
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v19 = [(PHAsset *)self->_asset localIdentifier];
    v26 = 138412290;
    v27 = v19;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Faces][%@] Loading existing results from Photos", &v26, 0xCu);
  }

  v20 = [(PHAsset *)self->_asset photoLibrary];
  v21 = [v20 librarySpecificFetchOptions];

  if (v4)
  {
    [v21 setIncludedDetectionTypes:v4];
  }

  v22 = [MEMORY[0x1E69787D0] fetchFacesInAsset:self->_asset options:v21];
  v23 = [v22 count];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v24 = [(PHAsset *)self->_asset localIdentifier];
    v26 = 138412546;
    v27 = v24;
    v28 = 1024;
    v29 = v23;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Faces][%@] Loaded %d faces", &v26, 0x12u);
  }

  if (v23)
  {
    v18 = [v22 fetchedObjects];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

LABEL_33:

  return v18;
}

- (id)nsfwClassifications
{
  v21 = *MEMORY[0x1E69E9840];
  [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
  v3 = [(PHAsset *)self->_asset vcp_needSceneProcessing];
  v4 = MediaAnalysisLogLevel();
  if (v3)
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v5 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[NSFW][%@] Asset not processed or outdated", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v7 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[NSFW][%@] Loading existing results from Photos", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(PHAsset *)self->_asset sceneClassifications];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 extendedSceneIdentifier] > 0x7FFFF8F5 && objc_msgSend(v12, "extendedSceneIdentifier") < 0x7FFFF900 || objc_msgSend(v12, "extendedSceneIdentifier") > 0x7FFFF6FD && objc_msgSend(v12, "extendedSceneIdentifier") < 0x7FFFF700)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (id)scenenetClassifications
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(PHAsset *)self->_asset vcp_needSceneProcessing];
  v4 = MediaAnalysisLogLevel();
  if (v3)
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v5 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[SceneNet][%@] Asset not processed or outdated", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v7 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[SceneNet][%@] Loading existing results from Photos", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [(PHAsset *)self->_asset sceneClassifications];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v11 = *v22;
      *&v10 = 134217984;
      v20 = v10;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
          v15 = [v14 nodeForExtendedSceneClassId:{objc_msgSend(v13, "extendedSceneIdentifier")}];

          if (!v15 || ([v15 name], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v13 extendedSceneIdentifier];
              *buf = v20;
              v27 = v18;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[SceneNet] No scene label name for scene id %llu", buf, 0xCu);
            }
          }

          else
          {
            [v6 addObject:v13];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (id)resources
{
  resources = self->_resources;
  if (!resources)
  {
    v4 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:self->_asset];
    v5 = self->_resources;
    self->_resources = v4;

    resources = self->_resources;
  }

  return resources;
}

- (CGSize)resolution
{
  v3 = [(PHAsset *)self->_asset pixelWidth];
  v4 = [(PHAsset *)self->_asset pixelHeight];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (id)isSensitive
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(VCPMADServiceImagePhotosAsset *)self nsfwClassifications];
  v4 = v3;
  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v6)
    {
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          if ([v9 extendedSceneIdentifier] == 2147481854)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v12 = [(PHAsset *)self->_asset localIdentifier];
              [v9 confidence];
              *buf = 138412546;
              v24 = v12;
              v25 = 2048;
              v26 = v13;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible Confidence: %0.3f", buf, 0x16u);
            }

            v14 = MEMORY[0x1E696AD98];
            v15 = MEMORY[0x1E69CA710];
            v16 = VCPSpecialLabelFromExtendedSceneClassificationID([v9 extendedSceneIdentifier]);
            [v9 confidence];
            v11 = [v14 numberWithBool:{objc_msgSend(v15, "isImageSensitiveForLabel:confidenceScore:classificationMode:", v16, 2)}];

            goto LABEL_22;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v10 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible Confidence: 0.0", buf, 0xCu);
    }

    v11 = MEMORY[0x1E695E110];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v17 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible Confidence: Unknown", buf, 0xCu);
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (int)loadPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4 error:(id *)a5
{
  v90[1] = *MEMORY[0x1E69E9840];
  value = self->_pixelBuffer.value_;
  if (value)
  {
LABEL_2:
    v7 = a5;
    value = CFRetain(value);
    a5 = v7;
LABEL_3:
    *a3 = value;
    *a4 = self->_orientation;
    result = 0;
    if (a5)
    {
      *a5 = 0;
    }

    return result;
  }

  v9 = MEMORY[0x1E696A768];
  v10 = MEMORY[0x1E696A578];
  v71 = a5;
  if (a5)
  {
    v11 = MEMORY[0x1E696ABC0];
    v89 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelBuffer_NormalRes_NoResourcesAreLocal"];
    v90[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    *v71 = [v11 errorWithDomain:*v9 code:-18 userInfo:v13];
  }

  v14 = VCPSignPostLog();
  spid = os_signpost_id_generate(v14);

  v15 = VCPSignPostLog();
  v16 = v15;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v17 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = v17;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(PHAsset *)self->_asset localIdentifier];
    v19 = [(PHAsset *)self->_asset vcp_typeDescription];
    v20 = [(PHAsset *)self->_asset mediaType];
    v21 = [(PHAsset *)self->_asset mediaSubtypes];
    v22 = [(PHAsset *)self->_asset pixelWidth];
    v23 = [(PHAsset *)self->_asset pixelHeight];
    *buf = 138413570;
    *&buf[4] = v18;
    v82 = 2112;
    *v83 = v19;
    *&v83[8] = 1024;
    *v84 = v20;
    *&v84[4] = 1024;
    *v85 = v21;
    *&v85[4] = 1024;
    v86 = v22;
    v87 = 1024;
    v88 = v23;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selecting resource for Asset Type: %@ [%d/%d] Resolution: %dx%d", buf, 0x2Eu);

    v10 = MEMORY[0x1E696A578];
  }

  v24 = [(VCPMADServiceImagePhotosAsset *)self resources];
  v25 = [v24 vcp_highResImageResourcesForAsset:self->_asset];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v25;
  v26 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (!v26)
  {
    goto LABEL_61;
  }

  v72 = *v75;
  v69 = *MEMORY[0x1E6982E58];
  v66 = *MEMORY[0x1E6982E00];
  v65 = *MEMORY[0x1E6982E10];
  v62 = *MEMORY[0x1E6982F28];
  v67 = *v9;
  v68 = *v10;
  while (2)
  {
    v73 = v26;
    for (i = 0; i != v73; ++i)
    {
      if (*v75 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v74 + 1) + 8 * i);
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(PHAsset *)self->_asset localIdentifier];
        v30 = [v28 type];
        v31 = [v28 pixelWidth];
        v32 = [v28 pixelHeight];
        *buf = 138413058;
        *&buf[4] = v29;
        v82 = 1024;
        *v83 = v30;
        *&v83[4] = 1024;
        *&v83[6] = v31;
        *v84 = 1024;
        *&v84[2] = v32;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Evaluating resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
      }

      if (([v28 vcp_isLocallyAvailable] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v42 = [(PHAsset *)self->_asset localIdentifier];
          *buf = 138412290;
          *&buf[4] = v42;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Resource not locally available; skipping resource", buf, 0xCu);
        }

        continue;
      }

      v33 = [v28 vcp_uniformTypeIdentifier];
      if (([v33 conformsToType:v69] & 1) == 0 && (objc_msgSend(v33, "conformsToType:", v66) & 1) == 0 && (objc_msgSend(v33, "conformsToType:", v65) & 1) == 0 && (objc_msgSend(v33, "conformsToType:", v62) & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v49 = [(PHAsset *)self->_asset localIdentifier];
          v50 = [v33 identifier];
          *buf = 138412546;
          *&buf[4] = v49;
          v82 = 2112;
          *v83 = v50;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Purging resource cache to load uncommon resource (%@)", buf, 0x16u);
        }

        goto LABEL_30;
      }

      v34 = [v28 pixelWidth];
      if (([v28 pixelHeight] * v34) >= 0xCCA6CD)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(PHAsset *)self->_asset localIdentifier];
          v36 = [v28 pixelWidth];
          v37 = [v28 pixelHeight];
          *buf = 138412802;
          *&buf[4] = v35;
          v82 = 1024;
          *v83 = v36;
          *&v83[4] = 1024;
          *&v83[6] = v37;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Purging resource cache to load large resource (%dx%d)", buf, 0x18u);
        }

LABEL_30:
        v38 = +[VCPMADResourceManager sharedManager];
        [v38 purgeInactiveResources];
      }

      v39 = [(PHAsset *)self->_asset vcp_ocrMajorDimensionForResource:v28];
      v40 = +[VCPImageManager sharedImageManager];
      v41 = [v28 privateFileURL];
      if (v39)
      {
        *buf = [v40 pixelBufferWithFormat:875704422 andMaxDimension:v39 fromImageURL:v41 orientation:&self->_orientation];
      }

      else
      {
        *buf = [v40 pixelBufferWithFormat:875704422 fromImageURL:v41 flushCache:1 orientation:&self->_orientation];
      }

      CF<__CVBuffer *>::operator=(&self->_pixelBuffer.value_, buf);
      CF<__CVBuffer *>::~CF(buf);

      if (!self->_orientation)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v43 = [(PHAsset *)self->_asset localIdentifier];
          *buf = 138412290;
          *&buf[4] = v43;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Failed to load orientation", buf, 0xCu);
        }

        self->_orientation = 1;
      }

      if (self->_pixelBuffer.value_)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v51 = [(PHAsset *)self->_asset localIdentifier];
          v52 = [v28 type];
          Width = CVPixelBufferGetWidth(self->_pixelBuffer.value_);
          Height = CVPixelBufferGetHeight(self->_pixelBuffer.value_);
          orientation = self->_orientation;
          *buf = 138413314;
          *&buf[4] = v51;
          v82 = 1024;
          *v83 = v52;
          *&v83[4] = 1024;
          *&v83[6] = Width;
          *v84 = 1024;
          *&v84[2] = Height;
          *v85 = 1024;
          *&v85[2] = orientation;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Loaded resource (Type: %d Actual Resolution: %dx%d, orientation %d)", buf, 0x24u);
        }

        goto LABEL_61;
      }

      if (v71)
      {
        v44 = MEMORY[0x1E696ABC0];
        v78 = v68;
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelBuffer_NormalRes_SomeResourcesAreLocal"];
        v79 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        *v71 = [v44 errorWithDomain:v67 code:-18 userInfo:v46];
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = [(PHAsset *)self->_asset localIdentifier];
        v48 = [v28 type];
        *buf = 138412546;
        *&buf[4] = v47;
        v82 = 1024;
        *v83 = v48;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to load resource (Type: %d)", buf, 0x12u);
      }
    }

    v26 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_61:

  v56 = VCPSignPostLog();
  v57 = v56;
  if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    v58 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = v58;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v57, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (self->_pixelBuffer.value_)
  {

    value = self->_pixelBuffer.value_;
    a5 = v71;
    if (!value)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v59 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    *&buf[4] = v59;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to find/decode high-res image resource", buf, 0xCu);
  }

  return -18;
}

- (int)loadLowResPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4 error:(id *)a5
{
  v60[1] = *MEMORY[0x1E69E9840];
  value = self->_lowResPixelBuffer.value_;
  if (value)
  {
LABEL_37:
    value = CFRetain(value);
LABEL_38:
    *a3 = value;
    *a4 = self->_lowResOrientation;
    result = 0;
    if (a5)
    {
      *a5 = 0;
    }

    return result;
  }

  if (a5)
  {
    v9 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelBuffer_LowRes_ThumbnailNotLocal"];
    v60[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    *a5 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v11];
  }

  v12 = VCPSignPostLog();
  spid = os_signpost_id_generate(v12);

  v13 = VCPSignPostLog();
  v14 = v13;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = v15;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v46 = [(PHAsset *)self->_asset localIdentifier];
    v16 = [(PHAsset *)self->_asset vcp_typeDescription];
    v17 = [(PHAsset *)self->_asset mediaType];
    v18 = [(PHAsset *)self->_asset mediaSubtypes];
    v19 = [(PHAsset *)self->_asset pixelWidth];
    v20 = [(PHAsset *)self->_asset pixelHeight];
    *buf = 138413570;
    *&buf[4] = v46;
    v52 = 2112;
    *v53 = v16;
    *&v53[8] = 1024;
    *v54 = v17;
    *&v54[4] = 1024;
    *v55 = v18;
    *&v55[4] = 1024;
    v56 = v19;
    v57 = 1024;
    v58 = v20;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selecting resource for Asset Type: %@ [%d/%d] Resolution: %dx%d", buf, 0x2Eu);
  }

  v21 = [(VCPMADServiceImagePhotosAsset *)self resources];
  v22 = [v21 vcp_thumbnailResource];

  if ([v22 vcp_isLocallyAvailable])
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(PHAsset *)self->_asset localIdentifier];
      v24 = [v22 type];
      v25 = [v22 pixelWidth];
      v26 = [v22 pixelHeight];
      *buf = 138413058;
      *&buf[4] = v23;
      v52 = 1024;
      *v53 = v24;
      *&v53[4] = 1024;
      *&v53[6] = v25;
      *v54 = 1024;
      *&v54[2] = v26;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Evaluating resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
    }

    v27 = +[VCPImageManager sharedImageManager];
    v28 = [v22 privateFileURL];
    *buf = [v27 pixelBufferWithFormat:875704422 fromImageURL:v28 flushCache:1 orientation:&self->_lowResOrientation];
    CF<__CVBuffer *>::operator=(&self->_lowResPixelBuffer.value_, buf);
    CF<__CVBuffer *>::~CF(buf);

    if (!self->_lowResOrientation)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Failed to load orientation", buf, 0xCu);
      }

      self->_lowResOrientation = 1;
    }

    if (self->_lowResPixelBuffer.value_)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(PHAsset *)self->_asset localIdentifier];
        v31 = [v22 type];
        Width = CVPixelBufferGetWidth(self->_lowResPixelBuffer.value_);
        Height = CVPixelBufferGetHeight(self->_lowResPixelBuffer.value_);
        lowResOrientation = self->_lowResOrientation;
        *buf = 138413314;
        *&buf[4] = v30;
        v52 = 1024;
        *v53 = v31;
        *&v53[4] = 1024;
        *&v53[6] = Width;
        *v54 = 1024;
        *&v54[2] = Height;
        *v55 = 1024;
        *&v55[2] = lowResOrientation;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Loaded resource (Type: %d Actual Resolution: %dx%d, orientation %d)", buf, 0x24u);
      }
    }

    else
    {
      if (a5)
      {
        v36 = MEMORY[0x1E696ABC0];
        v49 = *MEMORY[0x1E696A578];
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelBuffer_LowRes_ThumbnailIsLocal"];
        v50 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        *a5 = [v36 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v38];
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = [(PHAsset *)self->_asset localIdentifier];
        v40 = [v22 type];
        *buf = 138412546;
        *&buf[4] = v39;
        v52 = 1024;
        *v53 = v40;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to load resource (Type: %d)", buf, 0x12u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v35 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    *&buf[4] = v35;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Resource not locally available; skipping resource", buf, 0xCu);
  }

  v41 = VCPSignPostLog();
  v42 = v41;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    v43 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = v43;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (self->_lowResPixelBuffer.value_ || ([(VCPMADServiceImagePhotosAsset *)self loadPixelBuffer:&self->_lowResPixelBuffer orientation:&self->_lowResOrientation], self->_lowResPixelBuffer.value_))
  {

    value = self->_lowResPixelBuffer.value_;
    if (!value)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v45 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    *&buf[4] = v45;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to find/decode thumbnail resource", buf, 0xCu);
  }

  return -18;
}

- (int)loadHighResPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int *)a4
{
  v91 = *MEMORY[0x1E69E9840];
  value = self->_highResPixelBuffer.value_;
  if (value)
  {
    goto LABEL_2;
  }

  v8 = VCPSignPostLog();
  spid = os_signpost_id_generate(v8);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = v11;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PHAsset *)self->_asset localIdentifier];
    v13 = [(PHAsset *)self->_asset vcp_typeDescription];
    v14 = [(PHAsset *)self->_asset mediaType];
    v15 = [(PHAsset *)self->_asset mediaSubtypes];
    v16 = [(PHAsset *)self->_asset pixelWidth];
    v17 = [(PHAsset *)self->_asset pixelHeight];
    *buf = 138413570;
    *&buf[4] = v12;
    v84 = 2112;
    *v85 = v13;
    *&v85[8] = 1024;
    *v86 = v14;
    *&v86[4] = 1024;
    *v87 = v15;
    *&v87[4] = 1024;
    v88 = v16;
    v89 = 1024;
    v90 = v17;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selecting resource for Asset Type: %@ [%d/%d] Resolution: %dx%d", buf, 0x2Eu);
  }

  v18 = [(VCPMADServiceImagePhotosAsset *)self resources];
  v66 = [v18 vcp_highResImageResourcesForAsset:self->_asset];

  v71 = [MEMORY[0x1E695DF70] array];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v66;
  v19 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v19)
  {
    v20 = *v78;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v78 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v77 + 1) + 8 * v21);
        v23 = [v22 pixelWidth];
        if ([v22 pixelHeight] * v23 > 10973491)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v24 = [(PHAsset *)self->_asset localIdentifier];
            v25 = [v22 type];
            v26 = [v22 pixelWidth];
            v27 = [v22 pixelHeight];
            *buf = 138413058;
            *&buf[4] = v24;
            v84 = 1024;
            *v85 = v25;
            *&v85[4] = 1024;
            *&v85[6] = v26;
            *v86 = 1024;
            *&v86[2] = v27;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Evaluating high-resolution resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
          }

          if ([v22 vcp_isLocallyAvailable])
          {
            v28 = [(PHAsset *)self->_asset vcp_majorDimensionForResource:v22 withTargetResolution:12192768];
            v29 = +[VCPImageManager sharedImageManager];
            v30 = [v22 privateFileURL];
            if (v28)
            {
              *buf = [v29 pixelBufferWithFormat:875704422 andMaxDimension:v28 fromImageURL:v30 orientation:&self->_highResOrientation];
            }

            else
            {
              *buf = [v29 pixelBufferWithFormat:875704422 fromImageURL:v30 flushCache:1 orientation:&self->_highResOrientation];
            }

            CF<__CVBuffer *>::operator=(&self->_highResPixelBuffer.value_, buf);
            CF<__CVBuffer *>::~CF(buf);

            if (!self->_highResOrientation)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v32 = [(PHAsset *)self->_asset localIdentifier];
                *buf = 138412290;
                *&buf[4] = v32;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Failed to load orientation", buf, 0xCu);
              }

              self->_highResOrientation = 1;
            }

            if (self->_highResPixelBuffer.value_)
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v36 = [(PHAsset *)self->_asset localIdentifier];
                v37 = [v22 type];
                Width = CVPixelBufferGetWidth(self->_highResPixelBuffer.value_);
                Height = CVPixelBufferGetHeight(self->_highResPixelBuffer.value_);
                highResOrientation = self->_highResOrientation;
                *buf = 138413314;
                *&buf[4] = v36;
                v84 = 1024;
                *v85 = v37;
                *&v85[4] = 1024;
                *&v85[6] = Width;
                *v86 = 1024;
                *&v86[2] = Height;
                *v87 = 1024;
                *&v87[2] = highResOrientation;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Loaded resource (Type: %d Actual Resolution: %dx%d, orientation %d)", buf, 0x24u);
              }

              goto LABEL_43;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v33 = [(PHAsset *)self->_asset localIdentifier];
              v34 = [v22 type];
              *buf = 138412546;
              *&buf[4] = v33;
              v84 = 1024;
              *v85 = v34;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to load resource (Type: %d)", buf, 0x12u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v31 = [(PHAsset *)self->_asset localIdentifier];
            *buf = 138412290;
            *&buf[4] = v31;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Resource not locally available; skipping resource", buf, 0xCu);
          }
        }

        else
        {
          [v71 insertObject:v22 atIndex:0];
        }

        ++v21;
      }

      while (v19 != v21);
      v35 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
      v19 = v35;
      if (v35)
      {
        continue;
      }

      break;
    }
  }

LABEL_43:

  if (!self->_highResPixelBuffer.value_)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v70 = v71;
    v41 = [v70 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v41)
    {
      v43 = *v74;
      *&v42 = 138412546;
      v65 = v42;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v74 != v43)
          {
            objc_enumerationMutation(v70);
          }

          v45 = *(*(&v73 + 1) + 8 * i);
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v46 = [(PHAsset *)self->_asset localIdentifier];
            v47 = [v45 type];
            v48 = [v45 pixelWidth];
            v49 = [v45 pixelHeight];
            *buf = 138413058;
            *&buf[4] = v46;
            v84 = 1024;
            *v85 = v47;
            *&v85[4] = 1024;
            *&v85[6] = v48;
            *v86 = 1024;
            *&v86[2] = v49;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Evaluating fall-back resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
          }

          if ([v45 vcp_isLocallyAvailable])
          {
            v50 = +[VCPImageManager sharedImageManager];
            v51 = [v45 privateFileURL];
            *buf = [v50 pixelBufferWithFormat:875704422 fromImageURL:v51 flushCache:1 orientation:&self->_highResOrientation];
            CF<__CVBuffer *>::operator=(&self->_highResPixelBuffer.value_, buf);
            CF<__CVBuffer *>::~CF(buf);

            if (!self->_highResOrientation)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v52 = [(PHAsset *)self->_asset localIdentifier];
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Failed to load orientation", buf, 0xCu);
              }

              self->_highResOrientation = 1;
            }

            if (self->_highResPixelBuffer.value_)
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v56 = [(PHAsset *)self->_asset localIdentifier];
                v57 = [v45 type];
                v58 = CVPixelBufferGetWidth(self->_highResPixelBuffer.value_);
                v59 = CVPixelBufferGetHeight(self->_highResPixelBuffer.value_);
                v60 = self->_highResOrientation;
                *buf = 138413314;
                *&buf[4] = v56;
                v84 = 1024;
                *v85 = v57;
                *&v85[4] = 1024;
                *&v85[6] = v58;
                *v86 = 1024;
                *&v86[2] = v59;
                *v87 = 1024;
                *&v87[2] = v60;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Loaded resource (Type: %d Actual Resolution: %dx%d, orientation %d)", buf, 0x24u);
              }

              goto LABEL_71;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v53 = [(PHAsset *)self->_asset localIdentifier];
              v54 = [v45 type];
              *buf = v65;
              *&buf[4] = v53;
              v84 = 1024;
              *v85 = v54;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to load resource (Type: %d)", buf, 0x12u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v55 = [(PHAsset *)self->_asset localIdentifier];
            *buf = 138412290;
            *&buf[4] = v55;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Resource not locally available; skipping resource", buf, 0xCu);
          }
        }

        v41 = [v70 countByEnumeratingWithState:&v73 objects:v81 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

LABEL_71:
  }

  v61 = VCPSignPostLog();
  v62 = v61;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    v63 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = v63;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v62, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (self->_highResPixelBuffer.value_)
  {

    value = self->_highResPixelBuffer.value_;
    if (!value)
    {
      v6 = 0;
      goto LABEL_3;
    }

LABEL_2:
    v6 = CFRetain(value);
LABEL_3:
    result = 0;
    *a3 = v6;
    *a4 = self->_highResOrientation;
    return result;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v64 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    *&buf[4] = v64;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to find/decode high-res image resource", buf, 0xCu);
  }

  return -18;
}

- (void)persistOCRMRC
{
  *buf = 138412802;
  *(buf + 4) = a4;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[%@][%@] Asset has invalid adjustment version (%@); cannot persist results to Photos", buf, 0x20u);
}

void __46__VCPMADServiceImagePhotosAsset_persistOCRMRC__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E6978640] changeRequestForAsset:*(*(a1 + 32) + 96)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(*(a1 + 32) + 96) adjustmentVersion];
  [v5 setCharacterRecognitionData:v3 machineReadableCodeData:v2 algorithmVersion:8 adjustmentVersion:v4];

  if ([*(*(a1 + 32) + 96) mad_isEligibleForComputeSync])
  {
    [v5 setLocalAnalysisStage:*(a1 + 64)];
    if (*(a1 + 56))
    {
      [v5 setComputeSyncMediaAnalysisPayload:?];
    }
  }
}

void __46__VCPMADServiceImagePhotosAsset_persistOCRMRC__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = [*(*(a1 + 40) + 96) localIdentifier];
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@][%@] Successfully persisted results to Photos", &v10, 0x16u);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(*(a1 + 40) + 96) localIdentifier];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][%@] Failed to persist results to Photos", &v10, 0x16u);
  }
}

- (id)documentObservations
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_documentObservations)
  {
    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v3 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    v28 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Checking for existing results from Photos", buf, 0xCu);
  }

  v4 = [(PHAsset *)self->_asset characterRecognitionProperties];
  if ([v4 algorithmVersion] == 8 && (objc_msgSend(v4, "adjustmentVersion"), v5 = objc_claimAutoreleasedReturnValue(), -[PHAsset adjustmentVersion](self->_asset, "adjustmentVersion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToDate:", v6), v6, v5, v7))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v8 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Loading existing results from Photos", buf, 0xCu);
    }

    v9 = [v4 data];
    v10 = v9 == 0;

    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v19 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v28 = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Photos results exist, but no text was recognized", buf, 0xCu);
      }

      documentObservations = self->_documentObservations;
      self->_documentObservations = MEMORY[0x1E695E0F0];
    }

    else
    {
      v11 = MEMORY[0x1E696ACD0];
      v12 = objc_opt_class();
      v13 = [v4 data];
      v25 = 0;
      v14 = [v11 unarchivedObjectOfClass:v12 fromData:v13 error:&v25];
      v15 = v25;

      if (v14)
      {
        v26 = v14;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
        v17 = self->_documentObservations;
        self->_documentObservations = v16;
      }

      else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[OCR][%@] Failed to unarchive existing Photos results", buf, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v18 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    v28 = v18;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Asset does not have existing results", buf, 0xCu);
  }

  if (self->_documentObservations)
  {
LABEL_33:
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v22 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v28 = v22;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[OCR][%@] Successfully reused existing results", buf, 0xCu);
    }
  }

  v23 = self->_documentObservations;

  return v23;
}

- (void)setDocumentObservations:(id)a3
{
  v7 = a3;
  v4 = [v7 firstObject];
  if (v4)
  {
    v5 = [v7 copy];
    documentObservations = self->_documentObservations;
    self->_documentObservations = v5;

    [(VCPMADServiceImagePhotosAsset *)self persistOCRMRC];
  }
}

- (id)barcodeObservations
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_barcodeObservations)
  {
    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v3 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    v28 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MRC][%@] Checking for existing results from Photos", buf, 0xCu);
  }

  v4 = [(PHAsset *)self->_asset characterRecognitionProperties];
  if ([v4 algorithmVersion] == 8 && (objc_msgSend(v4, "adjustmentVersion"), v5 = objc_claimAutoreleasedReturnValue(), -[PHAsset adjustmentVersion](self->_asset, "adjustmentVersion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToDate:", v6), v6, v5, v7))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v8 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MRC][%@] Loading existing results from Photos", buf, 0xCu);
    }

    v9 = [v4 machineReadableCodeData];
    v10 = v9 == 0;

    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v19 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v28 = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MRC][%@] Photos results exist, but no text was recognized", buf, 0xCu);
      }

      barcodeObservations = self->_barcodeObservations;
      self->_barcodeObservations = MEMORY[0x1E695E0F0];
    }

    else
    {
      v11 = MEMORY[0x1E695DFD8];
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v13 = [v11 setWithArray:v12];

      v14 = MEMORY[0x1E696ACD0];
      v15 = [v4 machineReadableCodeData];
      v25 = 0;
      v16 = [v14 unarchivedObjectOfClasses:v13 fromData:v15 error:&v25];
      v17 = v25;

      if (v16)
      {
        objc_storeStrong(&self->_barcodeObservations, v16);
      }

      else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MRC][%@] Failed to unarchive existing Photos results", buf, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v18 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    v28 = v18;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MRC][%@] Asset does not have existing results", buf, 0xCu);
  }

  if (self->_barcodeObservations)
  {
LABEL_33:
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v22 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v28 = v22;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MRC][%@] Successfully reused existing results", buf, 0xCu);
    }
  }

  v23 = self->_barcodeObservations;

  return v23;
}

- (void)setBarcodeObservations:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [v6 copy];
    barcodeObservations = self->_barcodeObservations;
    self->_barcodeObservations = v4;

    [(VCPMADServiceImagePhotosAsset *)self persistOCRMRC];
  }
}

- (BOOL)hasCachedParseData
{
  v22 = *MEMORY[0x1E69E9840];
  hasCachedParseData = self->_hasCachedParseData;
  if (!hasCachedParseData)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v4 = [(PHAsset *)self->_asset localIdentifier];
      v20 = 138412290;
      v21 = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VS][%@] Checking for existing results from Photos", &v20, 0xCu);
    }

    v5 = [(PHAsset *)self->_asset visualSearchProperties];
    v6 = [v5 algorithmVersion];
    if (v6 == VCPPhotosVisualSearchAlgorithmVersion() && ([v5 adjustmentVersion], v7 = objc_claimAutoreleasedReturnValue(), -[PHAsset adjustmentVersion](self->_asset, "adjustmentVersion"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToDate:", v8), v8, v7, v9))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v10 = [(PHAsset *)self->_asset localIdentifier];
        v20 = 138412290;
        v21 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VS][%@] Loading existing results from Photos", &v20, 0xCu);
      }

      v11 = [v5 visualSearchData];
      v12 = v11 == 0;

      if (v12)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v16 = [(PHAsset *)self->_asset localIdentifier];
          v20 = 138412290;
          v21 = v16;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VS][%@] Photos results exist, but empty", &v20, 0xCu);
        }

        v13 = 0;
      }

      else
      {
        v13 = [v5 visualSearchData];
      }

      cachedParseData = self->_cachedParseData;
      self->_cachedParseData = v13;

      v15 = MEMORY[0x1E695E118];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v14 = [(PHAsset *)self->_asset localIdentifier];
        v20 = 138412290;
        v21 = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VS][%@] Asset does not have existing results", &v20, 0xCu);
      }

      v15 = MEMORY[0x1E695E110];
    }

    v18 = self->_hasCachedParseData;
    self->_hasCachedParseData = v15;

    hasCachedParseData = self->_hasCachedParseData;
  }

  return [(NSNumber *)hasCachedParseData BOOLValue];
}

- (id)cachedParseData
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(VCPMADServiceImagePhotosAsset *)self hasCachedParseData])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v3 = [(PHAsset *)self->_asset localIdentifier];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS][%@] Successfully reused existing results", &v6, 0xCu);
    }

    v4 = self->_cachedParseData;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCachedParseData:(id)a3 overwriteExisting:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 copy];
  cachedParseData = self->_cachedParseData;
  self->_cachedParseData = v7;

  hasCachedParseData = self->_hasCachedParseData;
  self->_hasCachedParseData = MEMORY[0x1E695E118];

  if ([(PHAsset *)self->_asset vcp_needsVisualSearchProcessing]|| v4)
  {
    v10 = [(PHAsset *)self->_asset adjustmentVersion];

    if (v10)
    {
      if ([(PHAsset *)self->_asset mad_isEligibleForComputeSync])
      {
        v11 = [(PHAsset *)self->_asset mad_analysisStageAfterCompletingAnalysis:12];
        v12 = [MADComputeSyncPayloadResults payloadDataForAsset:self->_asset targetStage:v11 embeddingResults:0 fullAnalysisResults:0];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v16 = [(PHAsset *)self->_asset localIdentifier];
            v17 = [(PHAsset *)self->_asset mediaAnalysisProperties];
            *buf = 138412802;
            v27 = v16;
            v28 = 1024;
            v29 = v11;
            v30 = 1024;
            v31 = [v17 localAnalysisStage];
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VS][%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
          }

          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
        LOWORD(v11) = 0;
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v18 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v27 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS][%@] Persisting results to Photos", buf, 0xCu);
      }

      v19 = [(PHAsset *)self->_asset photoLibrary];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70__VCPMADServiceImagePhotosAsset_setCachedParseData_overwriteExisting___block_invoke;
      v22[3] = &unk_1E834FDC0;
      v22[4] = self;
      v25 = v11;
      v23 = v6;
      v24 = v13;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __70__VCPMADServiceImagePhotosAsset_setCachedParseData_overwriteExisting___block_invoke_2;
      v21[3] = &unk_1E834FDE8;
      v21[4] = self;
      v20 = v13;
      [v19 performChanges:v22 completionHandler:v21];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v14 = [(PHAsset *)self->_asset localIdentifier];
      v15 = [(PHAsset *)self->_asset adjustmentVersion];
      [(VCPMADServiceImagePhotosAsset *)v14 setCachedParseData:v15 overwriteExisting:buf];
    }
  }
}

void __70__VCPMADServiceImagePhotosAsset_setCachedParseData_overwriteExisting___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E6978640] changeRequestForAsset:*(*(a1 + 32) + 96)];
  v2 = *(a1 + 40);
  v3 = VCPPhotosVisualSearchAlgorithmVersion();
  v4 = [*(*(a1 + 32) + 96) adjustmentVersion];
  [v5 setVisualSearchData:v2 algorithmVersion:v3 adjustmentVersion:v4];

  if (([*(*(a1 + 32) + 96) vcp_needsStickerGatingProcessing] & 1) == 0)
  {
    if ([*(*(a1 + 32) + 96) mad_isEligibleForComputeSync])
    {
      [v5 setLocalAnalysisStage:*(a1 + 56)];
      if (*(a1 + 48))
      {
        [v5 setComputeSyncMediaAnalysisPayload:?];
      }
    }
  }
}

void __70__VCPMADServiceImagePhotosAsset_setCachedParseData_overwriteExisting___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v6 = [*(*(a1 + 32) + 96) localIdentifier];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS][%@] Successfully persisted results to Photos", &v8, 0xCu);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 96) localIdentifier];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VS][%@] Failed to persist results to Photos", &v8, 0xCu);
  }
}

- (id)thumbnailResource
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(VCPMADServiceImagePhotosAsset *)self resources];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 type] == 102)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)hasValidSceneProcessing
{
  v2 = [(VCPMADServiceImagePhotosAsset *)self asset];
  v3 = [v2 vcp_needSceneProcessing];

  return v3 ^ 1;
}

- (BOOL)fromGenerativePlayground
{
  v2 = [(PHAsset *)self->_asset photosInfoPanelExtendedProperties];
  v3 = [v2 generativeAIType];
  v4 = [v3 integerValue] == 1;

  return v4;
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 16) = 0;
  *(self + 18) = 0;
  return self;
}

- (void)setCachedParseData:(uint8_t *)buf overwriteExisting:.cold.1(void *a1, void *a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[VS][%@] Asset has invalid adjustment version (%@); cannot persist results to Photos", buf, 0x16u);
}

@end