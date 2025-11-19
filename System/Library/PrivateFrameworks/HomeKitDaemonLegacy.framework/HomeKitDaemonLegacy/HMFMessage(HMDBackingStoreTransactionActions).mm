@interface HMFMessage(HMDBackingStoreTransactionActions)
- (void)transactionResult;
@end

@implementation HMFMessage(HMDBackingStoreTransactionActions)

- (void)transactionResult
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"_reserved_BackingStoreTransactionResult"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end