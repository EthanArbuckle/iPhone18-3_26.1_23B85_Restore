@interface BLTTransaction
+ (id)transactionWithDescription:(id)a3;
- (BLTTransaction)initWithDescription:(id)a3;
@end

@implementation BLTTransaction

- (BLTTransaction)initWithDescription:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLTTransaction;
  v5 = [(BLTTransaction *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"BLTTransaction: %@", v4];
    [v6 UTF8String];
    v7 = os_transaction_create();
    [(BLTTransaction *)v5 setOsTransaction:v7];
  }

  return v5;
}

+ (id)transactionWithDescription:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDescription:v4];

  return v5;
}

@end