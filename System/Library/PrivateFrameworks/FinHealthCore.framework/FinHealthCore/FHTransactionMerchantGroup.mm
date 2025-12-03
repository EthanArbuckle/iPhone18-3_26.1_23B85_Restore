@interface FHTransactionMerchantGroup
- (FHTransactionMerchantGroup)initWithCoder:(id)coder;
- (FHTransactionMerchantGroup)initWithMerchantMuid:(unint64_t)muid groupIdentifier:(id)identifier transactionIds:(id)ids creditDebitType:(unint64_t)type category:(id)category;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransactionMerchantGroup

- (FHTransactionMerchantGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FHTransactionMerchantGroup;
  v5 = [(FHTransactionGroup *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_merchantMuid = [coderCopy decodeIntegerForKey:@"merchantMuid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FHTransactionMerchantGroup;
  coderCopy = coder;
  [(FHTransactionGroup *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_merchantMuid forKey:{@"merchantMuid", v5.receiver, v5.super_class}];
}

- (FHTransactionMerchantGroup)initWithMerchantMuid:(unint64_t)muid groupIdentifier:(id)identifier transactionIds:(id)ids creditDebitType:(unint64_t)type category:(id)category
{
  v11.receiver = self;
  v11.super_class = FHTransactionMerchantGroup;
  v8 = [(FHTransactionGroup *)&v11 initWithGroupIdentifier:identifier transactionIds:ids groupingMethod:2 creditDebitType:type category:category];
  v9 = v8;
  if (v8)
  {
    [(FHTransactionMerchantGroup *)v8 setMerchantMuid:muid];
  }

  return v9;
}

@end