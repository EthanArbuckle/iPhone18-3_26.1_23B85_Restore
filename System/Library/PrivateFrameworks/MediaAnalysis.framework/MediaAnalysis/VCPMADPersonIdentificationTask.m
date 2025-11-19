@interface VCPMADPersonIdentificationTask
+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (VCPMADPersonIdentificationTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5;
- (id)identifyObservations:(id)a3 gallery:(id)a4 photoLibrary:(id)a5;
- (id)identifyObservations:(id)a3 personsModel:(id)a4 petsModel:(id)a5 photoLibrary:(id)a6;
- (int)run;
@end

@implementation VCPMADPersonIdentificationTask

- (VCPMADPersonIdentificationTask)initWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VCPMADPersonIdentificationTask;
  v12 = [(VCPMADPersonIdentificationTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_imageAsset, a4);
    objc_storeStrong(&v13->_signpostPayload, a5);
  }

  return v13;
}

+ (id)taskWithRequest:(id)a3 imageAsset:(id)a4 andSignpostPayload:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isMemberOfClass:objc_opt_class()])
  {
    v11 = [[a1 alloc] initWithRequest:v8 imageAsset:v9 andSignpostPayload:v10];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)identifyObservations:(id)a3 gallery:(id)a4 photoLibrary:(id)a5
{
  v79 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v56 = a4;
  v48 = a5;
  v8 = MEMORY[0x1E696AEC0];
  v50 = self;
  v9 = [objc_opt_class() taskName];
  v10 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
  v49 = [v8 stringWithFormat:@"[%@][%@][VU]", v9, v10];

  v47 = [MEMORY[0x1E695DF70] array];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v46;
  v11 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v11)
  {
    v55 = *v63;
    do
    {
      v12 = 0;
      v57 = v11;
      do
      {
        if (*v63 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v62 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v61 = 0;
        v60 = [v56 recognize:v13 context:0 recognitionPreset:1 error:&v61];
        v59 = v61;
        if (v59)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v69 = v49;
            v70 = 2112;
            v71 = v13;
            v72 = 2112;
            v73 = v59;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to identify observation %@ - %@", buf, 0x20u);
          }
        }

        else
        {
          v15 = [v60 firstObject];
          v58 = v15;
          if (v15)
          {
            v16 = MEMORY[0x1E696AEC0];
            v17 = [v15 entityIdentifier];
            v54 = [v16 stringWithFormat:@"md:%ld", objc_msgSend(v17, "value")];

            v18 = MEMORY[0x1E6978978];
            v19 = [v58 tag];
            v20 = [v19 UUIDString];
            v52 = [v18 localIdentifierWithUUID:v20];

            v21 = [v58 confidence];
            [v21 floatValue];
            v23 = v22;

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              [v13 boundingBox];
              v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.*f, y:%.*f}, {width:%.*f, height:%.*f}} ", 3, v24, 3, v25, 3, v26, 3, v27];
              *buf = 138413314;
              v69 = v49;
              v70 = 2112;
              v71 = v52;
              v72 = 2112;
              v73 = v54;
              v74 = 2048;
              v75 = v23;
              v76 = 2112;
              v77 = v28;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Prediction: %@, (mdid: %@), confidence: %.3f at %@", buf, 0x34u);
            }

            v53 = [v48 librarySpecificFetchOptions];
            if ([(MADPersonIdentificationRequest *)v50->_request includePets])
            {
              [v53 setIncludedDetectionTypes:&unk_1F49BEBD8];
            }

            if (v54 && (v29 = MEMORY[0x1E6978978], v67 = v54, [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "fetchPersonsWithMdIDs:options:", v30, v53), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "firstObject"), v32 = objc_claimAutoreleasedReturnValue(), v31, v30, v32) || (v33 = MEMORY[0x1E6978978], v66 = v52, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v66, 1), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "fetchPersonsWithLocalIdentifiers:options:", v34, v53), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "firstObject"), v32 = objc_claimAutoreleasedReturnValue(), v35, v34, v32))
            {
              if ((-[MADPersonIdentificationRequest allowUnverifiedIdentity](v50->_request, "allowUnverifiedIdentity") & 1) != 0 || [v32 isVerified])
              {
                v36 = objc_alloc(MEMORY[0x1E69AE380]);
                v37 = [v32 localIdentifier];
                v38 = [v32 name];
                v39 = [v32 mdID];
                v40 = [v32 detectionType];
                v41 = [v32 isVerified];
                [v13 boundingBox];
                v42 = [v36 initWithPersonIdentifier:v37 personName:v38 mdID:v39 detectionType:v40 verified:v41 boundingBox:? andConfidence:?];

                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v69 = v49;
                  v70 = 2112;
                  v71 = v42;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Adding result - %@", buf, 0x16u);
                }

                [v47 addObject:v42];
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4)
              {
                v43 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v69 = v49;
                  v70 = 2112;
                  v71 = v52;
                  v72 = 2112;
                  v73 = v54;
                  _os_log_impl(&dword_1C9B70000, v43, OS_LOG_TYPE_DEFAULT, "%@ Failed to fetch identity %@ and mdID %@", buf, 0x20u);
                }
              }

              v32 = 0;
            }
          }

          else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v69 = v49;
            v70 = 2112;
            v71 = v13;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ No identification returns for %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v57 != v12);
      v11 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v11);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v44 = [v47 count];
    *buf = 138412546;
    v69 = v49;
    v70 = 2048;
    v71 = v44;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identified %lu observations", buf, 0x16u);
  }

  return v47;
}

