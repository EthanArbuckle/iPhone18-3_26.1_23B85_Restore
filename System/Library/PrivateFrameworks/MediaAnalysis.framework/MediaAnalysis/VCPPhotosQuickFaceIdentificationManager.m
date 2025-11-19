@interface VCPPhotosQuickFaceIdentificationManager
- (BOOL)_faceProcessingPassGoalWithExtendTimeout:(id)a3;
- (BOOL)_keepCurrentPersonsModelWithExtendTimeout:(id)a3;
- (BOOL)_modelLastGenerationDidExceedTimeIntervalForType:(unint64_t)a3;
- (BOOL)_needToGenerateModelWithType:(unint64_t)a3 ignoreLastGenerationTime:(BOOL)a4 withExtendTimeout:(id)a5;
- (BOOL)_persistPersonsModel:(id)a3 evaluationMode:(BOOL)a4 error:(id *)a5;
- (BOOL)_persistPetsModel:(id)a3 error:(id *)a4;
- (VCPPhotosQuickFaceIdentificationManager)initWithPhotoLibrary:(id)a3;
- (id)_fetchPersonsToFeedVIPModel:(BOOL)a3 allowUnverifiedPerson:(BOOL)a4;
- (id)_fetchPetsToFeedVIPModel;
- (id)fetchEntityForModelType:(unint64_t)a3 evaluationMode:(BOOL)a4 allowUnverifiedPerson:(BOOL)a5;
- (int)_classifyFaces:(id)a3 forAsset:(id)a4 detectedPersons:(id *)a5;
- (int)_generatePersonsModelWithExtendTimeoutBlock:(id)a3 cancel:(id)a4 evaluationMode:(BOOL)a5 allowUnverifiedPerson:(BOOL)a6;
- (int)_generatePetsModelWithExtendTimeoutBlock:(id)a3 cancel:(id)a4;
- (int)_loadPersonsModelAndInitializeFaceAnalyzer;
- (int)_loadPetsModel;
- (int)classifyVIPPets;
- (int)generateVIPModelWithType:(unint64_t)a3 ignoreLastGenerationTime:(BOOL)a4 evaluationMode:(BOOL)a5 allowUnverifiedPerson:(BOOL)a6 modelGenerated:(BOOL *)a7 extendTimeout:(id)a8 andCancel:(id)a9;
- (int)loadPersonsModelAndInitializeFaceAnalyzerWrapper;
- (int)processAsset:(id)a3 onDemandDetection:(BOOL)a4 detectedFaces:(id *)a5 detectedPersons:(id *)a6;
- (void)personIdentificationForSyndicationPhotoLibrary:(id)a3 withCancelOrExtendTimeoutBlock:(id)a4;
@end

@implementation VCPPhotosQuickFaceIdentificationManager

- (VCPPhotosQuickFaceIdentificationManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VCPPhotosQuickFaceIdentificationManager;
  v6 = [(VCPPhotosQuickFaceIdentificationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
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
    v4 = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v35 = 0;
    v5 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:v4 error:&v35];
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

    v9 = [(VUWGallery *)v8 faceprintRevision];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v37 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Gallery uses faceprint with revision %ld", buf, 0xCu);
    }

    if (v9 == 3737841669)
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

  v4 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:0];
  if (v4)
  {
    v34 = 0;
    v16 = [VCPFaceIDModel loadVIPModelAtPath:v4 withVIPType:0 error:&v34];
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

    v20 = [(VNPersonsModel *)self->_personsModel configuration];
    v21 = [v20 faceprintRequestRevision];

    [v3 setProcessingVersion:{-[VCPPhotosQuickFaceIdentificationManager faceProcessingVersionFromVNFaceprintRequestRevision:](self, "faceProcessingVersionFromVNFaceprintRequestRevision:", v21)}];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v22 = [(VNPersonsModel *)self->_personsModel configuration];
      v23 = [v22 faceprintRequestRevision];
      v24 = [v3 processingVersion];
      *buf = 134218240;
      v37 = v23;
      v38 = 1024;
      v39 = v24;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID Model: model with VNCreateFaceprintRequest revision %lu (FaceProcessing Version%d)", buf, 0x12u);
    }

    v25 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:self->_photoLibrary];
    v26 = [v25 currentProcessingVersion];

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = VCPMAGetRevisionForVisionModel(v27, v26);
      *buf = 134218240;
      v37 = v28;
      v38 = 1024;
      v39 = v26;
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

