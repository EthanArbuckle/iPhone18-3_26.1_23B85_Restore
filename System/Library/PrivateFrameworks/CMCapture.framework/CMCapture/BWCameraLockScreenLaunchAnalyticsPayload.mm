@interface BWCameraLockScreenLaunchAnalyticsPayload
- (BWCameraLockScreenLaunchAnalyticsPayload)init;
- (id)eventDictionary;
- (void)reset;
@end

@implementation BWCameraLockScreenLaunchAnalyticsPayload

- (BWCameraLockScreenLaunchAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWCameraLockScreenLaunchAnalyticsPayload;
  v2 = [(BWCameraLockScreenLaunchAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWCameraLockScreenLaunchAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  *&self->_completed = 0;
  self->_ispStreamingStarted = 0;
  self->_launchError = 0;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_completed), @"completed"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_prewarmed), @"prewarmed"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_ispStreamingStarted), @"ispStreamingStarted"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_launchError), @"launchError"}];
  return dictionary;
}

@end