- (id)identifyObservations:(id)a3 personsModel:(id)a4 petsModel:(id)a5 photoLibrary:(id)a6
{
  v83 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v63 = a4;
  v59 = a5;
  v62 = a6;
  v10 = MEMORY[0x1E696AEC0];
  v60 = self;
  v11 = [objc_opt_class() taskName];
  v12 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
  v61 = [v10 stringWithFormat:@"[%@][%@][VIP]", v11, v12];

  v58 = [MEMORY[0x1E695DF70] array];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v57;
  v13 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v13)
  {
    v65 = *v70;
    do
    {
      v14 = 0;
      v66 = v13;
      do
      {
        if (*v70 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v69 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v68 = 0;
          v18 = [v63 predictPersonFromFaceObservation:v15 limit:1 canceller:0 error:&v68];
          v19 = v68;
          if (v19)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v75 = v61;
              v76 = 2112;
              v77 = v15;
              v78 = 2112;
              v79 = *&v19;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to identify face %@ - %@", buf, 0x20u);
            }

LABEL_17:

            v18 = v19;
            goto LABEL_37;
          }

          v23 = [v18 firstObject];
          v24 = v23;
          if (v23)
          {
            v21 = [v23 predictedPersonUniqueIdentifier];
            [v24 confidence];
            goto LABEL_23;
          }

          if (MediaAnalysisLogLevel() >= 6)
          {
            v51 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v75 = v61;
              v76 = 2112;
              v77 = v15;
              v52 = v51;
              v53 = "%@ No identification returns for face %@";
LABEL_45:
              _os_log_impl(&dword_1C9B70000, v52, OS_LOG_TYPE_INFO, v53, buf, 0x16u);
            }
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = 0;
            v21 = 0;
            v22 = -1.0;
            goto LABEL_24;
          }

          v67 = 0;
          v18 = [v59 entityPredictionsForObservation:v15 limit:1 canceller:0 error:&v67];
          v19 = v67;
          if (v19)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v75 = v61;
              v76 = 2112;
              v77 = v15;
              v78 = 2112;
              v79 = *&v19;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to identify pet %@ - %@", buf, 0x20u);
            }

            goto LABEL_17;
          }

          v26 = [v18 firstObject];
          v24 = v26;
          if (v26)
          {
            v21 = [v26 entityUniqueIdentifier];
            [v24 confidence];
LABEL_23:
            v27 = v25;

            v20 = isKindOfClass ^ 1;
            v22 = v27;
LABEL_24:
            [v15 boundingBox];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.*f, y:%.*f}, {width:%.*f, height:%.*f}} ", 3, *&v29, 3, *&v31, 3, *&v33, 3, *&v35];
              *buf = 138413058;
              v75 = v61;
              v76 = 2112;
              v77 = v21;
              v78 = 2048;
              v79 = v22;
              v80 = 2112;
              v81 = v36;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Prediction: %@, confidence: %.3f at %@", buf, 0x2Au);
            }

            v37 = [v62 librarySpecificFetchOptions];
            v38 = v37;
            if (v20)
            {
              [v37 setIncludedDetectionTypes:&unk_1F49BEBF0];
            }

            v39 = MEMORY[0x1E6978978];
            v73 = v21;
            v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
            v41 = [v39 fetchPersonsWithLocalIdentifiers:v40 options:v38];
            v42 = [v41 firstObject];

            if (v42)
            {
              if (-[MADPersonIdentificationRequest allowUnverifiedIdentity](v60->_request, "allowUnverifiedIdentity") & 1) != 0 || ([v42 isVerified])
              {
                v43 = objc_alloc(MEMORY[0x1E69AE380]);
                v44 = [v42 localIdentifier];
                v45 = [v42 name];
                v46 = [v42 mdID];
                v47 = [v42 detectionType];
                v48 = [v42 isVerified];
                *&v49 = v22;
                v50 = [v43 initWithPersonIdentifier:v44 personName:v45 mdID:v46 detectionType:v47 verified:v48 boundingBox:v29 andConfidence:{v31, v33, v35, v49}];

                [v58 addObject:v50];
              }
            }

            else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v75 = v61;
              v76 = 2112;
              v77 = v21;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to fetch with identifier %@", buf, 0x16u);
            }

            v18 = v21;
            goto LABEL_37;
          }

          if (MediaAnalysisLogLevel() >= 6)
          {
            v54 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v75 = v61;
              v76 = 2112;
              v77 = v15;
              v52 = v54;
              v53 = "%@ No identification returns for pet %@";
              goto LABEL_45;
            }
          }
        }

LABEL_37:

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v66 != v14);
      v13 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v13);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v55 = [v58 count];
    *buf = 138412546;
    v75 = v61;
    v76 = 2048;
    v77 = v55;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identified %lu observations", buf, 0x16u);
  }

  return v58;
}