- (int)_classifyFaces:(id)a3 forAsset:(id)a4 detectedPersons:(id *)a5
{
  v92 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v48 = a4;
  v49 = v7;
  if (![v7 count])
  {
    goto LABEL_31;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v48 localIdentifier];
  v55 = [v8 stringWithFormat:@"[%@][QuickFaceID Classify]", v9];

  v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v49, "count")}];
  v53 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&unk_1F49BECF8];
  v47 = a5;
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
      v15 = [v12 localIdentifier];
      v16 = [v14 stringWithFormat:@"%@[%@]", v55, v15];

      v17 = [v12 imageprintWrapper];
      v18 = [v17 data];

      v19 = [VCPFaceIDModel faceObservationFromFaceprintData:v18];
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

  v36 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v37 = [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:v51 options:v36];
  v38 = [MEMORY[0x1E695DF90] dictionary];
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
        v44 = [v43 localIdentifier];
        [v38 setObject:v43 forKeyedSubscript:v44];
      }

      v40 = [v39 countByEnumeratingWithState:&v56 objects:v82 count:16];
    }

    while (v40);
  }

  v45 = v38;
  *v47 = v38;

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

- (int)processAsset:(id)a3 onDemandDetection:(BOOL)a4 detectedFaces:(id *)a5 detectedPersons:(id *)a6
{
  v7 = a4;
  v48[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [v9 localIdentifier];
  v12 = [v10 stringWithFormat:@"[%@] QuickFaceID Analysis", v11];

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
      v16 = [v9 deferredProcessingNeeded];
      *buf = 138412546;
      v45 = v12;
      v46 = 1024;
      LODWORD(v47) = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Analyzing asset (deferType: %d)", buf, 0x12u);
    }

    v38 = a6;
    v17 = VCPSignPostLog();
    spid = os_signpost_id_generate(v17);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPersonVIPAssetProcessing", "", buf, 2u);
    }

    v20 = [MEMORY[0x1E695DF70] array];
    if (v7)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detecting faces", buf, 0xCu);
      }

      faceAnalyzer = self->_faceAnalyzer;
      v41 = 0;
      v22 = [(VCPFaceAnalyzer *)faceAnalyzer quickAnalyzeAsset:v9 results:&v41];
      v23 = v41;
      v24 = v23;
      if (v22)
      {
        goto LABEL_41;
      }

      v25 = [v23 objectForKeyedSubscript:@"FaceResults"];
      v26 = [v25 objectForKeyedSubscript:@"FacesToPersist"];
      [v20 addObjectsFromArray:v26];
    }

    else
    {
      v27 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v48[0] = *MEMORY[0x1E6978D68];
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
      [v27 setFetchPropertySets:v28];

      [v27 setIncludeNonvisibleFaces:1];
      [v27 setIncludeTorsoAndFaceDetectionData:1];
      v29 = [MEMORY[0x1E69787D0] fetchFacesInAsset:v9 options:v27];
      for (i = 0; i < [v29 count]; ++i)
      {
        v31 = [v29 objectAtIndexedSubscript:i];
        v32 = [VCPPhotosFace faceFromPHFace:v31 copyOption:1];
        [v20 addObject:v32];
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v33 = [v20 count];
        *buf = 138412546;
        v45 = v12;
        v46 = 2048;
        v47 = v33;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %lu detected faces", buf, 0x16u);
      }

      v22 = [(VCPFaceAnalyzer *)self->_faceAnalyzer updateMissingFaceprintForFaces:v20 withAsset:v9];

      if (v22)
      {
        goto LABEL_42;
      }
    }

    v22 = [(VCPPhotosQuickFaceIdentificationManager *)self _classifyFaces:v20 forAsset:v9 detectedPersons:v38];
    if (v22)
    {
LABEL_42:

      goto LABEL_43;
    }

    v34 = v20;
    *a5 = v20;
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v35 = [v20 count];
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
    v56 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [v56 setIncludedDetectionTypes:&unk_1F49BED10];
    v4 = *MEMORY[0x1E6978D70];
    v92[0] = *MEMORY[0x1E6978D80];
    v92[1] = v4;
    v92[2] = *MEMORY[0x1E6978D68];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:3];
    v58 = self;
    [v56 setFetchPropertySets:v5];

    v6 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:v56];
    v53 = [MEMORY[0x1E695DF70] array];
    v57 = [MEMORY[0x1E695DF70] array];
    v54 = [MEMORY[0x1E695DF90] dictionary];
    for (i = 0; i < [v6 count]; ++i)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v6 objectAtIndexedSubscript:i];
      if ([v9 nameSource])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v10 = [v9 localIdentifier];
          v11 = [v9 nameSource];
          v12 = [v9 personLocalIdentifier];
          *buf = 138412802;
          *&buf[4] = v10;
          *&buf[12] = 2048;
          *&buf[14] = v11;
          *&buf[22] = 2112;
          v89 = v12;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: pet (PHFace) %@ already has a nameSource %ld for petPerson %@; skip", buf, 0x20u);
        }
      }

      else if ([v9 isInVIPModel])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v13 = [v9 localIdentifier];
          v14 = [v9 personLocalIdentifier];
          *buf = 138412546;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: pet (PHFace) %@ is used to train this VIP model with petPerson %@; skip", buf, 0x16u);
        }
      }

      else
      {
        v15 = [v9 faceClusteringProperties];
        v16 = [v15 faceprint];
        v17 = [v16 faceprintData];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v89 = __Block_byref_object_copy__39;
        v90 = __Block_byref_object_dispose__39;
        v91 = 0;
        v18 = objc_alloc(MEMORY[0x1E6984408]);
        v19 = *&buf[8];
        obj = *(*&buf[8] + 40);
        v20 = [v18 initWithState:v17 error:&obj];
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
          v25 = v58->_management;
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_463;
          v70[3] = &unk_1E834D070;
          v73 = v84;
          v55 = v24;
          v71 = v55;
          v72 = v58;
          v74 = buf;
          dispatch_sync(v25, v70);
          if (*(*&buf[8] + 40))
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v9 localIdentifier];
              v27 = *(*&buf[8] + 40);
              *v78 = 138412546;
              v79 = v26;
              v80 = 2112;
              v81 = v27;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet: Failed to classify %@ - %@; skip", v78, 0x16u);
            }
          }

          else if (*(*&v84[8] + 40))
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v28 = [v9 localIdentifier];
              v29 = *(*&v84[8] + 40);
              *v78 = 138412546;
              v79 = v28;
              v80 = 2112;
              v81 = v29;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: classified %@ to petPerson %@", v78, 0x16u);
            }

            v30 = *(*&v84[8] + 40);
            v31 = [v9 localIdentifier];
            [v54 setObject:v30 forKeyedSubscript:v31];

            [v57 addObject:*(*&v84[8] + 40)];
            [v53 addObject:v9];
          }

          else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v32 = [v9 localIdentifier];
            [v9 centerX];
            v34 = v33;
            [v9 centerY];
            *v78 = 138412802;
            v79 = v32;
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

    v60 = [(PHPhotoLibrary *)v58->_photoLibrary librarySpecificFetchOptions];
    [v60 setIncludedDetectionTypes:&unk_1F49BED28];
    v59 = [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:v57 options:v60];
    v36 = [MEMORY[0x1E695DF90] dictionary];
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
          v42 = [v41 localIdentifier];
          [v36 setObject:v41 forKeyedSubscript:v42];
        }

        v38 = [v37 countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v38);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_467;
    aBlock[3] = &unk_1E834D020;
    v43 = v53;
    v63 = v43;
    v44 = v54;
    v64 = v44;
    v45 = v36;
    v65 = v45;
    v46 = _Block_copy(aBlock);
    photoLibrary = v58->_photoLibrary;
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

      v51 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v49;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Pet: failed to persist pet classification results: %@", buf, 0xCu);
      }

      v51 = [v49 code];
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

  return v51;
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

