@interface MPModelPlaylistEntry(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelPlaylistEntry(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v7[0] = *MEMORY[0x1E69701A0];
  mqf_requiredItemPlaybackProperties = [MEMORY[0x1E6970770] mqf_requiredItemPlaybackProperties];
  v8[0] = mqf_requiredItemPlaybackProperties;
  v7[1] = *MEMORY[0x1E69701A8];
  mqf_requiredItemPlaybackProperties2 = [MEMORY[0x1E69707A8] mqf_requiredItemPlaybackProperties];
  v8[1] = mqf_requiredItemPlaybackProperties2;
  v7[2] = *MEMORY[0x1E6970198];
  mqf_requiredItemPlaybackProperties3 = [MEMORY[0x1E69706E8] mqf_requiredItemPlaybackProperties];
  v8[2] = mqf_requiredItemPlaybackProperties3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v5 = [v0 initWithProperties:MEMORY[0x1E695E0F0] relationships:v4];

  return v5;
}

@end