- (int)run
{
  v400[1] = *MEMORY[0x1E69E9840];
  v340 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() taskName];
  v339 = [v3 stringWithFormat:@"[%@][%@]", v4, v340];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v339;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Running ...", buf, 0xCu);
    }
  }

  v7 = atomic_load(&self->_canceled);
  if ((v7 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(VCPMADServiceImageAsset *)self->_imageAsset asset];
      [v9 fetchPropertySetsIfNeeded];
      v10 = [v9 importProperties];
      v335 = [v10 importedBy] == 2;
    }

    else
    {
      v335 = -1;
    }

    v11 = VCPSignPostPersistentLog();
    v12 = os_signpost_id_generate(v11);

    v13 = VCPSignPostPersistentLog();
    v14 = v13;
    v15 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "VCPMADPersonIdentificationTask_FetchResults", " enableTelemetry=YES ", buf, 2u);
    }

    v338 = [MEMORY[0x1E695DF70] arrayWithObject:&unk_1F49BC2C8];
    if ([(MADPersonIdentificationRequest *)self->_request includePets])
    {
      [v338 addObjectsFromArray:&unk_1F49BEC08];
    }

    v337 = [(VCPMADServiceImageAsset *)self->_imageAsset facesWithDetectionTypes:v338];
    if (v337)
    {
      v333 = objc_autoreleasePoolPush();
      if ([v337 count])
      {
        v16 = VCPSignPostLog();
        spid = os_signpost_id_generate(v16);

        v17 = VCPSignPostLog();
        v18 = v17;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          signpostPayload = self->_signpostPayload;
          *buf = 138412290;
          *&buf[4] = signpostPayload;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADPersonIdentificationTask_ExistingFaces", "%@", buf, 0xCu);
        }

        v20 = [v337 firstObject];
        v21 = [v20 photoLibrary];
        v22 = [v21 librarySpecificFetchOptions];

        if ([(MADPersonIdentificationRequest *)self->_request includePets])
        {
          [v22 setIncludedDetectionTypes:&unk_1F49BEC20];
        }

        v23 = [MEMORY[0x1E695DF70] array];
        v363[0] = MEMORY[0x1E69E9820];
        v363[1] = 3221225472;
        v363[2] = __37__VCPMADPersonIdentificationTask_run__block_invoke;
        v363[3] = &unk_1E834E680;
        v24 = v22;
        v364 = v24;
        v365 = self;
        v25 = v23;
        v366 = v25;
        [v337 enumerateObjectsUsingBlock:v363];
        request = self->_request;
        v27 = [objc_alloc(MEMORY[0x1E69AE378]) initWithResultItems:v25 frontCameraCaptureState:v335];
        v400[0] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v400 count:1];
        [(MADPersonIdentificationRequest *)request setResults:v28];

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v339;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Complete", buf, 0xCu);
        }

        v29 = VCPSignPostPersistentLog();
        v30 = v29;
        if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          v31 = v340;
          v32 = [v340 UTF8String];
          *buf = 136446466;
          *&buf[4] = "Success";
          *&buf[12] = 2082;
          *&buf[14] = v32;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v12, "VCPMADPersonIdentificationTask_FetchResults", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
        }

        v33 = VCPSignPostLog();
        v34 = v33;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          v35 = self->_signpostPayload;
          *buf = 138412290;
          *&buf[4] = v35;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADPersonIdentificationTask_ExistingFaces", "%@", buf, 0xCu);
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v339;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ No face detected from CVPixelBuffer", buf, 0xCu);
        }

        [(MADPersonIdentificationRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];
        v57 = VCPSignPostPersistentLog();
        v24 = v57;
        if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
        {
          v58 = v340;
          v59 = [v340 UTF8String];
          *buf = 136446466;
          *&buf[4] = "NoDetectedFaceCount";
          *&buf[12] = 2082;
          *&buf[14] = v59;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v12, "VCPMADPersonIdentificationTask_FetchResults", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v333);
      goto LABEL_279;
    }

    v36 = VCPSignPostPersistentLog();
    v37 = v36;
    if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      v38 = v340;
      v39 = [v340 UTF8String];
      *buf = 136446466;
      *&buf[4] = "NoExistingResults";
      *&buf[12] = 2082;
      *&buf[14] = v39;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_INTERVAL_END, v12, "VCPMADPersonIdentificationTask_FetchResults", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
    }

    if (([(MADPersonIdentificationRequest *)self->_request allowOnDemand]& 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v339;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Complete without on-demand disabled", buf, 0xCu);
      }

      [(MADPersonIdentificationRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];
      goto LABEL_279;
    }

    v40 = VCPSignPostPersistentLog();
    v334 = os_signpost_id_generate(v40);

    v41 = VCPSignPostPersistentLog();
    v42 = v41;
    v43 = v334 - 1;
    if (v334 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v334, "VCPMADPersonIdentificationTask_OnDemand", " enableTelemetry=YES ", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v397 = __Block_byref_object_copy__35;
    v398 = __Block_byref_object_dispose__35;
    v399 = 0;
    v357 = 0;
    v358 = &v357;
    v359 = 0x3032000000;
    v360 = __Block_byref_object_copy__35;
    v361 = __Block_byref_object_dispose__35;
    v362 = 0;
    v329 = dispatch_semaphore_create(0);
    v44 = qos_class_self();
    v45 = dispatch_get_global_queue(v44, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__VCPMADPersonIdentificationTask_run__block_invoke_419;
    block[3] = &unk_1E834E6A8;
    block[4] = self;
    v355 = buf;
    v356 = &v357;
    spida = v329;
    v354 = spida;
    dispatch_async(v45, block);

    v46 = VCPSignPostLog();
    v47 = os_signpost_id_generate(v46);

    v48 = VCPSignPostLog();
    v49 = v48;
    if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      v50 = self->_signpostPayload;
      *v368 = 138412290;
      v369 = v50;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v47, "VCPMADPersonIdentificationTask_loadBuffer", "%@", v368, 0xCu);
    }

    cf = 0;
    v351 = 0;
    v51 = [(MADPersonIdentificationRequest *)self->_request useLowResolutionPicture];
    if (v51)
    {
      imageAsset = self->_imageAsset;
      v350 = 0;
      v53 = [(VCPMADServiceImageAsset *)imageAsset loadLowResPixelBuffer:&cf orientation:&v351 error:&v350];
      v54 = v350;
      if (!v53)
      {
        goto LABEL_75;
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v55 = MEMORY[0x1E69E9C10];
        v56 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *v368 = 138412802;
          v369 = v339;
          v370 = 1024;
          *v371 = v53;
          *&v371[4] = 2112;
          *&v371[6] = v54;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to load low-res image (%d) - %@", v368, 0x1Cu);
        }
      }
    }

    else
    {
      v54 = 0;
    }

    v60 = self->_imageAsset;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v51)
    {
      v61 = 0;
    }

    else
    {
      v61 = &v349;
    }

    if ((v51 & 1) == 0)
    {
      v349 = v54;
    }

    v62 = [(VCPMADServiceImageAsset *)v60 loadPixelBuffer:&cf orientation:&v351 error:v61];
    if ((v51 & 1) == 0)
    {
      v63 = v349;

      v54 = v63;
    }

    if (v62)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v368 = 138412802;
        v369 = v339;
        v370 = 1024;
        *v371 = v62;
        *&v371[4] = 2112;
        *&v371[6] = v54;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to load image (%d) - %@", v368, 0x1Cu);
      }

      v64 = self->_request;
      v65 = MEMORY[0x1E696ABC0];
      v394 = *MEMORY[0x1E696A578];
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load image"];
      v395 = v66;
      v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v395 forKeys:&v394 count:1];
      v68 = [v65 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v67];
      [(MADPersonIdentificationRequest *)v64 setError:v68];

      if (v54)
      {
        v69 = [v54 description];
      }

      else
      {
        v69 = @"PixelBuffer";
      }

      v88 = VCPSignPostPersistentLog();
      v89 = v88;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
      {
        v90 = v69;
        v91 = [(__CFString *)v69 UTF8String];
        v92 = v340;
        v93 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = v91;
        v370 = 2082;
        *v371 = v93;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v89, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
      }

      goto LABEL_278;
    }

