@interface PKAccountScheduledTransfer
- (PKAccountScheduledTransfer)initWithCoder:(id)coder;
- (PKAccountScheduledTransfer)initWithCurrencyAmount:(id)amount type:(unint64_t)type externalAccount:(id)account;
- (id)hashComponent;
- (id)jsonDictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountScheduledTransfer

- (PKAccountScheduledTransfer)initWithCurrencyAmount:(id)amount type:(unint64_t)type externalAccount:(id)account
{
  amountCopy = amount;
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = PKAccountScheduledTransfer;
  v11 = [(PKAccountScheduledTransfer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_currencyAmount, amount);
    v12->_type = type;
    objc_storeStrong(&v12->_externalAccount, account);
  }

  return v12;
}

- (id)jsonDictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
  v6 = amount;
  if (amount && ([amount pk_isNotANumber] & 1) == 0)
  {
    stringValue = [v6 stringValue];
    [dictionary2 setObject:stringValue forKeyedSubscript:@"amount"];

    currency = [(PKCurrencyAmount *)self->_currencyAmount currency];
    [dictionary2 setObject:currency forKeyedSubscript:@"currencyCode"];
  }

  jsonDictionaryRepresentation = [(PKAccountPaymentFundingSource *)self->_externalAccount jsonDictionaryRepresentation];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"transferDetails"];
  [dictionary setObject:jsonDictionaryRepresentation forKeyedSubscript:@"externalAccount"];
  v10 = PKAccountTransferTypeToString(self->_type);
  [dictionary setObject:v10 forKeyedSubscript:@"type"];

  v11 = [dictionary copy];

  return v11;
}

- (id)hashComponent
{
  string = [MEMORY[0x1E696AD60] string];
  hashComponent = [(PKAccountTransferExternalAccount *)self->_externalAccount hashComponent];
  if (hashComponent)
  {
    [string appendString:hashComponent];
  }

  currencyAmount = self->_currencyAmount;
  if (currencyAmount)
  {
    amount = [(PKCurrencyAmount *)currencyAmount amount];
    v7 = amount;
    if (amount && ([amount pk_isNotANumber] & 1) == 0)
    {
      stringValue = [v7 stringValue];
      [string appendString:stringValue];

      currency = [(PKCurrencyAmount *)self->_currencyAmount currency];
      [string appendString:currency];
    }
  }

  v10 = PKAccountTransferTypeToString(self->_type);
  [string appendString:v10];

  v11 = [string copy];

  return v11;
}

- (PKAccountScheduledTransfer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountScheduledTransfer;
  v5 = [(PKAccountScheduledTransfer *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalAccount"];
    externalAccount = v5->_externalAccount;
    v5->_externalAccount = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  currencyAmount = self->_currencyAmount;
  coderCopy = coder;
  [coderCopy encodeObject:currencyAmount forKey:@"currencyAmount"];
  [coderCopy encodeObject:self->_externalAccount forKey:@"externalAccount"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

@end