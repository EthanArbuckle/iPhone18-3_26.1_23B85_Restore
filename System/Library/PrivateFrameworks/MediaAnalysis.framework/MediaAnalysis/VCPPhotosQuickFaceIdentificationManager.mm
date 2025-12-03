@interface VCPPhotosQuickFaceIdentificationManager
- (BOOL)_faceProcessingPassGoalWithExtendTimeout:(id)timeout;
- (BOOL)_keepCurrentPersonsModelWithExtendTimeout:(id)timeout;
- (BOOL)_modelLastGenerationDidExceedTimeIntervalForType:(unint64_t)type;
- (BOOL)_needToGenerateModelWithType:(unint64_t)type ignoreLastGenerationTime:(BOOL)time withExtendTimeout:(id)timeout;
- (BOOL)_persistPersonsModel:(id)model evaluationMode:(BOOL)mode error:(id *)error;
- (BOOL)_persistPetsModel:(id)model error:(id *)error;
- (VCPPhotosQuickFaceIdentificationManager)initWithPhotoLibrary:(id)library;
- (id)_fetchPersonsToFeedVIPModel:(BOOL)model allowUnverifiedPerson:(BOOL)person;
- (id)_fetchPetsToFeedVIPModel;
- (id)fetchEntityForModelType:(unint64_t)type evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person;
- (int)_classifyFaces:(id)faces forAsset:(id)asset detectedPersons:(id *)persons;
- (int)_generatePersonsModelWithExtendTimeoutBlock:(id)block cancel:(id)cancel evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person;
- (int)_generatePetsModelWithExtendTimeoutBlock:(id)block cancel:(id)cancel;
- (int)_loadPersonsModelAndInitializeFaceAnalyzer;
- (int)_loadPetsModel;
- (int)classifyVIPPets;
- (int)generateVIPModelWithType:(unint64_t)type ignoreLastGenerationTime:(BOOL)time evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person modelGenerated:(BOOL *)generated extendTimeout:(id)timeout andCancel:(id)cancel;
- (int)loadPersonsModelAndInitializeFaceAnalyzerWrapper;
- (int)processAsset:(id)asset onDemandDetection:(BOOL)detection detectedFaces:(id *)faces detectedPersons:(id *)persons;
- (void)personIdentificationForSyndicationPhotoLibrary:(id)library withCancelOrExtendTimeoutBlock:(id)block;
@end

@implementation VCPPhotosQuickFaceIdentificationManager

- (VCPPhotosQuickFaceIdentificationManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = VCPPhotosQuickFaceIdentificationManager;
  v6 = [(VCPPhotosQuickFaceIdentificationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = dispatch_queue_create("com.apple.mediaanalysis.quickfaceid.management", 0);
    management = v7->_management;
    v7->_management = v8;
  }

  return v7;
}

- (int)loadPersonsModelAndInitializeFaceAnalyzerWrapper
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  management = self->_management;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__VCPPhotosQuickFaceIdentificationManager_loadPersonsModelAndInitializeFaceAnalyzerWrapper__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(management, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__91__VCPPhotosQuickFaceIdentificationManager_loadPersonsModelAndInitializeFaceAnalyzerWrapper__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2] && !result[1])
  {
    result = [result _loadPersonsModelAndInitializeFaceAnalyzer];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)_loadPersonsModelAndInitializeFaceAnalyzer
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:self->_photoLibrary];
  if (_os_feature_enabled_impl())
  {
    vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v35 = 0;
    v5 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:vcp_visionCacheStorageDirectoryURL error:&v35];
    v6 = v35;
    gallery = self->_gallery;
    self->_gallery = v5;

    v8 = self->_gallery;
    if (!v8)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VUWGallery instance - %@", buf, 0xCu);
      }

      goto LABEL_43;
    }

    faceprintRevision = [(VUWGallery *)v8 faceprintRevision];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v37 = faceprintRevision;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Gallery uses faceprint with revision %ld", buf, 0xCu);
    }

    if (faceprintRevision == 3737841669)
    {
      v10 = 15;
    }

    else
    {
      v10 = 11;
    }

    [v3 setProcessingVersion:v10];
LABEL_26:

    v29 = [[VCPFaceAnalyzer alloc] initWithContext:v3];
    faceAnalyzer = self->_faceAnalyzer;
    p_faceAnalyzer = &self->_faceAnalyzer;
    *p_faceAnalyzer = v29;

    if (*p_faceAnalyzer)
    {
      v32 = 0;
      goto LABEL_44;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID: failed to initialize face analyzer", buf, 2u);
    }

LABEL_43:
    v32 = -18;
    goto LABEL_44;
  }

  v11 = mach_absolute_time();
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPPersonVIPLoadModel", "", buf, 2u);
  }

  vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:0];
  if (vcp_visionCacheStorageDirectoryURL)
  {
    v34 = 0;
    v16 = [VCPFaceIDModel loadVIPModelAtPath:vcp_visionCacheStorageDirectoryURL withVIPType:0 error:&v34];
    v6 = v34;
    personsModel = self->_personsModel;
    self->_personsModel = v16;

    if (!self->_personsModel)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Model: cannot load Persons Model: %@", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v18 = VCPSignPostLog();
    v19 = v18;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v13, "VCPPersonVIPLoadModel", "", buf, 2u);
    }

    if (v11)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    configuration = [(VNPersonsModel *)self->_personsModel configuration];
    faceprintRequestRevision = [configuration faceprintRequestRevision];

    [v3 setProcessingVersion:{-[VCPPhotosQuickFaceIdentificationManager faceProcessingVersionFromVNFaceprintRequestRevision:](self, "faceProcessingVersionFromVNFaceprintRequestRevision:", faceprintRequestRevision)}];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      configuration2 = [(VNPersonsModel *)self->_personsModel configuration];
      faceprintRequestRevision2 = [configuration2 faceprintRequestRevision];
      processingVersion = [v3 processingVersion];
      *buf = 134218240;
      v37 = faceprintRequestRevision2;
      v38 = 1024;
      v39 = processingVersion;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID Model: model with VNCreateFaceprintRequest revision %lu (FaceProcessing Version%d)", buf, 0x12u);
    }

    v25 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:self->_photoLibrary];
    currentProcessingVersion = [v25 currentProcessingVersion];

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = VCPMAGetRevisionForVisionModel(v27, currentProcessingVersion);
      *buf = 134218240;
      v37 = v28;
      v38 = 1024;
      v39 = currentProcessingVersion;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID Model: system is using VNCreateFaceprintRequest revision %lu (FaceProcessing Version%d)", buf, 0x12u);
    }

    goto LABEL_26;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Model: persistent storageDirectoryURL is nil", buf, 2u);
  }

  v32 = -50;
LABEL_44:

  return v32;
}

- (int)_loadPetsModel
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = mach_absolute_time();
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPPetVIPLoadModel", "", buf, 2u);
  }

  v8 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];
  if (v8)
  {
    v16 = 0;
    v9 = [VCPFaceIDModel loadVIPModelAtPath:v8 withVIPType:1 error:&v16];
    v10 = v16;
    petsModel = self->_petsModel;
    p_petsModel = &self->_petsModel;
    *p_petsModel = v9;

    if (*p_petsModel)
    {
      v13 = VCPSignPostLog();
      v14 = v13;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v5, "VCPPetVIPLoadModel", "", buf, 2u);
      }

      if (v3)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
        LODWORD(v3) = 0;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet Model: cannot load Model: %@", buf, 0xCu);
      }

      LODWORD(v3) = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Pet Model: persistent storageDirectoryURL is nil; skip loading Model", buf, 2u);
    }

    LODWORD(v3) = -50;
  }

  return v3;
}

