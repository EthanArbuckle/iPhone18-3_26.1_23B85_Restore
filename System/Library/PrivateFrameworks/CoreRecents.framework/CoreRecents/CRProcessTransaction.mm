@interface CRProcessTransaction
+ (id)transactionWithDescription:(id)description;
- (CRProcessTransaction)initWithDescription:(id)description;
- (id)description;
- (void)dealloc;
@end

@implementation CRProcessTransaction

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRProcessTransaction;
  [(CRProcessTransaction *)&v3 dealloc];
}

+ (id)transactionWithDescription:(id)description
{
  v3 = [[self alloc] initWithDescription:description];

  return v3;
}

- (CRProcessTransaction)initWithDescription:(id)description
{
  v6.receiver = self;
  v6.super_class = CRProcessTransaction;
  v4 = [(CRProcessTransaction *)&v6 init];
  if (v4)
  {
    [description UTF8String];
    v4->_transaction = os_transaction_create();
  }

  return v4;
}

- (id)description
{
  transaction = self->_transaction;
  v4 = os_transaction_copy_description();
  v5 = [NSString stringWithFormat:@"<%@:%p> %s", objc_opt_class(), self, v4];
  free(v4);
  return v5;
}

@end