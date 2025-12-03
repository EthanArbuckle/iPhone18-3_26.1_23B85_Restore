@interface GTReplayConfiguration
- (GTReplayConfiguration)init;
- (GTReplayConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (GTReplayConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTReplayConfiguration;
  v5 = [(GTReplayConfiguration *)&v8 init];
  if (v5)
  {
    v5->_forceLoadActionClear = [coderCopy decodeBoolForKey:@"forceLoadActionClear"];
    v5->_forceLoadUnusedResources = [coderCopy decodeBoolForKey:@"forceLoadUnusedResources"];
    v5->_forceResourcesResident = [coderCopy decodeBoolForKey:@"forceResourcesResident"];
    v5->_forceWaitUntilCompleted = [coderCopy decodeBoolForKey:@"forceWaitUntilCompleted"];
    v5->_disableOptimizeRestores = [coderCopy decodeBoolForKey:@"disableOptimizeRestores"];
    v5->_disableHeapTextureCompression = [coderCopy decodeBoolForKey:@"disableHeapTextureCompression"];
    v5->_enableStopOnError = [coderCopy decodeBoolForKey:@"enableStopOnError"];
    v5->_enableDisplayOnDevice = [coderCopy decodeBoolForKey:@"enableDisplayOnDevice"];
    v5->_enableReplayFromOtherPlatforms = [coderCopy decodeBoolForKey:@"enableReplayFromOtherPlatforms"];
    v5->_enableValidation = [coderCopy decodeBoolForKey:@"enableValidation"];
    v5->_enableCapture = [coderCopy decodeBoolForKey:@"enableCapture"];
    v5->_enableHUD = [coderCopy decodeBoolForKey:@"enableHUD"];
    v5->_enableLiveICBs = [coderCopy decodeBoolForKey:@"enableLiveICBs"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  forceLoadActionClear = self->_forceLoadActionClear;
  coderCopy = coder;
  [coderCopy encodeBool:forceLoadActionClear forKey:@"forceLoadActionClear"];
  [coderCopy encodeBool:self->_forceLoadUnusedResources forKey:@"forceLoadUnusedResources"];
  [coderCopy encodeBool:self->_forceResourcesResident forKey:@"forceResourcesResident"];
  [coderCopy encodeBool:self->_forceWaitUntilCompleted forKey:@"forceWaitUntilCompleted"];
  [coderCopy encodeBool:self->_disableOptimizeRestores forKey:@"disableOptimizeRestores"];
  [coderCopy encodeBool:self->_disableHeapTextureCompression forKey:@"disableHeapTextureCompression"];
  [coderCopy encodeBool:self->_enableStopOnError forKey:@"enableStopOnError"];
  [coderCopy encodeBool:self->_enableDisplayOnDevice forKey:@"enableDisplayOnDevice"];
  [coderCopy encodeBool:self->_enableReplayFromOtherPlatforms forKey:@"enableReplayFromOtherPlatforms"];
  [coderCopy encodeBool:self->_enableValidation forKey:@"enableValidation"];
  [coderCopy encodeBool:self->_enableCapture forKey:@"enableCapture"];
  [coderCopy encodeBool:self->_enableHUD forKey:@"enableHUD"];
  [coderCopy encodeBool:self->_enableLiveICBs forKey:@"enableLiveICBs"];
}

@end