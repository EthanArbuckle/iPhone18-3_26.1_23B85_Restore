@interface NTKStringFromDateStyleDict
@end

@implementation NTKStringFromDateStyleDict

void ___NTKStringFromDateStyleDict_block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284184600;
  v2[1] = &unk_284184648;
  v3[0] = @"day";
  v3[1] = @"weekday and day";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _NTKStringFromDateStyleDict_dictionary;
  _NTKStringFromDateStyleDict_dictionary = v0;
}

@end