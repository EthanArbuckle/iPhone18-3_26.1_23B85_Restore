@interface CNAutocompleteEntitlementVerifier
+ (BOOL)currentProcessHasBooleanEntitlement:(id)entitlement;
+ (BOOL)currentProcessHasContactsEntitlement;
+ (BOOL)currentProcessHasDuetEntitlement;
+ (BOOL)currentProcessHasSuggestionsEntitlement;
@end

@implementation CNAutocompleteEntitlementVerifier

+ (BOOL)currentProcessHasDuetEntitlement
{
  v3 = [self currentProcessHasBooleanEntitlement:@"com.apple.coreduetd.allow"];
  if (v3)
  {

    LOBYTE(v3) = [self currentProcessHasBooleanEntitlement:@"com.apple.coreduetd.people"];
  }

  return v3;
}

+ (BOOL)currentProcessHasSuggestionsEntitlement
{
  if ([self currentProcessHasBooleanEntitlement:@"com.apple.private.suggestions.contacts"])
  {
    return 1;
  }

  return [self currentProcessHasBooleanEntitlement:@"com.apple.private.suggestions"];
}

+ (BOOL)currentProcessHasContactsEntitlement
{
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  isAccessGranted = [mEMORY[0x277CFBDB8] isAccessGranted];

  return isAccessGranted;
}

+ (BOOL)currentProcessHasBooleanEntitlement:(id)entitlement
{
  v3 = MEMORY[0x277CFBE10];
  entitlementCopy = entitlement;
  currentEnvironment = [v3 currentEnvironment];
  entitlementVerifier = [currentEnvironment entitlementVerifier];
  v10 = 0;
  v7 = [entitlementVerifier currentProcessHasBooleanEntitlement:entitlementCopy error:&v10];

  v8 = v10;
  if (v8)
  {
    NSLog(&cfstr_ErrorCheckingE.isa, v8);
  }

  return v7;
}

@end