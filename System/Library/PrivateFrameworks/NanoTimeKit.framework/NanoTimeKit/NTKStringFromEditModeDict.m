@interface NTKStringFromEditModeDict
@end

@implementation NTKStringFromEditModeDict

void ___NTKStringFromEditModeDict_block_invoke()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841840A8;
  v2[1] = &unk_284184588;
  v3[0] = @"color";
  v3[1] = @"detail";
  v2[2] = &unk_2841840C0;
  v2[3] = &unk_2841840D8;
  v3[2] = @"content";
  v3[3] = @"typeface";
  v2[4] = &unk_2841840F0;
  v2[5] = &unk_2841845A0;
  v3[4] = @"position";
  v3[5] = @"style";
  v2[6] = &unk_284184108;
  v2[7] = &unk_284184120;
  v3[6] = @"data-sources";
  v3[7] = @"background";
  v2[8] = &unk_284184138;
  v2[9] = &unk_284184150;
  v3[8] = @"night";
  v3[9] = @"numerals";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = _NTKStringFromEditModeDict_dictionary;
  _NTKStringFromEditModeDict_dictionary = v0;
}

@end