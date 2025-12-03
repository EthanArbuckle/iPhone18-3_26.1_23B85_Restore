@interface BLTTransaction
+ (id)transactionWithDescription:(id)description;
- (BLTTransaction)initWithDescription:(id)description;
@end

@implementation BLTTransaction

- (BLTTransaction)initWithDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = BLTTransaction;
  v5 = [(BLTTransaction *)&v9 init];
  if (v5)
  {
    descriptionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"BLTTransaction: %@", descriptionCopy];
    [descriptionCopy UTF8String];
    v7 = os_transaction_create();
    [(BLTTransaction *)v5 setOsTransaction:v7];
  }

  return v5;
}

+ (id)transactionWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = [[self alloc] initWithDescription:descriptionCopy];

  return v5;
}

@end