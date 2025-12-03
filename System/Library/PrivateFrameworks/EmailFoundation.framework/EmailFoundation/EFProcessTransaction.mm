@interface EFProcessTransaction
+ (id)transactionWithDescription:(id)description;
- (EFProcessTransaction)initWithDescription:(id)description;
- (id)description;
- (void)invalidate;
@end

@implementation EFProcessTransaction

- (void)invalidate
{
  transaction = self->_transaction;
  self->_transaction = 0;
}

+ (id)transactionWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = [[self alloc] initWithDescription:descriptionCopy];

  return v5;
}

- (EFProcessTransaction)initWithDescription:(id)description
{
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = EFProcessTransaction;
  v5 = [(EFProcessTransaction *)&v11 init];
  if (v5)
  {
    v6 = @"<unnamed>";
    if (descriptionCopy)
    {
      v6 = descriptionCopy;
    }

    v7 = v6;

    descriptionCopy = v7;
    [(__CFString *)v7 UTF8String];
    v8 = os_transaction_create();
    transaction = v5->_transaction;
    v5->_transaction = v8;
  }

  return v5;
}

- (id)description
{
  if (self->_transaction)
  {
    v3 = os_transaction_copy_description();
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> %s", objc_opt_class(), self, v3];
    free(v3);
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> <invalidated>", objc_opt_class(), self];
  }

  return v4;
}

@end