@interface NSCharacterSet
@end

@implementation NSCharacterSet

void __77__NSCharacterSet_ECMessageBodyParser__ec_whitespaceNewlineAndTagCharacterSet__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277CCA900] "whitespaceAndNewlineCharacterSet")];
  [v0 addCharactersInString:@"\uE0020"];
  ec_whitespaceNewlineAndTagCharacterSet_result = [v0 copy];
}

void __63__NSCharacterSet_ECMessageBodyParser__ec_zeroWidthCharacterSet__block_invoke()
{
  v0 = objc_opt_new();
  [v0 addCharactersInString:@"​"];
  [v0 addCharactersInString:@"‌"];
  [v0 addCharactersInString:@"‍"];
  [v0 addCharactersInString:@"⁠"];
  [v0 addCharactersInString:@"⁣"];
  [v0 addCharactersInString:@"﻿"];
  ec_zeroWidthCharacterSet_result = [v0 copy];
}

void __63__NSCharacterSet_ECMessageBodyParser__ec_ignorableCharacterSet__block_invoke()
{
  v0 = objc_opt_new();
  [v0 addCharactersInString:@"͏"];
  ec_ignorableCharacterSet_result = [v0 copy];
}

uint64_t __63__NSCharacterSet_SubjectParser__ec_prefixDelimiterCharacterSet__block_invoke()
{
  ec_prefixDelimiterCharacterSet_prefixDelimiterCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@":："];

  return MEMORY[0x2821F96F8]();
}

@end