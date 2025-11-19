@interface MPModelAlbum(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredSectionPlaybackProperties;
@end

@implementation MPModelAlbum(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredSectionPlaybackProperties
{
  v13[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v1 = *MEMORY[0x1E696FBF8];
  v13[0] = *MEMORY[0x1E696FC38];
  v13[1] = v1;
  v2 = *MEMORY[0x1E696FC40];
  v13[2] = *MEMORY[0x1E696FC58];
  v13[3] = v2;
  v13[4] = *MEMORY[0x1E696FC48];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
  v11 = *MEMORY[0x1E69700D0];
  v4 = MEMORY[0x1E69708B0];
  v10 = *MEMORY[0x1E696FC68];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v6 = [v4 propertySetWithProperties:v5];
  v12 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [v0 initWithProperties:v3 relationships:v7];

  return v8;
}

@end