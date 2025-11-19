@interface DPMetadataV2OptionalKeys
@end

@implementation DPMetadataV2OptionalKeys

void ___DPMetadataV2OptionalKeys_block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"VDAF";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = _DPMetadataV2OptionalKeys__DPMetadataOptionalKeys;
  _DPMetadataV2OptionalKeys__DPMetadataOptionalKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end