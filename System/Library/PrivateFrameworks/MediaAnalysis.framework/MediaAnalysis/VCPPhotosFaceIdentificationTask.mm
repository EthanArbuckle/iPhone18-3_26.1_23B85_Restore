@interface VCPPhotosFaceIdentificationTask
+ (id)taskWithFaceLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 withCompletionHandler:(id)a5;
- (BOOL)run:(id *)a3;
- (VCPPhotosFaceIdentificationTask)initWithFaceLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 withCompletionHandler:(id)a5;
- (void)_classifyPerson:(id)a3 usingModel:(id)a4 withResults:(id *)a5;
- (void)_classifyPet:(id)a3 usingModel:(id)a4 withResults:(id *)a5;
@end

@implementation VCPPhotosFaceIdentificationTask

- (VCPPhotosFaceIdentificationTask)initWithFaceLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 withCompletionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = VCPPhotosFaceIdentificationTask;
  v11 = [(VCPPhotosFaceIdentificationTask *)&v14 initWithCompletionHandler:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_faceLocalIdentifiers, a3);
    objc_storeStrong(&v12->_photoLibraryURL, a4);
  }

  return v12;
}

+ (id)taskWithFaceLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithFaceLocalIdentifiers:v9 fromPhotoLibraryWithURL:v8 withCompletionHandler:v7];

  return v10;
}

- (void)_classifyPerson:(id)a3 usingModel:(id)a4 withResults:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = [v7 localIdentifier];
      *buf = 138412290;
      v50 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] Predicting person(s) from VIP model", buf, 0xCu);
    }
  }

  v11 = [v7 faceClusteringProperties];
  v12 = [v11 faceprint];

  if (v12)
  {
    v13 = [v12 faceprintData];
    v14 = [VCPFaceIDModel faceObservationFromFaceprintData:v13];

    if (v14)
    {
      v48 = 0;
      v15 = [v8 predictPersonFromFaceObservation:v14 limit:10 canceller:0 error:&v48];
      v16 = v48;
      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v17 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v17))
          {
            v18 = [v7 localIdentifier];
            v19 = [v16 description];
            *buf = 138412546;
            v50 = v18;
            v51 = 2112;
            v52[0] = v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[%@] Face prediction failed (%@); skipping", buf, 0x16u);
          }
        }
      }

      else
      {
        v42 = a5;
        v43 = v14;
        v24 = +[NSMutableDictionary dictionary];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v41 = v15;
        v25 = v15;
        v26 = [v25 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v45;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v45 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v44 + 1) + 8 * i);
              [v30 confidence];
              v32 = v31;
              VCPPersonFaceVIPMatchingThreshold();
              if (v32 > v33)
              {
                [v30 confidence];
                v34 = [NSNumber numberWithFloat:?];
                v35 = [v30 predictedPersonUniqueIdentifier];
                [v24 setObject:v34 forKeyedSubscript:v35];
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v27);
        }

        if (MediaAnalysisLogLevel() >= 7)
        {
          v36 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v36))
          {
            v37 = [v7 localIdentifier];
            v38 = [v25 count];
            v39 = [v24 count];
            *buf = 138412802;
            v50 = v37;
            v51 = 1024;
            LODWORD(v52[0]) = v38;
            WORD2(v52[0]) = 1024;
            *(v52 + 6) = v39;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@] VIP Model yielded %d predictions, %d exceeded confidence threshold", buf, 0x18u);
          }
        }

        if (v42)
        {
          v40 = v24;
          *v42 = v24;
        }

        v14 = v43;
        v16 = 0;
        v15 = v41;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v22 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        v23 = [v7 localIdentifier];
        *buf = 138412290;
        v50 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@] Failed to obtain face observation; skipping", buf, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v20 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      v21 = [v7 localIdentifier];
      *buf = 138412290;
      v50 = v21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[%@] Failed to obtain faceprint; skipping", buf, 0xCu);
    }
  }
}