- (int)_classifyFaces:(id)faces forAsset:(id)asset detectedPersons:(id *)persons
{
  v92 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  assetCopy = asset;
  v49 = facesCopy;
  if (![facesCopy count])
  {
    goto LABEL_31;
  }

  v8 = MEMORY[0x1E696AEC0];
  localIdentifier = [assetCopy localIdentifier];
  v55 = [v8 stringWithFormat:@"[%@][QuickFaceID Classify]", localIdentifier];

  v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v49, "count")}];
  v53 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&unk_1F49BECF8];
  personsCopy = persons;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v49;
  v10 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (!v10)
  {
    goto LABEL_23;
  }

  v52 = *v79;
  do
  {
    v11 = 0;
    do
    {
      if (*v79 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v78 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = MEMORY[0x1E696AEC0];
      localIdentifier2 = [v12 localIdentifier];
      v16 = [v14 stringWithFormat:@"%@[%@]", v55, localIdentifier2];

      imageprintWrapper = [v12 imageprintWrapper];
      data = [imageprintWrapper data];

      v19 = [VCPFaceIDModel faceObservationFromFaceprintData:data];
      v72 = 0;
      v73 = &v72;
      v74 = 0x3032000000;
      v75 = __Block_byref_object_copy__39;
      v76 = __Block_byref_object_dispose__39;
      v77 = 0;
      v66 = 0;
      v67 = &v66;
      v68 = 0x3032000000;
      v69 = __Block_byref_object_copy__39;
      v70 = __Block_byref_object_dispose__39;
      v71 = 0;
      management = self->_management;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__VCPPhotosQuickFaceIdentificationManager__classifyFaces_forAsset_detectedPersons___block_invoke;
      block[3] = &unk_1E834FE50;
      block[4] = self;
      v21 = v19;
      v61 = v21;
      v64 = &v72;
      v22 = v16;
      v62 = v22;
      v63 = v53;
      v65 = &v66;
      dispatch_sync(management, block);
      if (v67[5])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v23 = v67[5];
          *buf = 138412546;
          v84 = v55;
          v85 = 2112;
          v86 = v23;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Matching person %@", buf, 0x16u);
        }

        [v12 setPersonLocalIdentifier:v67[5]];
        [v51 addObject:v67[5]];
      }

      else if (v73[5])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [v12 centerX];
          v25 = v24;
          [v12 centerY];
          v26 = v73[5];
          *buf = 138413058;
          v84 = v55;
          v85 = 2048;
          v86 = v25;
          v87 = 2048;
          v88 = v27;
          v89 = 2112;
          v90 = v26;
          v28 = MEMORY[0x1E69E9C10];
          v29 = OS_LOG_TYPE_ERROR;
          v30 = "%@ No matching person at location (%.3f, %.3f) - %@";
          v31 = 42;
LABEL_21:
          _os_log_impl(&dword_1C9B70000, v28, v29, v30, buf, v31);
        }
      }

      else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [v12 centerX];
        v33 = v32;
        [v12 centerY];
        *buf = 138412802;
        v84 = v55;
        v85 = 2048;
        v86 = v33;
        v87 = 2048;
        v88 = v34;
        v28 = MEMORY[0x1E69E9C10];
        v29 = OS_LOG_TYPE_DEBUG;
        v30 = "%@ No matching person at location (%.3f, %.3f)";
        v31 = 32;
        goto LABEL_21;
      }

      _Block_object_dispose(&v66, 8);
      _Block_object_dispose(&v72, 8);

      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v10 != v11);
    v35 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
    v10 = v35;
  }

  while (v35);
LABEL_23:

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v37 = [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:v51 options:librarySpecificFetchOptions];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v39 = v37;
  v40 = [v39 countByEnumeratingWithState:&v56 objects:v82 count:16];
  if (v40)
  {
    v41 = *v57;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v57 != v41)
        {
          objc_enumerationMutation(v39);
        }

        v43 = *(*(&v56 + 1) + 8 * i);
        localIdentifier3 = [v43 localIdentifier];
        [dictionary setObject:v43 forKeyedSubscript:localIdentifier3];
      }

      v40 = [v39 countByEnumeratingWithState:&v56 objects:v82 count:16];
    }

    while (v40);
  }

  v45 = dictionary;
  *personsCopy = dictionary;

LABEL_31:
  return 0;
}

void __83__VCPPhotosQuickFaceIdentificationManager__classifyFaces_forAsset_detectedPersons___block_invoke(void *a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v2 = a1[5];
    v3 = *(a1[4] + 8);
    v4 = *(a1[8] + 8);
    obj = *(v4 + 40);
    v5 = [v3 recognize:v2 context:0 recognitionPreset:0 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    if (*(*(a1[8] + 8) + 40))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1[6];
        v7 = *(*(a1[8] + 8) + 40);
        *buf = 138412546;
        v34 = v6;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@[VU] Failed to classify face - %@", buf, 0x16u);
      }
    }

    else
    {
      v13 = [v5 firstObject];
      v14 = v13;
      if (v13)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v13 entityIdentifier];
        v17 = [v15 stringWithFormat:@"md:%ld", objc_msgSend(v16, "value")];

        v18 = MEMORY[0x1E6978978];
        v41[0] = v17;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
        v20 = [v18 fetchPersonsWithMdIDs:v19 options:a1[7]];
        v21 = [v20 firstObject];

        if (v21)
        {
          v22 = [v21 localIdentifier];
          v23 = *(a1[9] + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v25 = a1[6];
            v26 = [v21 localIdentifier];
            v27 = [v14 confidence];
            *buf = 138413058;
            v34 = v25;
            v35 = 2112;
            v36 = v26;
            v37 = 2112;
            v38 = v17;
            v39 = 2112;
            v40 = v27;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ %@ with confidence %@", buf, 0x2Au);
          }
        }

        else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v29 = a1[6];
          v30 = [v14 confidence];
          *buf = 138412802;
          v34 = v29;
          v35 = 2112;
          v36 = v17;
          v37 = 2112;
          v38 = v30;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ with confidence %@, but invalid person", buf, 0x20u);
        }
      }

      else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v28 = a1[6];
        *buf = 138412290;
        v34 = v28;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@[VU] No valid identification to face", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = a1[5];
    v9 = *(a1[4] + 16);
    v10 = *(a1[8] + 8);
    v31 = *(v10 + 40);
    v11 = [VCPFaceIDModel classifyFaceObservation:v8 withModel:v9 error:&v31];
    objc_storeStrong((v10 + 40), v31);
    v12 = *(a1[9] + 8);
    v5 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (int)processAsset:(id)asset onDemandDetection:(BOOL)detection detectedFaces:(id *)faces detectedPersons:(id *)persons
{
  detectionCopy = detection;
  v48[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v10 = MEMORY[0x1E696AEC0];
  localIdentifier = [assetCopy localIdentifier];
  v12 = [v10 stringWithFormat:@"[%@] QuickFaceID Analysis", localIdentifier];

  v13 = _os_feature_enabled_impl();
  management = self->_management;
  if (!v13)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __104__VCPPhotosQuickFaceIdentificationManager_processAsset_onDemandDetection_detectedFaces_detectedPersons___block_invoke_449;
    v42[3] = &unk_1E834BDC0;
    v42[4] = self;
    dispatch_sync(management, v42);
    if (!self->_personsModel || !self->_faceAnalyzer)
    {
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v45 = v12;
      v15 = MEMORY[0x1E69E9C10];
      goto LABEL_24;
    }

LABEL_9:
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      deferredProcessingNeeded = [assetCopy deferredProcessingNeeded];
      *buf = 138412546;
      v45 = v12;
      v46 = 1024;
      LODWORD(v47) = deferredProcessingNeeded;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Analyzing asset (deferType: %d)", buf, 0x12u);
    }

    personsCopy = persons;
    v17 = VCPSignPostLog();
    spid = os_signpost_id_generate(v17);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPersonVIPAssetProcessing", "", buf, 2u);
    }

    array = [MEMORY[0x1E695DF70] array];
    if (detectionCopy)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detecting faces", buf, 0xCu);
      }

      faceAnalyzer = self->_faceAnalyzer;
      v41 = 0;
      v22 = [(VCPFaceAnalyzer *)faceAnalyzer quickAnalyzeAsset:assetCopy results:&v41];
      v23 = v41;
      v24 = v23;
      if (v22)
      {
        goto LABEL_41;
      }

      v25 = [v23 objectForKeyedSubscript:@"FaceResults"];
      v26 = [v25 objectForKeyedSubscript:@"FacesToPersist"];
      [array addObjectsFromArray:v26];
    }

    else
    {
      librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v48[0] = *MEMORY[0x1E6978D68];
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
      [librarySpecificFetchOptions setFetchPropertySets:v28];

      [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
      [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
      v29 = [MEMORY[0x1E69787D0] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
      for (i = 0; i < [v29 count]; ++i)
      {
        v31 = [v29 objectAtIndexedSubscript:i];
        v32 = [VCPPhotosFace faceFromPHFace:v31 copyOption:1];
        [array addObject:v32];
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v33 = [array count];
        *buf = 138412546;
        v45 = v12;
        v46 = 2048;
        v47 = v33;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %lu detected faces", buf, 0x16u);
      }

      v22 = [(VCPFaceAnalyzer *)self->_faceAnalyzer updateMissingFaceprintForFaces:array withAsset:assetCopy];

      if (v22)
      {
        goto LABEL_42;
      }
    }

    v22 = [(VCPPhotosQuickFaceIdentificationManager *)self _classifyFaces:array forAsset:assetCopy detectedPersons:personsCopy];
    if (v22)
    {
LABEL_42:

      goto LABEL_43;
    }

    v34 = array;
    *faces = array;
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v35 = [array count];
      *buf = 138412546;
      v45 = v12;
      v46 = 2048;
      v47 = v35;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ processed %lu faces", buf, 0x16u);
    }

    v36 = VCPSignPostLog();
    v24 = v36;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, spid, "VCPPersonVIPAssetProcessing", "", buf, 2u);
    }

    v22 = 0;
LABEL_41:

    goto LABEL_42;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__VCPPhotosQuickFaceIdentificationManager_processAsset_onDemandDetection_detectedFaces_detectedPersons___block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(management, block);
  if (self->_gallery && self->_faceAnalyzer)
  {
    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  *buf = 138412290;
  v45 = v12;
  v15 = MEMORY[0x1E69E9C10];
LABEL_24:
  _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_DEFAULT, "%@ Persons Model is not ready; skip processing", buf, 0xCu);
LABEL_25:
  v22 = 0;
LABEL_43:

  return v22;
}

void *__104__VCPPhotosQuickFaceIdentificationManager_processAsset_onDemandDetection_detectedFaces_detectedPersons___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[1])
  {
    return [result _loadPersonsModelAndInitializeFaceAnalyzer];
  }

  return result;
}

void *__104__VCPPhotosQuickFaceIdentificationManager_processAsset_onDemandDetection_detectedFaces_detectedPersons___block_invoke_449(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _loadPersonsModelAndInitializeFaceAnalyzer];
  }

  return result;
}

