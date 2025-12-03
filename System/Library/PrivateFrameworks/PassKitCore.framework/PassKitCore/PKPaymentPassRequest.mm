@interface PKPaymentPassRequest
- (PKPaymentPassRequest)initWithPassTypeID:(id)d serialNumber:(id)number;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPaymentPassRequest

- (PKPaymentPassRequest)initWithPassTypeID:(id)d serialNumber:(id)number
{
  dCopy = d;
  numberCopy = number;
  v14.receiver = self;
  v14.super_class = PKPaymentPassRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    passTypeID = v8->_passTypeID;
    v8->_passTypeID = v9;

    v11 = [numberCopy copy];
    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v11;
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v17 = *MEMORY[0x1E69E9840];
  passTypeID = self->_passTypeID;
  v14 = @"passes";
  v15 = passTypeID;
  serialNumber = self->_serialNumber;
  v7 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  lCopy = l;
  v10 = [v7 arrayWithObjects:&v14 count:3];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v10 queryParameters:0 appleAccountInformation:informationCopy, v14, v15, serialNumber, v17];

  [v11 setHTTPMethod:@"GET"];
  v12 = [v11 copy];

  return v12;
}

@end