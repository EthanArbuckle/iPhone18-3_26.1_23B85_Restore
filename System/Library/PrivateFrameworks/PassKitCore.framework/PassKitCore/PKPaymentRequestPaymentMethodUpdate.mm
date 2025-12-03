@interface PKPaymentRequestPaymentMethodUpdate
- (PKPaymentRequestPaymentMethodUpdate)initWithCoder:(id)coder;
- (PKPaymentRequestPaymentMethodUpdate)initWithErrors:(NSArray *)errors paymentSummaryItems:(NSArray *)paymentSummaryItems;
- (void)encodeWithCoder:(id)coder;
- (void)setErrors:(NSArray *)errors;
@end

@implementation PKPaymentRequestPaymentMethodUpdate

- (PKPaymentRequestPaymentMethodUpdate)initWithErrors:(NSArray *)errors paymentSummaryItems:(NSArray *)paymentSummaryItems
{
  v6 = errors;
  v11.receiver = self;
  v11.super_class = PKPaymentRequestPaymentMethodUpdate;
  v7 = [(PKPaymentRequestUpdate *)&v11 initWithPaymentSummaryItems:paymentSummaryItems];
  if (v7)
  {
    if (v6)
    {
      v8 = [PKPaymentAuthorizationResult sanitizedErrors:v6];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    v9 = v7->_errors;
    v7->_errors = v8;
  }

  return v7;
}

- (void)setErrors:(NSArray *)errors
{
  v4 = errors;
  v5 = v4;
  v6 = self->_errors;
  if (v6 != v4)
  {
    v8 = v4;
    if (v4)
    {
      v7 = [PKPaymentAuthorizationResult sanitizedErrors:v4];
      v6 = self->_errors;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    self->_errors = v7;

    v5 = v8;
  }
}

- (PKPaymentRequestPaymentMethodUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentRequestPaymentMethodUpdate;
  v5 = [(PKPaymentRequestUpdate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentQuote"];
    peerPaymentQuote = v5->_peerPaymentQuote;
    v5->_peerPaymentQuote = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentGroupIdentifier"];
    installmentGroupIdentifier = v5->_installmentGroupIdentifier;
    v5->_installmentGroupIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentRequestPaymentMethodUpdate;
  coderCopy = coder;
  [(PKPaymentRequestUpdate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_peerPaymentQuote forKey:{@"peerPaymentQuote", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_installmentGroupIdentifier forKey:@"installmentGroupIdentifier"];
}

@end