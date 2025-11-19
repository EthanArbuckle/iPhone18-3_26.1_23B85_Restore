@interface BWDeferredCaptureAnalyticsPayload
- (BWDeferredCaptureAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWDeferredCaptureAnalyticsPayload

- (BWDeferredCaptureAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWDeferredCaptureAnalyticsPayload;
  v2 = [(BWDeferredCaptureAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWDeferredCaptureAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWDeferredCaptureAnalyticsPayload;
  [(BWDeferredCaptureAnalyticsPayload *)&v2 dealloc];
}

- (void)reset
{
  self->_commitDurationInMilliseconds = 0;
  self->_flushDurationInMilliseconds = 0;
  *&self->_error = 0;
  self->_fileBacked = 0;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_error), @"error"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_processingType), @"processingType"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_fileBacked), @"fileBacked"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_commitDurationInMilliseconds), @"commitDurationInMilliseconds"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_flushDurationInMilliseconds), @"flushDurationInMilliseconds"}];
  return v3;
}

@end