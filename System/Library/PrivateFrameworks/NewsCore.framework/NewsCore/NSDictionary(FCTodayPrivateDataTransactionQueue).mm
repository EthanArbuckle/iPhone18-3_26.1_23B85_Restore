@interface NSDictionary(FCTodayPrivateDataTransactionQueue)
- (void)fc_transactions;
@end

@implementation NSDictionary(FCTodayPrivateDataTransactionQueue)

- (void)fc_transactions
{
  v1 = [self objectForKeyedSubscript:@"a"];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

@end