- (void)_classifyPet:(id)a3 usingModel:(id)a4 withResults:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = [v7 localIdentifier];
      *buf = 138412290;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] Predicting pet(s) from VIP model", buf, 0xCu);
    }
  }

  v11 = [v7 faceClusteringProperties];
  v12 = [v11 faceprint];

  if (v12)
  {
    v13 = [v12 faceprintData];
    v14 = [VCPFaceIDModel animalObservationFromAnimalprintData:v13];

    if (v14)
    {
      v49 = 0;
      v15 = [v8 entityPredictionsForObservation:v14 limit:10 canceller:0 error:&v49];
      v16 = v49;
      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v17 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v17))
          {
            v18 = [v7 localIdentifier];
            v19 = [v16 description];
            *buf = 138412546;
            v51 = v18;
            v52 = 2112;
            v53[0] = v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[%@] Pet prediction failed (%@); skipping", buf, 0x16u);
          }
        }
      }

      else
      {
        v42 = a5;
        v43 = v8;
        v44 = v7;
        v24 = +[NSMutableDictionary dictionary];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v41 = v15;
        v25 = v15;
        v26 = [v25 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v46;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v46 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v45 + 1) + 8 * i);
              [v30 confidence];
              v32 = v31;
              +[VCPFaceIDModel petClassificationThreshold];
              if (v32 > v33)
              {
                [v30 confidence];
                v34 = [NSNumber numberWithFloat:?];
                v35 = [v30 entityUniqueIdentifier];
                [v24 setObject:v34 forKeyedSubscript:v35];
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v27);
        }

        v7 = v44;
        if (MediaAnalysisLogLevel() >= 7)
        {
          v36 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v36))
          {
            v37 = [v44 localIdentifier];
            v38 = [v25 count];
            v39 = [v24 count];
            *buf = 138412802;
            v51 = v37;
            v52 = 1024;
            LODWORD(v53[0]) = v38;
            WORD2(v53[0]) = 1024;
            *(v53 + 6) = v39;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@] VIP Model yielded %d predictions, %d exceeded confidence threshold", buf, 0x18u);
          }
        }

        if (v42)
        {
          v40 = v24;
          *v42 = v24;
        }

        v8 = v43;
        v16 = 0;
        v15 = v41;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v22 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        v23 = [v7 localIdentifier];
        *buf = 138412290;
        v51 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@] Failed to obtain pet observation; skipping", buf, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v20 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      v21 = [v7 localIdentifier];
      *buf = 138412290;
      v51 = v21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[%@] Failed to obtain animalprint; skipping", buf, 0xCu);
    }
  }
}

