@interface CDMeterDisabledLayerActions
@end

@implementation CDMeterDisabledLayerActions

void ___CDMeterDisabledLayerActions_block_invoke()
{
  v5[9] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB68] null];
  v4[0] = @"instanceTransform";
  v4[1] = @"contentsMultiplyColor";
  v5[0] = v0;
  v5[1] = v0;
  v4[2] = @"transform";
  v4[3] = @"hidden";
  v5[2] = v0;
  v5[3] = v0;
  v4[4] = @"position";
  v4[5] = @"opacity";
  v5[4] = v0;
  v5[5] = v0;
  v4[6] = @"instanceCount";
  v4[7] = @"instanceDelay";
  v5[6] = v0;
  v5[7] = v0;
  v4[8] = @"backgroundColor";
  v5[8] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:9];
  v2 = _CDMeterDisabledLayerActions__dictionary;
  _CDMeterDisabledLayerActions__dictionary = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end