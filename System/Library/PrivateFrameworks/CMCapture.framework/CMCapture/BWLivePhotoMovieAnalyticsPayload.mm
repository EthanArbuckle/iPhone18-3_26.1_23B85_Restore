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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [dictionary setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_recordingSucceeded), @"recordingSucceeded"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_errorStatus), @"errorStatus"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_sessionStatus), @"sessionStatus"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_longPressMovie), @"longPressMovie"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_originalRecording), @"originalRecording"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_hasStillImagePTS), @"hasStillImagePTS"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_movieDurationInSeconds), @"movieDurationInSeconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetInSeconds), @"stillTimeOffsetInSeconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetToVideoPrerollStartInMilliseconds), @"stillTimeOffsetToVideoPrerollStartInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetToVideoPrerollStopInMilliseconds), @"stillTimeOffsetToVideoPrerollStopInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetToAudioPrerollStartInMilliseconds), @"stillTimeOffsetToAudioPrerollStartInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stillTimeOffsetToAudioPrerollStopInMilliseconds), @"stillTimeOffsetToAudioPrerollStopInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_overlappingCapture), @"overlappingCapture"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_stagingNodeOverallNumberOfVideoFramesReceived), @"stagingNodeOverallNumberOfVideoFramesReceived"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeOverallAverageTimeBetweenVideoFramesInMilliseconds), @"stagingNodeOverallAverageTimeBetweenVideoFramesInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeOverallStandardDeviationOfTimeBetweenVideoFramesInMilliseconds), @"stagingNodeOverallStandardDeviationOfTimeBetweenVideoFramesInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeOverallMinimumTimeBetweenVideoFramesInMilliseconds), @"stagingNodeOverallMinimumTimeBetweenVideoFramesInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeOverallMaximumTimeBetweenVideoFramesInMilliseconds), @"stagingNodeOverallMaximumTimeBetweenVideoFramesInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_stagingNodeValveActiveNumberOfVideoFramesReceived), @"stagingNodeValveActiveNumberOfVideoFramesReceived"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeValveActiveAverageTimeBetweenVideoFramesInMilliseconds), @"stagingNodeValveActiveAverageTimeBetweenVideoFramesInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeValveActiveStandardDeviationOfTimeBetweenVideoFramesInMilliseconds), @"stagingNodeValveActiveStandardDeviationOfTimeBetweenVideoFramesInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeValveActiveMinimumTimeBetweenVideoFramesInMilliseconds), @"stagingNodeValveActiveMinimumTimeBetweenVideoFramesInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_stagingNodeValveActiveMaximumTimeBetweenVideoFramesInMilliseconds), @"stagingNodeValveActiveMaximumTimeBetweenVideoFramesInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_fileCoordinatorToWriterMovingWindowLatencyNumberOfSamples), @"fileCoordinatorToWriterMovingWindowLatencyNumberOfSamples"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_fileCoordinatorToWriterMovingWindowLatencyAverageInMilliseconds), @"fileCoordinatorToWriterMovingWindowLatencyAverageInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_fileCoordinatorToWriterMovingWindowLatencyStandardDeviationInMilliseconds), @"fileCoordinatorToWriterMovingWindowLatencyStandardDeviationInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_fileCoordinatorToWriterMovingWindowLatencyMinimumInMilliseconds), @"fileCoordinatorToWriterMovingWindowLatencyMinimumInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_fileCoordinatorToWriterMovingWindowLatencyMaximumInMilliseconds), @"fileCoordinatorToWriterMovingWindowLatencyMaximumInMilliseconds"}];
  if (self->_transitionVitalityScoreV1 >= 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"transitionVitalityScoreV1"}];
  }

  transitionVitalityFeatures = self->_transitionVitalityFeatures;
  if (transitionVitalityFeatures)
  {
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](transitionVitalityFeatures forKeyedSubscript:{"objectForKeyedSubscript:", @"deltaF", @"transitionVitalityDeltaF"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_transitionVitalityFeatures forKeyedSubscript:{"objectForKeyedSubscript:", @"thetaMax", @"transitionVitalityThetaMax"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_transitionVitalityFeatures forKeyedSubscript:{"objectForKeyedSubscript:", @"motionAnalysisRMS", @"transitionVitalitySubjectMotionRMS"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_stillCaptureLuxLevel), @"stillCaptureLuxLevel"}];
  stillCapturePortType = self->_stillCapturePortType;
  if (stillCapturePortType)
  {
    [dictionary setObject:stillCapturePortType forKeyedSubscript:@"stillCapturePortType"];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_stillCaptureType), @"stillCaptureType"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_stillCaptureResolutionFlavor), @"stillCaptureResolutionFlavor"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxSystemPressureLevel), @"maxSystemPressureLevel"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_targetFrameRate), @"targetFrameRate"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_numberOfFramesDropped), @"numberOfFramesDropped"}];
  retimingRecipeIdentifier = self->_retimingRecipeIdentifier;
  if (retimingRecipeIdentifier)
  {
    [dictionary setObject:retimingRecipeIdentifier forKeyedSubscript:@"retimingRecipeIdentifier"];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_minVideoFrameDurationInMilliseconds), @"videoFrameDurationMinInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_maxVideoFrameDurationInMilliseconds), @"videoFrameDurationMaxInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_averageVideoFrameDurationInMilliseconds), @"videoFrameDurationAverageInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_medianVideoFrameDurationInMilliseconds), @"videoFrameDurationMedianInMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_videoFrameDurationStandardDeviationInMilliseconds), @"videoFrameDurationStandardDeviationInMilliseconds"}];
  return dictionary;
}

@end