- (BOOL)run:(id *)a3
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [(NSArray *)self->_faceLocalIdentifiers count];
      photoLibraryURL = self->_photoLibraryURL;
      *buf = 67109378;
      *v87 = v6;
      *&v87[4] = 2112;
      *&v87[6] = photoLibraryURL;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Performing on-demand identification on %d faces from Photo Library (%@)", buf, 0x12u);
    }
  }

  v8 = +[VCPPhotoLibraryManager sharedManager];
  v9 = [v8 photoLibraryWithURL:self->_photoLibraryURL];

  if (v9)
  {
    v10 = [v9 librarySpecificFetchOptions];
    v83 = PHFacePropertySetClustering;
    v11 = [NSArray arrayWithObjects:&v83 count:1];
    [v10 setFetchPropertySets:v11];

    [v10 setIncludedDetectionTypes:&off_1002963E0];
    v12 = [PHFace fetchFacesWithLocalIdentifiers:self->_faceLocalIdentifiers options:v10];
    if (![v12 count])
    {
      if (!a3)
      {
        v28 = 0;
        goto LABEL_73;
      }

      v81 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithFormat:@"Face fetch did not return any results"];
      v82 = v18;
      v23 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v29 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v23];
      v28 = 0;
      v30 = *a3;
      *a3 = v29;
      goto LABEL_71;
    }

    v13 = [v12 count];
    if (v13 != [(NSArray *)self->_faceLocalIdentifiers count]&& MediaAnalysisLogLevel() >= 4)
    {
      v14 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        v15 = [v12 count];
        v16 = [(NSArray *)self->_faceLocalIdentifiers count];
        *buf = 67109376;
        *v87 = v15;
        *&v87[4] = 1024;
        *&v87[6] = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Face fetch count (%d) does not match requested (%d)", buf, 0xEu);
      }
    }

    v65 = v12;
    v17 = +[VCPDefaultPhotoLibraryManager sharedManager];
    v18 = [v17 defaultPhotoLibrary];

    v67 = v18;
    v19 = [v18 vcp_vipModelFilepathForVIPType:0];
    v20 = +[NSFileManager defaultManager];
    v21 = [v20 fileExistsAtPath:v19];

    if (v21)
    {
      v22 = v10;
      v75 = 0;
      v23 = [VCPFaceIDModel loadVIPModelAtPath:v19 withVIPType:0 error:&v75];
      v24 = v75;
      v25 = v24;
      if ((!v23 || v24) && MediaAnalysisLogLevel() >= 3)
      {
        v26 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          *buf = 138412290;
          *v87 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "Cannot load Person Identity Model - %@", buf, 0xCu);
        }
      }

      v10 = v22;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v31 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v31))
        {
          *buf = 138412290;
          *v87 = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "Person Identity Model not exist - %@", buf, 0xCu);
        }
      }

      v23 = 0;
    }

    v32 = [v18 vcp_vipModelFilepathForVIPType:1];

    v30 = v32;
    v33 = +[NSFileManager defaultManager];
    v34 = [v33 fileExistsAtPath:v30];

    v64 = a3;
    if (v34)
    {
      v74 = 0;
      v35 = [VCPFaceIDModel loadVIPModelAtPath:v30 withVIPType:1 error:&v74];
      v36 = v74;
      v37 = v36;
      if ((!v35 || v36) && MediaAnalysisLogLevel() >= 3)
      {
        v38 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v38))
        {
          *buf = 138412290;
          *v87 = v37;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "Cannot load Pet Identity Model - %@", buf, 0xCu);
        }
      }

      v12 = v65;
    }

    else
    {
      v12 = v65;
      if (MediaAnalysisLogLevel() >= 5)
      {
        v39 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v39))
        {
          *buf = 138412290;
          *v87 = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "Pet Identity Model not exist - %@", buf, 0xCu);
        }
      }

      v35 = 0;
    }

    if (v23 | v35)
    {
      v62 = v30;
      v63 = v9;
      v61 = v10;
      v40 = +[NSMutableDictionary dictionary];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v41 = v12;
      v42 = [v41 countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v71;
        type = VCPLogToOSLogType[5];
LABEL_39:
        v45 = 0;
        while (1)
        {
          if (*v71 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v70 + 1) + 8 * v45);
          if ([(VCPPhotosFaceIdentificationTask *)self isCanceled])
          {
            if (v64)
            {
              v76 = NSLocalizedDescriptionKey;
              v56 = [NSString stringWithFormat:@"Face identification canceled"];
              v77 = v56;
              v57 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
              v58 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v57];
              v59 = *v64;
              *v64 = v58;
            }

            v28 = 0;
            goto LABEL_68;
          }

          if ([v46 detectionType] == 1)
          {
            if (!v23)
            {
              if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(&_os_log_default, type))
              {
                goto LABEL_51;
              }

              v49 = [v46 localIdentifier];
              *buf = 138412290;
              *v87 = v49;
              v51 = type;
              v52 = "[%@] Skipped for Person (no identity model)";
              goto LABEL_59;
            }

            v69 = 0;
            v47 = &v69;
            [(VCPPhotosFaceIdentificationTask *)self _classifyPerson:v46 usingModel:v23 withResults:&v69];
          }

          else
          {
            if (!v35)
            {
              if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(&_os_log_default, type))
              {
                goto LABEL_51;
              }

              v49 = [v46 localIdentifier];
              *buf = 138412290;
              *v87 = v49;
              v51 = type;
              v52 = "[%@] Skipped for Pet (no identity model)";
LABEL_59:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v51, v52, buf, 0xCu);
              goto LABEL_50;
            }

            v68 = 0;
            v47 = &v68;
            [(VCPPhotosFaceIdentificationTask *)self _classifyPet:v46 usingModel:v35 withResults:&v68];
          }

          v48 = *v47;
          if (v48)
          {
            v49 = v48;
            v50 = [v46 localIdentifier];
            [v40 setObject:v49 forKeyedSubscript:v50];

LABEL_50:
          }

LABEL_51:
          if (v43 == ++v45)
          {
            v53 = [v41 countByEnumeratingWithState:&v70 objects:v78 count:16];
            v43 = v53;
            if (v53)
            {
              goto LABEL_39;
            }

            break;
          }
        }
      }

      v41 = [(VCPPhotosFaceIdentificationTask *)self completionHandler];
      (*(v41 + 2))(v41, v40, 0);
      v28 = 1;
LABEL_68:
      v10 = v61;
      v12 = v65;
    }

    else
    {
      if (!v64)
      {
        v28 = 0;
        goto LABEL_70;
      }

      v62 = v30;
      v63 = v9;
      v79 = NSLocalizedDescriptionKey;
      v40 = [NSString stringWithFormat:@"Failed to load both Person and Pet Identity Models"];
      v80 = v40;
      v41 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      v54 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v41];
      v55 = *v64;
      *v64 = v54;

      v28 = 0;
    }

    v18 = v67;

    v30 = v62;
    v9 = v63;
LABEL_70:

LABEL_71:
    goto LABEL_72;
  }

  if (a3)
  {
    v84 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"Failed to open specified Photo Library (%@)", self->_photoLibraryURL];
    v85 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v27 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v12];
    v28 = 0;
    v18 = *a3;
    *a3 = v27;
LABEL_72:

LABEL_73:
    goto LABEL_74;
  }

  v28 = 0;
LABEL_74:

  return v28;
}

@end