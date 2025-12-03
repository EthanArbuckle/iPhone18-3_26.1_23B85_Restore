@interface NDOAppleAuthHelpers
+ (BOOL)isSignedIntoAppleAccount;
+ (id)primaryAccountAltDSID;
@end

@implementation NDOAppleAuthHelpers

+ (BOOL)isSignedIntoAppleAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v4 = aa_primaryAppleAccount != 0;

  return v4;
}

+ (id)primaryAccountAltDSID
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];

  return aa_altDSID;
}

@end