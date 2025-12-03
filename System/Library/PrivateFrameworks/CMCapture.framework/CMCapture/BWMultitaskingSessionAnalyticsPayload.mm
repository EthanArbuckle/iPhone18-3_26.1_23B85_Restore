@interface BWMultitaskingSessionAnalyticsPayload
- (BWMultitaskingSessionAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
@end

@implementation BWMultitaskingSessionAnalyticsPayload

- (BWMultitaskingSessionAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWMultitaskingSessionAnalyticsPayload;
  v2 = [(BWMultitaskingSessionAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWMultitaskingSessionAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMultitaskingSessionAnalyticsPayload;
  [(BWMultitaskingSessionAnalyticsPayload *)&v3 dealloc];
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [dictionary setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_windowed), @"windowed"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_pipEnabled), @"pipEnabled"}];
  return dictionary;
}

@end