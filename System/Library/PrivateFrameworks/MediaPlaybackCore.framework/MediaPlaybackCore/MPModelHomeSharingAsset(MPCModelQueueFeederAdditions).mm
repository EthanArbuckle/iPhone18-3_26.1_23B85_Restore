@interface MPModelHomeSharingAsset(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelHomeSharingAsset(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69708B0];
  v1 = *MEMORY[0x1E696FCE8];
  v5[0] = *MEMORY[0x1E696FCF0];
  v5[1] = v1;
  v5[2] = *MEMORY[0x1E696FCE0];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = [v0 propertySetWithProperties:v2];

  return v3;
}

@end