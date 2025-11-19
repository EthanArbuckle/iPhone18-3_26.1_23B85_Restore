@interface PKPaymentPassRequest
- (PKPaymentPassRequest)initWithPassTypeID:(id)a3 serialNumber:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPaymentPassRequest

- (PKPaymentPassRequest)initWithPassTypeID:(id)a3 serialNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentPassRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    passTypeID = v8->_passTypeID;
    v8->_passTypeID = v9;

    v11 = [v7 copy];
    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v11;
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  passTypeID = self->_passTypeID;
  v14 = @"passes";
  v15 = passTypeID;
  serialNumber = self->_serialNumber;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v14 count:3];
  v11 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v9 endpointComponents:v10 queryParameters:0 appleAccountInformation:v8, v14, v15, serialNumber, v17];

  [v11 setHTTPMethod:@"GET"];
  v12 = [v11 copy];

  return v12;
}

@end