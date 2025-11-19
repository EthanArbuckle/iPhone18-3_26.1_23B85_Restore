@interface ActivitySourceDelegateSharing
@end

@implementation ActivitySourceDelegateSharing

uint64_t __61___ActivitySourceDelegateSharing__filterSummaries_dateRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 calendar];
  v6 = [v4 dateComponentsForCalendar:v5];

  v7 = [*(a1 + 32) calendar];
  v8 = [v7 dateFromComponents:v6];

  v9 = [*(a1 + 40) containsValue:v8 exclusiveStart:0 exclusiveEnd:0];
  return v9;
}

@end