LABEL_75:
    v70 = VCPSignPostLog();
    v71 = v70;
    if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
    {
      v72 = self->_signpostPayload;
      *v368 = 138412290;
      v369 = v72;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v71, OS_SIGNPOST_INTERVAL_END, v47, "VCPMADPersonIdentificationTask_loadBuffer", "%@", v368, 0xCu);
    }

    v73 = VCPSignPostLog();
    v74 = os_signpost_id_generate(v73);

    v75 = VCPSignPostLog();
    v76 = v75;
    if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
    {
      v77 = self->_signpostPayload;
      *v368 = 138412290;
      v369 = v77;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v76, OS_SIGNPOST_INTERVAL_BEGIN, v74, "VCPMADPersonIdentificationTask_createVisionImageRequest", "%@", v368, 0xCu);
    }

    v348 = 0;
    v78 = [VCPFaceUtils configureVNRequest:&v348 withClass:objc_opt_class() andVisionRevision:[(MADPersonIdentificationRequest *)self->_request faceDetectorVisionRevision]];
    v69 = v348;
    if (v78)
    {
      v330 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to configuate VNDetectFaceRectanglesRequest", v339];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v368 = 138412290;
        v369 = v330;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v368, 0xCu);
      }

      v79 = self->_request;
      v80 = MEMORY[0x1E696ABC0];
      v392 = *MEMORY[0x1E696A578];
      v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v330];
      v393 = v81;
      v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v393 forKeys:&v392 count:1];
      v83 = [v80 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v82];
      [(MADPersonIdentificationRequest *)v79 setError:v83];

      v84 = VCPSignPostPersistentLog();
      v85 = v84;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
      {
        v86 = v340;
        v87 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = "ConfigureVNDetectFaceRectanglesRequest";
        v370 = 2082;
        *v371 = v87;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v85, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
      }

      goto LABEL_277;
    }

    v347 = 0;
    v94 = [VCPFaceUtils configureVNRequest:&v347 withClass:objc_opt_class() andProcessingVersion:15];
    v330 = v347;
    if (v94)
    {
      v328 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to configuate VNCreateFaceprintRequest", v339];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v368 = 138412290;
        v369 = v328;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v368, 0xCu);
      }

      v95 = self->_request;
      v96 = MEMORY[0x1E696ABC0];
      v390 = *MEMORY[0x1E696A578];
      v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v328];
      v391 = v97;
      v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v391 forKeys:&v390 count:1];
      v99 = [v96 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v98];
      [(MADPersonIdentificationRequest *)v95 setError:v99];

      v100 = VCPSignPostPersistentLog();
      v101 = v100;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
      {
        v102 = v340;
        v103 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = "ConfigureVNCreateFaceprintRequest";
        v370 = 2082;
        *v371 = v103;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v101, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
      }

      goto LABEL_276;
    }

    v325 = v69;
    if ([(MADPersonIdentificationRequest *)self->_request includePets])
    {
      v346 = 0;
      v104 = [VCPFaceUtils configureVNRequest:&v346 withClass:objc_opt_class() andProcessingVersion:15];
      v328 = v346;
      if (v104)
      {
        v326 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to configure VNRecognizeAnimalFacesRequest", v339];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v368 = 138412290;
          v369 = v326;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v368, 0xCu);
        }

        v105 = self->_request;
        v106 = MEMORY[0x1E696ABC0];
        v388 = *MEMORY[0x1E696A578];
        v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v326];
        v389 = v107;
        v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v389 forKeys:&v388 count:1];
        v109 = [v106 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v108];
        [(MADPersonIdentificationRequest *)v105 setError:v109];

        log = VCPSignPostPersistentLog();
        if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
        {
          v110 = v340;
          v111 = [v340 UTF8String];
          *v368 = 136446466;
          v369 = "ConfigureVNRecognizeAnimalFacesRequest";
          v370 = 2082;
          *v371 = v111;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, log, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
        }

        goto LABEL_275;
      }

      v345 = 0;
      v150 = [VCPFaceUtils configureVNRequest:&v345 withClass:objc_opt_class() andProcessingVersion:15];
      v326 = v345;
      if (v150)
      {
        log = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to configure VNCreateAnimalprintRequest", v339];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v368 = 138412290;
          v369 = log;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v368, 0xCu);
        }

        v151 = self->_request;
        v152 = MEMORY[0x1E696ABC0];
        v386 = *MEMORY[0x1E696A578];
        v153 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", log];
        v387 = v153;
        v154 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v387 forKeys:&v386 count:1];
        v155 = [v152 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v154];
        [(MADPersonIdentificationRequest *)v151 setError:v155];

        v156 = VCPSignPostPersistentLog();
        v157 = v156;
        if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v156))
        {
          v158 = v340;
          v159 = [v340 UTF8String];
          *v368 = 136446466;
          v369 = "ConfigureVNCreateAnimalprintRequest";
          v370 = 2082;
          *v371 = v159;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v157, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
        }

        goto LABEL_275;
      }
    }

    else
    {
      v326 = 0;
      v328 = 0;
    }

    v112 = VCPSignPostLog();
    v113 = v112;
    if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
    {
      v114 = self->_signpostPayload;
      *v368 = 138412290;
      v369 = v114;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v113, OS_SIGNPOST_INTERVAL_END, v74, "VCPMADPersonIdentificationTask_createVisionImageRequest", "%@", v368, 0xCu);
    }

    v115 = objc_alloc(MEMORY[0x1E69845B8]);
    v116 = cf;
    v117 = [*(*&buf[8] + 40) session];
    log = [v115 initWithCVPixelBuffer:v116 options:MEMORY[0x1E695E0F8] session:v117];

    v118 = VCPSignPostPersistentLog();
    v319 = os_signpost_id_generate(v118);

    v119 = VCPSignPostPersistentLog();
    v120 = v119;
    v121 = v319 - 1;
    if (v319 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v120, OS_SIGNPOST_INTERVAL_BEGIN, v319, "VCPMADPersonIdentificationTask_detectFace", " enableTelemetry=YES ", v368, 2u);
    }

    v385 = v69;
    v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v385 count:1];
    v344 = 0;
    v123 = [log performRequests:v122 error:&v344];
    v324 = v344;

    if ((v123 & 1) == 0)
    {
      v135 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to detect faces - %@", v339, v324];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v368 = 138412290;
        v369 = v135;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v368, 0xCu);
      }

      v136 = self->_request;
      v137 = MEMORY[0x1E696ABC0];
      v383 = *MEMORY[0x1E696A578];
      v138 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v135];
      v139 = v135;
      v384 = v138;
      v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
      v141 = [v137 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v140];
      [(MADPersonIdentificationRequest *)v136 setError:v141];

      v142 = VCPSignPostPersistentLog();
      v143 = v142;
      if (v121 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v142))
      {
        v144 = v340;
        v145 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = v145;
        v370 = 2050;
        *v371 = -1;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v143, OS_SIGNPOST_INTERVAL_END, v319, "VCPMADPersonIdentificationTask_detectFace", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v368, 0x16u);
      }

      v146 = VCPSignPostPersistentLog();
      v147 = v146;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v146))
      {
        v148 = v340;
        v149 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = "DetectFace";
        v370 = 2082;
        *v371 = v149;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v147, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
      }

      goto LABEL_274;
    }

    v124 = [(__CFString *)v69 results];
    v318 = [v124 count];

    v125 = VCPSignPostPersistentLog();
    v126 = v125;
    if (v121 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v125))
    {
      v127 = v340;
      v128 = [v340 UTF8String];
      *v368 = 136446466;
      v369 = v128;
      v370 = 2050;
      *v371 = v318;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v126, OS_SIGNPOST_INTERVAL_END, v319, "VCPMADPersonIdentificationTask_detectFace", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v368, 0x16u);
    }

    if ([(MADPersonIdentificationRequest *)self->_request maximumFaceCount]&& v318 >= [(MADPersonIdentificationRequest *)self->_request maximumFaceCount])
    {
      v160 = [(__CFString *)v69 results];
      v131 = [v160 sortedArrayUsingComparator:&__block_literal_global_465];

      v161 = [v131 subarrayWithRange:0, [(MADPersonIdentificationRequest *)self->_request maximumFaceCount]];
      [v330 setInputFaceObservations:v161];

      if (MediaAnalysisLogLevel() >= 7)
      {
        v162 = MEMORY[0x1E69E9C10];
        v163 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
        {
          v164 = [(__CFString *)v69 results];
          v165 = [v164 count];
          v166 = [v330 inputFaceObservations];
          v167 = [v166 count];
          *v368 = 138412802;
          v369 = v339;
          v370 = 2048;
          *v371 = v165;
          *&v371[8] = 2048;
          *&v371[10] = v167;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detected %lu faces, identifying top %lu faces (by confidence) ...", v368, 0x20u);
        }
      }
    }

    else
    {
      v129 = [(__CFString *)v69 results];
      [v330 setInputFaceObservations:v129];

      v130 = v318;
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_146;
      }

      v131 = MEMORY[0x1E69E9C10];
      v132 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
      {
        v133 = [(__CFString *)v69 results];
        v134 = [v133 count];
        *v368 = 138412546;
        v369 = v339;
        v370 = 2048;
        *v371 = v134;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detected %lu faces, identifying ...", v368, 0x16u);

        v131 = MEMORY[0x1E69E9C10];
      }
    }

    v130 = v318;
