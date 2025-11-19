@interface MPModelPlaybackPosition(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelPlaybackPosition(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69708B0];
  v1 = *MEMORY[0x1E696FD98];
  v6[0] = *MEMORY[0x1E696FD88];
  v6[1] = v1;
  v2 = *MEMORY[0x1E696FDA8];
  v6[2] = *MEMORY[0x1E696FDA0];
  v6[3] = v2;
  v6[4] = *MEMORY[0x1E696FDB0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [v0 propertySetWithProperties:v3];

  return v4;
}

@end