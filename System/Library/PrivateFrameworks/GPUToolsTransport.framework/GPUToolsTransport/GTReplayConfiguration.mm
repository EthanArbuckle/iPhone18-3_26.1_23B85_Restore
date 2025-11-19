@interface GTReplayConfiguration
- (GTReplayConfiguration)init;
- (GTReplayConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayConfiguration

- (GTReplayConfiguration)init
{
  v6.receiver = self;
  v6.super_class = GTReplayConfiguration;
  v2 = [(GTReplayConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 13) = 0;
    *(v2 + 1) = 0;
    v4 = v2;
  }

  return v3;
}

- (GTReplayConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GTReplayConfiguration;
  v5 = [(GTReplayConfiguration *)&v8 init];
  if (v5)
  {
    v5->_forceLoadActionClear = [v4 decodeBoolForKey:@"forceLoadActionClear"];
    v5->_forceLoadUnusedResources = [v4 decodeBoolForKey:@"forceLoadUnusedResources"];
    v5->_forceResourcesResident = [v4 decodeBoolForKey:@"forceResourcesResident"];
    v5->_forceWaitUntilCompleted = [v4 decodeBoolForKey:@"forceWaitUntilCompleted"];
    v5->_disableOptimizeRestores = [v4 decodeBoolForKey:@"disableOptimizeRestores"];
    v5->_disableHeapTextureCompression = [v4 decodeBoolForKey:@"disableHeapTextureCompression"];
    v5->_enableStopOnError = [v4 decodeBoolForKey:@"enableStopOnError"];
    v5->_enableDisplayOnDevice = [v4 decodeBoolForKey:@"enableDisplayOnDevice"];
    v5->_enableReplayFromOtherPlatforms = [v4 decodeBoolForKey:@"enableReplayFromOtherPlatforms"];
    v5->_enableValidation = [v4 decodeBoolForKey:@"enableValidation"];
    v5->_enableCapture = [v4 decodeBoolForKey:@"enableCapture"];
    v5->_enableHUD = [v4 decodeBoolForKey:@"enableHUD"];
    v5->_enableLiveICBs = [v4 decodeBoolForKey:@"enableLiveICBs"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  forceLoadActionClear = self->_forceLoadActionClear;
  v5 = a3;
  [v5 encodeBool:forceLoadActionClear forKey:@"forceLoadActionClear"];
  [v5 encodeBool:self->_forceLoadUnusedResources forKey:@"forceLoadUnusedResources"];
  [v5 encodeBool:self->_forceResourcesResident forKey:@"forceResourcesResident"];
  [v5 encodeBool:self->_forceWaitUntilCompleted forKey:@"forceWaitUntilCompleted"];
  [v5 encodeBool:self->_disableOptimizeRestores forKey:@"disableOptimizeRestores"];
  [v5 encodeBool:self->_disableHeapTextureCompression forKey:@"disableHeapTextureCompression"];
  [v5 encodeBool:self->_enableStopOnError forKey:@"enableStopOnError"];
  [v5 encodeBool:self->_enableDisplayOnDevice forKey:@"enableDisplayOnDevice"];
  [v5 encodeBool:self->_enableReplayFromOtherPlatforms forKey:@"enableReplayFromOtherPlatforms"];
  [v5 encodeBool:self->_enableValidation forKey:@"enableValidation"];
  [v5 encodeBool:self->_enableCapture forKey:@"enableCapture"];
  [v5 encodeBool:self->_enableHUD forKey:@"enableHUD"];
  [v5 encodeBool:self->_enableLiveICBs forKey:@"enableLiveICBs"];
}

@end