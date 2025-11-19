@interface DPKeyProperties
@end

@implementation DPKeyProperties

void __30___DPKeyProperties_initialize__block_invoke()
{
  v7[15] = *MEMORY[0x277D85DE8];
  v6[0] = &unk_2839760F0;
  v6[1] = &unk_283976108;
  v7[0] = @"OneBitHistogram";
  v7[1] = @"MultiBitHistogram";
  v6[2] = &unk_283976120;
  v6[3] = &unk_283976138;
  v7[2] = @"CompressedMultiBitHistogram";
  v7[3] = @"StatisticsMean";
  v6[4] = &unk_283976150;
  v6[5] = &unk_283976168;
  v7[4] = @"Prio";
  v7[5] = @"OneHotEncoding";
  v6[6] = &unk_283976180;
  v6[7] = &unk_283976198;
  v7[6] = @"PrioPlusPlus";
  v7[7] = @"PrioPlusPlusMetrics";
  v6[8] = &unk_2839761B0;
  v6[9] = &unk_2839761C8;
  v7[8] = @"PrioPlusPlusMetadata";
  v7[9] = @"PrioPiRappor";
  v6[10] = &unk_2839761E0;
  v6[11] = &unk_2839761F8;
  v7[10] = @"Prio3SumVectorField64MultiproofHmacSha256Aes128";
  v7[11] = @"PINEResults";
  v6[12] = &unk_283976210;
  v6[13] = &unk_283976228;
  v7[12] = @"PINEMetrics";
  v7[13] = @"PINEMetadata";
  v6[14] = &unk_283976240;
  v7[14] = @"PreambleHmacSha256Aes128";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:15];
  v1 = kAlgorithmStringsMap;
  kAlgorithmStringsMap = v0;

  v2 = kDataAlgorithmsMap;
  kDataAlgorithmsMap = &unk_2839762B0;

  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_283976320];
  v4 = kAlgorithmsWithEpsilon;
  kAlgorithmsWithEpsilon = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __39___DPKeyProperties_propertiesFromFile___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v3 pathForResource:@"override.keyproperties" ofType:@"plist"];

  v4 = [_DPPListHelper loadPropertyListFromPath:*(a1 + 32) overridePath:v6 usingBlock:&__block_literal_global_193];
  v5 = allKeyProperties;
  allKeyProperties = v4;
}

@end