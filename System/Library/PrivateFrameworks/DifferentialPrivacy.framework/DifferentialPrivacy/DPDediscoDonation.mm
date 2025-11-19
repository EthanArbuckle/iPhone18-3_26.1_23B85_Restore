@interface DPDediscoDonation
@end

@implementation DPDediscoDonation

void __53___DPDediscoDonation_TaskConfig__defaultValueForKey___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"OHTTP";
  v3[1] = @"PrivateAccessToken";
  v4[0] = MEMORY[0x277CBEC38];
  v4[1] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = defaultValueForKey__defaultValues;
  defaultValueForKey__defaultValues = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end