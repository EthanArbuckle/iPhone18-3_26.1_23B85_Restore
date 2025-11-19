@interface HKMCMenstruationDisplayTypeIdentifiers
@end

@implementation HKMCMenstruationDisplayTypeIdentifiers

void ___HKMCMenstruationDisplayTypeIdentifiers_block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"DisplayTypeIdentifierIntermenstrualBleeding";
  v3[1] = @"DisplayTypeIdentifierSymptoms";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = _HKMCMenstruationDisplayTypeIdentifiers_displayTypeIdentifiers;
  _HKMCMenstruationDisplayTypeIdentifiers_displayTypeIdentifiers = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end