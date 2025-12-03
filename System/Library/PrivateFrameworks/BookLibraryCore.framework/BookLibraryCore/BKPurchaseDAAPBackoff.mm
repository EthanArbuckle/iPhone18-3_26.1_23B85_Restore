@interface BKPurchaseDAAPBackoff
- (BOOL)failureIntervals:(unint64_t)intervals;
- (BOOL)hasBackedOff;
- (void)clear;
@end

@implementation BKPurchaseDAAPBackoff

- (BOOL)hasBackedOff
{
  backoffUntil = [(BKPurchaseDAAPBackoff *)self backoffUntil];

  if (!backoffUntil)
  {
    return 1;
  }

  backoffUntil2 = [(BKPurchaseDAAPBackoff *)self backoffUntil];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [backoffUntil2 compare:date] == -1;

  return v6;
}

- (BOOL)failureIntervals:(unint64_t)intervals
{
  [(BKPurchaseDAAPBackoff *)self setFailureCount:[(BKPurchaseDAAPBackoff *)self failureCount]+ intervals];
  if ([(BKPurchaseDAAPBackoff *)self failureCount]>= 4)
  {
    failureCount = [(BKPurchaseDAAPBackoff *)self failureCount];
    failureCount2 = [(BKPurchaseDAAPBackoff *)self failureCount];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:((60 * failureCount - 120) * (failureCount2 - 2))];
    [(BKPurchaseDAAPBackoff *)self setBackoffUntil:v6];
  }

  return [(BKPurchaseDAAPBackoff *)self hasBackedOff];
}

- (void)clear
{
  [(BKPurchaseDAAPBackoff *)self setFailureCount:0];

  [(BKPurchaseDAAPBackoff *)self setBackoffUntil:0];
}

@end