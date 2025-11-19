@interface NSString
@end

@implementation NSString

void __52__NSString_CALIDExtensions__stringByEncodingSlashes__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@"/"];
  v1 = [v3 copy];
  v2 = stringByEncodingSlashes_allowedCharacterSet;
  stringByEncodingSlashes_allowedCharacterSet = v1;
}

void __50__NSString_DAVExtensions__stringByURLQuotingPaths__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@"@?"];
  v1 = [v3 copy];
  v2 = stringByURLQuotingPaths_allowedCharacterSet;
  stringByURLQuotingPaths_allowedCharacterSet = v1;
}

void __45__NSString_DAVExtensions__stringByURLQuoting__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 removeCharactersInString:@"?"];
  v1 = [v3 copy];
  v2 = stringByURLQuoting_allowedCharacterSet;
  stringByURLQuoting_allowedCharacterSet = v1;
}

@end