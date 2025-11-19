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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [v3 setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [v3 setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", self->_effectQuality), @"averageQuality"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_averageProcessingTime), @"averageProcessingTime"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_maxProcessingTime), @"maxProcessingTime"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_numberOfFrames), @"numberOfFrames"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_numberOfFrameDrops), @"numberOfFrameDrops"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxThermalSystemPressureLevel), @"maxThermalSystemPressurelLevel"}];
  return v3;
}

@end