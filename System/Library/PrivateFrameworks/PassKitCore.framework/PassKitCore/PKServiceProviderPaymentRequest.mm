@interface PKServiceProviderPaymentRequest
+ (id)availableNetworks;
- (BOOL)isEqual:(id)equal;
- (PKServiceProviderPaymentRequest)initWithCoder:(id)coder;
- (PKServiceProviderPaymentRequest)initWithServiceProviderOrder:(id)order targetDeviceSerialNumber:(id)number;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKServiceProviderPaymentRequest

- (PKServiceProviderPaymentRequest)initWithServiceProviderOrder:(id)order targetDeviceSerialNumber:(id)number
{
  orderCopy = order;
  numberCopy = number;
  v14.receiver = self;
  v14.super_class = PKServiceProviderPaymentRequest;
  v9 = [(PKPaymentRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProviderOrder, order);
    v11 = [numberCopy copy];
    targetDeviceSerialNumber = v10->_targetDeviceSerialNumber;
    v10->_targetDeviceSerialNumber = v11;

    [(PKPaymentRequest *)v10 setRequestType:8];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = PKServiceProviderPaymentRequest;
  if ([(PKPaymentRequest *)&v11 isEqual:equalCopy])
  {
    serviceProviderOrder = self->_serviceProviderOrder;
    serviceProviderOrder = [equalCopy serviceProviderOrder];
    v7 = serviceProviderOrder;
    if (serviceProviderOrder)
    {
      v8 = serviceProviderOrder == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = serviceProviderOrder == serviceProviderOrder;
    }

    else
    {
      v9 = [(PKServiceProviderOrder *)serviceProviderOrder isEqual:serviceProviderOrder];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKServiceProviderPaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKServiceProviderPaymentRequest;
  v5 = [(PKPaymentRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProviderOrder"];
    serviceProviderOrder = v5->_serviceProviderOrder;
    v5->_serviceProviderOrder = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetDeviceSerialNumber"];
    targetDeviceSerialNumber = v5->_targetDeviceSerialNumber;
    v5->_targetDeviceSerialNumber = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKServiceProviderPaymentRequest;
  coderCopy = coder;
  [(PKPaymentRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_serviceProviderOrder forKey:{@"serviceProviderOrder", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_targetDeviceSerialNumber forKey:@"targetDeviceSerialNumber"];
}

+ (id)availableNetworks
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___PKServiceProviderPaymentRequest;
  v2 = objc_msgSendSuper2(&v5, sel_availableNetworks);
  v3 = [v2 arrayByAddingObject:@"Barcode"];

  return v3;
}

@end