- (void)personIdentificationForSyndicationPhotoLibrary:(id)a3 withCancelOrExtendTimeoutBlock:(id)a4
{
  v94[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v77 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v72 = v5;
  v7 = [v5 vcp_description];
  v75 = [v6 stringWithFormat:@"[PersonIdentification][%@]", v7];

  if (([v5 vcp_isSyndicationLibrary] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v86 = v75;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Unsupported library", buf, 0xCu);
    }

    goto LABEL_104;
  }

  if (v77 && (v77[2]() & 1) != 0)
  {
    goto LABEL_104;
  }

  v69 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&unk_1F49BED40];
  v74 = [v5 librarySpecificFetchOptions];
  [v74 setIncludeOnlyFacesWithFaceprints:1];
  [v74 setIncludeMediaAnalysisProcessingRangeTypes:3];
  v8 = *MEMORY[0x1E6978D70];
  v94[0] = *MEMORY[0x1E6978D80];
  v94[1] = v8;
  v94[2] = *MEMORY[0x1E6978D68];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];
  [v74 setFetchPropertySets:v9];

  v10 = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [v74 setInternalSortDescriptors:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"nameSource == %ld", 0];
  [v74 setPredicate:v11];

  v76 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:v74];
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

  if (v77 && (v77[2]() & 1) != 0)
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
  v68 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0;
  v18 = MEMORY[0x1E69E9C10];
  v19 = 0;
  while (v17 < [v76 count])
  {
    v20 = v19;
    v21 = v18;
    v22 = objc_autoreleasePoolPush();
    if (!v77 || (v77[2]() & 1) == 0)
    {
      v24 = [v76 objectAtIndexedSubscript:v17];
      v25 = MEMORY[0x1E696AEC0];
      v26 = [v24 localIdentifier];
      v73 = [v25 stringWithFormat:@"%@[%@]", v75, v26];

      v27 = [v24 faceClusteringProperties];
      v28 = [v27 faceprint];

      if (!v28)
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

      v29 = [v28 faceprintData];
      v30 = [VCPFaceIDModel faceObservationFromFaceprintData:v29];

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

        v35 = [v70 firstObject];
        if (v35)
        {
          v36 = MEMORY[0x1E696AEC0];
          v65 = v35;
          v37 = [v35 entityIdentifier];
          v66 = [v36 stringWithFormat:@"md:%ld", objc_msgSend(v37, "value")];

          v38 = MEMORY[0x1E6978978];
          v93 = v66;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
          v40 = [v38 fetchPersonsWithMdIDs:v39 options:v69];
          v41 = [v40 firstObject];

          if (v41)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v42 = [v41 localIdentifier];
              v43 = [v65 confidence];
              *buf = 138413058;
              v86 = v73;
              v87 = 2112;
              v88 = v42;
              v89 = 2112;
              v90 = *&v66;
              v91 = 2112;
              v92 = v43;
              _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ (%@) with confidence:%@", buf, 0x2Au);
            }

            v44 = [v41 localIdentifier];
            [v68 setObject:v44 forKeyedSubscript:v24];
          }

          else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v54 = [v65 confidence];
            *buf = 138412802;
            v86 = v73;
            v87 = 2112;
            v88 = v66;
            v89 = 2112;
            v90 = *&v54;
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

      v67 = [v33 firstObject];
      [v67 confidence];
      if (v45 > VCPPersonFaceVIPMatchingThreshold())
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v46 = [v67 predictedPersonUniqueIdentifier];
          [v67 confidence];
          *buf = 138412802;
          v86 = v73;
          v87 = 2112;
          v88 = v46;
          v89 = 2048;
          v90 = v47;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@ Face identified as %@ confidence:%.2f", buf, 0x20u);
        }

        v48 = [v33 firstObject];
        v49 = [v48 predictedPersonUniqueIdentifier];
        [v68 setObject:v49 forKeyedSubscript:v24];

        goto LABEL_77;
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        v48 = v21;
        v50 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          if (v67)
          {
            v51 = MEMORY[0x1E696AD98];
            [v67 confidence];
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
          if (v67)
          {
          }

          v48 = v21;
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
    v55 = [v68 count];
    v56 = [v76 count];
    *buf = 138412802;
    v86 = v75;
    v87 = 2048;
    v88 = v55;
    v89 = 2048;
    v90 = *&v56;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identified %lu out of %lu faces", buf, 0x20u);
  }

  if ([v68 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_486;
    aBlock[3] = &unk_1E834BDC0;
    v80 = v68;
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

- (BOOL)_persistPersonsModel:(id)a3 evaluationMode:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:0];
  LOBYTE(a5) = [VCPFaceIDModel persistModel:v7 toPath:v8 error:a5];

  return a5;
}

