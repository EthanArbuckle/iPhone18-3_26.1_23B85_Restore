@interface PKRemotePaymentRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteRequest:(id)request;
- (PKRemotePaymentRequest)initWithCoder:(id)coder;
- (PKRemotePaymentRequest)initWithDevice:(id)device;
- (PKRemotePaymentRequest)initWithDevice:(id)device identifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRemotePaymentRequest

- (PKRemotePaymentRequest)initWithDevice:(id)device
{
  v4 = MEMORY[0x1E696AFB0];
  deviceCopy = device;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [(PKRemotePaymentRequest *)self initWithDevice:deviceCopy identifier:uUIDString];

  return v8;
}

- (PKRemotePaymentRequest)initWithDevice:(id)device identifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = PKRemotePaymentRequest;
  v9 = [(PKRemotePaymentRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;
  }

  return v10;
}

- (PKRemotePaymentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKRemotePaymentRequest;
  v5 = [(PKRemotePaymentRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentRequest"];
    paymentRequest = v5->_paymentRequest;
    v5->_paymentRequest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedApplicationIdentifier"];
    selectedApplicationIdentifier = v5->_selectedApplicationIdentifier;
    v5->_selectedApplicationIdentifier = v10;

    v5->_selectedPaymentMethodType = [coderCopy decodeIntegerForKey:@"selectedPaymentMethodType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  paymentRequest = self->_paymentRequest;
  coderCopy = coder;
  [coderCopy encodeObject:paymentRequest forKey:@"paymentRequest"];
  [coderCopy encodeObject:self->_device forKey:@"device"];
  [coderCopy encodeObject:self->_selectedApplicationIdentifier forKey:@"selectedApplicationIdentifier"];
  [coderCopy encodeInteger:self->_selectedPaymentMethodType forKey:@"selectedPaymentMethodType"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemotePaymentRequest *)self isEqualToRemoteRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemoteRequest:(id)request
{
  requestCopy = request;
  device = self->_device;
  v6 = requestCopy[1];
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
  v10 = requestCopy[4];
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
    deviceName = [(PKRemoteDevice *)device deviceName];
    [v4 appendFormat:@"device: %@; ", deviceName];
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