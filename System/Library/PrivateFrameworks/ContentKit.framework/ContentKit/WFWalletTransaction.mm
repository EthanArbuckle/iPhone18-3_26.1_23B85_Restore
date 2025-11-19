@interface WFWalletTransaction
- (NSString)wfName;
- (WFWalletTransaction)initWithCoder:(id)a3;
- (WFWalletTransaction)initWithIdentifier:(id)a3 transactionDescription:(id)a4 merchant:(id)a5 currencyAmount:(id)a6 paymentMethod:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWalletTransaction

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFWalletTransaction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFWalletTransaction *)self transactionDescription];
  [v4 encodeObject:v6 forKey:@"transactionDescription"];

  v7 = [(WFWalletTransaction *)self merchant];
  [v4 encodeObject:v7 forKey:@"merchant"];

  v8 = [(WFWalletTransaction *)self currencyAmount];
  [v4 encodeObject:v8 forKey:@"currencyAmount"];

  v9 = [(WFWalletTransaction *)self paymentMethod];
  [v4 encodeObject:v9 forKey:@"paymentMethod"];
}

- (WFWalletTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDescription"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchant"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethod"];

  v10 = [(WFWalletTransaction *)self initWithIdentifier:v5 transactionDescription:v6 merchant:v7 currencyAmount:v8 paymentMethod:v9];
  return v10;
}

- (NSString)wfName
{
  v3 = [(WFWalletTransaction *)self transactionDescription];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(WFWalletTransaction *)self merchant];
    v5 = [v6 displayName];
  }

  return v5;
}

- (WFWalletTransaction)initWithIdentifier:(id)a3 transactionDescription:(id)a4 merchant:(id)a5 currencyAmount:(id)a6 paymentMethod:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = WFWalletTransaction;
  v17 = [(WFWalletTransaction *)&v26 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    transactionDescription = v17->_transactionDescription;
    v17->_transactionDescription = v20;

    objc_storeStrong(&v17->_merchant, a5);
    v22 = [v15 copy];
    currencyAmount = v17->_currencyAmount;
    v17->_currencyAmount = v22;

    objc_storeStrong(&v17->_paymentMethod, a7);
    v24 = v17;
  }

  return v17;
}

@end