LABEL_146:
    if (![(MADPersonIdentificationRequest *)self->_request includePets])
    {
      v181 = 0;
      goto LABEL_177;
    }

    v168 = VCPSignPostPersistentLog();
    v320 = os_signpost_id_generate(v168);

    v169 = VCPSignPostPersistentLog();
    v170 = v169;
    v171 = v320 - 1;
    if (v320 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v169))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v170, OS_SIGNPOST_INTERVAL_BEGIN, v320, "VCPMADPersonIdentificationTask_detectAnimal", " enableTelemetry=YES ", v368, 2u);
    }

    v382 = v328;
    v172 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v382 count:1];
    v343 = v324;
    v173 = [log performRequests:v172 error:&v343];
    v174 = v343;

    v324 = v174;
    if ((v173 & 1) == 0)
    {
      v186 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to recognize animal faces - %@", v339, v174];
      v336 = v186;
      if (MediaAnalysisLogLevel() >= 3)
      {
        v187 = MEMORY[0x1E69E9C10];
        v188 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
        {
          *v368 = 138412290;
          v369 = v186;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v368, 0xCu);
        }
      }

      v189 = self->_request;
      v190 = MEMORY[0x1E696ABC0];
      v380 = *MEMORY[0x1E696A578];
      v191 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v186];
      v381 = v191;
      v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v381 forKeys:&v380 count:1];
      v193 = [v190 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v192];
      [(MADPersonIdentificationRequest *)v189 setError:v193];

      v194 = VCPSignPostPersistentLog();
      v195 = v194;
      if (v171 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v194))
      {
        v196 = v340;
        v197 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = v197;
        v370 = 2050;
        *v371 = -1;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v195, OS_SIGNPOST_INTERVAL_END, v320, "VCPMADPersonIdentificationTask_detectAnimal", "Client=%{public, signpost.telemetry:string1}s CountAnimalFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v368, 0x16u);
      }

      v198 = VCPSignPostPersistentLog();
      v199 = v198;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v198))
      {
        v200 = v340;
        v201 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = "RecognizeAnimalFace";
        v370 = 2082;
        *v371 = v201;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v199, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
      }

      goto LABEL_251;
    }

    v175 = [v328 results];
    v316 = [v175 count];

    v176 = VCPSignPostPersistentLog();
    v177 = v176;
    if (v171 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v176))
    {
      v178 = v340;
      v179 = [v340 UTF8String];
      *v368 = 136446466;
      v369 = v179;
      v370 = 2050;
      *v371 = v316;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v177, OS_SIGNPOST_INTERVAL_END, v320, "VCPMADPersonIdentificationTask_detectAnimal", "Client=%{public, signpost.telemetry:string1}s CountAnimalFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v368, 0x16u);
    }

    if ([(MADPersonIdentificationRequest *)self->_request maximumFaceCount]&& v316 >= [(MADPersonIdentificationRequest *)self->_request maximumFaceCount])
    {
      v202 = [v328 results];
      v182 = [v202 sortedArrayUsingComparator:&__block_literal_global_473];

      v203 = [v182 subarrayWithRange:0, [(MADPersonIdentificationRequest *)self->_request maximumFaceCount]];
      [v326 setInputDetectedObjectObservations:v203];

      if (MediaAnalysisLogLevel() >= 7)
      {
        v204 = MEMORY[0x1E69E9C10];
        v205 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
        {
          v206 = [v328 results];
          v207 = [v206 count];
          v208 = [v326 inputDetectedObjectObservations];
          v209 = [v208 count];
          *v368 = 138412802;
          v369 = v339;
          v370 = 2048;
          *v371 = v207;
          *&v371[8] = 2048;
          *&v371[10] = v209;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detected %lu animal faces, identifying top %lu faces (by confidence) ...", v368, 0x20u);
        }
      }
    }

    else
    {
      v180 = [v328 results];
      [v326 setInputDetectedObjectObservations:v180];

      v181 = v316;
      if (MediaAnalysisLogLevel() < 7)
      {
        v130 = v318;
        goto LABEL_177;
      }

      v182 = MEMORY[0x1E69E9C10];
      v183 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
      {
        v184 = [v328 results];
        v185 = [v184 count];
        *v368 = 138412546;
        v369 = v339;
        v370 = 2048;
        *v371 = v185;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detected %lu animal faces, identifying ...", v368, 0x16u);

        v182 = MEMORY[0x1E69E9C10];
      }
    }

    v181 = v316;
    v130 = v318;
