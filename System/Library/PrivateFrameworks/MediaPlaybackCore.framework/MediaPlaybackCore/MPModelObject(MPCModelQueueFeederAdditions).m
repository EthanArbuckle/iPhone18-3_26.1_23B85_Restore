@interface MPModelObject(MPCModelQueueFeederAdditions)
+ (uint64_t)mqf_requiredItemPlaybackProperties;
+ (uint64_t)mqf_requiredSectionPlaybackProperties;
@end

@implementation MPModelObject(MPCModelQueueFeederAdditions)

+ (uint64_t)mqf_requiredSectionPlaybackProperties
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = NSStringFromClass(a1);
    [v4 handleFailureInMethod:a2 object:a1 file:@"MPCModelQueueFeeder.m" lineNumber:1446 description:{@"Could not discern required properties for %@", v5}];
  }

  v6 = MEMORY[0x1E69708B0];

  return [v6 emptyPropertySet];
}

+ (uint64_t)mqf_requiredItemPlaybackProperties
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = NSStringFromClass(a1);
    [v4 handleFailureInMethod:a2 object:a1 file:@"MPCModelQueueFeeder.m" lineNumber:1439 description:{@"Could not discern required properties for %@", v5}];
  }

  v6 = MEMORY[0x1E69708B0];

  return [v6 emptyPropertySet];
}

@end