@interface BWOpportunisticInferenceAnalyticsPayload
- (BWOpportunisticInferenceAnalyticsPayload)init;
- (id)eventDictionary;
- (void)reset;
@end

@implementation BWOpportunisticInferenceAnalyticsPayload

- (BWOpportunisticInferenceAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWOpportunisticInferenceAnalyticsPayload;
  v2 = [(BWOpportunisticInferenceAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWOpportunisticInferenceAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  self->_facesProcessedCount = 0;
  self->_totalInferenceExecutionTime = 0;
  self->_inferenceDeadlineOverdue = 0;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_totalInferenceExecutionTime), @"totalInferenceExecutionTimeMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_inferenceDeadlineOverdue), @"inferenceDeadlineOverdueMilliseconds"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_facesProcessedCount), @"facesProcessedCount"}];
  return dictionary;
}

@end