@interface PKBankAccountDataItem
- (PKBankAccountDataItem)initWithModel:(id)a3;
- (PKBankAccountInformation)bankAccountInformation;
@end

@implementation PKBankAccountDataItem

- (PKBankAccountDataItem)initWithModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKBankAccountDataItem;
  return [(PKPaymentDataItem *)&v4 initWithModel:a3];
}

- (PKBankAccountInformation)bankAccountInformation
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 bankAccount];

  return v3;
}

@end