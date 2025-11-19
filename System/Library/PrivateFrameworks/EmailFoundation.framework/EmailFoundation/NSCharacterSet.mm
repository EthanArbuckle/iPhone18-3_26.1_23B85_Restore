@interface NSCharacterSet
@end

@implementation NSCharacterSet

void __68__NSCharacterSet_MailCoreAdditions__ef_unsafeDomainNameCharacterSet__block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{48, 10}];
  [v2 addCharactersInRange:{65, 26}];
  [v2 addCharactersInRange:{97, 26}];
  [v2 addCharactersInString:@"-."];
  [v2 invert];
  v0 = [v2 copy];
  v1 = ef_unsafeDomainNameCharacterSet_unsafeDomainNameCharacterSet;
  ef_unsafeDomainNameCharacterSet_unsafeDomainNameCharacterSet = v0;
}

void __74__NSCharacterSet_MailCoreAdditions__ef_unsafeAddressLocalPartCharacterSet__block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{48, 10}];
  [v2 addCharactersInRange:{65, 26}];
  [v2 addCharactersInRange:{97, 26}];
  [v2 invert];
  v0 = [v2 copy];
  v1 = ef_unsafeAddressLocalPartCharacterSet_unsafeAddressLocalPartCharacterSet;
  ef_unsafeAddressLocalPartCharacterSet_unsafeAddressLocalPartCharacterSet = v0;
}

void __69__NSCharacterSet_MailCoreAdditions__ef_asciiAlphaNumericCharacterSet__block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithRange:{48, 10}];
  [v2 addCharactersInRange:{65, 26}];
  [v2 addCharactersInRange:{97, 26}];
  v0 = [v2 copy];
  v1 = ef_asciiAlphaNumericCharacterSet_sAsciiAlphaNumericCharacterSet;
  ef_asciiAlphaNumericCharacterSet_sAsciiAlphaNumericCharacterSet = v0;
}

void __69__NSCharacterSet_MailCoreAdditions__ef_rfc6376WhitespaceCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" \t"];
  v1 = ef_rfc6376WhitespaceCharacterSet_rfc6376WhitespaceCharacterSet;
  ef_rfc6376WhitespaceCharacterSet_rfc6376WhitespaceCharacterSet = v0;
}

@end