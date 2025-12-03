@interface VCPMovieChangeEntry
- ($66BD1C5E7A9131B7E50B573777372F49)summaryTimeRange;
- (CGRect)bestPlaybackRect;
- (void)dealloc;
- (void)publish;
- (void)setKeyFrameTime:(id *)time;
- (void)setSummaryTimeRange:(id *)range;
@end

@implementation VCPMovieChangeEntry

- (void)dealloc
{
  keyFrameResource = self->_keyFrameResource;
  if (keyFrameResource)
  {
    CFRelease(keyFrameResource);
  }

  v4.receiver = self;
  v4.super_class = VCPMovieChangeEntry;
  [(VCPMovieChangeEntry *)&v4 dealloc];
}

- (void)publish
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v2 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      localIdentifier = [(PHAsset *)self->_asset localIdentifier];
      v4 = localIdentifier;
      if (self->_imageOnly)
      {
        v5 = @"(thumbnail analysis results)";
      }

      else
      {
        v5 = &stru_1002890F8;
      }

      *buf = 138412546;
      *&buf[4] = localIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[%@] Publishing Movie asset %@", buf, 0x16u);
    }
  }

  v102 = +[MADStateHandler sharedStateHandler];
  localIdentifier2 = [(PHAsset *)self->_asset localIdentifier];
  v7 = localIdentifier2;
  if (self->_imageOnly)
  {
    v8 = @"(thumbnail analysis results)";
  }

  else
  {
    v8 = &stru_1002890F8;
  }

  [v102 addBreadcrumb:{@"[%@] Publishing Movie asset %@", localIdentifier2, v8}];

  v103 = [PHAssetChangeRequest changeRequestForAsset:self->_asset];
  vcp_modificationDate = [(PHAsset *)self->_asset vcp_modificationDate];
  [v103 setMediaAnalysisTimeStamp:vcp_modificationDate];

  v10 = MediaAnalysisVersion;
  [v103 setMediaAnalysisImageVersion:MediaAnalysisVersion];
  selfCopy3 = self;
  if (self->_imageCaption && +[VCPVideoCaptionAnalyzer mode]== 1)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v12 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        localIdentifier3 = [(PHAsset *)self->_asset localIdentifier];
        imageCaption = self->_imageCaption;
        *buf = 138412546;
        *&buf[4] = localIdentifier3;
        *&buf[12] = 2112;
        *&buf[14] = imageCaption;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[%@] Publish image caption [%@]", buf, 0x16u);

        selfCopy3 = self;
      }
    }

    [v103 setGeneratedAssetDescription:selfCopy3->_imageCaption analysisVersion:VCPPhotosCaptionProcessingVersion sourceType:1];
  }

  if (selfCopy3->_imageEmbeddingVersion)
  {
    [v103 setImageEmbeddingVersion:?];
  }

  if (!selfCopy3->_imageOnly)
  {
    if (selfCopy3->_videoCaption && +[VCPVideoCaptionAnalyzer mode]== 1)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v15 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          v16 = selfCopy3;
          videoCaption = selfCopy3->_videoCaption;
          localIdentifier4 = [(PHAsset *)v16->_asset localIdentifier];
          *buf = 138412546;
          *&buf[4] = videoCaption;
          *&buf[12] = 2112;
          *&buf[14] = localIdentifier4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "publish video caption [%@] to movie %@", buf, 0x16u);

          selfCopy3 = self;
        }
      }

      [v103 setGeneratedAssetDescription:selfCopy3->_videoCaption analysisVersion:VCPPhotosCaptionProcessingVersion sourceType:2];
    }

    if (selfCopy3->_videoEmbeddingVersion)
    {
      [v103 setVideoEmbeddingVersion:?];
    }

    [v103 setMediaAnalysisVersion:v10];
    v19 = *&selfCopy3->_summaryTimeRange.start.epoch;
    *buf = *&selfCopy3->_summaryTimeRange.start.value;
    *&buf[16] = v19;
    v115 = *&selfCopy3->_summaryTimeRange.duration.timescale;
    [v103 setBestVideoTimeRange:buf];
    *&v20 = selfCopy3->_autoplayScore;
    [v103 setAutoplaySuggestionScore:v20];
    *&v21 = selfCopy3->_videoScore;
    [v103 setVideoScore:v21];
    *&v22 = selfCopy3->_activityScore;
    [v103 setActivityScore:v22];
    [v103 setFaceCount:selfCopy3->_faceCount];
    [v103 setAudioClassification:selfCopy3->_audioClassification];
    [v103 setScreenTimeDeviceImageSensitivity:selfCopy3->_screenTimeDeviceImageSensitivity];
    *buf = *&selfCopy3->_keyFrameTime.value;
    *&buf[16] = selfCopy3->_keyFrameTime.epoch;
    if (CMTimeGetSeconds(buf) != 0.0)
    {
      keyFrameResource = selfCopy3->_keyFrameResource;
      *buf = *&selfCopy3->_keyFrameTime.value;
      *&buf[16] = selfCopy3->_keyFrameTime.epoch;
      [v103 setBestKeyFrame:keyFrameResource time:buf];
    }

    [v103 setBestPlaybackRectWithNormalizedRect:{selfCopy3->_bestPlaybackRect.origin.x, selfCopy3->_bestPlaybackRect.origin.y, selfCopy3->_bestPlaybackRect.size.width, selfCopy3->_bestPlaybackRect.size.height}];
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v24 = selfCopy3->_humanActions;
    v25 = [(NSDictionary *)v24 countByEnumeratingWithState:&v109 objects:v113 count:16];
    if (v25)
    {
      v26 = *v110;
      v27 = VCPLogToOSLogType[6];
      type = VCPLogToOSLogType[7];
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v110 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v109 + 1) + 8 * i);
          v30 = [PHFaceChangeRequest changeRequestForFace:v29];
          v31 = [(NSDictionary *)self->_humanActions objectForKeyedSubscript:v29];
          v32 = [v31 count] == 0;

          if (v32)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              localIdentifier5 = [(PHAsset *)self->_asset localIdentifier];
              localIdentifier6 = [v29 localIdentifier];
              *buf = 138412546;
              *&buf[4] = localIdentifier5;
              *&buf[12] = 2112;
              *&buf[14] = localIdentifier6;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "   [%@] reset action traits for PHFace %@", buf, 0x16u);
            }

            [v30 setDetectionTraits:0];
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v27))
            {
              localIdentifier7 = [(PHAsset *)self->_asset localIdentifier];
              localIdentifier8 = [v29 localIdentifier];
              *buf = 138412546;
              *&buf[4] = localIdentifier7;
              *&buf[12] = 2112;
              *&buf[14] = localIdentifier8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "   [%@] publish action traits for PHFace %@", buf, 0x16u);
            }

            v35 = [(NSDictionary *)self->_humanActions objectForKeyedSubscript:v29];
            [v30 setDetectionTraits:v35];
          }
        }

        v25 = [(NSDictionary *)v24 countByEnumeratingWithState:&v109 objects:v113 count:16];
      }

      while (v25);
    }

    selfCopy12 = self;
    sceneClassifications = self->_sceneClassifications;
    if (sceneClassifications)
    {
      v40 = VCPPhotosSceneProcessingVersionInternal();
      adjustmentVersion = [(PHAsset *)self->_asset adjustmentVersion];
      [v103 setSceneClassifications:sceneClassifications ofType:2 version:v40 timestamp:adjustmentVersion];

      selfCopy12 = self;
    }

    if (selfCopy12->_audioClassifications && ([(PHAsset *)selfCopy12->_asset mediaSubtypes]& 0x20000) == 0)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v42 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v42))
        {
          v43 = [(NSSet *)selfCopy12->_audioClassifications count];
          localIdentifier9 = [(PHAsset *)selfCopy12->_asset localIdentifier];
          *buf = 67109378;
          *&buf[4] = v43;
          *&buf[8] = 2112;
          *&buf[10] = localIdentifier9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "publish %d audio classifications to movie %@", buf, 0x12u);

          selfCopy12 = self;
        }
      }

      audioClassifications = selfCopy12->_audioClassifications;
      v46 = VCPPhotosSceneProcessingVersionInternal();
      adjustmentVersion2 = [(PHAsset *)selfCopy12->_asset adjustmentVersion];
      [v103 setSceneClassifications:audioClassifications ofType:3 version:v46 timestamp:adjustmentVersion2];

      selfCopy12 = self;
    }

    if (selfCopy12->_facesToAdd || selfCopy12->_animalsToAdd)
    {
      typea = +[NSMutableArray array];
      v48 = [(NSArray *)selfCopy12->_facesToAdd count];
      if (v48 == [(NSArray *)selfCopy12->_faceThumbnailIds count])
      {
        v49 = 0;
        v104 = VCPLogToOSLogType[7];
        v50 = &_os_log_default;
        v99 = VCPLogToOSLogType[3];
        while (v49 < [(NSArray *)selfCopy12->_facesToAdd count])
        {
          v51 = [(NSArray *)selfCopy12->_facesToAdd objectAtIndexedSubscript:v49];
          v52 = [(NSArray *)selfCopy12->_faceThumbnailIds objectAtIndexedSubscript:v49];
          v53 = +[PHFaceChangeRequest creationRequestForFace];
          placeholderForCreatedFace = [v53 placeholderForCreatedFace];
          if (placeholderForCreatedFace)
          {
            [v53 setGroupingIdentifier:kVideoFaceGroupIdentifier];
            [v53 setFaceprint:v51];
            [v53 setDetectionType:1];
            faceAdjustmentVersion = [(PHAsset *)selfCopy12->_asset faceAdjustmentVersion];
            [v53 setAdjustmentVersion:faceAdjustmentVersion];

            [v53 setFaceAlgorithmVersion:15];
            [v53 setCenterX:0.5];
            [v53 setCenterY:0.5];
            [v53 setSize:0.5];
            [v53 setStartTime:0.0];
            [(PHAsset *)self->_asset duration];
            [v53 setDuration:?];
            if (([v52 isEqualToString:kNULLThumbnailID] & 1) == 0)
            {
              [v53 setThumbnailIdentifier:v52];
            }

            humanActionsForFacesToAdd = self->_humanActionsForFacesToAdd;
            v57 = [NSNumber numberWithInt:v49];
            v58 = [(NSDictionary *)humanActionsForFacesToAdd objectForKeyedSubscript:v57];
            v59 = v58 == 0;

            if (!v59)
            {
              v60 = self->_humanActionsForFacesToAdd;
              v61 = [NSNumber numberWithInt:v49];
              v62 = [(NSDictionary *)v60 objectForKeyedSubscript:v61];
              [v53 setDetectionTraits:v62];
            }

            [typea addObject:placeholderForCreatedFace];
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v50, v104))
            {
              localIdentifier10 = [placeholderForCreatedFace localIdentifier];
              v63 = v50;
              localIdentifier11 = [(PHAsset *)self->_asset localIdentifier];
              v65 = self->_humanActionsForFacesToAdd;
              v66 = [NSNumber numberWithInt:v49];
              v67 = [(NSDictionary *)v65 objectForKeyedSubscript:v66];
              v68 = [v67 count];
              *buf = 138412802;
              *&buf[4] = localIdentifier10;
              *&buf[12] = 2112;
              *&buf[14] = localIdentifier11;
              *&buf[22] = 1024;
              *&buf[24] = v68;
              _os_log_impl(&_mh_execute_header, v63, v104, "Created new video PHFace [%@] for asset [%@], with %d traits", buf, 0x1Cu);

              v50 = v63;
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v50, v99))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v50, v99, " VCPMovieChangeEntry failed to create faceChangRequest", buf, 2u);
          }

          ++v49;
          selfCopy12 = self;
        }
      }

      else if (MediaAnalysisLogLevel() >= 3)
      {
        v69 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v69))
        {
          v70 = [(NSArray *)selfCopy12->_facesToAdd count];
          v71 = [(NSArray *)selfCopy12->_faceThumbnailIds count];
          *buf = 134218240;
          *&buf[4] = v70;
          *&buf[12] = 2048;
          *&buf[14] = v71;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v69, "Number of faces %lu mismatch with number of thumnail Ids %lu, skipping faces", buf, 0x16u);
        }
      }

      v72 = [(NSArray *)selfCopy12->_animalsToAdd count];
      if (v72 == [(NSArray *)selfCopy12->_animalThumbnailIds count])
      {
        v73 = 0;
        v74 = VCPLogToOSLogType[7];
        v101 = VCPLogToOSLogType[4];
        v105 = VCPLogToOSLogType[3];
        while (1)
        {
          if (v73 >= [(NSArray *)selfCopy12->_animalsToAdd count])
          {
            goto LABEL_97;
          }

          v75 = [(NSArray *)selfCopy12->_animalsToAdd objectAtIndexedSubscript:v73];
          v76 = [(NSArray *)selfCopy12->_animalThumbnailIds objectAtIndexedSubscript:v73];
          v77 = +[PHFaceChangeRequest creationRequestForFace];
          placeholderForCreatedFace2 = [v77 placeholderForCreatedFace];
          if (placeholderForCreatedFace2)
          {
            [v77 setGroupingIdentifier:kVideoFaceGroupIdentifier];
            [v77 setFaceprint:v75];
            v79 = [(NSArray *)selfCopy12->_animalsType objectAtIndexedSubscript:v73];
            integerValue = [v79 integerValue];

            if ((integerValue & 0x200000000) != 0)
            {
              v84 = 4;
              selfCopy10 = self;
LABEL_88:
              [v77 setDetectionType:v84];
              faceAdjustmentVersion2 = [(PHAsset *)selfCopy10->_asset faceAdjustmentVersion];
              [v77 setAdjustmentVersion:faceAdjustmentVersion2];

              [v77 setFaceAlgorithmVersion:15];
              [v77 setCenterX:0.5];
              [v77 setCenterY:0.5];
              [v77 setSize:0.5];
              [v77 setStartTime:0.0];
              [(PHAsset *)self->_asset duration];
              [v77 setDuration:?];
              if (([v76 isEqualToString:kNULLThumbnailID] & 1) == 0)
              {
                [v77 setThumbnailIdentifier:v76];
              }

              [typea addObject:placeholderForCreatedFace2];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v74))
              {
                localIdentifier12 = [placeholderForCreatedFace2 localIdentifier];
                localIdentifier13 = [(PHAsset *)self->_asset localIdentifier];
                *buf = 138412802;
                *&buf[4] = localIdentifier12;
                *&buf[12] = 2112;
                *&buf[14] = v76;
                *&buf[22] = 2112;
                *&buf[24] = localIdentifier13;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "Created new video PHFace-Animal [%@][%@] for asset [%@]", buf, 0x20u);
              }

              goto LABEL_93;
            }

            selfCopy10 = self;
            if ((integerValue & 0x400000000) != 0)
            {
              v84 = 3;
              goto LABEL_88;
            }

            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v101))
            {
              *buf = 0;
              v82 = v101;
              v83 = "Animal type must be either Dog or Cat. Ignoring for persist";
LABEL_85:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v82, v83, buf, 2u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v105))
          {
            *buf = 0;
            v82 = v105;
            v83 = " VCPMovieChangeEntry failed to create faceChangRequest";
            goto LABEL_85;
          }

