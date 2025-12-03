@interface VCPFaceProcessingChangeEntry
+ (id)entryWithAsset:(id)asset andAnalysis:(id)analysis;
- (VCPFaceProcessingChangeEntry)initWithAsset:(id)asset andAnalysis:(id)analysis;
- (void)publish;
@end

@implementation VCPFaceProcessingChangeEntry

- (VCPFaceProcessingChangeEntry)initWithAsset:(id)asset andAnalysis:(id)analysis
{
  assetCopy = asset;
  analysisCopy = analysis;
  v12.receiver = self;
  v12.super_class = VCPFaceProcessingChangeEntry;
  v9 = [(VCPFaceProcessingChangeEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(&v10->_analysis, analysis);
  }

  return v10;
}

+ (id)entryWithAsset:(id)asset andAnalysis:(id)analysis
{
  assetCopy = asset;
  analysisCopy = analysis;
  v7 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy andAnalysis:analysisCopy];

  return v7;
}

- (void)publish
{
  localIdentifier = [(PHAsset *)self->_asset localIdentifier];
  v68 = [NSString stringWithFormat:@"[FacePersist][%@]", localIdentifier];

  photoLibrary = [(PHAsset *)self->_asset photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v73 = librarySpecificFetchOptions;
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&off_100296218];
  v90 = PHFacePropertySetIdentifier;
  v5 = [NSArray arrayWithObjects:&v90 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v5];

  v6 = MediaAnalysisFaceResultsKey;
  v7 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:MediaAnalysisFaceResultsKey];
  v60 = [v7 objectForKeyedSubscript:VCPFacesToDelete];

  v59 = [VCPFaceUtils phFacesFromVCPPhotosFaces:v60 withFetchOptions:v73];
  if ([v59 count])
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v8 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412546;
        v84 = v68;
        v85 = 2048;
        *v86 = [v59 count];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Faces To Delete - %lu", buf, 0x16u);
      }
    }

    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_1000E418C;
    v80[3] = &unk_100285FE0;
    v81 = v68;
    [v59 enumerateObjectsUsingBlock:v80];
    [PHFaceChangeRequest deleteFaces:v59];
  }

  v70 = [PHAssetChangeRequest changeRequestForAsset:self->_asset];
  v9 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:v6];
  v58 = [v9 objectForKeyedSubscript:VCPFacesToPersist];

  if (MediaAnalysisLogLevel() >= 7)
  {
    v10 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      v11 = [v58 count];
      *buf = 138412546;
      v84 = v68;
      v85 = 2048;
      *v86 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Faces To Insert/Update - %lu", buf, 0x16u);
    }
  }

  v61 = +[VCPMADCoreAnalyticsManager sharedManager];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v58;
  v12 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (!v12)
  {
    v66 = 0;
    v69 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_73;
  }

  v66 = 0;
  v69 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v74 = *v77;
  type = VCPLogToOSLogType[7];
  v67 = VCPLogToOSLogType[3];
  do
  {
    v75 = v12;
    for (i = 0; i != v75; i = i + 1)
    {
      if (*v77 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v76 + 1) + 8 * i);
      if (_os_feature_enabled_impl() && [v14 algorithmVersion] == 14)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          localIdentifier2 = [v14 localIdentifier];
          *buf = 138412546;
          v84 = v68;
          v85 = 2112;
          *v86 = localIdentifier2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Marking asset contains FC face %@", buf, 0x16u);
        }

        v66 = 1;
      }

      localIdentifier3 = [v14 localIdentifier];

      if (!localIdentifier3)
      {
        v19 = 0;
        v18 = +[PHFaceChangeRequest creationRequestForFace];
        if (!v18)
        {
          goto LABEL_38;
        }

LABEL_25:
        [VCPFaceUtils assignPropertiesOfVCPPhotosFace:v14 toPHFaceChangeRequest:v18];
        detectionType = [v14 detectionType];
        if (detectionType == 1)
        {
          [v14 centerX];
          if (v21 == 0.0 && ([v14 centerY], v22 == 0.0) && (objc_msgSend(v14, "size"), v23 == 0.0))
          {
            [v14 bodyCenterX];
            if (v24 == 0.0 && ([v14 bodyCenterY], v25 == 0.0) && (objc_msgSend(v14, "bodyWidth"), v26 == 0.0))
            {
              [v14 bodyHeight];
              v27 = v43 != 0.0;
            }

            else
            {
              v27 = 1;
            }
          }

          else
          {
            v27 = 0;
          }

          [v14 centerX];
          if (v33 == 0.0 && ([v14 centerY], v34 == 0.0) && (objc_msgSend(v14, "size"), v35 == 0.0) || (objc_msgSend(v14, "bodyCenterX"), v36 != 0.0) || (objc_msgSend(v14, "bodyCenterY"), v37 != 0.0) || (objc_msgSend(v14, "bodyWidth"), v38 != 0.0))
          {
            v28 = 0;
            if (!v27)
            {
              v30 = @"Face";
              v29 = 0;
              if (!localIdentifier3)
              {
                goto LABEL_53;
              }

              goto LABEL_34;
            }
          }

          else
          {
            [v14 bodyHeight];
            v28 = v39 == 0.0;
            if (!v27)
            {
              v29 = 0;
              v30 = @"Face";
              if (!localIdentifier3)
              {
                goto LABEL_53;
              }

LABEL_34:
              v82 = v19;
              v31 = [NSArray arrayWithObjects:&v82 count:1];
              [v70 addFaces:v31];

              [v18 setVuObservationID:0];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                localIdentifier4 = [v19 localIdentifier];
                *buf = 138412802;
                v84 = v68;
                v85 = 2112;
                *v86 = v30;
                *&v86[8] = 2112;
                v87 = localIdentifier4;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Updating %@ %@", buf, 0x20u);
              }

LABEL_57:
              if (detectionType == 1)
              {
                if (v28)
                {
                  ++v65;
                }

                else if (v29)
                {
                  ++v63;
                }

                else
                {
                  ++v64;
                }
              }

              else
              {
                ++v69;
              }

              goto LABEL_62;
            }
          }

          v29 = 1;
          v30 = @"Torso";
          if (localIdentifier3)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = @"Pet";
          if (localIdentifier3)
          {
            goto LABEL_34;
          }
        }

