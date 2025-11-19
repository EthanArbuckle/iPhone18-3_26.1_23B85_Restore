@interface NDOAppleAuthHelpers
+ (BOOL)isSignedIntoAppleAccount;
+ (id)primaryAccountAltDSID;
@end

@implementation NDOAppleAuthHelpers

+ (BOOL)isSignedIntoAppleAccount
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = v3 != 0;

  return v4;
}

+ (id)primaryAccountAltDSID
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 aa_altDSID];

  return v4;
}

@end