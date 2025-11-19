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
  v1 = [MEMORY[0x1E6970718] mqf_requiredSectionPlaybackProperties];
  v13[0] = v1;
  v12[1] = *MEMORY[0x1E69700D8];
  v2 = [MEMORY[0x1E6970630] mqf_requiredSectionPlaybackProperties];
  v13[1] = v2;
  v12[2] = *MEMORY[0x1E69700E0];
  v3 = [MEMORY[0x1E6970640] mqf_requiredSectionPlaybackProperties];
  v13[2] = v3;
  v12[3] = *MEMORY[0x1E69700F8];
  v4 = [MEMORY[0x1E6970678] mqf_requiredSectionPlaybackProperties];
  v13[3] = v4;
  v12[4] = *MEMORY[0x1E6970168];
  v5 = [MEMORY[0x1E69707B8] mqf_requiredSectionPlaybackProperties];
  v13[4] = v5;
  v12[5] = *MEMORY[0x1E6970170];
  v6 = [MEMORY[0x1E69707C8] mqf_requiredSectionPlaybackProperties];
  v13[5] = v6;
  v12[6] = *MEMORY[0x1E6970128];
  v7 = [MEMORY[0x1E6970738] mqf_requiredSectionPlaybackProperties];
  v13[6] = v7;
  v12[7] = *MEMORY[0x1E6970138];
  v8 = [MEMORY[0x1E6970750] mqf_requiredSectionPlaybackProperties];
  v13[7] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:8];
  v10 = [v0 initWithProperties:MEMORY[0x1E695E0F0] relationships:v9];

  return v10;
}

+ (id)mqf_requiredItemPlaybackProperties
{
  v11[6] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v10[0] = *MEMORY[0x1E6970120];
  v1 = [MEMORY[0x1E6970720] mqf_requiredItemPlaybackProperties];
  v11[0] = v1;
  v10[1] = *MEMORY[0x1E6970108];
  v2 = [MEMORY[0x1E69706E0] mqf_requiredItemPlaybackProperties];
  v11[1] = v2;
  v10[2] = *MEMORY[0x1E6970110];
  v3 = [MEMORY[0x1E69706E8] mqf_requiredItemPlaybackProperties];
  v11[2] = v3;
  v10[3] = *MEMORY[0x1E6970158];
  v4 = [MEMORY[0x1E6970770] mqf_requiredItemPlaybackProperties];
  v11[3] = v4;
  v10[4] = *MEMORY[0x1E6970160];
  v5 = [MEMORY[0x1E69707A8] mqf_requiredItemPlaybackProperties];
  v11[4] = v5;
  v10[5] = *MEMORY[0x1E6970130];
  v6 = [MEMORY[0x1E6970740] mqf_requiredItemPlaybackProperties];
  v11[5] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8 = [v0 initWithProperties:MEMORY[0x1E695E0F0] relationships:v7];

  return v8;
}

@end