- (int)classifyVIPPets
{
  v92[3] = *MEMORY[0x1E69E9840];
  management = self->_management;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(management, block);
  if (self->_petsModel)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BED10];
    v4 = *MEMORY[0x1E6978D70];
    v92[0] = *MEMORY[0x1E6978D80];
    v92[1] = v4;
    v92[2] = *MEMORY[0x1E6978D68];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:3];
    selfCopy = self;
    [librarySpecificFetchOptions setFetchPropertySets:v5];

    v6 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:librarySpecificFetchOptions];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    for (i = 0; i < [v6 count]; ++i)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v6 objectAtIndexedSubscript:i];
      if ([v9 nameSource])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier = [v9 localIdentifier];
          nameSource = [v9 nameSource];
          personLocalIdentifier = [v9 personLocalIdentifier];
          *buf = 138412802;
          *&buf[4] = localIdentifier;
          *&buf[12] = 2048;
          *&buf[14] = nameSource;
          *&buf[22] = 2112;
          v89 = personLocalIdentifier;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: pet (PHFace) %@ already has a nameSource %ld for petPerson %@; skip", buf, 0x20u);
        }
      }

      else if ([v9 isInVIPModel])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier2 = [v9 localIdentifier];
          personLocalIdentifier2 = [v9 personLocalIdentifier];
          *buf = 138412546;
          *&buf[4] = localIdentifier2;
          *&buf[12] = 2112;
          *&buf[14] = personLocalIdentifier2;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: pet (PHFace) %@ is used to train this VIP model with petPerson %@; skip", buf, 0x16u);
        }
      }

      else
      {
        faceClusteringProperties = [v9 faceClusteringProperties];
        faceprint = [faceClusteringProperties faceprint];
        faceprintData = [faceprint faceprintData];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v89 = __Block_byref_object_copy__39;
        v90 = __Block_byref_object_dispose__39;
        v91 = 0;
        v18 = objc_alloc(MEMORY[0x1E6984408]);
        v19 = *&buf[8];
        obj = *(*&buf[8] + 40);
        v20 = [v18 initWithState:faceprintData error:&obj];
        objc_storeStrong((v19 + 40), obj);
        if (v20 && !*(*&buf[8] + 40))
        {
          v22 = objc_alloc(MEMORY[0x1E6984400]);
          LODWORD(v23) = 1065336439;
          v24 = [v22 initWithAnimalprint:v20 confidence:v23];
          *v84 = 0;
          *&v84[8] = v84;
          *&v84[16] = 0x3032000000;
          v85 = __Block_byref_object_copy__39;
          v86 = __Block_byref_object_dispose__39;
          v87 = 0;
          v25 = selfCopy->_management;
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_463;
          v70[3] = &unk_1E834D070;
          v73 = v84;
          v55 = v24;
          v71 = v55;
          v72 = selfCopy;
          v74 = buf;
          dispatch_sync(v25, v70);
          if (*(*&buf[8] + 40))
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              localIdentifier3 = [v9 localIdentifier];
              v27 = *(*&buf[8] + 40);
              *v78 = 138412546;
              v79 = localIdentifier3;
              v80 = 2112;
              v81 = v27;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet: Failed to classify %@ - %@; skip", v78, 0x16u);
            }
          }

          else if (*(*&v84[8] + 40))
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              localIdentifier4 = [v9 localIdentifier];
              v29 = *(*&v84[8] + 40);
              *v78 = 138412546;
              v79 = localIdentifier4;
              v80 = 2112;
              v81 = v29;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: classified %@ to petPerson %@", v78, 0x16u);
            }

            v30 = *(*&v84[8] + 40);
            localIdentifier5 = [v9 localIdentifier];
            [dictionary setObject:v30 forKeyedSubscript:localIdentifier5];

            [array2 addObject:*(*&v84[8] + 40)];
            [array addObject:v9];
          }

          else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            localIdentifier6 = [v9 localIdentifier];
            [v9 centerX];
            v34 = v33;
            [v9 centerY];
            *v78 = 138412802;
            v79 = localIdentifier6;
            v80 = 2048;
            v81 = v34;
            v82 = 2048;
            v83 = v35;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: did not match %@ (at %.3f, %.3f)", v78, 0x20u);
          }

          _Block_object_dispose(v84, 8);
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(*&buf[8] + 40);
          *v84 = 138412546;
          *&v84[4] = v9;
          *&v84[12] = 2112;
          *&v84[14] = v21;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet: Could not create animalprint for pet (PHFace) %@ - %@", v84, 0x16u);
        }

        _Block_object_dispose(buf, 8);
      }

      objc_autoreleasePoolPop(v8);
    }

    librarySpecificFetchOptions2 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_1F49BED28];
    v59 = [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:array2 options:librarySpecificFetchOptions2];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v37 = v59;
    v38 = [v37 countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v38)
    {
      v39 = *v67;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v67 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v66 + 1) + 8 * j);
          localIdentifier7 = [v41 localIdentifier];
          [dictionary2 setObject:v41 forKeyedSubscript:localIdentifier7];
        }

        v38 = [v37 countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v38);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_467;
    aBlock[3] = &unk_1E834D020;
    v43 = array;
    v63 = v43;
    v44 = dictionary;
    v64 = v44;
    v45 = dictionary2;
    v65 = v45;
    v46 = _Block_copy(aBlock);
    photoLibrary = selfCopy->_photoLibrary;
    v61 = 0;
    v48 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v46 error:&v61];
    v49 = v61;
    if (v48)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v50 = [v43 count];
        *buf = 134217984;
        *&buf[4] = v50;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: classified and persisted %lu Pet PHFace", buf, 0xCu);
      }

      code = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v49;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Pet: failed to persist pet classification results: %@", buf, 0xCu);
      }

      code = [v49 code];
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pets Model is not ready; skip classifying", buf, 2u);
    }

    return 0;
  }

  return code;
}

void *__58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[3])
  {
    return [result _loadPetsModel];
  }

  return result;
}

void __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_463(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 24);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [VCPFaceIDModel classifyAnimalObservation:v2 withModel:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_467(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v3)
  {
    v5 = *v19;
    *&v4 = 138412290;
    v16 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = [v7 localIdentifier];
        v10 = [v8 objectForKeyedSubscript:v9];

        if (v10)
        {
          v11 = [v2 objectForKeyedSubscript:v10];
          if (v11)
          {
            goto LABEL_10;
          }

          v12 = [*(a1 + 48) objectForKeyedSubscript:v10];
          if (v12)
          {
            v11 = [MEMORY[0x1E6978988] changeRequestForPerson:v12];
            [v2 setObject:v11 forKeyedSubscript:v10];

LABEL_10:
            v22 = v7;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
            [v11 addFaces:v13];

            v14 = [MEMORY[0x1E69787E0] changeRequestForFace:v7];
            [v14 setNameSource:6];

            goto LABEL_11;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v24 = v10;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet: no petPerson %@; skipping", buf, 0xCu);
          }
        }

LABEL_11:

        ++v6;
      }

      while (v3 != v6);
      v15 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
      v3 = v15;
    }

    while (v15);
  }
}

- (void)personIdentificationForSyndicationPhotoLibrary:(id)library withCancelOrExtendTimeoutBlock:(id)block
{
  v94[3] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  blockCopy = block;
  v6 = MEMORY[0x1E696AEC0];
  v72 = libraryCopy;
  vcp_description = [libraryCopy vcp_description];
  v75 = [v6 stringWithFormat:@"[PersonIdentification][%@]", vcp_description];

  if (([libraryCopy vcp_isSyndicationLibrary] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v86 = v75;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Unsupported library", buf, 0xCu);
    }

    goto LABEL_104;
  }

  if (blockCopy && (blockCopy[2]() & 1) != 0)
  {
    goto LABEL_104;
  }

  v69 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&unk_1F49BED40];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  v8 = *MEMORY[0x1E6978D70];
  v94[0] = *MEMORY[0x1E6978D80];
  v94[1] = v8;
  v94[2] = *MEMORY[0x1E6978D68];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];
  [librarySpecificFetchOptions setFetchPropertySets:v9];

  mediaProcessingFacesSortDescriptorsForGeneratingPersonModel = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [librarySpecificFetchOptions setInternalSortDescriptors:mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"nameSource == %ld", 0];
  [librarySpecificFetchOptions setPredicate:v11];

  v76 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:librarySpecificFetchOptions];
  if (![v76 count])
  {
    if (MediaAnalysisLogLevel() < 6)
    {
      goto LABEL_103;
    }

    v14 = OS_LOG_TYPE_INFO;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_103;
    }

    *buf = 138412290;
    v86 = v75;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%@ No face needs to identify";
LABEL_21:
    _os_log_impl(&dword_1C9B70000, v15, v14, v16, buf, 0xCu);
    goto LABEL_103;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v86 = v75;
    v87 = 2048;
    v88 = [v76 count];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identifying %lu faces", buf, 0x16u);
  }

  if (blockCopy && (blockCopy[2]() & 1) != 0)
  {
    goto LABEL_103;
  }

  v12 = _os_feature_enabled_impl();
  management = self->_management;
  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke;
    block[3] = &unk_1E834BDC0;
    block[4] = self;
    dispatch_sync(management, block);
    if (!self->_gallery)
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_103;
      }

      v14 = OS_LOG_TYPE_DEFAULT;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_103;
      }

      *buf = 138412290;
      v86 = v75;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%@[VU] Persons Model is not ready; skip processing";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_481;
  v83[3] = &unk_1E834BDC0;
  v83[4] = self;
  dispatch_sync(management, v83);
  if (!self->_personsModel)
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_103;
    }

    v14 = OS_LOG_TYPE_DEFAULT;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    *buf = 138412290;
    v86 = v75;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%@ VIP Persons Model is not ready";
    goto LABEL_21;
  }

