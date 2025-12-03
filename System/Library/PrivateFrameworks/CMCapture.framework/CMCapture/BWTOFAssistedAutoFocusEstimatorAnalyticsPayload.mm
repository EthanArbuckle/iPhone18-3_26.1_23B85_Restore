@interface BWTOFAssistedAutoFocusEstimatorAnalyticsPayload
- (BWTOFAssistedAutoFocusEstimatorAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWTOFAssistedAutoFocusEstimatorAnalyticsPayload

- (BWTOFAssistedAutoFocusEstimatorAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWTOFAssistedAutoFocusEstimatorAnalyticsPayload;
  v2 = [(BWTOFAssistedAutoFocusEstimatorAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWTOFAssistedAutoFocusEstimatorAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWTOFAssistedAutoFocusEstimatorAnalyticsPayload;
  [(BWTOFAssistedAutoFocusEstimatorAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_portType = 0;

  self->_clientApplicationID = 0;
  self->_estimatorResults = 0;
  self->_streamingTime = 0;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  portType = self->_portType;
  if (portType)
  {
    [dictionary setObject:portType forKeyedSubscript:@"portType"];
  }

  clientApplicationID = self->_clientApplicationID;
  if (clientApplicationID)
  {
    [v4 setObject:clientApplicationID forKeyedSubscript:@"clientApplicationID"];
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
    [v4 setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  }

  if (self->_streamingTime)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"streamingTime"}];
  }

  estimatorResults = self->_estimatorResults;
  if (estimatorResults)
  {
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C840), @"testingPFLError"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C820), @"testingAvgLuxLevel"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C850), @"testingRMSMotion"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C860), @"testingTime"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C828), @"testingDeltaTemperature"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C838), @"testingMinSubjectDistance"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C830), @"testingMaxSubjectDistance"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C848), @"testingRMSDefocus"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C858), @"testingStatus"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8C8), @"trainingStartPFLError"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C888), @"trainingEndPFLError"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C870), @"trainingAvgLuxLevel"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8C0), @"trainingRMSMotion"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8D8), @"trainingTime"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C880), @"trainingDeltaTemperature"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8A8), @"trainingOffsetCorrection"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8A0), @"trainingMinSubjectDistance"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C898), @"trainingMaxSubjectDistance"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8B8), @"trainingRMSDefocus"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C868), @"timeSinceLastTraining"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C878), @"trainingConvergenceStatus"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8D0), @"trainingStatus"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7F0), @"APEStatus"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C7F8), @"dropEventCount"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C808), @"dropMinAccel"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C800), @"dropMaxAccel"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C810), @"dropStatus"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C818), @"powerOnEventCount"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C890), @"trainingFDRDelta"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_estimatorResults forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C8B0), @"trainingPersistentDelta"}];
  }

  return v4;
}

@end