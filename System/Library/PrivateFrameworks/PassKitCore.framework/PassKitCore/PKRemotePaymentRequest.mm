@interface PKRemotePaymentRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRemoteRequest:(id)a3;
- (PKRemotePaymentRequest)initWithCoder:(id)a3;
- (PKRemotePaymentRequest)initWithDevice:(id)a3;
- (PKRemotePaymentRequest)initWithDevice:(id)a3 identifier:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKRemotePaymentRequest

- (PKRemotePaymentRequest)initWithDevice:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [(PKRemotePaymentRequest *)self initWithDevice:v5 identifier:v7];

  return v8;
}

- (PKRemotePaymentRequest)initWithDevice:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKRemotePaymentRequest;
  v9 = [(PKRemotePaymentRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;
  }

  return v10;
}

- (PKRemotePaymentRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKRemotePaymentRequest;
  v5 = [(PKRemotePaymentRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentRequest"];
    paymentRequest = v5->_paymentRequest;
    v5->_paymentRequest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedApplicationIdentifier"];
    selectedApplicationIdentifier = v5->_selectedApplicationIdentifier;
    v5->_selectedApplicationIdentifier = v10;

    v5->_selectedPaymentMethodType = [v4 decodeIntegerForKey:@"selectedPaymentMethodType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  paymentRequest = self->_paymentRequest;
  v5 = a3;
  [v5 encodeObject:paymentRequest forKey:@"paymentRequest"];
  [v5 encodeObject:self->_device forKey:@"device"];
  [v5 encodeObject:self->_selectedApplicationIdentifier forKey:@"selectedApplicationIdentifier"];
  [v5 encodeInteger:self->_selectedPaymentMethodType forKey:@"selectedPaymentMethodType"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemotePaymentRequest *)self isEqualToRemoteRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemoteRequest:(id)a3
{
  v4 = a3;
  device = self->_device;
  v6 = v4[1];
  if (device)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PKRemoteDevice *)device isEqual:?])
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_13;
  }

  if (device != v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  identifier = self->_identifier;
  v10 = v4[4];
  if (identifier && v10)
  {
    v8 = [(NSString *)identifier isEqual:?];
  }

  else
  {
    v8 = identifier == v10;
  }

LABEL_13:

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_identifier)
  {
    [v3 appendFormat:@"identifier: %@; ", self->_identifier];
  }

  device = self->_device;
  if (device)
  {
    v6 = [(PKRemoteDevice *)device deviceName];
    [v4 appendFormat:@"device: %@; ", v6];
  }

  if (self->_selectedApplicationIdentifier)
  {
    [v4 appendFormat:@"selectedApplicationIdentifier: %@; ", self->_selectedApplicationIdentifier];
  }

  selectedPaymentMethodType = self->_selectedPaymentMethodType;
  if (selectedPaymentMethodType)
  {
    v8 = PKPaymentMethodTypeToString(selectedPaymentMethodType);
    [v4 appendFormat:@"selectedPaymentMethodType: %@; ", v8];
  }

  if (self->_paymentRequest)
  {
    [v4 appendFormat:@"paymentRequest: %@", self->_paymentRequest];
  }

  [v4 appendString:@">"];
  v9 = [v4 copy];

  return v9;
}

@end