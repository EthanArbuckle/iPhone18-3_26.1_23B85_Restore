@interface WFWalletTransaction
- (NSString)wfName;
- (WFWalletTransaction)initWithCoder:(id)coder;
- (WFWalletTransaction)initWithIdentifier:(id)identifier transactionDescription:(id)description merchant:(id)merchant currencyAmount:(id)amount paymentMethod:(id)method;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWalletTransaction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFWalletTransaction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  transactionDescription = [(WFWalletTransaction *)self transactionDescription];
  [coderCopy encodeObject:transactionDescription forKey:@"transactionDescription"];

  merchant = [(WFWalletTransaction *)self merchant];
  [coderCopy encodeObject:merchant forKey:@"merchant"];

  currencyAmount = [(WFWalletTransaction *)self currencyAmount];
  [coderCopy encodeObject:currencyAmount forKey:@"currencyAmount"];

  paymentMethod = [(WFWalletTransaction *)self paymentMethod];
  [coderCopy encodeObject:paymentMethod forKey:@"paymentMethod"];
}

- (WFWalletTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDescription"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchant"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethod"];

  v10 = [(WFWalletTransaction *)self initWithIdentifier:v5 transactionDescription:v6 merchant:v7 currencyAmount:v8 paymentMethod:v9];
  return v10;
}

- (NSString)wfName
{
  transactionDescription = [(WFWalletTransaction *)self transactionDescription];
  v4 = transactionDescription;
  if (transactionDescription)
  {
    displayName = transactionDescription;
  }

  else
  {
    merchant = [(WFWalletTransaction *)self merchant];
    displayName = [merchant displayName];
  }

  return displayName;
}

- (WFWalletTransaction)initWithIdentifier:(id)identifier transactionDescription:(id)description merchant:(id)merchant currencyAmount:(id)amount paymentMethod:(id)method
{
  identifierCopy = identifier;
  descriptionCopy = description;
  merchantCopy = merchant;
  amountCopy = amount;
  methodCopy = method;
  v26.receiver = self;
  v26.super_class = WFWalletTransaction;
  v17 = [(WFWalletTransaction *)&v26 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [descriptionCopy copy];
    transactionDescription = v17->_transactionDescription;
    v17->_transactionDescription = v20;

    objc_storeStrong(&v17->_merchant, merchant);
    v22 = [amountCopy copy];
    currencyAmount = v17->_currencyAmount;
    v17->_currencyAmount = v22;

    objc_storeStrong(&v17->_paymentMethod, method);
    v24 = v17;
  }

  return v17;
}

@end