- (BOOL)_persistPetsModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];
  LOBYTE(a4) = [VCPFaceIDModel persistPetsModel:v6 toPath:v7 error:a4];

  return a4;
}

- (id)_fetchPersonsToFeedVIPModel:(BOOL)a3 allowUnverifiedPerson:(BOOL)a4
{
  v4 = a4;
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@ OR verifiedType = %@", &unk_1F49BD798, &unk_1F49BD7B0];
  [v5 setPredicate:v6];

  if (v4)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@", &unk_1F49BD7F8];
    v8 = [v5 predicate];
    v17[0] = v8;
    v17[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

    v10 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v9];
    [v5 setPredicate:v10];
  }

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v16[0] = v11;
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v5 setSortDescriptors:v13];

  v14 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v5];

  return v14;
}

- (id)_fetchPetsToFeedVIPModel
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v2 setFetchLimit:100];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [v2 setSortDescriptors:v5];

  [v2 setIncludedDetectionTypes:&unk_1F49BED58];
  [v2 setMinimumVerifiedFaceCount:0];
  [v2 setMinimumUnverifiedFaceCount:0];
  [v2 setIncludeTorsoOnlyPerson:0];
  v6 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v2];

  return v6;
}

- (id)fetchEntityForModelType:(unint64_t)a3 evaluationMode:(BOOL)a4 allowUnverifiedPerson:(BOOL)a5
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v6 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPetsToFeedVIPModel:1];
  }

  else if (a3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[QuickFaceID] Unknown VIP type (%lu); no entity fetched", &v8, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPersonsToFeedVIPModel:a4 allowUnverifiedPerson:a5];
  }

  return v6;
}