LABEL_23:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0;
  v18 = MEMORY[0x1E69E9C10];
  v19 = 0;
  while (v17 < [v76 count])
  {
    v20 = v19;
    v21 = v18;
    v22 = objc_autoreleasePoolPush();
    if (!blockCopy || (blockCopy[2]() & 1) == 0)
    {
      v24 = [v76 objectAtIndexedSubscript:v17];
      v25 = MEMORY[0x1E696AEC0];
      localIdentifier = [v24 localIdentifier];
      v73 = [v25 stringWithFormat:@"%@[%@]", v75, localIdentifier];

      faceClusteringProperties = [v24 faceClusteringProperties];
      faceprint = [faceClusteringProperties faceprint];

      if (!faceprint)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v86 = v73;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ Failed to obtain faceprint; skipping", buf, 0xCu);
        }

        v23 = 14;
        goto LABEL_81;
      }

      faceprintData = [faceprint faceprintData];
      v30 = [VCPFaceIDModel faceObservationFromFaceprintData:faceprintData];

      if (!v30)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v86 = v73;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ Failed to obtain face observation; skipping", buf, 0xCu);
        }

        v23 = 14;
        goto LABEL_80;
      }

      if (_os_feature_enabled_impl())
      {
        gallery = self->_gallery;
        v82 = 0;
        v70 = [(VUWGallery *)gallery recognize:v30 context:0 recognitionPreset:0 error:&v82];
        v32 = v82;
        if (v32)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v86 = v73;
            v87 = 2112;
            v88 = v32;
            _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@[VU] Failed to classify face - %@", buf, 0x16u);
          }

          v33 = v32;

          v23 = 14;
LABEL_79:

LABEL_80:
LABEL_81:

          v18 = v21;
          v19 = v20;
          goto LABEL_82;
        }

        firstObject = [v70 firstObject];
        if (firstObject)
        {
          v36 = MEMORY[0x1E696AEC0];
          v65 = firstObject;
          entityIdentifier = [firstObject entityIdentifier];
          v66 = [v36 stringWithFormat:@"md:%ld", objc_msgSend(entityIdentifier, "value")];

          v38 = MEMORY[0x1E6978978];
          v93 = v66;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
          v40 = [v38 fetchPersonsWithMdIDs:v39 options:v69];
          firstObject2 = [v40 firstObject];

          if (firstObject2)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              localIdentifier2 = [firstObject2 localIdentifier];
              confidence = [v65 confidence];
              *buf = 138413058;
              v86 = v73;
              v87 = 2112;
              v88 = localIdentifier2;
              v89 = 2112;
              v90 = *&v66;
              v91 = 2112;
              v92 = confidence;
              _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ (%@) with confidence:%@", buf, 0x2Au);
            }

            localIdentifier3 = [firstObject2 localIdentifier];
            [dictionary setObject:localIdentifier3 forKeyedSubscript:v24];
          }

          else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            confidence2 = [v65 confidence];
            *buf = 138412802;
            v86 = v73;
            v87 = 2112;
            v88 = v66;
            v89 = 2112;
            v90 = *&confidence2;
            _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ with confidence:%@, but invalid person", buf, 0x20u);
          }

          v23 = 0;
          goto LABEL_72;
        }

        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v21, v19))
        {
          *buf = 138412290;
          v86 = v73;
          _os_log_impl(&dword_1C9B70000, v21, v19, "%@[VU] No valid identification", buf, 0xCu);
        }

LABEL_49:
        v23 = 14;
LABEL_72:
        v33 = v70;
        goto LABEL_79;
      }

      personsModel = self->_personsModel;
      v81 = 0;
      v33 = [(VNPersonsModel *)personsModel predictPersonFromFaceObservation:v30 limit:1 canceller:0 error:&v81];
      v70 = v81;
      if (v70)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v86 = v73;
          v87 = 2112;
          v88 = v70;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ Face identification process failed - %@; skipping", buf, 0x16u);
        }

        goto LABEL_49;
      }

      firstObject3 = [v33 firstObject];
      [firstObject3 confidence];
      if (v45 > VCPPersonFaceVIPMatchingThreshold())
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          predictedPersonUniqueIdentifier = [firstObject3 predictedPersonUniqueIdentifier];
          [firstObject3 confidence];
          *buf = 138412802;
          v86 = v73;
          v87 = 2112;
          v88 = predictedPersonUniqueIdentifier;
          v89 = 2048;
          v90 = v47;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@ Face identified as %@ confidence:%.2f", buf, 0x20u);
        }

        firstObject4 = [v33 firstObject];
        predictedPersonUniqueIdentifier2 = [firstObject4 predictedPersonUniqueIdentifier];
        [dictionary setObject:predictedPersonUniqueIdentifier2 forKeyedSubscript:v24];

        goto LABEL_77;
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        firstObject4 = v21;
        v50 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          if (firstObject3)
          {
            v51 = MEMORY[0x1E696AD98];
            [firstObject3 confidence];
            v52 = [v51 numberWithFloat:?];
            v53 = v52;
          }

          else
          {
            v53 = @"NaN";
            v52 = v64;
          }

          v64 = v52;
          *buf = 138412546;
          v86 = v73;
          v87 = 2112;
          v88 = v53;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@ Face not identified, confidence:%@", buf, 0x16u);
          if (firstObject3)
          {
          }

          firstObject4 = v21;
        }

LABEL_77:
      }

      v23 = 0;
      goto LABEL_79;
    }

    v23 = 1;
LABEL_82:
    objc_autoreleasePoolPop(v22);
    if (v23 && v23 != 14)
    {
      goto LABEL_102;
    }

    ++v17;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v55 = [dictionary count];
    v56 = [v76 count];
    *buf = 138412802;
    v86 = v75;
    v87 = 2048;
    v88 = v55;
    v89 = 2048;
    v90 = *&v56;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identified %lu out of %lu faces", buf, 0x20u);
  }

  if ([dictionary count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_486;
    aBlock[3] = &unk_1E834BDC0;
    v80 = dictionary;
    v57 = _Block_copy(aBlock);
    v78 = 0;
    v58 = [v72 performChangesAndWait:v57 error:&v78];
    v59 = v78;
    if (v58)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v86 = v75;
        v60 = MEMORY[0x1E69E9C10];
        v61 = "%@ Successfully persisted identification results";
        v62 = OS_LOG_TYPE_INFO;
        v63 = 12;
        goto LABEL_100;
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v86 = v75;
      v87 = 2112;
      v88 = v59;
      v60 = MEMORY[0x1E69E9C10];
      v61 = "%@ Failed to persist identification results - %@";
      v62 = OS_LOG_TYPE_ERROR;
      v63 = 22;
LABEL_100:
      _os_log_impl(&dword_1C9B70000, v60, v62, v61, buf, v63);
    }
  }

LABEL_102:

LABEL_103:
LABEL_104:
}

void *__121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[1])
  {
    return [result _loadPersonsModelAndInitializeFaceAnalyzer];
  }

  return result;
}

void *__121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_481(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _loadPersonsModelAndInitializeFaceAnalyzer];
  }

  return result;
}

void __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_486(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = *v12;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        v6 = [MEMORY[0x1E69787E0] changeRequestForFace:v5];
        v7 = MEMORY[0x1E6978950];
        v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
        v9 = [v7 uuidFromLocalIdentifier:v8];

        [v6 associateFaceWithPersonUUID:v9];
        [v6 setNameSource:6];
      }

      v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }
}

- (BOOL)_persistPersonsModel:(id)model evaluationMode:(BOOL)mode error:(id *)error
{
  modelCopy = model;
  v8 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:0];
  LOBYTE(error) = [VCPFaceIDModel persistModel:modelCopy toPath:v8 error:error];

  return error;
}

- (BOOL)_persistPetsModel:(id)model error:(id *)error
{
  modelCopy = model;
  v7 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];
  LOBYTE(error) = [VCPFaceIDModel persistPetsModel:modelCopy toPath:v7 error:error];

  return error;
}

- (id)_fetchPersonsToFeedVIPModel:(BOOL)model allowUnverifiedPerson:(BOOL)person
{
  personCopy = person;
  v17[2] = *MEMORY[0x1E69E9840];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@ OR verifiedType = %@", &unk_1F49BD798, &unk_1F49BD7B0];
  [librarySpecificFetchOptions setPredicate:v6];

  if (personCopy)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@", &unk_1F49BD7F8];
    predicate = [librarySpecificFetchOptions predicate];
    v17[0] = predicate;
    v17[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

    v10 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v9];
    [librarySpecificFetchOptions setPredicate:v10];
  }

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v16[0] = v11;
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v13];

  v14 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:librarySpecificFetchOptions];

  return v14;
}

- (id)_fetchPetsToFeedVIPModel
{
  v8[2] = *MEMORY[0x1E69E9840];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:100];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v5];

  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BED58];
  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:0];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:0];
  [librarySpecificFetchOptions setIncludeTorsoOnlyPerson:0];
  v6 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:librarySpecificFetchOptions];

  return v6;
}

