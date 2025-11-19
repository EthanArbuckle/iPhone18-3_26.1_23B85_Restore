@interface NSString
@end

@implementation NSString

uint64_t __42__NSString_FMCoreAdditions__fm_wifiToWLAN__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_285D75E18];
  v1 = fm_wifiToWLAN_stripWhitespaceWhitelist;
  fm_wifiToWLAN_stripWhitespaceWhitelist = v0;

  result = MGGetBoolAnswer();
  fm_wifiToWLAN___wapi = result;
  return result;
}

void __54__NSString_FMCoreAdditions__legacyAllowedCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v1 = [v0 mutableCopy];

  [v1 removeCharactersInString:{@"!*'();:@&=+$, /?%#[]"}];
  v2 = legacyAllowedCharacterSet_allowedCharSet;
  legacyAllowedCharacterSet_allowedCharSet = v1;
}

@end