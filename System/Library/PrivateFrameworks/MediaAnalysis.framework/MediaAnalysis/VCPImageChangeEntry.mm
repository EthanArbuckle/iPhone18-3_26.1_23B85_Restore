@interface VCPImageChangeEntry
- ($66BD1C5E7A9131B7E50B573777372F49)animatedStickerTimeRange;
- ($66BD1C5E7A9131B7E50B573777372F49)summaryTimeRange;
- (BOOL)canPublishLivePhotoVariationSuggestion;
- (CGRect)bestPlaybackRect;
- (void)publish;
- (void)setAnimatedStickerTimeRange:(id *)a3;
- (void)setKeyFrameTime:(id *)a3;
- (void)setSummaryTimeRange:(id *)a3;
@end

@implementation VCPImageChangeEntry

- (void)publish
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v3 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(PHAsset *)self->_asset localIdentifier];
      if ([(PHAsset *)self->_asset vcp_isLivePhoto])
      {
        v5 = @"Live ";
      }

      else
      {
        v5 = &stru_1002890F8;
      }

      v6 = [(PHAsset *)self->_asset vcp_isLivePhoto];
      v7 = &stru_1002890F8;
      if (v6 && self->_imageOnly)
      {
        v7 = @"(still image analysis)";
      }

      *buf = 138412802;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      *&buf[22] = 2112;
      *&buf[24] = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@] Publishing %@Photo asset %@", buf, 0x20u);
    }
  }

  v54 = [PHAssetChangeRequest changeRequestForAsset:self->_asset];
  v8 = +[MADStateHandler sharedStateHandler];
  v9 = [(PHAsset *)self->_asset localIdentifier];
  if ([(PHAsset *)self->_asset vcp_isLivePhoto])
  {
    v10 = @"Live ";
  }

  else
  {
    v10 = &stru_1002890F8;
  }

  v11 = [(PHAsset *)self->_asset vcp_isLivePhoto];
  v12 = &stru_1002890F8;
  if (v11 && self->_imageOnly)
  {
    v12 = @"(still image analysis)";
  }

  [v8 addBreadcrumb:{@"[%@] Persisting 1 %@Photo asset %@", v9, v10, v12}];

  v13 = v54;
  if (self->_imageCaption && +[VCPVideoCaptionAnalyzer mode]== 1)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v14 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        imageCaption = self->_imageCaption;
        v16 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412546;
        *&buf[4] = imageCaption;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "publish image caption [%@] to photo asset %@", buf, 0x16u);

        v13 = v54;
      }
    }

    [v13 setGeneratedAssetDescription:self->_imageCaption analysisVersion:VCPPhotosCaptionProcessingVersion sourceType:1];
  }

  if (self->_videoCaption && +[VCPVideoCaptionAnalyzer mode]== 1)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v17 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        videoCaption = self->_videoCaption;
        v19 = [(PHAsset *)self->_asset localIdentifier];
        *buf = 138412546;
        *&buf[4] = videoCaption;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "publish video caption [%@] to photo asset %@", buf, 0x16u);

        v13 = v54;
      }
    }

    [v13 setGeneratedAssetDescription:self->_videoCaption analysisVersion:VCPPhotosCaptionProcessingVersion sourceType:2];
  }

  v20 = [(PHAsset *)self->_asset vcp_modificationDate];
  [v13 setMediaAnalysisTimeStamp:v20];

  v21 = MediaAnalysisVersion;
  v22 = v54;
  [v54 setMediaAnalysisImageVersion:MediaAnalysisVersion];
  if (([(PHAsset *)self->_asset vcp_isLivePhoto]& 1) == 0)
  {
    [v54 setMediaAnalysisVersion:v21];
  }

  [v54 setFaceCount:self->_faceCount];
  if (self->_imageEmbeddingVersion)
  {
    [v54 setImageEmbeddingVersion:?];
  }

  if (self->_videoEmbeddingVersion)
  {
    [v54 setVideoEmbeddingVersion:?];
  }

  if ([(PHAsset *)self->_asset vcp_isLivePhoto]&& !self->_imageOnly)
  {
    [v54 setMediaAnalysisVersion:v21];
    v23 = *&self->_summaryTimeRange.start.epoch;
    *buf = *&self->_summaryTimeRange.start.value;
    *&buf[16] = v23;
    v63 = *&self->_summaryTimeRange.duration.timescale;
    [v54 setBestVideoTimeRange:buf];
    *&v24 = self->_autoplayScore;
    [v54 setAutoplaySuggestionScore:v24];
    v25 = *&self->_animatedStickerTimeRange.start.epoch;
    *buf = *&self->_animatedStickerTimeRange.start.value;
    *&buf[16] = v25;
    v63 = *&self->_animatedStickerTimeRange.duration.timescale;
    [v54 setAnimatedStickerTimeRange:buf];
    *&v26 = self->_animatedStickerScore;
    [v54 setVideoStickerSuggestionScore:v26];
    [v54 setAudioClassification:self->_audioClassification];
    *&v27 = self->_audioScore;
    [v54 setAudioScore:v27];
    *&v28 = self->_settlingEffectScore;
    [v54 setSettlingEffectScore:v28];
    *&v29 = self->_settlingEffectRankingScore;
    [v54 setActivityScore:v29];
    [v54 setScreenTimeDeviceImageSensitivity:self->_screenTimeDeviceImageSensitivity];
    [v54 setBestPlaybackRectWithNormalizedRect:{self->_bestPlaybackRect.origin.x, self->_bestPlaybackRect.origin.y, self->_bestPlaybackRect.size.width, self->_bestPlaybackRect.size.height}];
    if ([(VCPImageChangeEntry *)self canPublishLivePhotoVariationSuggestion])
    {
      [v54 setVariationSuggestionStates:self->_loopSuggestionState forVariationType:1];
      [v54 setVariationSuggestionStates:self->_longExposureSuggestionState forVariationType:3];
    }

    if (self->_audioClassifications)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v30 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          v31 = [(NSSet *)self->_audioClassifications count];
          v32 = [(PHAsset *)self->_asset localIdentifier];
          *buf = 67109378;
          *&buf[4] = v31;
          *&buf[8] = 2112;
          *&buf[10] = v32;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "publish %d audio classifications to livephoto %@", buf, 0x12u);

          v22 = v54;
        }
      }

      audioClassifications = self->_audioClassifications;
      v34 = VCPPhotosSceneProcessingVersionInternal();
      v35 = [(PHAsset *)self->_asset adjustmentVersion];
      [v22 setSceneClassifications:audioClassifications ofType:3 version:v34 timestamp:v35];
    }
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = self->_humanActions;
  v36 = [(NSDictionary *)obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v36)
  {
    v37 = *v58;
    v38 = VCPLogToOSLogType[6];
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v58 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v57 + 1) + 8 * i);
        v41 = [PHFaceChangeRequest changeRequestForFace:v40];
        v42 = [(NSDictionary *)self->_humanActions objectForKeyedSubscript:v40];
        v43 = [v42 count] == 0;

        if (v43)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            v47 = [(PHAsset *)self->_asset localIdentifier];
            v48 = [v40 localIdentifier];
            *buf = 138412546;
            *&buf[4] = v47;
            *&buf[12] = 2112;
            *&buf[14] = v48;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "   [%@] reset action traits for PHFace %@", buf, 0x16u);
          }

          [v41 setDetectionTraits:0];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v38))
          {
            v44 = [(PHAsset *)self->_asset localIdentifier];
            v45 = [v40 localIdentifier];
            *buf = 138412546;
            *&buf[4] = v44;
            *&buf[12] = 2112;
            *&buf[14] = v45;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "   [%@] publish action traits for PHFace %@", buf, 0x16u);
          }

          v46 = [(NSDictionary *)self->_humanActions objectForKeyedSubscript:v40];
          [v41 setDetectionTraits:v46];
        }
      }

      v36 = [(NSDictionary *)obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v36);
  }

  v49 = v54;
  if (!self->_imageOnly || ([(PHAsset *)self->_asset vcp_isLivePhoto]& 1) == 0)
  {
    if ([(PHAsset *)self->_asset mad_isEligibleForComputeSync])
    {
      [v54 setLocalAnalysisStage:self->_analysisStage];
      [v54 setComputeSyncMediaAnalysisPayload:self->_computeSyncPayload];
      if (MediaAnalysisLogLevel() >= 7)
      {
        v50 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v50))
        {
          v51 = [(PHAsset *)self->_asset localIdentifier];
          analysisStage = self->_analysisStage;
          v53 = [(NSData *)self->_computeSyncPayload length];
          *buf = 138412802;
          *&buf[4] = v51;
          *&buf[12] = 1024;
          *&buf[14] = analysisStage;
          *&buf[18] = 1024;
          *&buf[20] = v53;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v50, "[%@] publish analysis stage (%d) and compute sync payload (%d bytes)", buf, 0x18u);

          v49 = v54;
        }
      }
    }
  }
}

