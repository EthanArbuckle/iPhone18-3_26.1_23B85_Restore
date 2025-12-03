@interface VCPMADServiceImagePhotosAsset
- (BOOL)fromGenerativePlayground;
- (BOOL)hasCachedParseData;
- (BOOL)hasValidSceneProcessing;
- (CGSize)resolution;
- (VCPMADServiceImagePhotosAsset)initWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD;
- (VCPMADServiceImagePhotosAsset)initWithPhotosAsset:(id)asset pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation clientBundleID:(id)d clientTeamID:(id)iD;
- (id).cxx_construct;
- (id)barcodeObservations;
- (id)cachedParseData;
- (id)documentObservations;
- (id)facesWithDetectionTypes:(id)types;
- (id)isSensitive;
- (id)nsfwClassifications;
- (id)resources;
- (id)scenenetClassifications;
- (id)thumbnailResource;
- (int)loadHighResPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation;
- (int)loadLowResPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation error:(id *)error;
- (int)loadPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation error:(id *)error;
- (void)persistOCRMRC;
- (void)setBarcodeObservations:(id)observations;
- (void)setCachedParseData:(id)data overwriteExisting:(BOOL)existing;
- (void)setDocumentObservations:(id)observations;
@end

@implementation VCPMADServiceImagePhotosAsset

- (VCPMADServiceImagePhotosAsset)initWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD
{
  assetCopy = asset;
  v13.receiver = self;
  v13.super_class = VCPMADServiceImagePhotosAsset;
  v10 = [(VCPMADServiceImageAsset *)&v13 initWithClientBundleID:d clientTeamID:iD];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_asset, asset);
  }

  return v11;
}

- (VCPMADServiceImagePhotosAsset)initWithPhotosAsset:(id)asset pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation clientBundleID:(id)d clientTeamID:(id)iD
{
  assetCopy = asset;
  v19.receiver = self;
  v19.super_class = VCPMADServiceImagePhotosAsset;
  v14 = [(VCPMADServiceImageAsset *)&v19 initWithClientBundleID:d clientTeamID:iD];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, asset);
    if (buffer)
    {
      v16 = CFRetain(buffer);
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;
    CF<__CVBuffer *>::operator=(&v15->_pixelBuffer.value_, &v18);
    CF<__CVBuffer *>::~CF(&v18);
    v15->_orientation = orientation;
  }

  return v15;
}

- (id)facesWithDetectionTypes:(id)types
{
  v30[1] = *MEMORY[0x1E69E9840];
  typesCopy = types;
  if ([(PHAsset *)self->_asset faceAnalysisVersion]|| ([(PHAsset *)self->_asset localIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if ([(PHAsset *)self->_asset vcp_needsFaceProcessing])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier = [(PHAsset *)self->_asset localIdentifier];
        v26 = 138412290;
        v27 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Faces][%@] Asset not processed or outdated", &v26, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
      v26 = 138412290;
      v27 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Faces][%@] Re-fetching asset ...", &v26, 0xCu);
    }

    v8 = MEMORY[0x1E6978628];
    photoLibrary = [(PHAsset *)self->_asset photoLibrary];
    v10 = [v8 vcp_fetchOptionsForLibrary:photoLibrary forTaskID:3];

    v11 = MEMORY[0x1E6978628];
    localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
    v30[0] = localIdentifier3;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v14 = [v11 fetchAssetsWithLocalIdentifiers:v13 options:v10];
    firstObject = [v14 firstObject];

    if (!firstObject)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier4 = [(PHAsset *)self->_asset localIdentifier];
        v26 = 138412290;
        v27 = localIdentifier4;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Faces][%@] Failed to fetch asset to check faceAnalysisVersion", &v26, 0xCu);
      }

      goto LABEL_18;
    }

    if ([firstObject vcp_needsFaceProcessing])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier5 = [(PHAsset *)self->_asset localIdentifier];
        v26 = 138412290;
        v27 = localIdentifier5;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Faces][%@] Asset (re-fetched) not processed or outdated", &v26, 0xCu);
      }

LABEL_18:

