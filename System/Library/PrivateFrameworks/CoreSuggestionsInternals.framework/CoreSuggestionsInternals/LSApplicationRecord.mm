@interface LSApplicationRecord
@end

@implementation LSApplicationRecord

uint64_t __130__LSApplicationRecord_Suggestions__sg_preferredApplicationRecordForUserActivityType_withTeamIdentifier_preferredBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 teamIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

@end