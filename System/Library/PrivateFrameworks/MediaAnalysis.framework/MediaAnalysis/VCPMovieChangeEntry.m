@interface VCPMovieChangeEntry
- ($66BD1C5E7A9131B7E50B573777372F49)summaryTimeRange;
- (CGRect)bestPlaybackRect;
- (void)dealloc;
- (void)publish;
- (void)setKeyFrameTime:(id *)a3;
- (void)setSummaryTimeRange:(id *)a3;
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
      v3 = [(PHAsset *)self->_asset localIdentifier];
      v4 = v3;
      if (self->_imageOnly)
      {
        v5 = @"(thumbnail analysis results)";
      }

      else
      {
        v5 = &stru_1002890F8;
      }

      *buf = 138412546;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[%@] Publishing Movie asset %@", buf, 0x16u);
    }
  }

  v102 = +[MADStateHandler sharedStateHandler];
  v6 = [(PHAsset *)self->_asset localIdentifier];
  v7 = v6;
  if (self->_imageOnly)
  {
    v8 = @"(thumbnail analysis results)";
  }

  else
  {
    v8 = &stru_1002890F8;
  }

  [v102 addBreadcrumb:{@"[%@] Publishing Movie asset %@", v6, v8}];

  v103 = [PHAssetChangeRequest changeRequestForAsset:self->_asset];
  v9 = [(PHAsset *)self->_asset vcp_modificationDate];
  [v103 setMediaAnalysisTimeStamp:v9];

  v10 = MediaAnalysisVersion;
  [v103 setMediaAnalysisImageVersion:MediaAnalysisVersion];
  v11 = self;
  if (self->_imageCaption && +[VCPVideoCaptionAnalyzer mode]== 1)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v12 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        v13 = [(PHAsset *)self->_asset localIdentifier];
        imageCaption = self->_imageCaption;
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = imageCaption;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[%@] Publish image caption [%@]", buf, 0x16u);

        v11 = self;
      }
    }

    [v103 setGeneratedAssetDescription:v11->_imageCaption analysisVersion:VCPPhotosCaptionProcessingVersion sourceType:1];
  }

  if (v11->_imageEmbeddingVersion)
  {
    [v103 setImageEmbeddingVersion:?];
  }

  if (!v11->_imageOnly)
  {
    if (v11->_videoCaption && +[VCPVideoCaptionAnalyzer mode]== 1)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v15 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          v16 = v11;
          videoCaption = v11->_videoCaption;
          v18 = [(PHAsset *)v16->_asset localIdentifier];
          *buf = 138412546;
          *&buf[4] = videoCaption;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "publish video caption [%@] to movie %@", buf, 0x16u);

          v11 = self;
        }
      }

      [v103 setGeneratedAssetDescription:v11->_videoCaption analysisVersion:VCPPhotosCaptionProcessingVersion sourceType:2];
    }

    if (v11->_videoEmbeddingVersion)
    {
      [v103 setVideoEmbeddingVersion:?];
    }

    [v103 setMediaAnalysisVersion:v10];
    v19 = *&v11->_summaryTimeRange.start.epoch;
    *buf = *&v11->_summaryTimeRange.start.value;
    *&buf[16] = v19;
    v115 = *&v11->_summaryTimeRange.duration.timescale;
    [v103 setBestVideoTimeRange:buf];
    *&v20 = v11->_autoplayScore;
    [v103 setAutoplaySuggestionScore:v20];
    *&v21 = v11->_videoScore;
    [v103 setVideoScore:v21];
    *&v22 = v11->_activityScore;
    [v103 setActivityScore:v22];
    [v103 setFaceCount:v11->_faceCount];
    [v103 setAudioClassification:v11->_audioClassification];
    [v103 setScreenTimeDeviceImageSensitivity:v11->_screenTimeDeviceImageSensitivity];
    *buf = *&v11->_keyFrameTime.value;
    *&buf[16] = v11->_keyFrameTime.epoch;
    if (CMTimeGetSeconds(buf) != 0.0)
    {
      keyFrameResource = v11->_keyFrameResource;
      *buf = *&v11->_keyFrameTime.value;
      *&buf[16] = v11->_keyFrameTime.epoch;
      [v103 setBestKeyFrame:keyFrameResource time:buf];
    }

    [v103 setBestPlaybackRectWithNormalizedRect:{v11->_bestPlaybackRect.origin.x, v11->_bestPlaybackRect.origin.y, v11->_bestPlaybackRect.size.width, v11->_bestPlaybackRect.size.height}];
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v24 = v11->_humanActions;
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
              v36 = [(PHAsset *)self->_asset localIdentifier];
              v37 = [v29 localIdentifier];
              *buf = 138412546;
              *&buf[4] = v36;
              *&buf[12] = 2112;
              *&buf[14] = v37;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "   [%@] reset action traits for PHFace %@", buf, 0x16u);
            }

            [v30 setDetectionTraits:0];
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v27))
            {
              v33 = [(PHAsset *)self->_asset localIdentifier];
              v34 = [v29 localIdentifier];
              *buf = 138412546;
              *&buf[4] = v33;
              *&buf[12] = 2112;
              *&buf[14] = v34;
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

    v38 = self;
    sceneClassifications = self->_sceneClassifications;
    if (sceneClassifications)
    {
      v40 = VCPPhotosSceneProcessingVersionInternal();
      v41 = [(PHAsset *)self->_asset adjustmentVersion];
      [v103 setSceneClassifications:sceneClassifications ofType:2 version:v40 timestamp:v41];

      v38 = self;
    }

    if (v38->_audioClassifications && ([(PHAsset *)v38->_asset mediaSubtypes]& 0x20000) == 0)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v42 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v42))
        {
          v43 = [(NSSet *)v38->_audioClassifications count];
          v44 = [(PHAsset *)v38->_asset localIdentifier];
          *buf = 67109378;
          *&buf[4] = v43;
          *&buf[8] = 2112;
          *&buf[10] = v44;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "publish %d audio classifications to movie %@", buf, 0x12u);

          v38 = self;
        }
      }

      audioClassifications = v38->_audioClassifications;
      v46 = VCPPhotosSceneProcessingVersionInternal();
      v47 = [(PHAsset *)v38->_asset adjustmentVersion];
      [v103 setSceneClassifications:audioClassifications ofType:3 version:v46 timestamp:v47];

      v38 = self;
    }

    if (v38->_facesToAdd || v38->_animalsToAdd)
    {
      typea = +[NSMutableArray array];
      v48 = [(NSArray *)v38->_facesToAdd count];
      if (v48 == [(NSArray *)v38->_faceThumbnailIds count])
      {
        v49 = 0;
        v104 = VCPLogToOSLogType[7];
        v50 = &_os_log_default;
        v99 = VCPLogToOSLogType[3];
        while (v49 < [(NSArray *)v38->_facesToAdd count])
        {
          v51 = [(NSArray *)v38->_facesToAdd objectAtIndexedSubscript:v49];
          v52 = [(NSArray *)v38->_faceThumbnailIds objectAtIndexedSubscript:v49];
          v53 = +[PHFaceChangeRequest creationRequestForFace];
          v54 = [v53 placeholderForCreatedFace];
          if (v54)
          {
            [v53 setGroupingIdentifier:kVideoFaceGroupIdentifier];
            [v53 setFaceprint:v51];
            [v53 setDetectionType:1];
            v55 = [(PHAsset *)v38->_asset faceAdjustmentVersion];
            [v53 setAdjustmentVersion:v55];

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

            [typea addObject:v54];
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v50, v104))
            {
              v100 = [v54 localIdentifier];
              v63 = v50;
              v64 = [(PHAsset *)self->_asset localIdentifier];
              v65 = self->_humanActionsForFacesToAdd;
              v66 = [NSNumber numberWithInt:v49];
              v67 = [(NSDictionary *)v65 objectForKeyedSubscript:v66];
              v68 = [v67 count];
              *buf = 138412802;
              *&buf[4] = v100;
              *&buf[12] = 2112;
              *&buf[14] = v64;
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
          v38 = self;
        }
      }

      else if (MediaAnalysisLogLevel() >= 3)
      {
        v69 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v69))
        {
          v70 = [(NSArray *)v38->_facesToAdd count];
          v71 = [(NSArray *)v38->_faceThumbnailIds count];
          *buf = 134218240;
          *&buf[4] = v70;
          *&buf[12] = 2048;
          *&buf[14] = v71;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v69, "Number of faces %lu mismatch with number of thumnail Ids %lu, skipping faces", buf, 0x16u);
        }
      }

      v72 = [(NSArray *)v38->_animalsToAdd count];
      if (v72 == [(NSArray *)v38->_animalThumbnailIds count])
      {
        v73 = 0;
        v74 = VCPLogToOSLogType[7];
        v101 = VCPLogToOSLogType[4];
        v105 = VCPLogToOSLogType[3];
        while (1)
        {
          if (v73 >= [(NSArray *)v38->_animalsToAdd count])
          {
            goto LABEL_97;
          }

          v75 = [(NSArray *)v38->_animalsToAdd objectAtIndexedSubscript:v73];
          v76 = [(NSArray *)v38->_animalThumbnailIds objectAtIndexedSubscript:v73];
          v77 = +[PHFaceChangeRequest creationRequestForFace];
          v78 = [v77 placeholderForCreatedFace];
          if (v78)
          {
            [v77 setGroupingIdentifier:kVideoFaceGroupIdentifier];
            [v77 setFaceprint:v75];
            v79 = [(NSArray *)v38->_animalsType objectAtIndexedSubscript:v73];
            v80 = [v79 integerValue];

            if ((v80 & 0x200000000) != 0)
            {
              v84 = 4;
              v81 = self;
LABEL_88:
              [v77 setDetectionType:v84];
              v85 = [(PHAsset *)v81->_asset faceAdjustmentVersion];
              [v77 setAdjustmentVersion:v85];

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

              [typea addObject:v78];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v74))
              {
                v86 = [v78 localIdentifier];
                v87 = [(PHAsset *)self->_asset localIdentifier];
                *buf = 138412802;
                *&buf[4] = v86;
                *&buf[12] = 2112;
                *&buf[14] = v76;
                *&buf[22] = 2112;
                *&buf[24] = v87;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "Created new video PHFace-Animal [%@][%@] for asset [%@]", buf, 0x20u);
              }

              goto LABEL_93;
            }

            v81 = self;
            if ((v80 & 0x400000000) != 0)
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
          v38 = self;
        }
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v88 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v88))
        {
          v89 = [(NSArray *)v38->_animalsToAdd count];
          v90 = [(NSArray *)v38->_animalThumbnailIds count];
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
          v93 = [(PHAsset *)v38->_asset localIdentifier];
          *buf = 67109378;
          *&buf[4] = v92;
          *&buf[8] = 2112;
          *&buf[10] = v93;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v91, "setFacesFromEntireVideo %d human+animals for asset [%@]", buf, 0x12u);
        }
      }

      [v103 setTemporalFaces:typea];

      v38 = self;
    }

    if ([(PHAsset *)v38->_asset mad_isEligibleForComputeSync])
    {
      [v103 setLocalAnalysisStage:v38->_analysisStage];
      [v103 setComputeSyncMediaAnalysisPayload:v38->_computeSyncPayload];
      if (MediaAnalysisLogLevel() >= 7)
      {
        v94 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v94))
        {
          v95 = [(PHAsset *)v38->_asset localIdentifier];
          v96 = v38;
          analysisStage = v38->_analysisStage;
          v98 = [(NSData *)v96->_computeSyncPayload length];
          *buf = 138412802;
          *&buf[4] = v95;
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

- (void)setSummaryTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_summaryTimeRange.duration.timescale = *&a3->var1.var1;
  *&self->_summaryTimeRange.start.epoch = v4;
  *&self->_summaryTimeRange.start.value = v3;
}

- (void)setKeyFrameTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_keyFrameTime.epoch = a3->var3;
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