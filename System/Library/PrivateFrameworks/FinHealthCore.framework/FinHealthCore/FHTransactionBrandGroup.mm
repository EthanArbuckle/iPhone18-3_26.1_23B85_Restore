@interface FHTransactionBrandGroup
- (FHTransactionBrandGroup)initWithBrandMuid:(unint64_t)muid groupIdentifier:(id)identifier transactionIds:(id)ids creditDebitType:(unint64_t)type category:(id)category;
- (FHTransactionBrandGroup)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransactionBrandGroup

- (FHTransactionBrandGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FHTransactionBrandGroup;
  v5 = [(FHTransactionGroup *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_brandMuid = [coderCopy decodeIntegerForKey:@"brandMuid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FHTransactionBrandGroup;
  coderCopy = coder;
  [(FHTransactionGroup *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_brandMuid forKey:{@"brandMuid", v5.receiver, v5.super_class}];
}

- (FHTransactionBrandGroup)initWithBrandMuid:(unint64_t)muid groupIdentifier:(id)identifier transactionIds:(id)ids creditDebitType:(unint64_t)type category:(id)category
{
  v11.receiver = self;
  v11.super_class = FHTransactionBrandGroup;
  v8 = [(FHTransactionGroup *)&v11 initWithGroupIdentifier:identifier transactionIds:ids groupingMethod:1 creditDebitType:type category:category];
  v9 = v8;
  if (v8)
  {
    [(FHTransactionBrandGroup *)v8 setBrandMuid:muid];
  }

  return v9;
}

@end