@interface BWISPStartupAnalyticsPayload
- (BWISPStartupAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
@end

@implementation BWISPStartupAnalyticsPayload

- (BWISPStartupAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWISPStartupAnalyticsPayload;
  v2 = [(BWISPStartupAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWISPStartupAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_ispStartupTime), @"ispStartupTime"}];
  return dictionary;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWISPStartupAnalyticsPayload;
  [(BWISPStartupAnalyticsPayload *)&v2 dealloc];
}

@end