LABEL_93:

          ++v73;
          selfCopy12 = self;
        }
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v88 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v88))
        {
          v89 = [(NSArray *)selfCopy12->_animalsToAdd count];
          v90 = [(NSArray *)selfCopy12->_animalThumbnailIds count];
          *buf = 134218240;
          *&buf[4] = v89;
          *&buf[12] = 2048;
          *&buf[14] = v90;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v88, "Number of animals %lu mismatch with number of thumnail Ids %lu, skipping animals", buf, 0x16u);
        }
      }

LABEL_97:
      if (MediaAnalysisLogLevel() >= 7)
      {
        v91 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v91))
        {
          v92 = [typea count];
          localIdentifier14 = [(PHAsset *)selfCopy12->_asset localIdentifier];
          *buf = 67109378;
          *&buf[4] = v92;
          *&buf[8] = 2112;
          *&buf[10] = localIdentifier14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v91, "setFacesFromEntireVideo %d human+animals for asset [%@]", buf, 0x12u);
        }
      }

      [v103 setTemporalFaces:typea];

      selfCopy12 = self;
    }

    if ([(PHAsset *)selfCopy12->_asset mad_isEligibleForComputeSync])
    {
      [v103 setLocalAnalysisStage:selfCopy12->_analysisStage];
      [v103 setComputeSyncMediaAnalysisPayload:selfCopy12->_computeSyncPayload];
      if (MediaAnalysisLogLevel() >= 7)
      {
        v94 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v94))
        {
          localIdentifier15 = [(PHAsset *)selfCopy12->_asset localIdentifier];
          v96 = selfCopy12;
          analysisStage = selfCopy12->_analysisStage;
          v98 = [(NSData *)v96->_computeSyncPayload length];
          *buf = 138412802;
          *&buf[4] = localIdentifier15;
          *&buf[12] = 1024;
          *&buf[14] = analysisStage;
          *&buf[18] = 1024;
          *&buf[20] = v98;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v94, "[%@] publish analysis stage (%d) and compute sync payload (%d bytes)", buf, 0x18u);
        }
      }
    }
  }
}

- ($66BD1C5E7A9131B7E50B573777372F49)summaryTimeRange
{
  v3 = *&self[4].var1.var3;
  *&retstr->var0.var0 = *&self[4].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[5].var0.var1;
  return self;
}

- (void)setSummaryTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_summaryTimeRange.duration.timescale = *&range->var1.var1;
  *&self->_summaryTimeRange.start.epoch = v4;
  *&self->_summaryTimeRange.start.value = v3;
}

- (void)setKeyFrameTime:(id *)time
{
  v3 = *&time->var0;
  self->_keyFrameTime.epoch = time->var3;
  *&self->_keyFrameTime.value = v3;
}

- (CGRect)bestPlaybackRect
{
  x = self->_bestPlaybackRect.origin.x;
  y = self->_bestPlaybackRect.origin.y;
  width = self->_bestPlaybackRect.size.width;
  height = self->_bestPlaybackRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end