@interface PKAccountScheduledPayment
- (PKAccountScheduledPayment)initWithCoder:(id)coder;
- (PKAccountScheduledPayment)initWithCurrencyAmount:(id)amount fundingSource:(id)source;
- (id)hashComponentWithCertificatesResponse:(id)response;
- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)response;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountScheduledPayment

- (PKAccountScheduledPayment)initWithCurrencyAmount:(id)amount fundingSource:(id)source
{
  amountCopy = amount;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = PKAccountScheduledPayment;
  v9 = [(PKAccountScheduledPayment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currencyAmount, amount);
    objc_storeStrong(&v10->_fundingSource, source);
  }

  return v10;
}

- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)response
{
  responseCopy = response;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
  if (amount)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v9 = [amount isEqual:notANumber];

    if ((v9 & 1) == 0)
    {
      stringValue = [amount stringValue];
      [dictionary2 setObject:stringValue forKeyedSubscript:@"amount"];

      currency = [(PKCurrencyAmount *)self->_currencyAmount currency];
      [dictionary2 setObject:currency forKeyedSubscript:@"currencyCode"];
    }
  }

  v12 = [(PKAccountPaymentFundingSource *)self->_fundingSource jsonDictionaryRepresentationWithCertificatesResponse:responseCopy];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"paymentDetails"];
  [dictionary setObject:v12 forKeyedSubscript:@"fundingSource"];
  v13 = [dictionary copy];

  return v13;
}

- (id)hashComponentWithCertificatesResponse:(id)response
{
  v4 = MEMORY[0x1E696AD60];
  responseCopy = response;
  string = [v4 string];
  v7 = [(PKAccountPaymentFundingSource *)self->_fundingSource hashComponentWithCertificatesResponse:responseCopy];

  if (v7)
  {
    [string appendString:v7];
  }

  currencyAmount = self->_currencyAmount;
  if (currencyAmount)
  {
    amount = [(PKCurrencyAmount *)currencyAmount amount];
    if (amount)
    {
      notANumber = [MEMORY[0x1E696AB90] notANumber];
      v11 = [amount isEqual:notANumber];

      if ((v11 & 1) == 0)
      {
        stringValue = [amount stringValue];
        [string appendString:stringValue];

        currency = [(PKCurrencyAmount *)self->_currencyAmount currency];
        [string appendString:currency];
      }
    }
  }

  v14 = [string copy];

  return v14;
}

- (PKAccountScheduledPayment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountScheduledPayment;
  v5 = [(PKAccountScheduledPayment *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fundingSource"];
    fundingSource = v5->_fundingSource;
    v5->_fundingSource = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  currencyAmount = self->_currencyAmount;
  coderCopy = coder;
  [coderCopy encodeObject:currencyAmount forKey:@"currencyAmount"];
  [coderCopy encodeObject:self->_fundingSource forKey:@"fundingSource"];
}

@end