- (id)fetchEntityForModelType:(unint64_t)type evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person
{
  v10 = *MEMORY[0x1E69E9840];
  if (type == 1)
  {
    v6 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPetsToFeedVIPModel:1];
  }

  else if (type)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[QuickFaceID] Unknown VIP type (%lu); no entity fetched", &v8, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPersonsToFeedVIPModel:mode allowUnverifiedPerson:person];
  }

  return v6;
}

- (int)_generatePetsModelWithExtendTimeoutBlock:(id)block cancel:(id)cancel
{
  v162[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  cancelCopy = cancel;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v156 = @"[QuickFaceID][PetsModelGeneration]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Starting ...", buf, 0xCu);
  }

  v89 = mach_absolute_time();
  selfCopy = self;
  v6 = VCPSignPostLog();
  spid = os_signpost_id_generate(v6);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPetVIPGenerateModel", "", buf, 2u);
  }

  v93 = [(VCPPhotosQuickFaceIdentificationManager *)self fetchEntityForModelType:1 evaluationMode:0 allowUnverifiedPerson:0];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v162[0] = *MEMORY[0x1E6978D68];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v9];

  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setFetchLimit:512];
  mediaProcessingFacesSortDescriptorsForGeneratingPersonModel = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [librarySpecificFetchOptions setInternalSortDescriptors:mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"nameSource != %ld", 6];
  [librarySpecificFetchOptions setPredicate:v11];

  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BED70];
  v95 = [[VCPPhotosFaceProcessingContext alloc] initWithPhotoLibrary:self->_photoLibrary];
  v12 = objc_alloc_init(MEMORY[0x1E6984470]);
  v149 = v12;
  v105 = [VCPFaceUtils configureVNRequest:&v149 withClass:objc_opt_class() andProcessingVersion:[(VCPPhotosFaceProcessingContext *)v95 processingVersion]];
  v96 = v149;

  if (v105)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v156 = @"[QuickFaceID][PetsModelGeneration]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to initialize VNAnimalObservation", buf, 0xCu);
    }
  }

  else
  {
    v148 = 0;
    v13 = [MEMORY[0x1E6984500] newConfigurationForEntityPrintsGeneratedByRequest:v96 error:&v148];
    v14 = v148;
    v15 = v14;
    v88 = v13;
    if (!v13 || v14)
    {
      type = v14;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v156 = @"[QuickFaceID][PetsModelGeneration]";
        v157 = 2112;
        v158 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to create VNEntityIdentificationModelConfiguration - %@", buf, 0x16u);
      }

      v105 = -18;
    }

    else
    {
      v147 = 0;
      v16 = [MEMORY[0x1E69845C8] modelWithConfiguration:v13 error:&v147];
      v17 = v147;
      v18 = v17;
      v100 = v16;
      if (!v16 || v17)
      {
        type = v17;
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v156 = v18;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VNMutableEntityIdentificationModel - %@", buf, 0xCu);
        }

        v105 = -18;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        obj = v93;
        v20 = [obj countByEnumeratingWithState:&v143 objects:v161 count:16];
        if (v20)
        {
          v105 = 0;
          v92 = *v144;
          while (2)
          {
            v101 = 0;
            v91 = v20;
            do
            {
              if (*v144 != v92)
              {
                objc_enumerationMutation(obj);
              }

              v99 = *(*(&v143 + 1) + 8 * v101);
              context = objc_autoreleasePoolPush();
              if (cancelCopy && cancelCopy[2]())
              {
                if (MediaAnalysisLogLevel() >= 4)
                {
                  v21 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v156 = @"[QuickFaceID][PetsModelGeneration]";
                    _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ Process cancelled", buf, 0xCu);
                  }
                }

                v22 = 0;
                v105 = -128;
              }

              else
              {
                if (blockCopy)
                {
                  blockCopy[2]();
                }

                v116 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v99 options:librarySpecificFetchOptions];
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  localIdentifier = [v99 localIdentifier];
                  v24 = [v116 count];
                  *buf = 138412802;
                  v156 = @"[QuickFaceID][PetsModelGeneration]";
                  v157 = 2112;
                  v158 = localIdentifier;
                  v159 = 2048;
                  v160 = v24;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Fetched entity %@ with %lu faces", buf, 0x20u);
                }

                v103 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v116, "count")}];
                for (i = 0; ; ++i)
                {
                  v25 = [v116 count];
                  v108 = i >= v25;
                  if (i >= v25)
                  {
                    break;
                  }

                  v26 = objc_autoreleasePoolPush();
                  if (cancelCopy && cancelCopy[2]())
                  {
                    if (MediaAnalysisLogLevel() >= 4)
                    {
                      v27 = MEMORY[0x1E69E9C10];
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v156 = @"[QuickFaceID][PetsModelGeneration]";
                        _os_log_impl(&dword_1C9B70000, v27, OS_LOG_TYPE_DEFAULT, "%@ Process cancelled", buf, 0xCu);
                      }
                    }

                    v105 = -128;
                    v28 = 1;
                  }

                  else
                  {
                    if (blockCopy)
                    {
                      blockCopy[2]();
                    }

                    v29 = [v116 objectAtIndexedSubscript:i];
                    faceClusteringProperties = [v29 faceClusteringProperties];
                    faceprint = [faceClusteringProperties faceprint];
                    faceprintData = [faceprint faceprintData];

                    v32 = objc_alloc(MEMORY[0x1E6984408]);
                    v142 = 0;
                    v33 = [v32 initWithState:faceprintData error:&v142];
                    v34 = v142;
                    v35 = v34;
                    if (!v33 || v34)
                    {
                      if (MediaAnalysisLogLevel() >= 4)
                      {
                        v42 = MEMORY[0x1E69E9C10];
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412802;
                          v156 = @"[QuickFaceID][PetsModelGeneration]";
                          v157 = 2112;
                          v158 = v29;
                          v159 = 2112;
                          v160 = v35;
                          _os_log_impl(&dword_1C9B70000, v42, OS_LOG_TYPE_DEFAULT, "%@ Failed to create animalprint for face %@ - %@; skipping...", buf, 0x20u);
                        }
                      }

                      v28 = 24;
                    }

                    else
                    {
                      v36 = objc_alloc(MEMORY[0x1E6984400]);
                      LODWORD(v37) = 1065336439;
                      v38 = [v36 initWithAnimalprint:v33 confidence:v37];
                      if (v38)
                      {
                        [v103 addObject:v38];
                        localIdentifier2 = [v29 localIdentifier];
                        uuid = [v38 uuid];
                        uUIDString = [uuid UUIDString];
                        [dictionary setObject:localIdentifier2 forKeyedSubscript:uUIDString];

                        v28 = 0;
                      }

                      else
                      {
                        if (MediaAnalysisLogLevel() >= 4)
                        {
                          v43 = MEMORY[0x1E69E9C10];
                          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            v156 = @"[QuickFaceID][PetsModelGeneration]";
                            v157 = 2112;
                            v158 = v29;
                            _os_log_impl(&dword_1C9B70000, v43, OS_LOG_TYPE_DEFAULT, "%@ Failed to create animalObservation face %@ ; skipping ...", buf, 0x16u);
                          }
                        }

                        v28 = 24;
                      }
                    }
                  }

                  objc_autoreleasePoolPop(v26);
                  if (v28 != 24 && v28)
                  {
                    goto LABEL_67;
                  }
                }

                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  v44 = [v103 count];
                  *buf = 138412546;
                  v156 = @"[QuickFaceID][PetsModelGeneration]";
                  v157 = 2048;
                  v158 = v44;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Training %lu observations ...", buf, 0x16u);
                }

                if ([v103 count])
                {
                  localIdentifier3 = [v99 localIdentifier];
                  v141 = 0;
                  v46 = [v100 addObservations:v103 toEntityWithUniqueIdentifier:localIdentifier3 error:&v141];
                  v47 = v141;

                  if ((v46 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v156 = @"[QuickFaceID][PetsModelGeneration]";
                    v157 = 2112;
                    v158 = v47;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to train with observations - %@", buf, 0x16u);
                  }
                }

LABEL_67:

                v22 = v108;
              }

              objc_autoreleasePoolPop(context);
              if (!v22)
              {

                type = 0;
                goto LABEL_134;
              }

              ++v101;
            }

            while (v101 != v91);
            v20 = [obj countByEnumeratingWithState:&v143 objects:v161 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v48 = VCPSignPostLog();
        v49 = v48;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v49, OS_SIGNPOST_INTERVAL_END, spid, "VCPPetVIPGenerateModel", "", buf, 2u);
        }

        if (v89)
        {
          mach_absolute_time();
          VCPPerformance_LogMeasurement();
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v156 = @"[QuickFaceID][PetsModelGeneration]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Finished training model", buf, 0xCu);
        }

        v140 = 0;
        v50 = [(VCPPhotosQuickFaceIdentificationManager *)selfCopy _persistPetsModel:v100 error:&v140];
        type = v140;
        if (v50)
        {
          v51 = [MEMORY[0x1E695DFA8] set];
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v106 = obj;
          v52 = [v106 countByEnumeratingWithState:&v136 objects:v154 count:16];
          if (v52)
          {
            v107 = *v137;
            do
            {
              v53 = 0;
              v109 = v52;
              do
              {
                if (*v137 != v107)
                {
                  objc_enumerationMutation(v106);
                }

                v54 = *(*(&v136 + 1) + 8 * v53);
                v113 = objc_autoreleasePoolPush();
                localIdentifier4 = [v54 localIdentifier];
                v135 = 0;
                v117 = [v100 trainingObservationsForEntityWithUniqueIdentifier:localIdentifier4 canceller:0 error:&v135];
                v120 = v135;

                if (v120)
                {
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    localIdentifier5 = [v54 localIdentifier];
                    *buf = 138412802;
                    v156 = @"[QuickFaceID][PetsModelGeneration]";
                    v157 = 2112;
                    v158 = localIdentifier5;
                    v159 = 2112;
                    v160 = v120;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to load observations for %@ from model - %@; skipping ...", buf, 0x20u);
                  }
                }

                else
                {
                  v133 = 0u;
                  v134 = 0u;
                  v131 = 0u;
                  v132 = 0u;
                  v57 = v117;
                  v58 = [v57 countByEnumeratingWithState:&v131 objects:v153 count:16];
                  if (v58)
                  {
                    v59 = *v132;
                    do
                    {
                      for (j = 0; j != v58; ++j)
                      {
                        if (*v132 != v59)
                        {
                          objc_enumerationMutation(v57);
                        }

                        uuid2 = [*(*(&v131 + 1) + 8 * j) uuid];
                        uUIDString2 = [uuid2 UUIDString];
                        v63 = [dictionary objectForKeyedSubscript:uUIDString2];

                        if (v63)
                        {
                          [v51 addObject:v63];
                        }
                      }

                      v58 = [v57 countByEnumeratingWithState:&v131 objects:v153 count:16];
                    }

                    while (v58);
                  }
                }

                objc_autoreleasePoolPop(v113);
                ++v53;
              }

              while (v53 != v109);
              v52 = [v106 countByEnumeratingWithState:&v136 objects:v154 count:16];
            }

            while (v52);
          }

          librarySpecificFetchOptions2 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
          v65 = *MEMORY[0x1E6978D80];
          v152 = *MEMORY[0x1E6978D80];
          v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
          [librarySpecificFetchOptions2 setFetchPropertySets:v66];

          v67 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isInVIPModel == YES"];
          [librarySpecificFetchOptions2 setPredicate:v67];

          [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_1F49BED88];
          v110 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:librarySpecificFetchOptions2];
          v68 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v110, "count")}];
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v69 = v110;
          v70 = [v69 countByEnumeratingWithState:&v127 objects:v151 count:16];
          if (v70)
          {
            v71 = *v128;
            do
            {
              for (k = 0; k != v70; ++k)
              {
                if (*v128 != v71)
                {
                  objc_enumerationMutation(v69);
                }

                localIdentifier6 = [*(*(&v127 + 1) + 8 * k) localIdentifier];
                [v68 addObject:localIdentifier6];
              }

              v70 = [v69 countByEnumeratingWithState:&v127 objects:v151 count:16];
            }

            while (v70);
          }

          v121 = [v68 mutableCopy];
          [v121 minusSet:v51];
          v74 = [v51 mutableCopy];
          [v74 minusSet:v68];
          allObjects = [v121 allObjects];
          allObjects2 = [v74 allObjects];
          v77 = [allObjects arrayByAddingObjectsFromArray:allObjects2];

          if ([v77 count])
          {
            v114 = objc_autoreleasePoolPush();
            librarySpecificFetchOptions3 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
            v150 = v65;
            v118 = librarySpecificFetchOptions2;
            v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
            [librarySpecificFetchOptions3 setFetchPropertySets:v79];

            [librarySpecificFetchOptions3 setIncludedDetectionTypes:&unk_1F49BEDA0];
            photoLibrary = selfCopy->_photoLibrary;
            v123[0] = MEMORY[0x1E69E9820];
            v123[1] = 3221225472;
            v123[2] = __91__VCPPhotosQuickFaceIdentificationManager__generatePetsModelWithExtendTimeoutBlock_cancel___block_invoke;
            v123[3] = &unk_1E834D020;
            v124 = v77;
            v81 = librarySpecificFetchOptions3;
            v125 = v81;
            v126 = v74;
            v122 = 0;
            v82 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v123 error:&v122];
            v83 = v122;
            if (v83)
            {
              v84 = 0;
            }

            else
            {
              v84 = v82;
            }

            librarySpecificFetchOptions2 = v118;
            if (!v84 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v156 = @"[QuickFaceID][PetsModelGeneration]";
              v157 = 2112;
              v158 = v83;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to persist isInVIPModel on trained pets - %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v114);
          }

          v85 = selfCopy->_photoLibrary;
          v86 = [MEMORY[0x1E695DF00] now];
          [(PHPhotoLibrary *)v85 vcp_setAnalysisPreferencesValue:v86 forKey:@"PetIDModelLastGenerationKey"];

          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v156 = @"[QuickFaceID][PetsModelGeneration]";
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Finished model generation and persistence", buf, 0xCu);
          }

          v105 = 0;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v156 = @"[QuickFaceID][PetsModelGeneration]";
            v157 = 2112;
            v158 = type;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to persist model %@", buf, 0x16u);
          }

          v105 = -18;
        }

