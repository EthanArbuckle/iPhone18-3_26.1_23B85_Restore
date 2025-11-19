@interface VCPFaceProcessingChangeEntry
+ (id)entryWithAsset:(id)a3 andAnalysis:(id)a4;
- (VCPFaceProcessingChangeEntry)initWithAsset:(id)a3 andAnalysis:(id)a4;
- (void)publish;
@end

@implementation VCPFaceProcessingChangeEntry

- (VCPFaceProcessingChangeEntry)initWithAsset:(id)a3 andAnalysis:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VCPFaceProcessingChangeEntry;
  v9 = [(VCPFaceProcessingChangeEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    objc_storeStrong(&v10->_analysis, a4);
  }

  return v10;
}

+ (id)entryWithAsset:(id)a3 andAnalysis:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithAsset:v5 andAnalysis:v6];

  return v7;
}

- (void)publish
{
  v2 = [(PHAsset *)self->_asset localIdentifier];
  v68 = [NSString stringWithFormat:@"[FacePersist][%@]", v2];

  v3 = [(PHAsset *)self->_asset photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v73 = v4;
  [v4 setIncludeNonvisibleFaces:1];
  [v4 setIncludeTorsoAndFaceDetectionData:1];
  [v4 setIncludedDetectionTypes:&off_100296218];
  v90 = PHFacePropertySetIdentifier;
  v5 = [NSArray arrayWithObjects:&v90 count:1];
  [v4 setFetchPropertySets:v5];

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
          v15 = [v14 localIdentifier];
          *buf = 138412546;
          v84 = v68;
          v85 = 2112;
          *v86 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Marking asset contains FC face %@", buf, 0x16u);
        }

        v66 = 1;
      }

      v16 = [v14 localIdentifier];

      if (!v16)
      {
        v19 = 0;
        v18 = +[PHFaceChangeRequest creationRequestForFace];
        if (!v18)
        {
          goto LABEL_38;
        }

LABEL_25:
        [VCPFaceUtils assignPropertiesOfVCPPhotosFace:v14 toPHFaceChangeRequest:v18];
        v20 = [v14 detectionType];
        if (v20 == 1)
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
              if (!v16)
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
              if (!v16)
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
                v32 = [v19 localIdentifier];
                *buf = 138412802;
                v84 = v68;
                v85 = 2112;
                *v86 = v30;
                *&v86[8] = 2112;
                v87 = v32;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Updating %@ %@", buf, 0x20u);
              }

LABEL_57:
              if (v20 == 1)
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
          if (v16)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = @"Pet";
          if (v16)
          {
            goto LABEL_34;
          }
        }

LABEL_53:
        v40 = [v18 placeholderForCreatedFace];
        v88 = v40;
        v41 = [NSArray arrayWithObjects:&v88 count:1];
        [v70 addFaces:v41];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v42 = [v40 localIdentifier];
          *buf = 138412802;
          v84 = v68;
          v85 = 2112;
          *v86 = v30;
          *&v86[8] = 2112;
          v87 = v42;
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

  v44 = [(PHAsset *)self->_asset adjustmentVersion];
  [v70 setFaceAdjustmentVersion:v44];

  v45 = VCPAnalysisResultWarningImageTooSmallKey;
  v46 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:VCPAnalysisResultWarningImageTooSmallKey];
  v47 = v46 == 0;

  if (v47)
  {
    v48 = 0;
  }

  else
  {
    v47 = [(NSDictionary *)self->_analysis objectForKeyedSubscript:v45];
    v48 = [v47 BOOLValue];

    if (MediaAnalysisLogLevel() >= 7)
    {
      v47 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[7]))
      {
        *buf = 138412290;
        v84 = v68;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "%@ Marking resource is too small", buf, 0xCu);
      }
    }
  }

  if ((v66 | v48))
  {
    v49 = 14;
  }

  else
  {
    v47 = [(PHAsset *)self->_asset photoLibrary];
    v49 = [v47 mad_faceProcessingInternalVersion];
  }

  [v70 setFaceAnalysisVersion:v49];
  if (((v66 | v48) & 1) == 0)
  {
  }

  if ([(PHAsset *)self->_asset mad_isEligibleForComputeSync])
  {
    v50 = [v70 faceAnalysisVersion];
    v51 = [(PHAsset *)self->_asset photoLibrary];
    v52 = [v51 mad_faceProcessingInternalVersion] == v50;

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
          v56 = [(PHAsset *)self->_asset mediaAnalysisProperties];
          v57 = [v56 localAnalysisStage];
          *buf = 138412802;
          v84 = v68;
          v85 = 1024;
          *v86 = v53;
          *&v86[4] = 1024;
          *&v86[6] = v57;
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