@interface MPModelMovie(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelMovie(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v14[9] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v1 = *MEMORY[0x1E696FD30];
  v14[0] = *MEMORY[0x1E696FD80];
  v14[1] = v1;
  v2 = *MEMORY[0x1E696FD40];
  v14[2] = *MEMORY[0x1E696FD38];
  v14[3] = v2;
  v3 = *MEMORY[0x1E696FD70];
  v14[4] = *MEMORY[0x1E696FD78];
  v14[5] = v3;
  v4 = *MEMORY[0x1E696FD60];
  v14[6] = *MEMORY[0x1E696FD58];
  v14[7] = v4;
  v14[8] = *MEMORY[0x1E696FD50];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];
  v6 = [MEMORY[0x1E6970660] mqf_requiredItemPlaybackProperties];
  v13[0] = v6;
  v12[1] = *MEMORY[0x1E6970188];
  v7 = [MEMORY[0x1E6970710] mqf_requiredItemPlaybackProperties];
  v13[1] = v7;
  v12[2] = *MEMORY[0x1E6970190];
  v8 = [MEMORY[0x1E6970798] mqf_requiredItemPlaybackProperties];
  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v10 = [v0 initWithProperties:v5 relationships:v9];

  return v10;
}

@end