LABEL_177:
    if (!(v130 | v181))
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v232 = MEMORY[0x1E69E9C10];
        v233 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v232, OS_LOG_TYPE_DEBUG))
        {
          *v368 = 138412290;
          v369 = v339;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ No human nor animal face detected from CVPixelBuffer", v368, 0xCu);
        }
      }

      [(MADPersonIdentificationRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];
      v234 = VCPSignPostPersistentLog();
      v139 = v234;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v234))
      {
        v235 = v340;
        v236 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = "NoRecognizedFaceCount";
        v370 = 2082;
        *v371 = v236;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v139, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
      }

      goto LABEL_274;
    }

    if (v130)
    {
      v210 = VCPSignPostPersistentLog();
      v321 = os_signpost_id_generate(v210);

      v211 = VCPSignPostPersistentLog();
      v212 = v211;
      v213 = v321 - 1;
      if (v321 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v211))
      {
        *v368 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v212, OS_SIGNPOST_INTERVAL_BEGIN, v321, "VCPMADPersonIdentificationTask_generateFaceprint", " enableTelemetry=YES ", v368, 2u);
      }

      v379 = v330;
      v214 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v379 count:1];
      v342 = v324;
      v215 = [log performRequests:v214 error:&v342];
      v314 = v342;

      if ((v215 & 1) == 0)
      {
        v237 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to print faces - %@", v339, v314];
        v336 = v237;
        if (MediaAnalysisLogLevel() >= 3)
        {
          v238 = MEMORY[0x1E69E9C10];
          v239 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
          {
            *v368 = 138412290;
            v369 = v336;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v368, 0xCu);
          }

          v237 = v336;
        }

        v240 = self->_request;
        v241 = MEMORY[0x1E696ABC0];
        v377 = *MEMORY[0x1E696A578];
        v242 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v237];
        v378 = v242;
        v243 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
        v244 = [v241 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v243];
        [(MADPersonIdentificationRequest *)v240 setError:v244];

        v245 = VCPSignPostPersistentLog();
        v246 = v245;
        if (v213 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v245))
        {
          v247 = v340;
          v248 = [v340 UTF8String];
          *v368 = 136446466;
          v369 = v248;
          v370 = 2050;
          *v371 = -1;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v246, OS_SIGNPOST_INTERVAL_END, v321, "VCPMADPersonIdentificationTask_generateFaceprint", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v368, 0x16u);
        }

        v249 = VCPSignPostPersistentLog();
        v250 = v249;
        if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v249))
        {
          v251 = v340;
          v252 = [v340 UTF8String];
          *v368 = 136446466;
          v369 = "GenerateFaceprint";
          v370 = 2082;
          *v371 = v252;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v250, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
        }

        v253 = v314;
LABEL_250:
        v324 = v253;
LABEL_251:
        v139 = v336;
LABEL_274:

LABEL_275:
        v101 = v326;
LABEL_276:

        v85 = v328;
LABEL_277:

        v89 = v330;
LABEL_278:

        CF<__CVBuffer *>::~CF(&cf);
        _Block_object_dispose(&v357, 8);

        _Block_object_dispose(buf, 8);
