@interface NPKPeerPaymentNumberFormatter
- (NPKPeerPaymentNumberFormatter)initWithCurrencyCode:(id)a3;
- (id)stringFromNumber:(id)a3;
- (void)setCurrencyCode:(id)a3;
@end

@implementation NPKPeerPaymentNumberFormatter

- (NPKPeerPaymentNumberFormatter)initWithCurrencyCode:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NPKPeerPaymentNumberFormatter;
  v6 = [(NPKPeerPaymentNumberFormatter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currencyCode, a3);
    v8 = NPKPeerPaymentDecimalNumberFormatterForCurrencyCode();
    decimalNumberFormatter = v7->_decimalNumberFormatter;
    v7->_decimalNumberFormatter = v8;

    v10 = NPKPeerPaymentNumberFormatterForCurrencyCode();
    nonDecimalNumberFormatter = v7->_nonDecimalNumberFormatter;
    v7->_nonDecimalNumberFormatter = v10;
  }

  return v7;
}

- (void)setCurrencyCode:(id)a3
{
  if (self->_currencyCode != a3)
  {
    decimalNumberFormatter = self->_decimalNumberFormatter;
    v6 = a3;
    [(NSNumberFormatter *)decimalNumberFormatter setCurrencyCode:v6];
    [(NSNumberFormatter *)self->_nonDecimalNumberFormatter setCurrencyCode:v6];
  }
}

- (id)stringFromNumber:(id)a3
{
  v4 = a3;
  HasDecimals = NPKPeerPaymentValueHasDecimals(v4);
  v6 = 16;
  if (HasDecimals)
  {
    v6 = 8;
  }

  v7 = *(&self->super.isa + v6);
  v8 = [v7 stringFromNumber:v4];

  return v8;
}

@end