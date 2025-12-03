@interface MPModelGenericObject(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
+ (id)mqf_requiredSectionPlaybackProperties;
@end

@implementation MPModelGenericObject(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredSectionPlaybackProperties
{
  v13[8] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v12[0] = *MEMORY[0x1E6970118];
  mqf_requiredSectionPlaybackProperties = [MEMORY[0x1E6970718] mqf_requiredSectionPlaybackProperties];
  v13[0] = mqf_requiredSectionPlaybackProperties;
  v12[1] = *MEMORY[0x1E69700D8];
  mqf_requiredSectionPlaybackProperties2 = [MEMORY[0x1E6970630] mqf_requiredSectionPlaybackProperties];
  v13[1] = mqf_requiredSectionPlaybackProperties2;
  v12[2] = *MEMORY[0x1E69700E0];
  mqf_requiredSectionPlaybackProperties3 = [MEMORY[0x1E6970640] mqf_requiredSectionPlaybackProperties];
  v13[2] = mqf_requiredSectionPlaybackProperties3;
  v12[3] = *MEMORY[0x1E69700F8];
  mqf_requiredSectionPlaybackProperties4 = [MEMORY[0x1E6970678] mqf_requiredSectionPlaybackProperties];
  v13[3] = mqf_requiredSectionPlaybackProperties4;
  v12[4] = *MEMORY[0x1E6970168];
  mqf_requiredSectionPlaybackProperties5 = [MEMORY[0x1E69707B8] mqf_requiredSectionPlaybackProperties];
  v13[4] = mqf_requiredSectionPlaybackProperties5;
  v12[5] = *MEMORY[0x1E6970170];
  mqf_requiredSectionPlaybackProperties6 = [MEMORY[0x1E69707C8] mqf_requiredSectionPlaybackProperties];
  v13[5] = mqf_requiredSectionPlaybackProperties6;
  v12[6] = *MEMORY[0x1E6970128];
  mqf_requiredSectionPlaybackProperties7 = [MEMORY[0x1E6970738] mqf_requiredSectionPlaybackProperties];
  v13[6] = mqf_requiredSectionPlaybackProperties7;
  v12[7] = *MEMORY[0x1E6970138];
  mqf_requiredSectionPlaybackProperties8 = [MEMORY[0x1E6970750] mqf_requiredSectionPlaybackProperties];
  v13[7] = mqf_requiredSectionPlaybackProperties8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:8];
  v10 = [v0 initWithProperties:MEMORY[0x1E695E0F0] relationships:v9];

  return v10;
}

+ (id)mqf_requiredItemPlaybackProperties
{
  v11[6] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v10[0] = *MEMORY[0x1E6970120];
  mqf_requiredItemPlaybackProperties = [MEMORY[0x1E6970720] mqf_requiredItemPlaybackProperties];
  v11[0] = mqf_requiredItemPlaybackProperties;
  v10[1] = *MEMORY[0x1E6970108];
  mqf_requiredItemPlaybackProperties2 = [MEMORY[0x1E69706E0] mqf_requiredItemPlaybackProperties];
  v11[1] = mqf_requiredItemPlaybackProperties2;
  v10[2] = *MEMORY[0x1E6970110];
  mqf_requiredItemPlaybackProperties3 = [MEMORY[0x1E69706E8] mqf_requiredItemPlaybackProperties];
  v11[2] = mqf_requiredItemPlaybackProperties3;
  v10[3] = *MEMORY[0x1E6970158];
  mqf_requiredItemPlaybackProperties4 = [MEMORY[0x1E6970770] mqf_requiredItemPlaybackProperties];
  v11[3] = mqf_requiredItemPlaybackProperties4;
  v10[4] = *MEMORY[0x1E6970160];
  mqf_requiredItemPlaybackProperties5 = [MEMORY[0x1E69707A8] mqf_requiredItemPlaybackProperties];
  v11[4] = mqf_requiredItemPlaybackProperties5;
  v10[5] = *MEMORY[0x1E6970130];
  mqf_requiredItemPlaybackProperties6 = [MEMORY[0x1E6970740] mqf_requiredItemPlaybackProperties];
  v11[5] = mqf_requiredItemPlaybackProperties6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8 = [v0 initWithProperties:MEMORY[0x1E695E0F0] relationships:v7];

  return v8;
}

@end