LABEL_134:
      }
    }
  }

  return v105;
}

void __91__VCPPhotosQuickFaceIdentificationManager__generatePetsModelWithExtendTimeoutBlock_cancel___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [MEMORY[0x1E69787D0] fetchFacesWithLocalIdentifiers:a1[4] options:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [MEMORY[0x1E69787E0] changeRequestForFace:v6];
        v8 = a1[6];
        v9 = [v6 localIdentifier];
        [v7 setIsInVIPModel:{objc_msgSend(v8, "containsObject:", v9)}];
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (int)_generatePersonsModelWithExtendTimeoutBlock:(id)block cancel:(id)cancel evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person
{
  personCopy = person;
  modeCopy = mode;
  v163[4] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  cancelCopy = cancel;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v156 = @"[QuickFaceID][PeopleModelGeneration]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Starting ...", buf, 0xCu);
  }

  v100 = mach_absolute_time();
  selfCopy = self;
  v9 = VCPSignPostLog();
  spid = os_signpost_id_generate(v9);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPersonVIPGenerateModel", "", buf, 2u);
  }

  v107 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPersonsToFeedVIPModel:modeCopy allowUnverifiedPerson:personCopy];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v12 = *MEMORY[0x1E6978D70];
  v99 = *MEMORY[0x1E6978D80];
  v163[0] = *MEMORY[0x1E6978D80];
  v163[1] = v12;
  v13 = *MEMORY[0x1E6978D90];
  v163[2] = *MEMORY[0x1E6978D68];
  v163[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:4];
  [librarySpecificFetchOptions setFetchPropertySets:v14];

  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
  [librarySpecificFetchOptions setFetchLimit:5120];
  mediaProcessingFacesSortDescriptorsForGeneratingPersonModel = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [librarySpecificFetchOptions setInternalSortDescriptors:mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];

  v104 = [librarySpecificFetchOptions copy];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"roll == 0.0"];
  [librarySpecificFetchOptions setInternalPredicate:v16];

  v118 = +[VCPFaceIDModel newMutablePersonsModel];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v111 = 0;
  while (2)
  {
    if (v111 >= [v107 count])
    {
      v61 = VCPSignPostLog();
      v62 = v61;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v62, OS_SIGNPOST_INTERVAL_END, spid, "VCPPersonVIPGenerateModel", "", buf, 2u);
      }

      if (v100)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v156 = @"[QuickFaceID][PeopleModelGeneration]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Finished model generation", buf, 0xCu);
      }

      v147 = 0;
      v63 = [(VCPPhotosQuickFaceIdentificationManager *)selfCopy _persistPersonsModel:v118 evaluationMode:modeCopy error:&v147];
      v112 = v147;
      if (v63)
      {
        v64 = [MEMORY[0x1E695DFA8] set];
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        obja = v107;
        v65 = [obja countByEnumeratingWithState:&v143 objects:v154 count:16];
        if (v65)
        {
          v116 = *v144;
          do
          {
            v66 = 0;
            v117 = v65;
            do
            {
              if (*v144 != v116)
              {
                objc_enumerationMutation(obja);
              }

              v67 = *(*(&v143 + 1) + 8 * v66);
              v120 = objc_autoreleasePoolPush();
              localIdentifier = [v67 localIdentifier];
              v142 = 0;
              v122 = [v118 trainingFaceObservationsForPersonWithUniqueIdentifier:localIdentifier canceller:0 error:&v142];
              v127 = v142;

              if (v127)
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  localIdentifier2 = [v67 localIdentifier];
                  *buf = 138412802;
                  v156 = @"[QuickFaceID][PeopleModelGeneration]";
                  v157 = 2112;
                  v158 = localIdentifier2;
                  v159 = 2112;
                  v160 = v127;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to get face observations for person %@ - %@", buf, 0x20u);
                }
              }

              else
              {
                v140 = 0u;
                v141 = 0u;
                v138 = 0u;
                v139 = 0u;
                v70 = v122;
                v71 = [v70 countByEnumeratingWithState:&v138 objects:v153 count:16];
                if (v71)
                {
                  v72 = *v139;
                  do
                  {
                    for (i = 0; i != v71; ++i)
                    {
                      if (*v139 != v72)
                      {
                        objc_enumerationMutation(v70);
                      }

                      uuid = [*(*(&v138 + 1) + 8 * i) uuid];
                      uUIDString = [uuid UUIDString];
                      v76 = [dictionary objectForKeyedSubscript:uUIDString];

                      if (v76)
                      {
                        [v64 addObject:v76];
                      }
                    }

                    v71 = [v70 countByEnumeratingWithState:&v138 objects:v153 count:16];
                  }

                  while (v71);
                }
              }

              objc_autoreleasePoolPop(v120);
              ++v66;
            }

            while (v66 != v117);
            v65 = [obja countByEnumeratingWithState:&v143 objects:v154 count:16];
          }

          while (v65);
        }

        librarySpecificFetchOptions2 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
        v152 = v99;
        v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
        [librarySpecificFetchOptions2 setFetchPropertySets:v77];

        v78 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isInVIPModel == YES"];
        [librarySpecificFetchOptions2 setPredicate:v78];

        v123 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:librarySpecificFetchOptions2];
        v79 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v123, "count")}];
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v80 = v123;
        v81 = [v80 countByEnumeratingWithState:&v134 objects:v151 count:16];
        if (v81)
        {
          v82 = *v135;
          do
          {
            for (j = 0; j != v81; ++j)
            {
              if (*v135 != v82)
              {
                objc_enumerationMutation(v80);
              }

              localIdentifier3 = [*(*(&v134 + 1) + 8 * j) localIdentifier];
              [v79 addObject:localIdentifier3];
            }

            v81 = [v80 countByEnumeratingWithState:&v134 objects:v151 count:16];
          }

          while (v81);
        }

        v85 = [v79 mutableCopy];
        [v85 minusSet:v64];
        v86 = [v64 mutableCopy];
        [v86 minusSet:v79];
        allObjects = [v85 allObjects];
        allObjects2 = [v86 allObjects];
        v89 = [allObjects arrayByAddingObjectsFromArray:allObjects2];

        if ([v89 count])
        {
          librarySpecificFetchOptions3 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
          v150 = v99;
          v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
          [librarySpecificFetchOptions3 setFetchPropertySets:v91];

          photoLibrary = selfCopy->_photoLibrary;
          v130[0] = MEMORY[0x1E69E9820];
          v130[1] = 3221225472;
          v130[2] = __131__VCPPhotosQuickFaceIdentificationManager__generatePersonsModelWithExtendTimeoutBlock_cancel_evaluationMode_allowUnverifiedPerson___block_invoke;
          v130[3] = &unk_1E834D020;
          v131 = v89;
          v93 = librarySpecificFetchOptions3;
          v132 = v93;
          v133 = v86;
          v129 = 0;
          [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v130 error:&v129];
          v94 = v129;
          if (v94 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v156 = @"[QuickFaceID][PeopleModelGeneration]";
            v157 = 2112;
            v158 = v94;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to persist isInVIPModel on trained faces - %@", buf, 0x16u);
          }
        }

        v95 = selfCopy->_photoLibrary;
        date = [MEMORY[0x1E695DF00] date];
        [(PHPhotoLibrary *)v95 vcp_setAnalysisPreferencesValue:date forKey:@"FaceIDModelLastGenerationKey"];

        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v156 = @"[QuickFaceID][PeopleModelGeneration]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Finished model generation and persistence", buf, 0xCu);
        }

        v97 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v156 = @"[QuickFaceID][PeopleModelGeneration]";
          v157 = 2112;
          v158 = v112;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to persist model %@", buf, 0x16u);
        }

        v97 = -18;
      }

      goto LABEL_136;
    }

    context = objc_autoreleasePoolPush();
    v18 = MEMORY[0x1E69E9C10];
    if (cancelCopy && cancelCopy[2]())
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v156 = @"[QuickFaceID][PeopleModelGeneration]";
        _os_log_impl(&dword_1C9B70000, v18, OS_LOG_TYPE_DEFAULT, "%@ Process cancelled", buf, 0xCu);
      }

      v19 = 1;
      goto LABEL_81;
    }

    if (blockCopy)
    {
      blockCopy[2]();
    }

    v110 = [v107 objectAtIndexedSubscript:v111];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      if ([v110 verifiedType] == 2)
      {
        v20 = @"graph";
      }

      else
      {
        v20 = @"user";
      }

      name = [v110 name];
      localIdentifier4 = [v110 localIdentifier];
      *buf = 138413058;
      v156 = @"[QuickFaceID][PeopleModelGeneration]";
      v157 = 2112;
      v158 = v20;
      v159 = 2112;
      v160 = name;
      v161 = 2112;
      v162 = localIdentifier4;
      _os_log_impl(&dword_1C9B70000, v18, OS_LOG_TYPE_DEBUG, "%@ Building %@-confirmed person %@ (%@)", buf, 0x2Au);
    }

    v23 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v110 options:librarySpecificFetchOptions];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v23 count];
      *buf = 138412546;
      v156 = @"[QuickFaceID][PeopleModelGeneration]";
      v157 = 2048;
      v158 = v24;
      _os_log_impl(&dword_1C9B70000, v18, OS_LOG_TYPE_DEBUG, "%@ fetched %lu faces", buf, 0x16u);
    }

    if ([v23 count] > 0x13)
    {
      v28 = v23;
    }

    else
    {
      v125 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v110 options:v104];

      v25 = MediaAnalysisLogLevel();
      v26 = MEMORY[0x1E69E9C10];
      if (v25 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v27 = [v125 count];
        *buf = 138412546;
        v156 = @"[QuickFaceID][PeopleModelGeneration]";
        v157 = 2048;
        v158 = v27;
        _os_log_impl(&dword_1C9B70000, v26, OS_LOG_TYPE_DEBUG, "%@ Fetched %lu faces without roll predicate", buf, 0x16u);
      }

      v28 = v125;
    }

    v126 = v28;
    v109 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v28, "count")}];
    v29 = 0;
    v106 = 0;
    while (v29 < [v126 count])
    {
      v30 = objc_autoreleasePoolPush();
      if (!cancelCopy || !cancelCopy[2]())
      {
        if (blockCopy)
        {
          blockCopy[2]();
        }

        v32 = [v126 objectAtIndexedSubscript:v29];
        if ([v32 trainingType] == 4 || objc_msgSend(v32, "trainingType") == 2)
        {
          v19 = 17;
LABEL_66:

          goto LABEL_67;
        }

        obj = [v32 faceClusteringProperties];
        faceprint = [obj faceprint];
        faceprintData = [faceprint faceprintData];

        v34 = objc_alloc(MEMORY[0x1E6984520]);
        v149 = 0;
        v35 = [v34 initWithState:faceprintData error:&v149];
        v115 = v149;
        if (v35)
        {
          v36 = objc_alloc_init(MEMORY[0x1E6984518]);
          [v36 setFaceTorsoprint:v35];
          faceprint2 = [v35 faceprint];
          [v36 setFaceprint:faceprint2];

          if (v36)
          {
            faceprint3 = [v36 faceprint];
            v39 = faceprint3 == 0;

            if (v39)
            {
              v19 = 0;
            }

            else
            {
              configuration = [v118 configuration];
              if ([configuration faceprintRequestRevision])
              {
                faceprint4 = [v36 faceprint];
                requestRevision = [faceprint4 requestRevision];
                configuration2 = [v118 configuration];
                LOBYTE(requestRevision) = requestRevision == [configuration2 faceprintRequestRevision];

                if ((requestRevision & 1) == 0)
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    localIdentifier5 = [v32 localIdentifier];
                    faceprint5 = [v36 faceprint];
                    requestRevision2 = [faceprint5 requestRevision];
                    configuration3 = [v118 configuration];
                    faceprintRequestRevision = [configuration3 faceprintRequestRevision];
                    *buf = 138413058;
                    v156 = @"[QuickFaceID][PeopleModelGeneration]";
                    v157 = 2112;
                    v158 = localIdentifier5;
                    v159 = 2048;
                    v160 = requestRevision2;
                    v161 = 2048;
                    v162 = faceprintRequestRevision;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@[%@]: Mismatched faceprint version %lu (expected %lu); skipping ...", buf, 0x2Au);
                  }

                  goto LABEL_60;
                }
              }

              else
              {
              }

              [v109 addObject:v36];
              localIdentifier6 = [v32 localIdentifier];
              uuid2 = [v36 uuid];
              uUIDString2 = [uuid2 UUIDString];
              [dictionary setObject:localIdentifier6 forKeyedSubscript:uUIDString2];

              v19 = 0;
              ++v106;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4)
            {
              v50 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v156 = @"[QuickFaceID][PeopleModelGeneration]";
                v157 = 2112;
                v158 = v32;
                _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_DEFAULT, "%@ Failed to add faceprint to model for face: %@; skipping ...", buf, 0x16u);
              }
            }

