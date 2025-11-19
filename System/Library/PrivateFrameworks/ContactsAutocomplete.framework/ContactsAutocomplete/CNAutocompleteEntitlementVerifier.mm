@interface CNAutocompleteEntitlementVerifier
+ (BOOL)currentProcessHasBooleanEntitlement:(id)a3;
+ (BOOL)currentProcessHasContactsEntitlement;
+ (BOOL)currentProcessHasDuetEntitlement;
+ (BOOL)currentProcessHasSuggestionsEntitlement;
@end

@implementation CNAutocompleteEntitlementVerifier

+ (BOOL)currentProcessHasDuetEntitlement
{
  v3 = [a1 currentProcessHasBooleanEntitlement:@"com.apple.coreduetd.allow"];
  if (v3)
  {

    LOBYTE(v3) = [a1 currentProcessHasBooleanEntitlement:@"com.apple.coreduetd.people"];
  }

  return v3;
}

+ (BOOL)currentProcessHasSuggestionsEntitlement
{
  if ([a1 currentProcessHasBooleanEntitlement:@"com.apple.private.suggestions.contacts"])
  {
    return 1;
  }

  return [a1 currentProcessHasBooleanEntitlement:@"com.apple.private.suggestions"];
}

+ (BOOL)currentProcessHasContactsEntitlement
{
  v2 = [MEMORY[0x277CFBDB8] sharedInstance];
  v3 = [v2 isAccessGranted];

  return v3;
}

+ (BOOL)currentProcessHasBooleanEntitlement:(id)a3
{
  v3 = MEMORY[0x277CFBE10];
  v4 = a3;
  v5 = [v3 currentEnvironment];
  v6 = [v5 entitlementVerifier];
  v10 = 0;
  v7 = [v6 currentProcessHasBooleanEntitlement:v4 error:&v10];

  v8 = v10;
  if (v8)
  {
    NSLog(&cfstr_ErrorCheckingE.isa, v8);
  }

  return v7;
}

@end