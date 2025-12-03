@interface NPKPeerPaymentNumberFormatter
- (NPKPeerPaymentNumberFormatter)initWithCurrencyCode:(id)code;
- (id)stringFromNumber:(id)number;
- (void)setCurrencyCode:(id)code;
@end

@implementation NPKPeerPaymentNumberFormatter

- (NPKPeerPaymentNumberFormatter)initWithCurrencyCode:(id)code
{
  codeCopy = code;
  v13.receiver = self;
  v13.super_class = NPKPeerPaymentNumberFormatter;
  v6 = [(NPKPeerPaymentNumberFormatter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currencyCode, code);
    v8 = NPKPeerPaymentDecimalNumberFormatterForCurrencyCode();
    decimalNumberFormatter = v7->_decimalNumberFormatter;
    v7->_decimalNumberFormatter = v8;

    v10 = NPKPeerPaymentNumberFormatterForCurrencyCode();
    nonDecimalNumberFormatter = v7->_nonDecimalNumberFormatter;
    v7->_nonDecimalNumberFormatter = v10;
  }

  return v7;
}

- (void)setCurrencyCode:(id)code
{
  if (self->_currencyCode != code)
  {
    decimalNumberFormatter = self->_decimalNumberFormatter;
    codeCopy = code;
    [(NSNumberFormatter *)decimalNumberFormatter setCurrencyCode:codeCopy];
    [(NSNumberFormatter *)self->_nonDecimalNumberFormatter setCurrencyCode:codeCopy];
  }
}

- (id)stringFromNumber:(id)number
{
  numberCopy = number;
  HasDecimals = NPKPeerPaymentValueHasDecimals(numberCopy);
  v6 = 16;
  if (HasDecimals)
  {
    v6 = 8;
  }

  v7 = *(&self->super.isa + v6);
  v8 = [v7 stringFromNumber:numberCopy];

  return v8;
}

@end