- (BOOL)canPublishLivePhotoVariationSuggestion
{
  v3 = [(PHAsset *)self->_asset variationSuggestionStatesForVariationType:1];
  v4 = [(PHAsset *)self->_asset variationSuggestionStatesForVariationType:3];
  loopSuggestionState = self->_loopSuggestionState;
  result = 0;
  if (v3 != loopSuggestionState || v4 != self->_longExposureSuggestionState)
  {
    v6 = !v3 || v4 == 0;
    if (v6 || loopSuggestionState && self->_longExposureSuggestionState)
    {
      return 1;
    }
  }

  return result;
}

- ($66BD1C5E7A9131B7E50B573777372F49)summaryTimeRange
{
  v3 = *&self[3].var1.var3;
  *&retstr->var0.var0 = *&self[3].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[4].var0.var1;
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

- ($66BD1C5E7A9131B7E50B573777372F49)animatedStickerTimeRange
{
  v3 = *&self[4].var1.var3;
  *&retstr->var0.var0 = *&self[4].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[5].var0.var1;
  return self;
}

- (void)setAnimatedStickerTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_animatedStickerTimeRange.duration.timescale = *&a3->var1.var1;
  *&self->_animatedStickerTimeRange.start.epoch = v4;
  *&self->_animatedStickerTimeRange.start.value = v3;
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