@interface PKPaymentHostUpdate
+ (id)paymentUpdateWithProtobuf:(id)protobuf;
- (PKPaymentHostUpdate)initWithCoder:(id)coder;
- (PKPaymentHostUpdate)initWithContact:(id)contact shippingMethod:(id)method paymentMethod:(id)paymentMethod;
- (id)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentHostUpdate

- (PKPaymentHostUpdate)initWithContact:(id)contact shippingMethod:(id)method paymentMethod:(id)paymentMethod
{
  contactCopy = contact;
  methodCopy = method;
  paymentMethodCopy = paymentMethod;
  v15.receiver = self;
  v15.super_class = PKPaymentHostUpdate;
  v12 = [(PKPaymentHostUpdate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shippingContact, contact);
    objc_storeStrong(&v13->_shippingMethod, method);
    objc_storeStrong(&v13->_paymentMethod, paymentMethod);
  }

  return v13;
}

- (PKPaymentHostUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPaymentHostUpdate;
  v5 = [(PKPaymentHostUpdate *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingContact"];
    shippingContact = v5->_shippingContact;
    v5->_shippingContact = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingMethod"];
    shippingMethod = v5->_shippingMethod;
    v5->_shippingMethod = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethod"];
    paymentMethod = v5->_paymentMethod;
    v5->_paymentMethod = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  shippingContact = self->_shippingContact;
  coderCopy = coder;
  [coderCopy encodeObject:shippingContact forKey:@"shippingContact"];
  [coderCopy encodeObject:self->_shippingMethod forKey:@"shippingMethod"];
  [coderCopy encodeObject:self->_paymentMethod forKey:@"paymentMethod"];
}

+ (id)paymentUpdateWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  shippingContact = [protobufCopy shippingContact];

  if (shippingContact)
  {
    v5 = MEMORY[0x1E696ACD0];
    v6 = objc_opt_class();
    shippingContact2 = [protobufCopy shippingContact];
    shippingContact = [v5 unarchivedObjectOfClass:v6 fromData:shippingContact2 error:0];
  }

  shippingMethod = [protobufCopy shippingMethod];

  if (shippingMethod)
  {
    shippingMethod2 = [protobufCopy shippingMethod];
    shippingMethod = [PKShippingMethod shippingMethodWithProtobuf:shippingMethod2];
  }

  paymentMethod = [protobufCopy paymentMethod];

  if (paymentMethod)
  {
    paymentMethod2 = [protobufCopy paymentMethod];
    paymentMethod = [PKPaymentMethod paymentMethodWithProtobuf:paymentMethod2];
  }

  v12 = [[PKPaymentHostUpdate alloc] initWithContact:shippingContact shippingMethod:shippingMethod paymentMethod:paymentMethod];

  return v12;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentHostUpdate);
  shippingContact = [(PKPaymentHostUpdate *)self shippingContact];

  if (shippingContact)
  {
    v5 = MEMORY[0x1E696ACC8];
    shippingContact2 = [(PKPaymentHostUpdate *)self shippingContact];
    v7 = [v5 archivedDataWithRootObject:shippingContact2 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentHostUpdate *)v3 setShippingContact:v7];
  }

  shippingMethod = [(PKPaymentHostUpdate *)self shippingMethod];
  shippingMethodProtobuf = [shippingMethod shippingMethodProtobuf];
  [(PKProtobufPaymentHostUpdate *)v3 setShippingMethod:shippingMethodProtobuf];

  paymentMethod = [(PKPaymentHostUpdate *)self paymentMethod];
  protobuf = [paymentMethod protobuf];
  [(PKProtobufPaymentHostUpdate *)v3 setPaymentMethod:protobuf];

  return v3;
}

@end