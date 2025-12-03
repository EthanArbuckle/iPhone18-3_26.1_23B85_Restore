@interface BWCameraAppLaunchAnalyticsPayload
- (BWCameraAppLaunchAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWCameraAppLaunchAnalyticsPayload

- (BWCameraAppLaunchAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWCameraAppLaunchAnalyticsPayload;
  v2 = [(BWCameraAppLaunchAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWCameraAppLaunchAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCameraAppLaunchAnalyticsPayload;
  [(BWCameraAppLaunchAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_isPrewarmed = 0;
  self->_launchMode = @"Unknown";
  self->_devicePosition = 0;
  self->_prewarmReason = @"Unknown";
  *&self->_launchDuration = xmmword_1AD056380;
  self->_deviceIsLocked = 0;
  self->_deviceStolenDuration = 0;
  self->_deviceStolenCondition = 0;
  self->_isColdLaunch = 0;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_isPrewarmed), @"isPrewarmed"}];
  [dictionary setObject:self->_launchMode forKeyedSubscript:@"launchMode"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_devicePosition), @"devicePosition"}];
  [dictionary setObject:self->_prewarmReason forKeyedSubscript:@"prewarmReason"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_ispStartDuration), @"ispStartDuration"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_numberOfGraphStartsDuringLaunch), @"numberOfGraphStartsDuringLaunch"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_deviceIsLocked), @"deviceIsLocked"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deviceStolenDuration), @"deviceStolenDuration"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deviceStolenCondition), @"deviceStolenCondition"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_isColdLaunch), @"isColdLaunch"}];
  if (self->_launchDuration)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"launchDuration"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (self->_launchDuration - self->_ispStartDuration)), @"launchDurationExcludingISP"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (self->_launchDuration - (self->_ispStartDuration + self->_deviceStolenDuration))), @"netLaunchDuration"}];
  }

  if ((self->_memoryStatusLevel & 0x80000000) == 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"memoryStatusLevel"}];
  }

  if ((self->_thermalLevel & 0x80000000) == 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"thermalLevel"}];
  }

  return dictionary;
}

@end