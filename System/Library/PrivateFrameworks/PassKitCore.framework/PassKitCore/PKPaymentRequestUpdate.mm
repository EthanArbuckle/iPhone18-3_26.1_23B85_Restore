@interface PKPaymentRequestUpdate
- (PKPaymentRequestUpdate)initWithCoder:(id)coder;
- (PKPaymentRequestUpdate)initWithPaymentSummaryItems:(NSArray *)paymentSummaryItems;
- (void)encodeWithCoder:(id)coder;
- (void)setShippingMethods:(NSArray *)shippingMethods;
@end

@implementation PKPaymentRequestUpdate

- (PKPaymentRequestUpdate)initWithPaymentSummaryItems:(NSArray *)paymentSummaryItems
{
  v4 = paymentSummaryItems;
  v12.receiver = self;
  v12.super_class = PKPaymentRequestUpdate;
  v5 = [(PKPaymentRequestUpdate *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_status = 0;
    v7 = [(NSArray *)v4 copy];
    v8 = v6->_paymentSummaryItems;
    v6->_paymentSummaryItems = v7;

    v9 = objc_alloc_init(PKShippingMethods);
    availableShippingMethods = v6->_availableShippingMethods;
    v6->_availableShippingMethods = v9;
  }

  return v6;
}

- (PKPaymentRequestUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = PKPaymentRequestUpdate;
  v5 = [(PKPaymentRequestUpdate *)&v34 init];
  if (v5)
  {
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"multiTokenContexts"];
    multiTokenContexts = v5->_multiTokenContexts;
    v5->_multiTokenContexts = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recurringPaymentRequest"];
    recurringPaymentRequest = v5->_recurringPaymentRequest;
    v5->_recurringPaymentRequest = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"automaticReloadPaymentRequest"];
    automaticReloadPaymentRequest = v5->_automaticReloadPaymentRequest;
    v5->_automaticReloadPaymentRequest = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"paymentSummaryItems"];
    paymentSummaryItems = v5->_paymentSummaryItems;
    v5->_paymentSummaryItems = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"paymentContentItems"];
    contentItems = v5->_contentItems;
    v5->_contentItems = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableShippingMethods"];
    availableShippingMethods = v5->_availableShippingMethods;
    v5->_availableShippingMethods = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"shippingMethods"];

    if (!v5->_availableShippingMethods && v30)
    {
      v31 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v30];
      v32 = v5->_availableShippingMethods;
      v5->_availableShippingMethods = v31;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  status = self->_status;
  coderCopy = coder;
  [coderCopy encodeInteger:status forKey:@"status"];
  [coderCopy encodeObject:self->_multiTokenContexts forKey:@"multiTokenContexts"];
  [coderCopy encodeObject:self->_recurringPaymentRequest forKey:@"recurringPaymentRequest"];
  [coderCopy encodeObject:self->_automaticReloadPaymentRequest forKey:@"automaticReloadPaymentRequest"];
  [coderCopy encodeObject:self->_paymentSummaryItems forKey:@"paymentSummaryItems"];
  legacyShippingMethods = [(PKShippingMethods *)self->_availableShippingMethods legacyShippingMethods];
  [coderCopy encodeObject:legacyShippingMethods forKey:@"shippingMethods"];

  [coderCopy encodeObject:self->_availableShippingMethods forKey:@"availableShippingMethods"];
  [coderCopy encodeObject:self->_contentItems forKey:@"paymentContentItems"];
}

- (void)setShippingMethods:(NSArray *)shippingMethods
{
  v4 = shippingMethods;
  v6 = v4;
  if (v4)
  {
    v4 = [[PKShippingMethods alloc] initWithLegacyShippingMethods:v4];
  }

  availableShippingMethods = self->_availableShippingMethods;
  self->_availableShippingMethods = v4;
}

@end