LABEL_19:
      fetchedObjects = 0;
      goto LABEL_33;
    }
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier6 = [(PHAsset *)self->_asset localIdentifier];
    v26 = 138412290;
    v27 = localIdentifier6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Faces][%@] Loading existing results from Photos", &v26, 0xCu);
  }

  photoLibrary2 = [(PHAsset *)self->_asset photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

  if (typesCopy)
  {
    [librarySpecificFetchOptions setIncludedDetectionTypes:typesCopy];
  }

  v22 = [MEMORY[0x1E69787D0] fetchFacesInAsset:self->_asset options:librarySpecificFetchOptions];
  v23 = [v22 count];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    localIdentifier7 = [(PHAsset *)self->_asset localIdentifier];
    v26 = 138412546;
    v27 = localIdentifier7;
    v28 = 1024;
    v29 = v23;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Faces][%@] Loaded %d faces", &v26, 0x12u);
  }

  if (v23)
  {
    fetchedObjects = [v22 fetchedObjects];
  }

  else
  {
    fetchedObjects = MEMORY[0x1E695E0F0];
  }

LABEL_33:

  return fetchedObjects;
}

- (id)nsfwClassifications
{
  v21 = *MEMORY[0x1E69E9840];
  [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
  vcp_needSceneProcessing = [(PHAsset *)self->_asset vcp_needSceneProcessing];
  v4 = MediaAnalysisLogLevel();
  if (vcp_needSceneProcessing)
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v20 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[NSFW][%@] Asset not processed or outdated", buf, 0xCu);
    }

    array = 0;
  }

  else
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v20 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[NSFW][%@] Loading existing results from Photos", buf, 0xCu);
    }

    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sceneClassifications = [(PHAsset *)self->_asset sceneClassifications];
    v9 = [sceneClassifications countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(sceneClassifications);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 extendedSceneIdentifier] > 0x7FFFF8F5 && objc_msgSend(v12, "extendedSceneIdentifier") < 0x7FFFF900 || objc_msgSend(v12, "extendedSceneIdentifier") > 0x7FFFF6FD && objc_msgSend(v12, "extendedSceneIdentifier") < 0x7FFFF700)
          {
            [array addObject:v12];
          }
        }

        v9 = [sceneClassifications countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return array;
}

- (id)scenenetClassifications
{
  v28 = *MEMORY[0x1E69E9840];
  vcp_needSceneProcessing = [(PHAsset *)self->_asset vcp_needSceneProcessing];
  v4 = MediaAnalysisLogLevel();
  if (vcp_needSceneProcessing)
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v27 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[SceneNet][%@] Asset not processed or outdated", buf, 0xCu);
    }

    array = 0;
  }

  else
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v27 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[SceneNet][%@] Loading existing results from Photos", buf, 0xCu);
    }

    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    sceneClassifications = [(PHAsset *)self->_asset sceneClassifications];
    v9 = [sceneClassifications countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(sceneClassifications);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
          v15 = [vcp_sharedTaxonomy nodeForExtendedSceneClassId:{objc_msgSend(v13, "extendedSceneIdentifier")}];

          if (!v15 || ([v15 name], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              extendedSceneIdentifier = [v13 extendedSceneIdentifier];
              *buf = v20;
              v27 = extendedSceneIdentifier;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[SceneNet] No scene label name for scene id %llu", buf, 0xCu);
            }
          }

          else
          {
            [array addObject:v13];
          }
        }

        v9 = [sceneClassifications countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  return array;
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
  pixelWidth = [(PHAsset *)self->_asset pixelWidth];
  pixelHeight = [(PHAsset *)self->_asset pixelHeight];
  v5 = pixelWidth;
  result.height = pixelHeight;
  result.width = v5;
  return result;
}