- (int)_generatePetsModelWithExtendTimeoutBlock:(id)a3 cancel:(id)a4
{
  v162[1] = *MEMORY[0x1E69E9840];
  v111 = a3;
  v115 = a4;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v156 = @"[QuickFaceID][PetsModelGeneration]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Starting ...", buf, 0xCu);
  }

  v89 = mach_absolute_time();
  v97 = self;
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
  v102 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v162[0] = *MEMORY[0x1E6978D68];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:1];
  [v102 setFetchPropertySets:v9];

  [v102 setIncludeOnlyFacesWithFaceprints:1];
  [v102 setFetchLimit:512];
  v10 = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [v102 setInternalSortDescriptors:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"nameSource != %ld", 6];
  [v102 setPredicate:v11];

  [v102 setIncludedDetectionTypes:&unk_1F49BED70];
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
        v19 = [MEMORY[0x1E695DF90] dictionary];
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
              if (v115 && v115[2]())
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
                if (v111)
                {
                  v111[2]();
                }

                v116 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v99 options:v102];
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  v23 = [v99 localIdentifier];
                  v24 = [v116 count];
                  *buf = 138412802;
                  v156 = @"[QuickFaceID][PetsModelGeneration]";
                  v157 = 2112;
                  v158 = v23;
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
                  if (v115 && v115[2]())
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
                    if (v111)
                    {
                      v111[2]();
                    }

                    v29 = [v116 objectAtIndexedSubscript:i];
                    v112 = [v29 faceClusteringProperties];
                    v30 = [v112 faceprint];
                    v31 = [v30 faceprintData];

                    v32 = objc_alloc(MEMORY[0x1E6984408]);
                    v142 = 0;
                    v33 = [v32 initWithState:v31 error:&v142];
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
                        v39 = [v29 localIdentifier];
                        v40 = [v38 uuid];
                        v41 = [v40 UUIDString];
                        [v19 setObject:v39 forKeyedSubscript:v41];

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
                  v45 = [v99 localIdentifier];
                  v141 = 0;
                  v46 = [v100 addObservations:v103 toEntityWithUniqueIdentifier:v45 error:&v141];
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
        v50 = [(VCPPhotosQuickFaceIdentificationManager *)v97 _persistPetsModel:v100 error:&v140];
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
                v55 = [v54 localIdentifier];
                v135 = 0;
                v117 = [v100 trainingObservationsForEntityWithUniqueIdentifier:v55 canceller:0 error:&v135];
                v120 = v135;

                if (v120)
                {
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    v56 = [v54 localIdentifier];
                    *buf = 138412802;
                    v156 = @"[QuickFaceID][PetsModelGeneration]";
                    v157 = 2112;
                    v158 = v56;
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

                        v61 = [*(*(&v131 + 1) + 8 * j) uuid];
                        v62 = [v61 UUIDString];
                        v63 = [v19 objectForKeyedSubscript:v62];

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

          v64 = [(PHPhotoLibrary *)v97->_photoLibrary librarySpecificFetchOptions];
          v65 = *MEMORY[0x1E6978D80];
          v152 = *MEMORY[0x1E6978D80];
          v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
          [v64 setFetchPropertySets:v66];

          v67 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isInVIPModel == YES"];
          [v64 setPredicate:v67];

          [v64 setIncludedDetectionTypes:&unk_1F49BED88];
          v110 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:v64];
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

                v73 = [*(*(&v127 + 1) + 8 * k) localIdentifier];
                [v68 addObject:v73];
              }

              v70 = [v69 countByEnumeratingWithState:&v127 objects:v151 count:16];
            }

            while (v70);
          }

          v121 = [v68 mutableCopy];
          [v121 minusSet:v51];
          v74 = [v51 mutableCopy];
          [v74 minusSet:v68];
          v75 = [v121 allObjects];
          v76 = [v74 allObjects];
          v77 = [v75 arrayByAddingObjectsFromArray:v76];

          if ([v77 count])
          {
            v114 = objc_autoreleasePoolPush();
            v78 = [(PHPhotoLibrary *)v97->_photoLibrary librarySpecificFetchOptions];
            v150 = v65;
            v118 = v64;
            v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
            [v78 setFetchPropertySets:v79];

            [v78 setIncludedDetectionTypes:&unk_1F49BEDA0];
            photoLibrary = v97->_photoLibrary;
            v123[0] = MEMORY[0x1E69E9820];
            v123[1] = 3221225472;
            v123[2] = __91__VCPPhotosQuickFaceIdentificationManager__generatePetsModelWithExtendTimeoutBlock_cancel___block_invoke;
            v123[3] = &unk_1E834D020;
            v124 = v77;
            v81 = v78;
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

            v64 = v118;
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

          v85 = v97->_photoLibrary;
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

- (int)_generatePersonsModelWithExtendTimeoutBlock:(id)a3 cancel:(id)a4 evaluationMode:(BOOL)a5 allowUnverifiedPerson:(BOOL)a6
{
  v6 = a6;
  v102 = a5;
  v163[4] = *MEMORY[0x1E69E9840];
  v121 = a3;
  v124 = a4;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v156 = @"[QuickFaceID][PeopleModelGeneration]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Starting ...", buf, 0xCu);
  }

  v100 = mach_absolute_time();
  v103 = self;
  v9 = VCPSignPostLog();
  spid = os_signpost_id_generate(v9);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPersonVIPGenerateModel", "", buf, 2u);
  }

  v107 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPersonsToFeedVIPModel:v102 allowUnverifiedPerson:v6];
  v105 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v12 = *MEMORY[0x1E6978D70];
  v99 = *MEMORY[0x1E6978D80];
  v163[0] = *MEMORY[0x1E6978D80];
  v163[1] = v12;
  v13 = *MEMORY[0x1E6978D90];
  v163[2] = *MEMORY[0x1E6978D68];
  v163[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:4];
  [v105 setFetchPropertySets:v14];

  [v105 setIncludeOnlyFacesWithFaceprints:1];
  [v105 setIncludeNonvisibleFaces:1];
  [v105 setFetchLimit:5120];
  v15 = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [v105 setInternalSortDescriptors:v15];

  v104 = [v105 copy];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"roll == 0.0"];
  [v105 setInternalPredicate:v16];

  v118 = +[VCPFaceIDModel newMutablePersonsModel];
  v17 = [MEMORY[0x1E695DF90] dictionary];
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
      v63 = [(VCPPhotosQuickFaceIdentificationManager *)v103 _persistPersonsModel:v118 evaluationMode:v102 error:&v147];
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
              v68 = [v67 localIdentifier];
              v142 = 0;
              v122 = [v118 trainingFaceObservationsForPersonWithUniqueIdentifier:v68 canceller:0 error:&v142];
              v127 = v142;

              if (v127)
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  v69 = [v67 localIdentifier];
                  *buf = 138412802;
                  v156 = @"[QuickFaceID][PeopleModelGeneration]";
                  v157 = 2112;
                  v158 = v69;
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

                      v74 = [*(*(&v138 + 1) + 8 * i) uuid];
                      v75 = [v74 UUIDString];
                      v76 = [v17 objectForKeyedSubscript:v75];

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

        v128 = [(PHPhotoLibrary *)v103->_photoLibrary librarySpecificFetchOptions];
        v152 = v99;
        v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
        [v128 setFetchPropertySets:v77];

        v78 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isInVIPModel == YES"];
        [v128 setPredicate:v78];

        v123 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:v128];
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

              v84 = [*(*(&v134 + 1) + 8 * j) localIdentifier];
              [v79 addObject:v84];
            }

            v81 = [v80 countByEnumeratingWithState:&v134 objects:v151 count:16];
          }

          while (v81);
        }

        v85 = [v79 mutableCopy];
        [v85 minusSet:v64];
        v86 = [v64 mutableCopy];
        [v86 minusSet:v79];
        v87 = [v85 allObjects];
        v88 = [v86 allObjects];
        v89 = [v87 arrayByAddingObjectsFromArray:v88];

        if ([v89 count])
        {
          v90 = [(PHPhotoLibrary *)v103->_photoLibrary librarySpecificFetchOptions];
          v150 = v99;
          v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
          [v90 setFetchPropertySets:v91];

          photoLibrary = v103->_photoLibrary;
          v130[0] = MEMORY[0x1E69E9820];
          v130[1] = 3221225472;
          v130[2] = __131__VCPPhotosQuickFaceIdentificationManager__generatePersonsModelWithExtendTimeoutBlock_cancel_evaluationMode_allowUnverifiedPerson___block_invoke;
          v130[3] = &unk_1E834D020;
          v131 = v89;
          v93 = v90;
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

        v95 = v103->_photoLibrary;
        v96 = [MEMORY[0x1E695DF00] date];
        [(PHPhotoLibrary *)v95 vcp_setAnalysisPreferencesValue:v96 forKey:@"FaceIDModelLastGenerationKey"];

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
    if (v124 && v124[2]())
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

    if (v121)
    {
      v121[2]();
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

      v21 = [v110 name];
      v22 = [v110 localIdentifier];
      *buf = 138413058;
      v156 = @"[QuickFaceID][PeopleModelGeneration]";
      v157 = 2112;
      v158 = v20;
      v159 = 2112;
      v160 = v21;
      v161 = 2112;
      v162 = v22;
      _os_log_impl(&dword_1C9B70000, v18, OS_LOG_TYPE_DEBUG, "%@ Building %@-confirmed person %@ (%@)", buf, 0x2Au);
    }

    v23 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v110 options:v105];
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
      if (!v124 || !v124[2]())
      {
        if (v121)
        {
          v121[2]();
        }

        v32 = [v126 objectAtIndexedSubscript:v29];
        if ([v32 trainingType] == 4 || objc_msgSend(v32, "trainingType") == 2)
        {
          v19 = 17;
LABEL_66:

          goto LABEL_67;
        }

        obj = [v32 faceClusteringProperties];
        v33 = [obj faceprint];
        v119 = [v33 faceprintData];

        v34 = objc_alloc(MEMORY[0x1E6984520]);
        v149 = 0;
        v35 = [v34 initWithState:v119 error:&v149];
        v115 = v149;
        if (v35)
        {
          v36 = objc_alloc_init(MEMORY[0x1E6984518]);
          [v36 setFaceTorsoprint:v35];
          v37 = [v35 faceprint];
          [v36 setFaceprint:v37];

          if (v36)
          {
            v38 = [v36 faceprint];
            v39 = v38 == 0;

            if (v39)
            {
              v19 = 0;
            }

            else
            {
              v40 = [v118 configuration];
              if ([v40 faceprintRequestRevision])
              {
                v41 = [v36 faceprint];
                v42 = [v41 requestRevision];
                v43 = [v118 configuration];
                LOBYTE(v42) = v42 == [v43 faceprintRequestRevision];

                if ((v42 & 1) == 0)
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    v44 = [v32 localIdentifier];
                    v45 = [v36 faceprint];
                    v46 = [v45 requestRevision];
                    v47 = [v118 configuration];
                    v48 = [v47 faceprintRequestRevision];
                    *buf = 138413058;
                    v156 = @"[QuickFaceID][PeopleModelGeneration]";
                    v157 = 2112;
                    v158 = v44;
                    v159 = 2048;
                    v160 = v46;
                    v161 = 2048;
                    v162 = v48;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@[%@]: Mismatched faceprint version %lu (expected %lu); skipping ...", buf, 0x2Au);
                  }

                  goto LABEL_60;
                }
              }

              else
              {
              }

              [v109 addObject:v36];
              v51 = [v32 localIdentifier];
              v52 = [v36 uuid];
              v53 = [v52 UUIDString];
              [v17 setObject:v51 forKeyedSubscript:v53];

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
      v56 = [v110 localIdentifier];
      v148 = 0;
      v57 = [VCPFaceIDModel addFaceObservations:v109 forPersonIdentifier:v56 toModel:v118 error:&v148];
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
      v59 = [v110 name];
      v60 = [v110 localIdentifier];
      *buf = 138413058;
      v156 = @"[QuickFaceID][PeopleModelGeneration]";
      v157 = 2048;
      v158 = v106;
      v159 = 2112;
      v160 = v59;
      v161 = 2112;
      v162 = v60;
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

- (BOOL)_modelLastGenerationDidExceedTimeIntervalForType:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [(PHPhotoLibrary *)self->_photoLibrary vcp_analysisPreferences];
  v5 = @"PetIDModelLastGenerationKey";
  if (!a3)
  {
    v5 = @"FaceIDModelLastGenerationKey";
  }

  v6 = v5;
  v7 = [v4 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF00] distantPast];
  }

  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSinceDate:v7];
  v10 = v9;

  v11 = 0x15180uLL;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v12 = VCPMAVIPTypeDescription(a3);
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

