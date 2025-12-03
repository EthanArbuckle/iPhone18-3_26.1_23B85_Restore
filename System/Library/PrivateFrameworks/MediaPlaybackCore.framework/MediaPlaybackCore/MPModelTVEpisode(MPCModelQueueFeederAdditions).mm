@interface MPModelTVEpisode(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelTVEpisode(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v37[12] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v1 = *MEMORY[0x1E6970030];
  v37[0] = *MEMORY[0x1E6970098];
  v37[1] = v1;
  v2 = *MEMORY[0x1E6970040];
  v37[2] = *MEMORY[0x1E6970038];
  v37[3] = v2;
  v3 = *MEMORY[0x1E6970078];
  v37[4] = *MEMORY[0x1E6970080];
  v37[5] = v3;
  v4 = *MEMORY[0x1E6970088];
  v37[6] = *MEMORY[0x1E6970090];
  v37[7] = v4;
  v5 = *MEMORY[0x1E6970068];
  v37[8] = *MEMORY[0x1E6970060];
  v37[9] = v5;
  v6 = *MEMORY[0x1E6970048];
  v37[10] = *MEMORY[0x1E6970058];
  v37[11] = v6;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:12];
  v35[0] = *MEMORY[0x1E6970218];
  v7 = objc_alloc(MEMORY[0x1E69708B0]);
  v33 = *MEMORY[0x1E6970230];
  v8 = MEMORY[0x1E69708B0];
  v32 = *MEMORY[0x1E69700C8];
  v9 = v32;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v26 = [v8 propertySetWithProperties:v27];
  v34 = v26;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v23 = [v7 initWithProperties:MEMORY[0x1E695E0F0] relationships:v24];
  v36[0] = v23;
  v35[1] = *MEMORY[0x1E6970220];
  v10 = objc_alloc(MEMORY[0x1E69708B0]);
  v31 = v9;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v29 = *MEMORY[0x1E6970238];
  v11 = MEMORY[0x1E69708B0];
  v28 = *MEMORY[0x1E69700C0];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v13 = [v11 propertySetWithProperties:v12];
  v30 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v15 = [v10 initWithProperties:v22 relationships:v14];
  v36[1] = v15;
  v35[2] = *MEMORY[0x1E6970208];
  mqf_requiredItemPlaybackProperties = [MEMORY[0x1E6970660] mqf_requiredItemPlaybackProperties];
  v36[2] = mqf_requiredItemPlaybackProperties;
  v35[3] = *MEMORY[0x1E6970210];
  mqf_requiredItemPlaybackProperties2 = [MEMORY[0x1E6970710] mqf_requiredItemPlaybackProperties];
  v36[3] = mqf_requiredItemPlaybackProperties2;
  v35[4] = *MEMORY[0x1E6970228];
  mqf_requiredItemPlaybackProperties3 = [MEMORY[0x1E6970798] mqf_requiredItemPlaybackProperties];
  v36[4] = mqf_requiredItemPlaybackProperties3;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];
  v20 = [v0 initWithProperties:v25 relationships:v19];

  return v20;
}

@end