@interface BKPurchaseDAAPBackoff
- (BOOL)failureIntervals:(unint64_t)a3;
- (BOOL)hasBackedOff;
- (void)clear;
@end

@implementation BKPurchaseDAAPBackoff

- (BOOL)hasBackedOff
{
  v3 = [(BKPurchaseDAAPBackoff *)self backoffUntil];

  if (!v3)
  {
    return 1;
  }

  v4 = [(BKPurchaseDAAPBackoff *)self backoffUntil];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 compare:v5] == -1;

  return v6;
}

- (BOOL)failureIntervals:(unint64_t)a3
{
  [(BKPurchaseDAAPBackoff *)self setFailureCount:[(BKPurchaseDAAPBackoff *)self failureCount]+ a3];
  if ([(BKPurchaseDAAPBackoff *)self failureCount]>= 4)
  {
    v4 = [(BKPurchaseDAAPBackoff *)self failureCount];
    v5 = [(BKPurchaseDAAPBackoff *)self failureCount];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:((60 * v4 - 120) * (v5 - 2))];
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