- (BOOL)_faceProcessingPassGoalWithExtendTimeout:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__VCPPhotosQuickFaceIdentificationManager__faceProcessingPassGoalWithExtendTimeout___block_invoke;
  aBlock[3] = &unk_1E834C9F0;
  v23 = v4;
  v27 = v23;
  v24 = _Block_copy(aBlock);
  v25 = 0;
  [VCPAnalysisProgressQuery queryProgressDetail:&v25 photoLibrary:self->_photoLibrary taskID:3 cancelOrExtendTimeoutBlock:v24];
  v5 = v25;
  v6 = [v5 objectForKeyedSubscript:@"total-allowed"];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKeyedSubscript:@"processed"];
  v9 = [v8 integerValue];

  v10 = [v5 objectForKeyedSubscript:@"failed"];
  v11 = [v10 integerValue];

  v12 = 100 * (v11 + v9);
  v13 = 90 * v7;
  v14 = 100 * v11;
  v15 = 10 * v7;
  if (v7)
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
    v29 = v7;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v11;
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

- (BOOL)_keepCurrentPersonsModelWithExtendTimeout:(id)a3
{
  v4 = a3;
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
    v9 = v4;
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

- (BOOL)_needToGenerateModelWithType:(unint64_t)a3 ignoreLastGenerationTime:(BOOL)a4 withExtendTimeout:(id)a5
{
  v5 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (([(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary]& 1) == 0)
  {
    goto LABEL_10;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = VCPMAVIPTypeDescription(a3);
    v10 = v9;
    v11 = "NO";
    if (v5)
    {
      v11 = "YES";
    }

    v15 = 138412546;
    v16 = v9;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID %@ Model: ignoreLastGenerationTime: %s", &v15, 0x16u);
  }

  if ([(VCPPhotosQuickFaceIdentificationManager *)self _modelLastGenerationDidExceedTimeIntervalForType:a3]|| v5)
  {
    if (a3)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(VCPPhotosQuickFaceIdentificationManager *)self _keepCurrentPersonsModelWithExtendTimeout:v8];
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

- (int)generateVIPModelWithType:(unint64_t)a3 ignoreLastGenerationTime:(BOOL)a4 evaluationMode:(BOOL)a5 allowUnverifiedPerson:(BOOL)a6 modelGenerated:(BOOL *)a7 extendTimeout:(id)a8 andCancel:(id)a9
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v15 = a8;
  v16 = a9;
  if ([(VCPPhotosQuickFaceIdentificationManager *)self _needToGenerateModelWithType:a3 ignoreLastGenerationTime:v12 withExtendTimeout:v15])
  {
    if (a7)
    {
      *a7 = 1;
    }

    if (a3 == 1)
    {
      v17 = [(VCPPhotosQuickFaceIdentificationManager *)self _generatePetsModelWithExtendTimeoutBlock:v15 cancel:v16];
      goto LABEL_13;
    }

    if (!a3)
    {
      v17 = [(VCPPhotosQuickFaceIdentificationManager *)self _generatePersonsModelWithExtendTimeoutBlock:v15 cancel:v16 evaluationMode:v11 allowUnverifiedPerson:v10];
LABEL_13:
      v19 = v17;
      goto LABEL_18;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      v22 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Model: unknown VIP type (%lu); no model generated", &v21, 0xCu);
    }

    v19 = -50;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v18 = VCPMAVIPTypeDescription(a3);
      v21 = 138412290;
      v22 = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID %@ Model: No need to generate model", &v21, 0xCu);
    }

    v19 = 0;
    if (a7)
    {
      *a7 = 0;
    }
  }

LABEL_18:

  return v19;
}

@end