@interface DPMetadataV2RequiredKeys
@end

@implementation DPMetadataV2RequiredKeys

void ___DPMetadataV2RequiredKeys_block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"Version";
  v3[1] = @"DediscoTaskConfig";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = _DPMetadataV2RequiredKeys__DPMetadataRequiredKeys;
  _DPMetadataV2RequiredKeys__DPMetadataRequiredKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end