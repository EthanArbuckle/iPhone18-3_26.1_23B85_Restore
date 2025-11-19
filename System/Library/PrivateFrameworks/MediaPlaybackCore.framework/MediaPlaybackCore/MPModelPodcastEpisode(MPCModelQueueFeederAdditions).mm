@interface MPModelPodcastEpisode(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelPodcastEpisode(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v12[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v1 = *MEMORY[0x1E696FE48];
  v12[0] = *MEMORY[0x1E696FE50];
  v12[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = *MEMORY[0x1E69701B8];
  v3 = MEMORY[0x1E69708B0];
  v9 = *MEMORY[0x1E696FE60];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v5 = [v3 propertySetWithProperties:v4];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v0 initWithProperties:v2 relationships:v6];

  return v7;
}

@end