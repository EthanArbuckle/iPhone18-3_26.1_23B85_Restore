@interface PKPaymentHostUpdate
+ (id)paymentUpdateWithProtobuf:(id)a3;
- (PKPaymentHostUpdate)initWithCoder:(id)a3;
- (PKPaymentHostUpdate)initWithContact:(id)a3 shippingMethod:(id)a4 paymentMethod:(id)a5;
- (id)protobuf;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentHostUpdate

- (PKPaymentHostUpdate)initWithContact:(id)a3 shippingMethod:(id)a4 paymentMethod:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKPaymentHostUpdate;
  v12 = [(PKPaymentHostUpdate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shippingContact, a3);
    objc_storeStrong(&v13->_shippingMethod, a4);
    objc_storeStrong(&v13->_paymentMethod, a5);
  }

  return v13;
}

- (PKPaymentHostUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentHostUpdate;
  v5 = [(PKPaymentHostUpdate *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingContact"];
    shippingContact = v5->_shippingContact;
    v5->_shippingContact = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingMethod"];
    shippingMethod = v5->_shippingMethod;
    v5->_shippingMethod = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethod"];
    paymentMethod = v5->_paymentMethod;
    v5->_paymentMethod = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  shippingContact = self->_shippingContact;
  v5 = a3;
  [v5 encodeObject:shippingContact forKey:@"shippingContact"];
  [v5 encodeObject:self->_shippingMethod forKey:@"shippingMethod"];
  [v5 encodeObject:self->_paymentMethod forKey:@"paymentMethod"];
}

+ (id)paymentUpdateWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = [v3 shippingContact];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD0];
    v6 = objc_opt_class();
    v7 = [v3 shippingContact];
    v4 = [v5 unarchivedObjectOfClass:v6 fromData:v7 error:0];
  }

  v8 = [v3 shippingMethod];

  if (v8)
  {
    v9 = [v3 shippingMethod];
    v8 = [PKShippingMethod shippingMethodWithProtobuf:v9];
  }

  v10 = [v3 paymentMethod];

  if (v10)
  {
    v11 = [v3 paymentMethod];
    v10 = [PKPaymentMethod paymentMethodWithProtobuf:v11];
  }

  v12 = [[PKPaymentHostUpdate alloc] initWithContact:v4 shippingMethod:v8 paymentMethod:v10];

  return v12;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentHostUpdate);
  v4 = [(PKPaymentHostUpdate *)self shippingContact];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACC8];
    v6 = [(PKPaymentHostUpdate *)self shippingContact];
    v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentHostUpdate *)v3 setShippingContact:v7];
  }

  v8 = [(PKPaymentHostUpdate *)self shippingMethod];
  v9 = [v8 shippingMethodProtobuf];
  [(PKProtobufPaymentHostUpdate *)v3 setShippingMethod:v9];

  v10 = [(PKPaymentHostUpdate *)self paymentMethod];
  v11 = [v10 protobuf];
  [(PKProtobufPaymentHostUpdate *)v3 setPaymentMethod:v11];

  return v3;
}

@end