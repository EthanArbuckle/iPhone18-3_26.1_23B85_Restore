@interface NSString
@end

@implementation NSString

void __69__NSString_CoreDAVExtensions__CDVStringByAddingPercentEscapesForHREF__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 addCharactersInString:@"%"];
  [v3 removeCharactersInString:@"@?:#"];
  v1 = [v3 copy];
  v2 = CDVStringByAddingPercentEscapesForHREF_allowedCharacterSet;
  CDVStringByAddingPercentEscapesForHREF_allowedCharacterSet = v1;
}

void __85__NSString_CoreDAVExtensions__CDVStringByAddingPercentEscapesForHREFIncludingPercent__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@"@?:#"];
  v1 = [v3 copy];
  v2 = CDVStringByAddingPercentEscapesForHREFIncludingPercent_allowedCharacterSet;
  CDVStringByAddingPercentEscapesForHREFIncludingPercent_allowedCharacterSet = v1;
}

void __79__NSString_CoreDAVExtensions__CDVStringByAddingPercentEscapesForUserOrPassword__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@":@/?#[]&"];
  v1 = [v3 copy];
  v2 = CDVStringByAddingPercentEscapesForUserOrPassword_allowedCharacterSet;
  CDVStringByAddingPercentEscapesForUserOrPassword_allowedCharacterSet = v1;
}

@end