LABEL_53:
        placeholderForCreatedFace = [v18 placeholderForCreatedFace];
        v88 = placeholderForCreatedFace;
        v41 = [NSArray arrayWithObjects:&v88 count:1];
        [v70 addFaces:v41];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          localIdentifier5 = [placeholderForCreatedFace localIdentifier];
          *buf = 138412802;
          v84 = v68;
          v85 = 2112;
          *v86 = v30;
          *&v86[8] = 2112;
          v87 = localIdentifier5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Adding %@ %@", buf, 0x20u);
        }

        goto LABEL_57;
      }

      v17 = [VCPFaceUtils phFaceFromVCPPhotosFace:v14 withFetchOptions:v73];
      if (v17)
      {
        v18 = [PHFaceChangeRequest changeRequestForFace:v17];
        v19 = v17;
        if (v18)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v19 = 0;
      }

LABEL_38:
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v67))
      {
        *buf = 138412290;
        v84 = v68;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "%@ Failed to retrieve faceChangeRequest; skipping", buf, 0xCu);
      }

LABEL_62:
    }

    v12 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
  }

  while (v12);
LABEL_73:

  adjustmentVersion = [(PHAsset *)self->_asset adjustmentVersion];
  [v70 setFaceAdjustmentVersion:adjustmentVersion];

  v45 = VCPAnalysisResultWarningImageTooSmallKey;
  v46 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:VCPAnalysisResultWarningImageTooSmallKey];
  photoLibrary2 = v46 == 0;

  if (photoLibrary2)
  {
    bOOLValue = 0;
  }

  else
  {
    photoLibrary2 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:v45];
    bOOLValue = [photoLibrary2 BOOLValue];

    if (MediaAnalysisLogLevel() >= 7)
    {
      photoLibrary2 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[7]))
      {
        *buf = 138412290;
        v84 = v68;
        _os_log_impl(&_mh_execute_header, &_os_log_default, photoLibrary2, "%@ Marking resource is too small", buf, 0xCu);
      }
    }
  }

  if ((v66 | bOOLValue))
  {
    mad_faceProcessingInternalVersion = 14;
  }

  else
  {
    photoLibrary2 = [(PHAsset *)self->_asset photoLibrary];
    mad_faceProcessingInternalVersion = [photoLibrary2 mad_faceProcessingInternalVersion];
  }

  [v70 setFaceAnalysisVersion:mad_faceProcessingInternalVersion];
  if (((v66 | bOOLValue) & 1) == 0)
  {
  }

  if ([(PHAsset *)self->_asset mad_isEligibleForComputeSync])
  {
    faceAnalysisVersion = [v70 faceAnalysisVersion];
    photoLibrary3 = [(PHAsset *)self->_asset photoLibrary];
    v52 = [photoLibrary3 mad_faceProcessingInternalVersion] == faceAnalysisVersion;

    if (v52)
    {
      v53 = [(PHAsset *)self->_asset mad_analysisStageAfterCompletingAnalysis:3];
      [v70 setLocalAnalysisStage:v53];
      v54 = [MADComputeSyncPayloadResults payloadDataForAsset:self->_asset targetStage:v53 embeddingResults:0 fullAnalysisResults:0];
      if (v54)
      {
        [v70 setComputeSyncMediaAnalysisPayload:v54];
      }

      else if (MediaAnalysisLogLevel() >= 4)
      {
        v55 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v55))
        {
          mediaAnalysisProperties = [(PHAsset *)self->_asset mediaAnalysisProperties];
          localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];
          *buf = 138412802;
          v84 = v68;
          v85 = 1024;
          *v86 = v53;
          *&v86[4] = 1024;
          *&v86[6] = localAnalysisStage;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@ No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
        }
      }
    }
  }

  [v61 accumulateInt64Value:v65 forField:@"NumberOfFacesPersisted" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
  [v61 accumulateInt64Value:v63 forField:@"NumberOfTorsosPersisted" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
  [v61 accumulateInt64Value:v64 forField:@"NumberOfFaceTorsosPersisted" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
  [v61 accumulateInt64Value:v69 forField:@"NumberOfPetsPersisted" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
}

@end