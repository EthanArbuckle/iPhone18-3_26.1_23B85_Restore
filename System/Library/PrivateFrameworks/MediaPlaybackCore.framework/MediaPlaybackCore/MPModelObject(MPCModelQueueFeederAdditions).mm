@interface MPModelObject(MPCModelQueueFeederAdditions)
+ (uint64_t)mqf_requiredItemPlaybackProperties;
+ (uint64_t)mqf_requiredSectionPlaybackProperties;
@end

@implementation MPModelObject(MPCModelQueueFeederAdditions)

+ (uint64_t)mqf_requiredSectionPlaybackProperties
{
  if (MSVDeviceOSIsInternalInstall())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = NSStringFromClass(self);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelQueueFeeder.m" lineNumber:1446 description:{@"Could not discern required properties for %@", v5}];
  }

  v6 = MEMORY[0x1E69708B0];

  return [v6 emptyPropertySet];
}

+ (uint64_t)mqf_requiredItemPlaybackProperties
{
  if (MSVDeviceOSIsInternalInstall())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = NSStringFromClass(self);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelQueueFeeder.m" lineNumber:1439 description:{@"Could not discern required properties for %@", v5}];
  }

  v6 = MEMORY[0x1E69708B0];

  return [v6 emptyPropertySet];
}

@end