- (id)isSensitive
{
  v28 = *MEMORY[0x1E69E9840];
  nsfwClassifications = [(VCPMADServiceImagePhotosAsset *)self nsfwClassifications];
  v4 = nsfwClassifications;
  if (nsfwClassifications)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = nsfwClassifications;
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
              localIdentifier = [(PHAsset *)self->_asset localIdentifier];
              [v9 confidence];
              *buf = 138412546;
              v24 = localIdentifier;
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
      localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v24 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible Confidence: 0.0", buf, 0xCu);
    }

    v11 = MEMORY[0x1E695E110];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v24 = localIdentifier3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible Confidence: Unknown", buf, 0xCu);
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (int)loadPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation error:(id *)error
{
  v90[1] = *MEMORY[0x1E69E9840];
  value = self->_pixelBuffer.value_;
  if (value)
  {
LABEL_2:
    errorCopy = error;
    value = CFRetain(value);
    error = errorCopy;
LABEL_3:
    *buffer = value;
    *orientation = self->_orientation;
    result = 0;
    if (error)
    {
      *error = 0;
    }

    return result;
  }

  v9 = MEMORY[0x1E696A768];
  v10 = MEMORY[0x1E696A578];
  errorCopy2 = error;
  if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v89 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelBuffer_NormalRes_NoResourcesAreLocal"];
    v90[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    *errorCopy2 = [v11 errorWithDomain:*v9 code:-18 userInfo:v13];
  }

  v14 = VCPSignPostLog();
  spid = os_signpost_id_generate(v14);

  v15 = VCPSignPostLog();
  v16 = v15;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    signpostPayload = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [(PHAsset *)self->_asset localIdentifier];
    vcp_typeDescription = [(PHAsset *)self->_asset vcp_typeDescription];
    mediaType = [(PHAsset *)self->_asset mediaType];
    mediaSubtypes = [(PHAsset *)self->_asset mediaSubtypes];
    pixelWidth = [(PHAsset *)self->_asset pixelWidth];
    pixelHeight = [(PHAsset *)self->_asset pixelHeight];
    *buf = 138413570;
    *&buf[4] = localIdentifier;
    v82 = 2112;
    *v83 = vcp_typeDescription;
    *&v83[8] = 1024;
    *v84 = mediaType;
    *&v84[4] = 1024;
    *v85 = mediaSubtypes;
    *&v85[4] = 1024;
    v86 = pixelWidth;
    v87 = 1024;
    v88 = pixelHeight;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selecting resource for Asset Type: %@ [%d/%d] Resolution: %dx%d", buf, 0x2Eu);

    v10 = MEMORY[0x1E696A578];
  }

  resources = [(VCPMADServiceImagePhotosAsset *)self resources];
  v25 = [resources vcp_highResImageResourcesForAsset:self->_asset];

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
        localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
        type = [v28 type];
        pixelWidth2 = [v28 pixelWidth];
        pixelHeight2 = [v28 pixelHeight];
        *buf = 138413058;
        *&buf[4] = localIdentifier2;
        v82 = 1024;
        *v83 = type;
        *&v83[4] = 1024;
        *&v83[6] = pixelWidth2;
        *v84 = 1024;
        *&v84[2] = pixelHeight2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Evaluating resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
      }

      if (([v28 vcp_isLocallyAvailable] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
          *buf = 138412290;
          *&buf[4] = localIdentifier3;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Resource not locally available; skipping resource", buf, 0xCu);
        }

        continue;
      }

      vcp_uniformTypeIdentifier = [v28 vcp_uniformTypeIdentifier];
      if (([vcp_uniformTypeIdentifier conformsToType:v69] & 1) == 0 && (objc_msgSend(vcp_uniformTypeIdentifier, "conformsToType:", v66) & 1) == 0 && (objc_msgSend(vcp_uniformTypeIdentifier, "conformsToType:", v65) & 1) == 0 && (objc_msgSend(vcp_uniformTypeIdentifier, "conformsToType:", v62) & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier4 = [(PHAsset *)self->_asset localIdentifier];
          identifier = [vcp_uniformTypeIdentifier identifier];
          *buf = 138412546;
          *&buf[4] = localIdentifier4;
          v82 = 2112;
          *v83 = identifier;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Purging resource cache to load uncommon resource (%@)", buf, 0x16u);
        }

        goto LABEL_30;
      }

      pixelWidth3 = [v28 pixelWidth];
      if (([v28 pixelHeight] * pixelWidth3) >= 0xCCA6CD)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier5 = [(PHAsset *)self->_asset localIdentifier];
          pixelWidth4 = [v28 pixelWidth];
          pixelHeight3 = [v28 pixelHeight];
          *buf = 138412802;
          *&buf[4] = localIdentifier5;
          v82 = 1024;
          *v83 = pixelWidth4;
          *&v83[4] = 1024;
          *&v83[6] = pixelHeight3;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Purging resource cache to load large resource (%dx%d)", buf, 0x18u);
        }

