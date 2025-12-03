@interface PKBankAccountDataItem
- (PKBankAccountDataItem)initWithModel:(id)model;
- (PKBankAccountInformation)bankAccountInformation;
@end

@implementation PKBankAccountDataItem

- (PKBankAccountDataItem)initWithModel:(id)model
{
  v4.receiver = self;
  v4.super_class = PKBankAccountDataItem;
  return [(PKPaymentDataItem *)&v4 initWithModel:model];
}

- (PKBankAccountInformation)bankAccountInformation
{
  model = [(PKPaymentDataItem *)self model];
  bankAccount = [model bankAccount];

  return bankAccount;
}

@end