LABEL_279:

        v8 = 0;
        goto LABEL_280;
      }

      v216 = VCPSignPostPersistentLog();
      v217 = v216;
      if (v213 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v216))
      {
        v218 = v340;
        v219 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = v219;
        v370 = 2050;
        *v371 = v318;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v217, OS_SIGNPOST_INTERVAL_END, v321, "VCPMADPersonIdentificationTask_generateFaceprint", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v368, 0x16u);
      }

      v324 = v314;
    }

    if (!v181 || ![(MADPersonIdentificationRequest *)self->_request includePets])
    {
      goto LABEL_197;
    }

    v220 = VCPSignPostPersistentLog();
    v221 = os_signpost_id_generate(v220);

    v222 = VCPSignPostPersistentLog();
    v223 = v222;
    v224 = v221 - 1;
    if (v221 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v222))
    {
      *v368 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v223, OS_SIGNPOST_INTERVAL_BEGIN, v221, "VCPMADPersonIdentificationTask_generateAnimalprint", " enableTelemetry=YES ", v368, 2u);
    }

    v376 = v326;
    v225 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v376 count:1];
    v341 = v324;
    v226 = [log performRequests:v225 error:&v341];
    v322 = v341;

    if (v226)
    {
      v227 = VCPSignPostPersistentLog();
      v228 = v227;
      if (v224 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
      {
        v229 = v340;
        v230 = [v340 UTF8String];
        *v368 = 136446466;
        v369 = v230;
        v370 = 2050;
        *v371 = v181;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v228, OS_SIGNPOST_INTERVAL_END, v221, "VCPMADPersonIdentificationTask_generateAnimalprint", "Client=%{public, signpost.telemetry:string1}s CountAnimalFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v368, 0x16u);
      }

      v69 = v325;
      v324 = v322;
LABEL_197:
      v231 = [v330 results];
      v317 = v181;
      if ([v231 count])
      {
      }

      else
      {
        v254 = [v326 results];
        v255 = [v254 count] == 0;

        if (v255)
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v294 = MEMORY[0x1E69E9C10];
            v295 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v294, OS_LOG_TYPE_DEBUG))
            {
              *v368 = 138412290;
              v369 = v339;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ No faces nor animals to identify from CVPixelBuffer", v368, 0xCu);
            }
          }

          [(MADPersonIdentificationRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];
          v296 = VCPSignPostPersistentLog();
          v139 = v296;
          if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v296))
          {
            v297 = v340;
            v298 = [v340 UTF8String];
            *v368 = 136446466;
            v369 = "NoFaceprintResultCount";
            v370 = 2082;
            *v371 = v298;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v139, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
          }

          v69 = v325;
          goto LABEL_274;
        }
      }

      dispatch_semaphore_wait(spida, 0xFFFFFFFFFFFFFFFFLL);
      v139 = [*(*&buf[8] + 40) photoLibrary];
      if (+[MADManagedKeyValueStore isMACDReadEnabled])
      {
        v256 = [v139 mad_fetchRequest];
        v313 = [v256 dataStoreValueForKey:@"NumberOfAssetsAnalyzedForPhotosFaceProcessing"];
      }

      else
      {
        v256 = [VCPDatabaseReader databaseForPhotoLibrary:v139];
        v313 = [v256 valueForKey:@"NumberOfAssetsAnalyzedForPhotosFaceProcessing"];
      }

      v323 = [MEMORY[0x1E695DF70] array];
      v257 = [v330 results];
      v258 = [v257 count] == 0;

      if (!v258)
      {
        v259 = VCPSignPostPersistentLog();
        v315 = os_signpost_id_generate(v259);

        v260 = VCPSignPostPersistentLog();
        v261 = v260;
        if (v315 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v260))
        {
          *v368 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v261, OS_SIGNPOST_INTERVAL_BEGIN, v315, "VCPMADPersonIdentificationTask_identifyFace", " enableTelemetry=YES ", v368, 2u);
        }

        if ([(MADPersonIdentificationRequest *)self->_request useVIPModel])
        {
          v262 = [v330 results];
          v263 = [*(*&buf[8] + 40) personsModel];
          v264 = [*(*&buf[8] + 40) petsModel];
          v265 = [(VCPMADPersonIdentificationTask *)self identifyObservations:v262 personsModel:v263 petsModel:v264 photoLibrary:v139];
        }

        else
        {
          v262 = [v330 results];
          v263 = [*(*&buf[8] + 40) gallery];
          v264 = [(VCPMADPersonIdentificationTask *)self identifyObservations:v262 gallery:v263 photoLibrary:v139];
          v265 = v264;
        }

        v69 = v325;

        [v323 addObjectsFromArray:v265];
        v266 = VCPSignPostPersistentLog();
        v267 = v266;
        if (v315 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v266))
        {
          v268 = v340;
          v269 = [v340 UTF8String];
          *v368 = 136446722;
          v369 = v269;
          v370 = 2050;
          *v371 = v318;
          *&v371[8] = 2050;
          *&v371[10] = v313;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v267, OS_SIGNPOST_INTERVAL_END, v315, "VCPMADPersonIdentificationTask_identifyFace", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld CountLibraryAssets=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", v368, 0x20u);
          v69 = v325;
        }
      }

      v270 = [v326 results];
      if ([v270 count])
      {
        v271 = [(MADPersonIdentificationRequest *)self->_request includePets];

        if (!v271)
        {
          goto LABEL_266;
        }

        v272 = VCPSignPostPersistentLog();
        v273 = os_signpost_id_generate(v272);

        v274 = VCPSignPostPersistentLog();
        v275 = v274;
        if (v273 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v274))
        {
          *v368 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v275, OS_SIGNPOST_INTERVAL_BEGIN, v273, "VCPMADPersonIdentificationTask_identifyAnimal", " enableTelemetry=YES ", v368, 2u);
        }

        if ([(MADPersonIdentificationRequest *)self->_request useVIPModel])
        {
          v276 = [v326 results];
          v277 = [*(*&buf[8] + 40) personsModel];
          v278 = [*(*&buf[8] + 40) petsModel];
          v270 = [(VCPMADPersonIdentificationTask *)self identifyObservations:v276 personsModel:v277 petsModel:v278 photoLibrary:v139];
        }

        else
        {
          v276 = [v326 results];
          v277 = [*(*&buf[8] + 40) gallery];
          v278 = [(VCPMADPersonIdentificationTask *)self identifyObservations:v276 gallery:v277 photoLibrary:v139];
          v270 = v278;
        }

        [v323 addObjectsFromArray:v270];
        v299 = VCPSignPostPersistentLog();
        v300 = v299;
        v69 = v325;
        if (v273 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v299))
        {
          v301 = v340;
          v302 = [v340 UTF8String];
          *v368 = 136446722;
          v369 = v302;
          v370 = 2050;
          *v371 = v317;
          *&v371[8] = 2050;
          *&v371[10] = v313;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v300, OS_SIGNPOST_INTERVAL_END, v273, "VCPMADPersonIdentificationTask_identifyAnimal", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld CountLibraryAssets=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", v368, 0x20u);
          v69 = v325;
        }
      }