LABEL_30:
        v38 = +[VCPMADResourceManager sharedManager];
        [v38 purgeInactiveResources];
      }

      v39 = [(PHAsset *)self->_asset vcp_ocrMajorDimensionForResource:v28];
      v40 = +[VCPImageManager sharedImageManager];
      privateFileURL = [v28 privateFileURL];
      if (v39)
      {
        *buf = [v40 pixelBufferWithFormat:875704422 andMaxDimension:v39 fromImageURL:privateFileURL orientation:&self->_orientation];
      }

      else
      {
        *buf = [v40 pixelBufferWithFormat:875704422 fromImageURL:privateFileURL flushCache:1 orientation:&self->_orientation];
      }

      CF<__CVBuffer *>::operator=(&self->_pixelBuffer.value_, buf);
      CF<__CVBuffer *>::~CF(buf);

      if (!self->_orientation)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier6 = [(PHAsset *)self->_asset localIdentifier];
          *buf = 138412290;
          *&buf[4] = localIdentifier6;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Failed to load orientation", buf, 0xCu);
        }

        self->_orientation = 1;
      }

      if (self->_pixelBuffer.value_)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier7 = [(PHAsset *)self->_asset localIdentifier];
          type2 = [v28 type];
          Width = CVPixelBufferGetWidth(self->_pixelBuffer.value_);
          Height = CVPixelBufferGetHeight(self->_pixelBuffer.value_);
          orientation = self->_orientation;
          *buf = 138413314;
          *&buf[4] = localIdentifier7;
          v82 = 1024;
          *v83 = type2;
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

      if (errorCopy2)
      {
        v44 = MEMORY[0x1E696ABC0];
        v78 = v68;
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelBuffer_NormalRes_SomeResourcesAreLocal"];
        v79 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        *errorCopy2 = [v44 errorWithDomain:v67 code:-18 userInfo:v46];
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier8 = [(PHAsset *)self->_asset localIdentifier];
        type3 = [v28 type];
        *buf = 138412546;
        *&buf[4] = localIdentifier8;
        v82 = 1024;
        *v83 = type3;
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
    signpostPayload2 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = signpostPayload2;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v57, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (self->_pixelBuffer.value_)
  {

    value = self->_pixelBuffer.value_;
    error = errorCopy2;
    if (!value)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localIdentifier9 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    *&buf[4] = localIdentifier9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to find/decode high-res image resource", buf, 0xCu);
  }

  return -18;
}

