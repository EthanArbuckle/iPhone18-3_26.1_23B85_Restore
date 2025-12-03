@interface MPModelSong(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredItemPlaybackProperties;
@end

@implementation MPModelSong(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredItemPlaybackProperties
{
  v54[26] = *MEMORY[0x1E69E9840];
  v43 = objc_alloc(MEMORY[0x1E69708B0]);
  v0 = *MEMORY[0x1E696FF10];
  v54[0] = *MEMORY[0x1E696FFB0];
  v54[1] = v0;
  v1 = *MEMORY[0x1E696FF50];
  v54[2] = *MEMORY[0x1E696FF18];
  v54[3] = v1;
  v2 = *MEMORY[0x1E696FF30];
  v54[4] = *MEMORY[0x1E696FF38];
  v54[5] = v2;
  v3 = *MEMORY[0x1E696FF60];
  v54[6] = *MEMORY[0x1E696FF58];
  v54[7] = v3;
  v4 = *MEMORY[0x1E696FF20];
  v54[8] = *MEMORY[0x1E696FF08];
  v54[9] = v4;
  v5 = *MEMORY[0x1E696FFD8];
  v54[10] = *MEMORY[0x1E696FFA0];
  v54[11] = v5;
  v6 = *MEMORY[0x1E696FF78];
  v54[12] = *MEMORY[0x1E696FF80];
  v54[13] = v6;
  v7 = *MEMORY[0x1E696FF90];
  v54[14] = *MEMORY[0x1E696FF70];
  v54[15] = v7;
  v8 = *MEMORY[0x1E696FFC8];
  v54[16] = *MEMORY[0x1E696FF98];
  v54[17] = v8;
  v9 = *MEMORY[0x1E696FFD0];
  v54[18] = *MEMORY[0x1E696FF40];
  v54[19] = v9;
  v10 = *MEMORY[0x1E696FF28];
  v54[20] = *MEMORY[0x1E696FFB8];
  v54[21] = v10;
  v11 = *MEMORY[0x1E696FFC0];
  v54[22] = *MEMORY[0x1E6970A88];
  v54[23] = v11;
  v12 = *MEMORY[0x1E696FF68];
  v54[24] = *MEMORY[0x1E696FFA8];
  v54[25] = v12;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:26];
  v52[0] = *MEMORY[0x1E69701C0];
  v13 = objc_alloc(MEMORY[0x1E69708B0]);
  v14 = *MEMORY[0x1E696FC58];
  v51[0] = *MEMORY[0x1E696FC38];
  v51[1] = v14;
  v51[2] = *MEMORY[0x1E696FC50];
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
  v49 = *MEMORY[0x1E69700D0];
  v15 = MEMORY[0x1E69708B0];
  v48 = *MEMORY[0x1E696FC68];
  v16 = v48;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v41 = [v15 propertySetWithProperties:v42];
  v50 = v41;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v37 = [v13 initWithProperties:v40 relationships:v38];
  v53[0] = v37;
  v52[1] = *MEMORY[0x1E69701C8];
  v17 = MEMORY[0x1E69708B0];
  v47 = v16;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v35 = [v17 propertySetWithProperties:v36];
  v53[1] = v35;
  v52[2] = *MEMORY[0x1E69701D0];
  v18 = MEMORY[0x1E69708B0];
  v46 = *MEMORY[0x1E696FC70];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v33 = [v18 propertySetWithProperties:v34];
  v53[2] = v33;
  v52[3] = *MEMORY[0x1E69701E0];
  mqf_requiredItemPlaybackProperties = [MEMORY[0x1E6970698] mqf_requiredItemPlaybackProperties];
  v53[3] = mqf_requiredItemPlaybackProperties;
  v52[4] = *MEMORY[0x1E69701E8];
  mqf_requiredItemPlaybackProperties2 = [MEMORY[0x1E6970660] mqf_requiredItemPlaybackProperties];
  v53[4] = mqf_requiredItemPlaybackProperties2;
  v52[5] = *MEMORY[0x1E69701F8];
  mqf_requiredItemPlaybackProperties3 = [MEMORY[0x1E6970710] mqf_requiredItemPlaybackProperties];
  v53[5] = mqf_requiredItemPlaybackProperties3;
  v52[6] = *MEMORY[0x1E6970200];
  mqf_requiredItemPlaybackProperties4 = [MEMORY[0x1E6970798] mqf_requiredItemPlaybackProperties];
  v53[6] = mqf_requiredItemPlaybackProperties4;
  v52[7] = *MEMORY[0x1E69701D8];
  v22 = MEMORY[0x1E69708B0];
  v45 = *MEMORY[0x1E696FCD8];
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v24 = [v22 propertySetWithProperties:v23];
  v53[7] = v24;
  v52[8] = *MEMORY[0x1E69701F0];
  v25 = MEMORY[0x1E69708B0];
  v26 = *MEMORY[0x1E696FD08];
  v44[0] = *MEMORY[0x1E696FD18];
  v44[1] = v26;
  v44[2] = *MEMORY[0x1E696FD10];
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v28 = [v25 propertySetWithProperties:v27];
  v53[8] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:9];
  v30 = [v43 initWithProperties:v39 relationships:v29];

  return v30;
}

@end