LABEL_60:
            v19 = 17;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v49 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v156 = @"[QuickFaceID][PeopleModelGeneration]";
              v157 = 2112;
              v158 = v32;
              v159 = 2112;
              v160 = v115;
              _os_log_impl(&dword_1C9B70000, v49, OS_LOG_TYPE_DEFAULT, "%@ Failed to create faceprint for face: %@ - %@; skipping ...", buf, 0x20u);
            }
          }

          v19 = 17;
        }

        goto LABEL_66;
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v31 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v156 = @"[QuickFaceID][PeopleModelGeneration]";
          _os_log_impl(&dword_1C9B70000, v31, OS_LOG_TYPE_DEFAULT, "%@ Process cancelled", buf, 0xCu);
        }
      }

      v19 = 1;
LABEL_67:
      objc_autoreleasePoolPop(v30);
      if (v19 != 17 && v19)
      {
        goto LABEL_80;
      }

      ++v29;
    }

    v54 = [v109 count];
    v55 = MEMORY[0x1E69E9C10];
    if (v54)
    {
      localIdentifier7 = [v110 localIdentifier];
      v148 = 0;
      v57 = [VCPFaceIDModel addFaceObservations:v109 forPersonIdentifier:localIdentifier7 toModel:v118 error:&v148];
      v58 = v148;

      if (!v57 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v156 = @"[QuickFaceID][PeopleModelGeneration]";
        v157 = 2112;
        v158 = v58;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to add observation to model - %@", buf, 0x16u);
      }

      v55 = MEMORY[0x1E69E9C10];
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      name2 = [v110 name];
      localIdentifier8 = [v110 localIdentifier];
      *buf = 138413058;
      v156 = @"[QuickFaceID][PeopleModelGeneration]";
      v157 = 2048;
      v158 = v106;
      v159 = 2112;
      v160 = name2;
      v161 = 2112;
      v162 = localIdentifier8;
      _os_log_impl(&dword_1C9B70000, v55, OS_LOG_TYPE_DEBUG, "%@ Prepared %lu faces for person %@ (%@)", buf, 0x2Au);
    }

    v19 = 0;
