@interface BWDeferredProcessingAnalyticsPayload
- (BWDeferredProcessingAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWDeferredProcessingAnalyticsPayload

- (BWDeferredProcessingAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWDeferredProcessingAnalyticsPayload;
  v2 = [(BWDeferredProcessingAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWDeferredProcessingAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredProcessingAnalyticsPayload;
  [(BWDeferredProcessingAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_error = 0;
  [(BWDeferredProcessingAnalyticsPayload *)self setProcessingResult:@"Unknown"];
  self->_processingType = 0;
  self->_fileBacked = 0;
  self->_containerAgeInSeconds = 0;
  self->_containerSizeInBytes = 0;
  self->_interactiveQoS = 0;
  *&self->_jobDurationInMilliseconds = 0;
  self->_graphPrepareDurationInMilliseconds = 0;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_error), @"error"}];
  [v3 setObject:self->_processingResult forKeyedSubscript:@"processingResult"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_processingType), @"processingType"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_fileBacked), @"fileBacked"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_containerAgeInSeconds), @"containerAgeInSeconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_containerSizeInBytes), @"containerSizeInBytes"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_interactiveQoS), @"interactiveQoS"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_graphPrepareDurationInMilliseconds), @"graphPrepareDurationInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_jobDurationInMilliseconds), @"jobDurationInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_containerProcessingCount), @"containerProcessingCount"}];
  return v3;
}

@end