@interface Metadata
@end

@implementation Metadata

id GeoAnalyticsStateConfig_detailedExperiments_stateDisabled_Metadata_block_invoke_11()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = [v0 numberWithBool:{objc_msgSend(&unk_1F20567A0, "containsObject:", v2)}];

  return v3;
}

id GeoAnalyticsStateConfig_detailed_experiments_stateDisabled_Metadata_block_invoke_12()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = [v0 numberWithBool:{objc_msgSend(&unk_1F20567B8, "containsObject:", v2)}];

  return v3;
}

id GeoAnalyticsStateConfig_experiments_stateDisabled_Metadata_block_invoke_24()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = [v0 numberWithBool:{objc_msgSend(&unk_1F20567D0, "containsObject:", v2)}];

  return v3;
}

@end