- (int)loadLowResPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation error:(id *)error
{
  v60[1] = *MEMORY[0x1E69E9840];
  value = self->_lowResPixelBuffer.value_;
  if (value)
  {
LABEL_37:
    value = CFRetain(value);
LABEL_38:
    *buffer = value;
    *orientation = self->_lowResOrientation;
    result = 0;
    if (error)
    {
      *error = 0;
    }

    return result;
  }

  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelBuffer_LowRes_ThumbnailNotLocal"];
    v60[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    *error = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v11];
  }

  v12 = VCPSignPostLog();
  spid = os_signpost_id_generate(v12);

  v13 = VCPSignPostLog();
  v14 = v13;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    signpostPayload = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [(PHAsset *)self->_asset localIdentifier];
    vcp_typeDescription = [(PHAsset *)self->_asset vcp_typeDescription];
    mediaType = [(PHAsset *)self->_asset mediaType];
    mediaSubtypes = [(PHAsset *)self->_asset mediaSubtypes];
    pixelWidth = [(PHAsset *)self->_asset pixelWidth];
    pixelHeight = [(PHAsset *)self->_asset pixelHeight];
    *buf = 138413570;
    *&buf[4] = localIdentifier;
    v52 = 2112;
    *v53 = vcp_typeDescription;
    *&v53[8] = 1024;
    *v54 = mediaType;
    *&v54[4] = 1024;
    *v55 = mediaSubtypes;
    *&v55[4] = 1024;
    v56 = pixelWidth;
    v57 = 1024;
    v58 = pixelHeight;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selecting resource for Asset Type: %@ [%d/%d] Resolution: %dx%d", buf, 0x2Eu);
  }

  resources = [(VCPMADServiceImagePhotosAsset *)self resources];
  vcp_thumbnailResource = [resources vcp_thumbnailResource];

  if ([vcp_thumbnailResource vcp_isLocallyAvailable])
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
      type = [vcp_thumbnailResource type];
      pixelWidth2 = [vcp_thumbnailResource pixelWidth];
      pixelHeight2 = [vcp_thumbnailResource pixelHeight];
      *buf = 138413058;
      *&buf[4] = localIdentifier2;
      v52 = 1024;
      *v53 = type;
      *&v53[4] = 1024;
      *&v53[6] = pixelWidth2;
      *v54 = 1024;
      *&v54[2] = pixelHeight2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Evaluating resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
    }

    v27 = +[VCPImageManager sharedImageManager];
    privateFileURL = [vcp_thumbnailResource privateFileURL];
    *buf = [v27 pixelBufferWithFormat:875704422 fromImageURL:privateFileURL flushCache:1 orientation:&self->_lowResOrientation];
    CF<__CVBuffer *>::operator=(&self->_lowResPixelBuffer.value_, buf);
    CF<__CVBuffer *>::~CF(buf);

    if (!self->_lowResOrientation)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        *&buf[4] = localIdentifier3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Failed to load orientation", buf, 0xCu);
      }

      self->_lowResOrientation = 1;
    }

    if (self->_lowResPixelBuffer.value_)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier4 = [(PHAsset *)self->_asset localIdentifier];
        type2 = [vcp_thumbnailResource type];
        Width = CVPixelBufferGetWidth(self->_lowResPixelBuffer.value_);
        Height = CVPixelBufferGetHeight(self->_lowResPixelBuffer.value_);
        lowResOrientation = self->_lowResOrientation;
        *buf = 138413314;
        *&buf[4] = localIdentifier4;
        v52 = 1024;
        *v53 = type2;
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
      if (error)
      {
        v36 = MEMORY[0x1E696ABC0];
        v49 = *MEMORY[0x1E696A578];
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelBuffer_LowRes_ThumbnailIsLocal"];
        v50 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        *error = [v36 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v38];
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier5 = [(PHAsset *)self->_asset localIdentifier];
        type3 = [vcp_thumbnailResource type];
        *buf = 138412546;
        *&buf[4] = localIdentifier5;
        v52 = 1024;
        *v53 = type3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to load resource (Type: %d)", buf, 0x12u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier6 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    *&buf[4] = localIdentifier6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Resource not locally available; skipping resource", buf, 0xCu);
  }

  v41 = VCPSignPostLog();
  v42 = v41;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    signpostPayload2 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = signpostPayload2;
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
    localIdentifier7 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    *&buf[4] = localIdentifier7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to find/decode thumbnail resource", buf, 0xCu);
  }

  return -18;
}

