@interface DPMetadataRequiredKeys
@end

@implementation DPMetadataRequiredKeys

void ___DPMetadataRequiredKeys_block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"VersionHash";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = _DPMetadataRequiredKeys__DPMetadataRequiredKeys;
  _DPMetadataRequiredKeys__DPMetadataRequiredKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end