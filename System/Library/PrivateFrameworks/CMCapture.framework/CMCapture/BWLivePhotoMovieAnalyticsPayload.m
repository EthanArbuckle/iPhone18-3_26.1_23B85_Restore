@interface BWLivePhotoMovieAnalyticsPayload
- (BWLivePhotoMovieAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWLivePhotoMovieAnalyticsPayload

- (BWLivePhotoMovieAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWLivePhotoMovieAnalyticsPayload;
  v2 = [(BWLivePhotoMovieAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWLivePhotoMovieAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLivePhotoMovieAnalyticsPayload;
  [(BWLivePhotoMovieAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_clientApplicationID = 0;
  self->_recordingSucceeded = 0;
  *&self->_errorStatus = 0;
  *(&self->_sessionStatus + 3) = 0;
  *&self->_movieDurationInSeconds = 0u;
  *&self->_stillTimeOffsetToVideoPrerollStartInMilliseconds = 0u;
  *&self->_stillTimeOffsetToAudioPrerollStartInMilliseconds = 0u;
  self->_overlappingCapture = 0;
  *&self->_stagingNodeOverallNumberOfVideoFramesReceived = 0u;
  *&self->_stagingNodeOverallStandardDeviationOfTimeBetweenVideoFramesInMilliseconds = 0u;
  *&self->_stagingNodeOverallMaximumTimeBetweenVideoFramesInMilliseconds = 0u;
  *&self->_stagingNodeValveActiveAverageTimeBetweenVideoFramesInMilliseconds = 0u;
  *&self->_stagingNodeValveActiveMinimumTimeBetweenVideoFramesInMilliseconds = 0u;
  *&self->_fileCoordinatorToWriterMovingWindowLatencyNumberOfSamples = 0u;
  *&self->_fileCoordinatorToWriterMovingWindowLatencyStandardDeviationInMilliseconds = 0u;
  self->_fileCoordinatorToWriterMovingWindowLatencyMaximumInMilliseconds = 0.0;
  self->_transitionVitalityScoreV1 = -1.0;

  self->_transitionVitalityFeatures = 0;
  self->_stillCaptureLuxLevel = 0;
  self->_targetFrameRate = 0.0;
  self->_numberOfFramesDropped = 0;
  self->_stillCapturePortType = 0;
  *&self->_stillCaptureType = 0;
  self->_maxSystemPressureLevel = 0;
  *&self->_retimingRecipeIdentifier = 0u;
  *&self->_maxVideoFrameDurationInMilliseconds = 0u;
  *&self->_medianVideoFrameDurationInMilliseconds = 0u;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [v3 setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_recordingSucceeded), @"recordingSucceeded"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_errorStatus), @"errorStatus"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sessionStatus), @"sessionStatus"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_longPressMovie), @"longPressMovie"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_originalRecording), @"originalRecording"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_hasStillImagePTS), @"hasStillImagePTS"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_movieDurationInSeconds), @"movieDurationInSeconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetInSeconds), @"stillTimeOffsetInSeconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetToVideoPrerollStartInMilliseconds), @"stillTimeOffsetToVideoPrerollStartInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetToVideoPrerollStopInMilliseconds), @"stillTimeOffsetToVideoPrerollStopInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetToAudioPrerollStartInMilliseconds), @"stillTimeOffsetToAudioPrerollStartInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetToAudioPrerollStopInMilliseconds), @"stillTimeOffsetToAudioPrerollStopInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_overlappingCapture), @"overlappingCapture"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_stagingNodeOverallNumberOfVideoFramesReceived), @"stagingNodeOverallNumberOfVideoFramesReceived"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeOverallAverageTimeBetweenVideoFramesInMilliseconds), @"stagingNodeOverallAverageTimeBetweenVideoFramesInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeOverallStandardDeviationOfTimeBetweenVideoFramesInMilliseconds), @"stagingNodeOverallStandardDeviationOfTimeBetweenVideoFramesInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeOverallMinimumTimeBetweenVideoFramesInMilliseconds), @"stagingNodeOverallMinimumTimeBetweenVideoFramesInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeOverallMaximumTimeBetweenVideoFramesInMilliseconds), @"stagingNodeOverallMaximumTimeBetweenVideoFramesInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_stagingNodeValveActiveNumberOfVideoFramesReceived), @"stagingNodeValveActiveNumberOfVideoFramesReceived"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeValveActiveAverageTimeBetweenVideoFramesInMilliseconds), @"stagingNodeValveActiveAverageTimeBetweenVideoFramesInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeValveActiveStandardDeviationOfTimeBetweenVideoFramesInMilliseconds), @"stagingNodeValveActiveStandardDeviationOfTimeBetweenVideoFramesInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeValveActiveMinimumTimeBetweenVideoFramesInMilliseconds), @"stagingNodeValveActiveMinimumTimeBetweenVideoFramesInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeValveActiveMaximumTimeBetweenVideoFramesInMilliseconds), @"stagingNodeValveActiveMaximumTimeBetweenVideoFramesInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_fileCoordinatorToWriterMovingWindowLatencyNumberOfSamples), @"fileCoordinatorToWriterMovingWindowLatencyNumberOfSamples"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_fileCoordinatorToWriterMovingWindowLatencyAverageInMilliseconds), @"fileCoordinatorToWriterMovingWindowLatencyAverageInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_fileCoordinatorToWriterMovingWindowLatencyStandardDeviationInMilliseconds), @"fileCoordinatorToWriterMovingWindowLatencyStandardDeviationInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_fileCoordinatorToWriterMovingWindowLatencyMinimumInMilliseconds), @"fileCoordinatorToWriterMovingWindowLatencyMinimumInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_fileCoordinatorToWriterMovingWindowLatencyMaximumInMilliseconds), @"fileCoordinatorToWriterMovingWindowLatencyMaximumInMilliseconds"}];
  if (self->_transitionVitalityScoreV1 >= 0.0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"transitionVitalityScoreV1"}];
  }

  transitionVitalityFeatures = self->_transitionVitalityFeatures;
  if (transitionVitalityFeatures)
  {
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](transitionVitalityFeatures forKeyedSubscript:{"objectForKeyedSubscript:", @"deltaF", @"transitionVitalityDeltaF"}];
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_transitionVitalityFeatures forKeyedSubscript:{"objectForKeyedSubscript:", @"thetaMax", @"transitionVitalityThetaMax"}];
    [v3 setObject:-[NSDictionary objectForKeyedSubscript:](self->_transitionVitalityFeatures forKeyedSubscript:{"objectForKeyedSubscript:", @"motionAnalysisRMS", @"transitionVitalitySubjectMotionRMS"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_stillCaptureLuxLevel), @"stillCaptureLuxLevel"}];
  stillCapturePortType = self->_stillCapturePortType;
  if (stillCapturePortType)
  {
    [v3 setObject:stillCapturePortType forKeyedSubscript:@"stillCapturePortType"];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_stillCaptureType), @"stillCaptureType"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_stillCaptureResolutionFlavor), @"stillCaptureResolutionFlavor"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxSystemPressureLevel), @"maxSystemPressureLevel"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_targetFrameRate), @"targetFrameRate"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfFramesDropped), @"numberOfFramesDropped"}];
  retimingRecipeIdentifier = self->_retimingRecipeIdentifier;
  if (retimingRecipeIdentifier)
  {
    [v3 setObject:retimingRecipeIdentifier forKeyedSubscript:@"retimingRecipeIdentifier"];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_minVideoFrameDurationInMilliseconds), @"videoFrameDurationMinInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_maxVideoFrameDurationInMilliseconds), @"videoFrameDurationMaxInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_averageVideoFrameDurationInMilliseconds), @"videoFrameDurationAverageInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_medianVideoFrameDurationInMilliseconds), @"videoFrameDurationMedianInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_videoFrameDurationStandardDeviationInMilliseconds), @"videoFrameDurationStandardDeviationInMilliseconds"}];
  return v3;
}

@end