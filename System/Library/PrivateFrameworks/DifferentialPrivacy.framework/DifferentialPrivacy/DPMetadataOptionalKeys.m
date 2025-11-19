@interface DPMetadataOptionalKeys
@end

@implementation DPMetadataOptionalKeys

void ___DPMetadataOptionalKeys_block_invoke()
{
  v3[8] = *MEMORY[0x277D85DE8];
  v3[0] = @"CountryCode";
  v3[1] = @"State";
  v3[2] = @"AlgorithmParameters";
  v3[3] = @"EnhancedDifferentialPrivacyParameters";
  v3[4] = @"AllowedDataTypes";
  v3[5] = @"DonationID";
  v3[6] = @"VDAF";
  v3[7] = @"DediscoTaskConfig";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:8];
  v1 = _DPMetadataOptionalKeys__DPMetadataOptionalKeys;
  _DPMetadataOptionalKeys__DPMetadataOptionalKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end