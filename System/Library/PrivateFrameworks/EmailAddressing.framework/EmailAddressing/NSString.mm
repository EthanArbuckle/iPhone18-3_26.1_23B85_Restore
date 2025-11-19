@interface NSString
@end

@implementation NSString

void __60__NSString_EmailAddressingAdditions__ea_isLegalEmailAddress__block_invoke()
  v0 = {;
  v1 = ea_isLegalEmailAddress_validLocalPartSet;
  ea_isLegalEmailAddress_validLocalPartSet = v0;

  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-."];
  v3 = ea_isLegalEmailAddress_validDomainPartSet;
  ea_isLegalEmailAddress_validDomainPartSet = v2;

  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v4 = [v6 invertedSet];
  v5 = ea_isLegalEmailAddress_invalidTLDPartSet;
  ea_isLegalEmailAddress_invalidTLDPartSet = v4;
}

@end