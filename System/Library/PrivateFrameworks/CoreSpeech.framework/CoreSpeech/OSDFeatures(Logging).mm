@interface OSDFeatures(Logging)
- (id)dictionary;
@end

@implementation OSDFeatures(Logging)

- (id)dictionary
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"SilenceFramesCountMs";
  v2 = MEMORY[0x277CCABB0];
  [self silenceFramesCountMs];
  v3 = [v2 numberWithDouble:?];
  v14[0] = v3;
  v13[1] = @"SilenceProbability";
  v4 = MEMORY[0x277CCABB0];
  [self silenceProbability];
  v5 = [v4 numberWithDouble:?];
  v14[1] = v5;
  v13[2] = @"SilenceDurationMs";
  v6 = MEMORY[0x277CCABB0];
  [self silenceDurationMs];
  v7 = [v6 numberWithDouble:?];
  v14[2] = v7;
  v13[3] = @"ProcessedAudioMs";
  v8 = MEMORY[0x277CCABB0];
  [self processedAudioMs];
  v9 = [v8 numberWithDouble:?];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end