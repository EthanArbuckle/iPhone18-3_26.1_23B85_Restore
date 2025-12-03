@interface BWBackgroundBlurSessionAnalyticsPayload
- (BWBackgroundBlurSessionAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWBackgroundBlurSessionAnalyticsPayload

- (BWBackgroundBlurSessionAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWBackgroundBlurSessionAnalyticsPayload;
  v2 = [(BWBackgroundBlurSessionAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWBackgroundBlurSessionAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBackgroundBlurSessionAnalyticsPayload;
  [(BWBackgroundBlurSessionAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  *&self->_numberOfFrames = 0u;
  *&self->_averageProcessingTime = 0u;
  *&self->_clientApplicationID = 0u;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [dictionary setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [dictionary setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->_effectQuality), @"averageQuality"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_averageProcessingTime), @"averageProcessingTime"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_maxProcessingTime), @"maxProcessingTime"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_numberOfFrames), @"numberOfFrames"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_numberOfFrameDrops), @"numberOfFrameDrops"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxThermalSystemPressureLevel), @"maxThermalSystemPressurelLevel"}];
  return dictionary;
}

@end