LABEL_80:

LABEL_81:
    objc_autoreleasePoolPop(context);
    if (!v19)
    {
      ++v111;
      continue;
    }

    break;
  }

  v97 = -128;
LABEL_136:

  return v97;
}

void __131__VCPPhotosQuickFaceIdentificationManager__generatePersonsModelWithExtendTimeoutBlock_cancel_evaluationMode_allowUnverifiedPerson___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [MEMORY[0x1E69787D0] fetchFacesWithLocalIdentifiers:a1[4] options:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [MEMORY[0x1E69787E0] changeRequestForFace:v6];
        v8 = a1[6];
        v9 = [v6 localIdentifier];
        [v7 setIsInVIPModel:{objc_msgSend(v8, "containsObject:", v9)}];
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (BOOL)_modelLastGenerationDidExceedTimeIntervalForType:(unint64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  vcp_analysisPreferences = [(PHPhotoLibrary *)self->_photoLibrary vcp_analysisPreferences];
  v5 = @"PetIDModelLastGenerationKey";
  if (!type)
  {
    v5 = @"FaceIDModelLastGenerationKey";
  }

  v6 = v5;
  distantPast = [vcp_analysisPreferences objectForKeyedSubscript:v6];
  if (!distantPast)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:distantPast];
  v10 = v9;

  v11 = 0x15180uLL;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v12 = VCPMAVIPTypeDescription(type);
    v13 = @"No";
    v15 = 138412802;
    v16 = v12;
    if (v10 > v11)
    {
      v13 = @"Yes";
    }

    v17 = 2048;
    v18 = v10;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID %@ Model: Last job generation %.0fs ago, job is due = %@", &v15, 0x20u);
  }

  return v10 > v11;
}

- (BOOL)_faceProcessingPassGoalWithExtendTimeout:(id)timeout
{
  v34 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__VCPPhotosQuickFaceIdentificationManager__faceProcessingPassGoalWithExtendTimeout___block_invoke;
  aBlock[3] = &unk_1E834C9F0;
  v23 = timeoutCopy;
  v27 = v23;
  v24 = _Block_copy(aBlock);
  v25 = 0;
  [VCPAnalysisProgressQuery queryProgressDetail:&v25 photoLibrary:self->_photoLibrary taskID:3 cancelOrExtendTimeoutBlock:v24];
  v5 = v25;
  v6 = [v5 objectForKeyedSubscript:@"total-allowed"];
  integerValue = [v6 integerValue];

  v8 = [v5 objectForKeyedSubscript:@"processed"];
  integerValue2 = [v8 integerValue];

  v10 = [v5 objectForKeyedSubscript:@"failed"];
  integerValue3 = [v10 integerValue];

  v12 = 100 * (integerValue3 + integerValue2);
  v13 = 90 * integerValue;
  v14 = 100 * integerValue3;
  v15 = 10 * integerValue;
  if (integerValue)
  {
    v16 = v12 <= v13;
  }

  else
  {
    v16 = 1;
  }

  v18 = !v16 && v14 <= v15;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v29 = integerValue;
    v30 = 2048;
    v31 = integerValue2;
    v32 = 2048;
    v33 = integerValue3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID [FastMigration]: asset processing progress: total: %ld, processed: %ld, failed: %ld", buf, 0x20u);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v19 = "No";
    if (v12 <= v13)
    {
      v20 = "No";
    }

    else
    {
      v20 = "Yes";
    }

    if (v14 > v15)
    {
      v21 = "Yes";
    }

    else
    {
      v21 = "No";
    }

    *buf = 136315650;
    v29 = v20;
    v30 = 2080;
    v31 = v21;
    if (v18)
    {
      v19 = "Yes";
    }

    v32 = 2080;
    v33 = v19;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID [FastMigration]: asset processing rate: processed>90%%: %s, failure>10%%: %s, pass: %s", buf, 0x20u);
  }

  return v18;
}

- (BOOL)_keepCurrentPersonsModelWithExtendTimeout:(id)timeout
{
  timeoutCopy = timeout;
  if ([objc_opt_class() _fastFaceMigrationEnabled])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    management = self->_management;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__VCPPhotosQuickFaceIdentificationManager__keepCurrentPersonsModelWithExtendTimeout___block_invoke;
    block[3] = &unk_1E834FE78;
    block[4] = self;
    v9 = timeoutCopy;
    v10 = &v11;
    dispatch_sync(management, block);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __85__VCPPhotosQuickFaceIdentificationManager__keepCurrentPersonsModelWithExtendTimeout___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) vcp_vipModelFilepathForVIPType:0];
  if (v2)
  {
    v9 = 0;
    v3 = [VCPFaceIDModel loadVIPModelAtPath:v2 withVIPType:0 error:&v9];
    v4 = v9;
    if (v3)
    {
      v5 = [*(*(a1 + 32) + 16) configuration];
      v6 = [v5 faceprintRequestRevision];

      LODWORD(v5) = [*(a1 + 32) faceProcessingVersionFromVNFaceprintRequestRevision:v6];
      v7 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:*(*(a1 + 32) + 32)];
      v8 = [v7 currentProcessingVersion];

      if (v5 != v8 && ([*(a1 + 32) _faceProcessingPassGoalWithExtendTimeout:*(a1 + 40)] & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID [FastMigration]: cannot load Persons Model: %@", buf, 0xCu);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID [FastMigration]: persistent storageDirectoryURL is nil", buf, 2u);
  }
}

- (BOOL)_needToGenerateModelWithType:(unint64_t)type ignoreLastGenerationTime:(BOOL)time withExtendTimeout:(id)timeout
{
  timeCopy = time;
  v19 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  if (([(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary]& 1) == 0)
  {
    goto LABEL_10;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = VCPMAVIPTypeDescription(type);
    v10 = v9;
    v11 = "NO";
    if (timeCopy)
    {
      v11 = "YES";
    }

    v15 = 138412546;
    v16 = v9;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID %@ Model: ignoreLastGenerationTime: %s", &v15, 0x16u);
  }

  if ([(VCPPhotosQuickFaceIdentificationManager *)self _modelLastGenerationDidExceedTimeIntervalForType:type]|| timeCopy)
  {
    if (type)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(VCPPhotosQuickFaceIdentificationManager *)self _keepCurrentPersonsModelWithExtendTimeout:timeoutCopy];
    }

    v13 = !v12;
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  return v13;
}

- (int)generateVIPModelWithType:(unint64_t)type ignoreLastGenerationTime:(BOOL)time evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person modelGenerated:(BOOL *)generated extendTimeout:(id)timeout andCancel:(id)cancel
{
  personCopy = person;
  modeCopy = mode;
  timeCopy = time;
  v23 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  cancelCopy = cancel;
  if ([(VCPPhotosQuickFaceIdentificationManager *)self _needToGenerateModelWithType:type ignoreLastGenerationTime:timeCopy withExtendTimeout:timeoutCopy])
  {
    if (generated)
    {
      *generated = 1;
    }

    if (type == 1)
    {
      v17 = [(VCPPhotosQuickFaceIdentificationManager *)self _generatePetsModelWithExtendTimeoutBlock:timeoutCopy cancel:cancelCopy];
      goto LABEL_13;
    }

    if (!type)
    {
      v17 = [(VCPPhotosQuickFaceIdentificationManager *)self _generatePersonsModelWithExtendTimeoutBlock:timeoutCopy cancel:cancelCopy evaluationMode:modeCopy allowUnverifiedPerson:personCopy];
LABEL_13:
      v19 = v17;
      goto LABEL_18;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Model: unknown VIP type (%lu); no model generated", &v21, 0xCu);
    }

    v19 = -50;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v18 = VCPMAVIPTypeDescription(type);
      v21 = 138412290;
      typeCopy = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID %@ Model: No need to generate model", &v21, 0xCu);
    }

    v19 = 0;
    if (generated)
    {
      *generated = 0;
    }
  }

LABEL_18:

  return v19;
}

@end