LABEL_266:
      v303 = VCPSignPostPersistentLog();
      v304 = v303;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v303))
      {
        v305 = v340;
        v306 = [v340 UTF8String];
        *v368 = 136446978;
        v369 = "Success";
        v370 = 2082;
        *v371 = v306;
        *&v371[8] = 2050;
        *&v371[10] = v318;
        v372 = 2050;
        v373 = v313;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v304, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s CountFaces=%{public, signpost.telemetry:number1}lld CountLibraryAssets=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", v368, 0x2Au);
      }

      v307 = self->_request;
      v308 = [objc_alloc(MEMORY[0x1E69AE378]) initWithResultItems:v323 frontCameraCaptureState:v335];
      v367 = v308;
      v309 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v367 count:1];
      [(MADPersonIdentificationRequest *)v307 setResults:v309];

      [v358[5] reset];
      if (MediaAnalysisLogLevel() >= 6)
      {
        v310 = MEMORY[0x1E69E9C10];
        v311 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v310, OS_LOG_TYPE_INFO))
        {
          *v368 = 138412290;
          v369 = v339;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Complete with on-demand analysis", v368, 0xCu);
        }
      }

      goto LABEL_274;
    }

    v336 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to print animals - %@", v339, v322];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v279 = MEMORY[0x1E69E9C10];
      v280 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
      {
        *v368 = 138412290;
        v369 = v336;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v368, 0xCu);
      }
    }

    v281 = self->_request;
    v282 = MEMORY[0x1E696ABC0];
    v374 = *MEMORY[0x1E696A578];
    v283 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v336];
    v375 = v283;
    v284 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v375 forKeys:&v374 count:1];
    v285 = [v282 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v284];
    [(MADPersonIdentificationRequest *)v281 setError:v285];

    v286 = VCPSignPostPersistentLog();
    v287 = v286;
    if (v224 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v286))
    {
      v288 = v340;
      v289 = [v340 UTF8String];
      *v368 = 136446466;
      v369 = v289;
      v370 = 2050;
      *v371 = -1;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v287, OS_SIGNPOST_INTERVAL_END, v221, "VCPMADPersonIdentificationTask_generateAnimalprint", "Client=%{public, signpost.telemetry:string1}s CountAnimalFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v368, 0x16u);
    }

    v290 = VCPSignPostPersistentLog();
    v291 = v290;
    if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v290))
    {
      v292 = v340;
      v293 = [v340 UTF8String];
      *v368 = 136446466;
      v369 = "GenerateAnimalprint";
      v370 = 2082;
      *v371 = v293;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v291, OS_SIGNPOST_INTERVAL_END, v334, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v368, 0x16u);
    }

    v69 = v325;
    v253 = v322;
    goto LABEL_250;
  }

  v8 = -128;
LABEL_280:

  return v8;
}

void __37__VCPMADPersonIdentificationTask_run__block_invoke(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 personLocalIdentifier];

  if (v3)
  {
    v4 = [MEMORY[0x1E6978978] fetchPersonWithFace:v27 options:*(a1 + 32)];
    if ([v4 count])
    {
      v5 = [v4 firstObject];
      if ([*(*(a1 + 40) + 8) allowUnverifiedIdentity] & 1) != 0 || (objc_msgSend(v5, "isVerified"))
      {
        [v27 centerX];
        v7 = v6;
        [v27 centerY];
        v9 = v8;
        [v27 size];
        +[VCPFaceUtils faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:](VCPFaceUtils, "faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:", v7, v9, v10, [v27 sourceWidth], objc_msgSend(v27, "sourceHeight"));
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = objc_alloc(MEMORY[0x1E69AE380]);
        v20 = [v5 localIdentifier];
        v21 = [v5 name];
        v22 = [v5 mdID];
        v23 = [v5 detectionType];
        v24 = [v5 isVerified];
        LODWORD(v25) = 1.0;
        v26 = [v19 initWithPersonIdentifier:v20 personName:v21 mdID:v22 detectionType:v23 verified:v24 boundingBox:v12 andConfidence:{v14, v16, v18, v25}];

        [*(a1 + 48) addObject:v26];
      }
    }
  }
}

intptr_t __37__VCPMADPersonIdentificationTask_run__block_invoke_419(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(*(a1 + 32) + 24);
    v23 = 138412290;
    v24 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPMADPersonIdentificationTask_loadContext", "%@", &v23, 0xCu);
  }

  v7 = +[VCPMADPersonIdentificationTaskResource sharedResource];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = +[VCPMADResourceManager sharedManager];
  v11 = [v10 activateResource:*(*(*(a1 + 48) + 8) + 40)];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(a1 + 32) + 8) useVIPModel];
  v15 = *(*(*(a1 + 48) + 8) + 40);
  if (v14)
  {
    v16 = [v15 personsModel];
    if ([*(*(a1 + 32) + 8) includePets])
    {
      v17 = [*(*(*(a1 + 48) + 8) + 40) petsModel];
    }
  }

  else
  {
    v18 = [v15 gallery];
  }

  v19 = VCPSignPostLog();
  v20 = v19;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v19))
  {
    v21 = *(*(a1 + 32) + 24);
    v23 = 138412290;
    v24 = v21;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v3, "VCPMADPersonIdentificationTask_loadContext", "%@", &v23, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __37__VCPMADPersonIdentificationTask_run__block_invoke_462(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 boundingBox];
  v7 = v6;
  [v4 boundingBox];
  v9 = v8;
  [v5 boundingBox];
  v11 = v10;
  [v5 boundingBox];
  if (v7 * v9 > v11 * v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v7 * v9 < v11 * v12;
  }

  return v13;
}

uint64_t __37__VCPMADPersonIdentificationTask_run__block_invoke_471(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 boundingBox];
  v7 = v6;
  [v4 boundingBox];
  v9 = v8;
  [v5 boundingBox];
  v11 = v10;
  [v5 boundingBox];
  if (v7 * v9 > v11 * v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v7 * v9 < v11 * v12;
  }

  return v13;
}

@end