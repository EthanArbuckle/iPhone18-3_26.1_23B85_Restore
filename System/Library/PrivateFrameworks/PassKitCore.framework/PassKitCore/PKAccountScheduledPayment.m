@interface PKAccountScheduledPayment
- (PKAccountScheduledPayment)initWithCoder:(id)a3;
- (PKAccountScheduledPayment)initWithCurrencyAmount:(id)a3 fundingSource:(id)a4;
- (id)hashComponentWithCertificatesResponse:(id)a3;
- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountScheduledPayment

- (PKAccountScheduledPayment)initWithCurrencyAmount:(id)a3 fundingSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKAccountScheduledPayment;
  v9 = [(PKAccountScheduledPayment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currencyAmount, a3);
    objc_storeStrong(&v10->_fundingSource, a4);
  }

  return v10;
}

- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(PKCurrencyAmount *)self->_currencyAmount amount];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AB90] notANumber];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [v7 stringValue];
      [v6 setObject:v10 forKeyedSubscript:@"amount"];

      v11 = [(PKCurrencyAmount *)self->_currencyAmount currency];
      [v6 setObject:v11 forKeyedSubscript:@"currencyCode"];
    }
  }

  v12 = [(PKAccountPaymentFundingSource *)self->_fundingSource jsonDictionaryRepresentationWithCertificatesResponse:v4];
  [v5 setObject:v6 forKeyedSubscript:@"paymentDetails"];
  [v5 setObject:v12 forKeyedSubscript:@"fundingSource"];
  v13 = [v5 copy];

  return v13;
}

- (id)hashComponentWithCertificatesResponse:(id)a3
{
  v4 = MEMORY[0x1E696AD60];
  v5 = a3;
  v6 = [v4 string];
  v7 = [(PKAccountPaymentFundingSource *)self->_fundingSource hashComponentWithCertificatesResponse:v5];

  if (v7)
  {
    [v6 appendString:v7];
  }

  currencyAmount = self->_currencyAmount;
  if (currencyAmount)
  {
    v9 = [(PKCurrencyAmount *)currencyAmount amount];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AB90] notANumber];
      v11 = [v9 isEqual:v10];

      if ((v11 & 1) == 0)
      {
        v12 = [v9 stringValue];
        [v6 appendString:v12];

        v13 = [(PKCurrencyAmount *)self->_currencyAmount currency];
        [v6 appendString:v13];
      }
    }
  }

  v14 = [v6 copy];

  return v14;
}

- (PKAccountScheduledPayment)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountScheduledPayment;
  v5 = [(PKAccountScheduledPayment *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fundingSource"];
    fundingSource = v5->_fundingSource;
    v5->_fundingSource = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  currencyAmount = self->_currencyAmount;
  v5 = a3;
  [v5 encodeObject:currencyAmount forKey:@"currencyAmount"];
  [v5 encodeObject:self->_fundingSource forKey:@"fundingSource"];
}

@end