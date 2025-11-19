@interface MPModelFileAsset(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelFileAsset(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v8[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69708B0];
  v1 = *MEMORY[0x1E696FCB0];
  v8[0] = *MEMORY[0x1E696FC88];
  v8[1] = v1;
  v2 = *MEMORY[0x1E696FCC0];
  v8[2] = *MEMORY[0x1E696FCB8];
  v8[3] = v2;
  v3 = *MEMORY[0x1E696FCA0];
  v8[4] = *MEMORY[0x1E696FCA8];
  v8[5] = v3;
  v4 = *MEMORY[0x1E696FC90];
  v8[6] = *MEMORY[0x1E696FC98];
  v8[7] = v4;
  v8[8] = *MEMORY[0x1E696FCC8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:9];
  v6 = [v0 propertySetWithProperties:v5];

  return v6;
}

@end