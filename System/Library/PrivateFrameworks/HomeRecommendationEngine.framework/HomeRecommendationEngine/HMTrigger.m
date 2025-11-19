@interface HMTrigger
@end

@implementation HMTrigger

id __65__HMTrigger_HREAdditions__hre_triggerComparisonIdentifierInHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() hre_verboseHashForEvent:v4 inHome:*(a1 + 40)];

  return v5;
}

@end