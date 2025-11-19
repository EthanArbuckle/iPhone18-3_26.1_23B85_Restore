@interface MPModelStoreAsset(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelStoreAsset(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v7[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69708B0];
  v1 = *MEMORY[0x1E6970018];
  v7[0] = *MEMORY[0x1E6970008];
  v7[1] = v1;
  v2 = *MEMORY[0x1E6970010];
  v7[2] = *MEMORY[0x1E6970000];
  v7[3] = v2;
  v3 = *MEMORY[0x1E6970028];
  v7[4] = *MEMORY[0x1E6970020];
  v7[5] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];
  v5 = [v0 propertySetWithProperties:v4];

  return v5;
}

@end