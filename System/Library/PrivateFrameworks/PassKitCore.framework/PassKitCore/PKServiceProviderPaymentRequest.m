@interface PKServiceProviderPaymentRequest
+ (id)availableNetworks;
- (BOOL)isEqual:(id)a3;
- (PKServiceProviderPaymentRequest)initWithCoder:(id)a3;
- (PKServiceProviderPaymentRequest)initWithServiceProviderOrder:(id)a3 targetDeviceSerialNumber:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKServiceProviderPaymentRequest

- (PKServiceProviderPaymentRequest)initWithServiceProviderOrder:(id)a3 targetDeviceSerialNumber:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKServiceProviderPaymentRequest;
  v9 = [(PKPaymentRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProviderOrder, a3);
    v11 = [v8 copy];
    targetDeviceSerialNumber = v10->_targetDeviceSerialNumber;
    v10->_targetDeviceSerialNumber = v11;

    [(PKPaymentRequest *)v10 setRequestType:8];
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKServiceProviderPaymentRequest;
  if ([(PKPaymentRequest *)&v11 isEqual:v4])
  {
    serviceProviderOrder = self->_serviceProviderOrder;
    v6 = [v4 serviceProviderOrder];
    v7 = v6;
    if (serviceProviderOrder)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = serviceProviderOrder == v6;
    }

    else
    {
      v9 = [(PKServiceProviderOrder *)serviceProviderOrder isEqual:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKServiceProviderPaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKServiceProviderPaymentRequest;
  v5 = [(PKPaymentRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderOrder"];
    serviceProviderOrder = v5->_serviceProviderOrder;
    v5->_serviceProviderOrder = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetDeviceSerialNumber"];
    targetDeviceSerialNumber = v5->_targetDeviceSerialNumber;
    v5->_targetDeviceSerialNumber = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKServiceProviderPaymentRequest;
  v4 = a3;
  [(PKPaymentRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_serviceProviderOrder forKey:{@"serviceProviderOrder", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_targetDeviceSerialNumber forKey:@"targetDeviceSerialNumber"];
}

+ (id)availableNetworks
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___PKServiceProviderPaymentRequest;
  v2 = objc_msgSendSuper2(&v5, sel_availableNetworks);
  v3 = [v2 arrayByAddingObject:@"Barcode"];

  return v3;
}

@end