@interface MPModelArtist(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredSectionPlaybackProperties;
@end

@implementation MPModelArtist(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredSectionPlaybackProperties
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69708B0];
  v1 = *MEMORY[0x1E696FC60];
  v5[0] = *MEMORY[0x1E696FC68];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = [v0 propertySetWithProperties:v2];

  return v3;
}

@end