- (int)loadHighResPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int *)orientation
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
    signpostPayload = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageAsset_Decode", "%@", buf, 0xCu);
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [(PHAsset *)self->_asset localIdentifier];
    vcp_typeDescription = [(PHAsset *)self->_asset vcp_typeDescription];
    mediaType = [(PHAsset *)self->_asset mediaType];
    mediaSubtypes = [(PHAsset *)self->_asset mediaSubtypes];
    pixelWidth = [(PHAsset *)self->_asset pixelWidth];
    pixelHeight = [(PHAsset *)self->_asset pixelHeight];
    *buf = 138413570;
    *&buf[4] = localIdentifier;
    v84 = 2112;
    *v85 = vcp_typeDescription;
    *&v85[8] = 1024;
    *v86 = mediaType;
    *&v86[4] = 1024;
    *v87 = mediaSubtypes;
    *&v87[4] = 1024;
    v88 = pixelWidth;
    v89 = 1024;
    v90 = pixelHeight;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Selecting resource for Asset Type: %@ [%d/%d] Resolution: %dx%d", buf, 0x2Eu);
  }

  resources = [(VCPMADServiceImagePhotosAsset *)self resources];
  v66 = [resources vcp_highResImageResourcesForAsset:self->_asset];

  array = [MEMORY[0x1E695DF70] array];
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
        pixelWidth2 = [v22 pixelWidth];
        if ([v22 pixelHeight] * pixelWidth2 > 10973491)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
            type = [v22 type];
            pixelWidth3 = [v22 pixelWidth];
            pixelHeight2 = [v22 pixelHeight];
            *buf = 138413058;
            *&buf[4] = localIdentifier2;
            v84 = 1024;
            *v85 = type;
            *&v85[4] = 1024;
            *&v85[6] = pixelWidth3;
            *v86 = 1024;
            *&v86[2] = pixelHeight2;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Evaluating high-resolution resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
          }

          if ([v22 vcp_isLocallyAvailable])
          {
            v28 = [(PHAsset *)self->_asset vcp_majorDimensionForResource:v22 withTargetResolution:12192768];
            v29 = +[VCPImageManager sharedImageManager];
            privateFileURL = [v22 privateFileURL];
            if (v28)
            {
              *buf = [v29 pixelBufferWithFormat:875704422 andMaxDimension:v28 fromImageURL:privateFileURL orientation:&self->_highResOrientation];
            }

            else
            {
              *buf = [v29 pixelBufferWithFormat:875704422 fromImageURL:privateFileURL flushCache:1 orientation:&self->_highResOrientation];
            }

            CF<__CVBuffer *>::operator=(&self->_highResPixelBuffer.value_, buf);
            CF<__CVBuffer *>::~CF(buf);

            if (!self->_highResOrientation)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
                *buf = 138412290;
                *&buf[4] = localIdentifier3;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Failed to load orientation", buf, 0xCu);
              }

              self->_highResOrientation = 1;
            }

            if (self->_highResPixelBuffer.value_)
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                localIdentifier4 = [(PHAsset *)self->_asset localIdentifier];
                type2 = [v22 type];
                Width = CVPixelBufferGetWidth(self->_highResPixelBuffer.value_);
                Height = CVPixelBufferGetHeight(self->_highResPixelBuffer.value_);
                highResOrientation = self->_highResOrientation;
                *buf = 138413314;
                *&buf[4] = localIdentifier4;
                v84 = 1024;
                *v85 = type2;
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
              localIdentifier5 = [(PHAsset *)self->_asset localIdentifier];
              type3 = [v22 type];
              *buf = 138412546;
              *&buf[4] = localIdentifier5;
              v84 = 1024;
              *v85 = type3;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to load resource (Type: %d)", buf, 0x12u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            localIdentifier6 = [(PHAsset *)self->_asset localIdentifier];
            *buf = 138412290;
            *&buf[4] = localIdentifier6;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Resource not locally available; skipping resource", buf, 0xCu);
          }
        }

        else
        {
          [array insertObject:v22 atIndex:0];
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
    v70 = array;
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
            localIdentifier7 = [(PHAsset *)self->_asset localIdentifier];
            type4 = [v45 type];
            pixelWidth4 = [v45 pixelWidth];
            pixelHeight3 = [v45 pixelHeight];
            *buf = 138413058;
            *&buf[4] = localIdentifier7;
            v84 = 1024;
            *v85 = type4;
            *&v85[4] = 1024;
            *&v85[6] = pixelWidth4;
            *v86 = 1024;
            *&v86[2] = pixelHeight3;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Evaluating fall-back resource (Type: %d Resolution: %dx%d)", buf, 0x1Eu);
          }

          if ([v45 vcp_isLocallyAvailable])
          {
            v50 = +[VCPImageManager sharedImageManager];
            privateFileURL2 = [v45 privateFileURL];
            *buf = [v50 pixelBufferWithFormat:875704422 fromImageURL:privateFileURL2 flushCache:1 orientation:&self->_highResOrientation];
            CF<__CVBuffer *>::operator=(&self->_highResPixelBuffer.value_, buf);
            CF<__CVBuffer *>::~CF(buf);

            if (!self->_highResOrientation)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                localIdentifier8 = [(PHAsset *)self->_asset localIdentifier];
                *buf = 138412290;
                *&buf[4] = localIdentifier8;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Failed to load orientation", buf, 0xCu);
              }

              self->_highResOrientation = 1;
            }

            if (self->_highResPixelBuffer.value_)
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                localIdentifier9 = [(PHAsset *)self->_asset localIdentifier];
                type5 = [v45 type];
                v58 = CVPixelBufferGetWidth(self->_highResPixelBuffer.value_);
                v59 = CVPixelBufferGetHeight(self->_highResPixelBuffer.value_);
                v60 = self->_highResOrientation;
                *buf = 138413314;
                *&buf[4] = localIdentifier9;
                v84 = 1024;
                *v85 = type5;
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
              localIdentifier10 = [(PHAsset *)self->_asset localIdentifier];
              type6 = [v45 type];
              *buf = v65;
              *&buf[4] = localIdentifier10;
              v84 = 1024;
              *v85 = type6;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to load resource (Type: %d)", buf, 0x12u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            localIdentifier11 = [(PHAsset *)self->_asset localIdentifier];
            *buf = 138412290;
            *&buf[4] = localIdentifier11;
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
    signpostPayload2 = [(VCPMADServiceImageAsset *)self signpostPayload];
    *buf = 138412290;
    *&buf[4] = signpostPayload2;
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
    *buffer = v6;
    *orientation = self->_highResOrientation;
    return result;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localIdentifier12 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    *&buf[4] = localIdentifier12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to find/decode high-res image resource", buf, 0xCu);
  }

  return -18;
}

