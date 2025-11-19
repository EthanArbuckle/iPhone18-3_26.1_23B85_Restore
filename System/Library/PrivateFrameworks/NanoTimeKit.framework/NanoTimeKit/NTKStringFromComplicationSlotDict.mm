@interface NTKStringFromComplicationSlotDict
@end

@implementation NTKStringFromComplicationSlotDict

void ___NTKStringFromComplicationSlotDict_block_invoke()
{
  v3[18] = *MEMORY[0x277D85DE8];
  v2[0] = @"top";
  v2[1] = @"center";
  v3[0] = @"top";
  v3[1] = @"center";
  v2[2] = @"bottom";
  v2[3] = @"top-left";
  v3[2] = @"bottom";
  v3[3] = @"top left";
  v2[4] = @"top-right";
  v2[5] = @"bottom-left";
  v3[4] = @"top right";
  v3[5] = @"bottom left";
  v2[6] = @"bottom-center";
  v2[7] = @"bottom-right";
  v3[6] = @"bottom center";
  v3[7] = @"bottom right";
  v2[8] = @"date";
  v2[9] = @"monogram";
  v3[8] = @"date";
  v3[9] = @"monogram";
  v2[10] = @"slot1";
  v2[11] = @"slot2";
  v3[10] = @"slot 1";
  v3[11] = @"slot 2";
  v2[12] = @"slot3";
  v2[13] = @"bezel";
  v3[12] = @"slot 3";
  v3[13] = @"bezel";
  v2[14] = @"subdial-top";
  v2[15] = @"subdial-left";
  v3[14] = @"subdial top";
  v3[15] = @"subdial left";
  v2[16] = @"subdial-right";
  v2[17] = @"subdial-bottom";
  v3[16] = @"subdial right";
  v3[17] = @"subdial bottom";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:18];
  v1 = _NTKStringFromComplicationSlotDict_dictionary;
  _NTKStringFromComplicationSlotDict_dictionary = v0;
}

@end