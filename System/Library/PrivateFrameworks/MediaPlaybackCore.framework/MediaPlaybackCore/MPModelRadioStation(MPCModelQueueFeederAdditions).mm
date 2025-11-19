@interface MPModelRadioStation(MPCModelQueueFeederAdditions)
+ (id)mqf_requiredSectionPlaybackProperties;
@end

@implementation MPModelRadioStation(MPCModelQueueFeederAdditions)

+ (id)mqf_requiredSectionPlaybackProperties
{
  v8[9] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69708B0]);
  v1 = *MEMORY[0x1E696FEA8];
  v8[0] = *MEMORY[0x1E696FE68];
  v8[1] = v1;
  v2 = *MEMORY[0x1E696FE78];
  v8[2] = *MEMORY[0x1E696FE70];
  v8[3] = v2;
  v3 = *MEMORY[0x1E696FED0];
  v8[4] = *MEMORY[0x1E696FED8];
  v8[5] = v3;
  v4 = *MEMORY[0x1E696FEB8];
  v8[6] = *MEMORY[0x1E696FEC8];
  v8[7] = v4;
  v8[8] = *MEMORY[0x1E696FEB0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:9];
  v6 = [v0 initWithProperties:v5 relationships:MEMORY[0x1E695E0F8]];

  return v6;
}

@end