- (void)persistOCRMRC
{
  *buf = 138412802;
  *(buf + 4) = a4;
  *(buf + 6) = 2112;
  *(buf + 14) = self;
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
    localIdentifier = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    v28 = localIdentifier;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Checking for existing results from Photos", buf, 0xCu);
  }

  characterRecognitionProperties = [(PHAsset *)self->_asset characterRecognitionProperties];
  if ([characterRecognitionProperties algorithmVersion] == 8 && (objc_msgSend(characterRecognitionProperties, "adjustmentVersion"), v5 = objc_claimAutoreleasedReturnValue(), -[PHAsset adjustmentVersion](self->_asset, "adjustmentVersion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToDate:", v6), v6, v5, v7))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v28 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Loading existing results from Photos", buf, 0xCu);
    }

    data = [characterRecognitionProperties data];
    v10 = data == 0;

    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v28 = localIdentifier3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Photos results exist, but no text was recognized", buf, 0xCu);
      }

      documentObservations = self->_documentObservations;
      self->_documentObservations = MEMORY[0x1E695E0F0];
    }

    else
    {
      v11 = MEMORY[0x1E696ACD0];
      v12 = objc_opt_class();
      data2 = [characterRecognitionProperties data];
      v25 = 0;
      v14 = [v11 unarchivedObjectOfClass:v12 fromData:data2 error:&v25];
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
        localIdentifier4 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v28 = localIdentifier4;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[OCR][%@] Failed to unarchive existing Photos results", buf, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier5 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    v28 = localIdentifier5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[OCR][%@] Asset does not have existing results", buf, 0xCu);
  }

  if (self->_documentObservations)
  {
LABEL_33:
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier6 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v28 = localIdentifier6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[OCR][%@] Successfully reused existing results", buf, 0xCu);
    }
  }

  v23 = self->_documentObservations;

  return v23;
}

- (void)setDocumentObservations:(id)observations
{
  observationsCopy = observations;
  firstObject = [observationsCopy firstObject];
  if (firstObject)
  {
    v5 = [observationsCopy copy];
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
    localIdentifier = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    v28 = localIdentifier;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MRC][%@] Checking for existing results from Photos", buf, 0xCu);
  }

  characterRecognitionProperties = [(PHAsset *)self->_asset characterRecognitionProperties];
  if ([characterRecognitionProperties algorithmVersion] == 8 && (objc_msgSend(characterRecognitionProperties, "adjustmentVersion"), v5 = objc_claimAutoreleasedReturnValue(), -[PHAsset adjustmentVersion](self->_asset, "adjustmentVersion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToDate:", v6), v6, v5, v7))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v28 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MRC][%@] Loading existing results from Photos", buf, 0xCu);
    }

    machineReadableCodeData = [characterRecognitionProperties machineReadableCodeData];
    v10 = machineReadableCodeData == 0;

    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v28 = localIdentifier3;
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
      machineReadableCodeData2 = [characterRecognitionProperties machineReadableCodeData];
      v25 = 0;
      v16 = [v14 unarchivedObjectOfClasses:v13 fromData:machineReadableCodeData2 error:&v25];
      v17 = v25;

      if (v16)
      {
        objc_storeStrong(&self->_barcodeObservations, v16);
      }

      else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier4 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v28 = localIdentifier4;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MRC][%@] Failed to unarchive existing Photos results", buf, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier5 = [(PHAsset *)self->_asset localIdentifier];
    *buf = 138412290;
    v28 = localIdentifier5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MRC][%@] Asset does not have existing results", buf, 0xCu);
  }

  if (self->_barcodeObservations)
  {
LABEL_33:
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier6 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      v28 = localIdentifier6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MRC][%@] Successfully reused existing results", buf, 0xCu);
    }
  }

  v23 = self->_barcodeObservations;

  return v23;
}

