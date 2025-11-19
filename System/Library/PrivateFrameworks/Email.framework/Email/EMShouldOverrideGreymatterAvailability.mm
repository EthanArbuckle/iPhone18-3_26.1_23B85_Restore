@interface EMShouldOverrideGreymatterAvailability
@end

@implementation EMShouldOverrideGreymatterAvailability

BOOL ___EMShouldOverrideGreymatterAvailability_block_invoke()
{
  result = (EFIsRunningUnitTests() & 1) != 0 || [EMInternalPreferences preferenceEnabled:53];
  _EMShouldOverrideGreymatterAvailability_overrideIsGreymatterAvailability = result;
  return result;
}

@end