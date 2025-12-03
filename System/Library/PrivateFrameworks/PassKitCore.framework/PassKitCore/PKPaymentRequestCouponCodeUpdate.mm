@interface PKPaymentRequestCouponCodeUpdate
- (PKPaymentRequestCouponCodeUpdate)initWithCoder:(id)coder;
- (PKPaymentRequestCouponCodeUpdate)initWithErrors:(NSArray *)errors paymentSummaryItems:(NSArray *)paymentSummaryItems shippingMethods:(NSArray *)shippingMethods;
- (void)encodeWithCoder:(id)coder;
- (void)setErrors:(NSArray *)errors;
@end

@implementation PKPaymentRequestCouponCodeUpdate

- (PKPaymentRequestCouponCodeUpdate)initWithErrors:(NSArray *)errors paymentSummaryItems:(NSArray *)paymentSummaryItems shippingMethods:(NSArray *)shippingMethods
{
  v8 = errors;
  v9 = shippingMethods;
  v16.receiver = self;
  v16.super_class = PKPaymentRequestCouponCodeUpdate;
  v10 = [(PKPaymentRequestUpdate *)&v16 initWithPaymentSummaryItems:paymentSummaryItems];
  if (v10)
  {
    if (v8)
    {
      v11 = [PKPaymentAuthorizationResult sanitizedErrors:v8];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    v12 = v10->_errors;
    v10->_errors = v11;

    if (v9)
    {
      v13 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v9];
      availableShippingMethods = v10->super._availableShippingMethods;
      v10->super._availableShippingMethods = v13;
    }
  }

  return v10;
}

- (PKPaymentRequestCouponCodeUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPaymentRequestCouponCodeUpdate;
  v5 = [(PKPaymentRequestUpdate *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"errors"];
    errors = v5->_errors;
    v5->_errors = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentRequestCouponCodeUpdate;
  coderCopy = coder;
  [(PKPaymentRequestUpdate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_errors forKey:{@"errors", v5.receiver, v5.super_class}];
}

- (void)setErrors:(NSArray *)errors
{
  v4 = errors;
  v5 = v4;
  if (self->_errors != v4)
  {
    v8 = v4;
    if (v4)
    {
      v6 = [PKPaymentAuthorizationResult sanitizedErrors:v4];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    v7 = self->_errors;
    self->_errors = v6;

    v5 = v8;
  }
}

@end