- (void)setBarcodeObservations:(id)observations
{
  observationsCopy = observations;
  if (observationsCopy)
  {
    v4 = [observationsCopy copy];
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
      localIdentifier = [(PHAsset *)self->_asset localIdentifier];
      v20 = 138412290;
      v21 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VS][%@] Checking for existing results from Photos", &v20, 0xCu);
    }

    visualSearchProperties = [(PHAsset *)self->_asset visualSearchProperties];
    algorithmVersion = [visualSearchProperties algorithmVersion];
    if (algorithmVersion == VCPPhotosVisualSearchAlgorithmVersion() && ([visualSearchProperties adjustmentVersion], v7 = objc_claimAutoreleasedReturnValue(), -[PHAsset adjustmentVersion](self->_asset, "adjustmentVersion"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToDate:", v8), v8, v7, v9))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
        v20 = 138412290;
        v21 = localIdentifier2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VS][%@] Loading existing results from Photos", &v20, 0xCu);
      }

      visualSearchData = [visualSearchProperties visualSearchData];
      v12 = visualSearchData == 0;

      if (v12)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
          v20 = 138412290;
          v21 = localIdentifier3;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VS][%@] Photos results exist, but empty", &v20, 0xCu);
        }

        visualSearchData2 = 0;
      }

      else
      {
        visualSearchData2 = [visualSearchProperties visualSearchData];
      }

      cachedParseData = self->_cachedParseData;
      self->_cachedParseData = visualSearchData2;

      v15 = MEMORY[0x1E695E118];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier4 = [(PHAsset *)self->_asset localIdentifier];
        v20 = 138412290;
        v21 = localIdentifier4;
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
      localIdentifier = [(PHAsset *)self->_asset localIdentifier];
      v6 = 138412290;
      v7 = localIdentifier;
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

- (void)setCachedParseData:(id)data overwriteExisting:(BOOL)existing
{
  existingCopy = existing;
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = [dataCopy copy];
  cachedParseData = self->_cachedParseData;
  self->_cachedParseData = v7;

  hasCachedParseData = self->_hasCachedParseData;
  self->_hasCachedParseData = MEMORY[0x1E695E118];

  if ([(PHAsset *)self->_asset vcp_needsVisualSearchProcessing]|| existingCopy)
  {
    adjustmentVersion = [(PHAsset *)self->_asset adjustmentVersion];

    if (adjustmentVersion)
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
            localIdentifier = [(PHAsset *)self->_asset localIdentifier];
            mediaAnalysisProperties = [(PHAsset *)self->_asset mediaAnalysisProperties];
            *buf = 138412802;
            v27 = localIdentifier;
            v28 = 1024;
            v29 = v11;
            v30 = 1024;
            localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];
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
        localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412290;
        v27 = localIdentifier2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS][%@] Persisting results to Photos", buf, 0xCu);
      }

      photoLibrary = [(PHAsset *)self->_asset photoLibrary];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70__VCPMADServiceImagePhotosAsset_setCachedParseData_overwriteExisting___block_invoke;
      v22[3] = &unk_1E834FDC0;
      v22[4] = self;
      v25 = v11;
      v23 = dataCopy;
      v24 = v13;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __70__VCPMADServiceImagePhotosAsset_setCachedParseData_overwriteExisting___block_invoke_2;
      v21[3] = &unk_1E834FDE8;
      v21[4] = self;
      v20 = v13;
      [photoLibrary performChanges:v22 completionHandler:v21];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
      adjustmentVersion2 = [(PHAsset *)self->_asset adjustmentVersion];
      [(VCPMADServiceImagePhotosAsset *)localIdentifier3 setCachedParseData:adjustmentVersion2 overwriteExisting:buf];
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
  resources = [(VCPMADServiceImagePhotosAsset *)self resources];
  v3 = [resources countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(resources);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 type] == 102)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [resources countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  asset = [(VCPMADServiceImagePhotosAsset *)self asset];
  vcp_needSceneProcessing = [asset vcp_needSceneProcessing];

  return vcp_needSceneProcessing ^ 1;
}

- (BOOL)fromGenerativePlayground
{
  photosInfoPanelExtendedProperties = [(PHAsset *)self->_asset photosInfoPanelExtendedProperties];
  generativeAIType = [photosInfoPanelExtendedProperties generativeAIType];
  v4 = [generativeAIType integerValue] == 1;

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