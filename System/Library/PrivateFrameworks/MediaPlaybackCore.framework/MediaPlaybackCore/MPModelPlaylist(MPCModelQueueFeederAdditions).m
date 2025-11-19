@interface MPModelPlaylist(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredSectionPlaybackProperties;
@end

@implementation MPModelPlaylist(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredSectionPlaybackProperties
{
  v9[10] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69708B0];
  v1 = *MEMORY[0x1E696FE08];
  v9[0] = *MEMORY[0x1E696FE10];
  v9[1] = v1;
  v2 = *MEMORY[0x1E696FDC8];
  v9[2] = *MEMORY[0x1E696FE30];
  v9[3] = v2;
  v3 = *MEMORY[0x1E696FDC0];
  v9[4] = *MEMORY[0x1E696FE28];
  v9[5] = v3;
  v4 = *MEMORY[0x1E696FE20];
  v9[6] = *MEMORY[0x1E696FE18];
  v9[7] = v4;
  v5 = *MEMORY[0x1E696FDD0];
  v9[8] = *MEMORY[0x1E696FDD8];
  v9[9] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:10];
  v7 = [v0 propertySetWithProperties:v6];

  return v7;
}

@end