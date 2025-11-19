@interface PKPaymentNotifyIssuerAppletDirtyRequest
- (PKPaymentNotifyIssuerAppletDirtyRequest)initWithPassSerialNumber:(id)a3 deviceAccountIdentifier:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentNotifyIssuerAppletDirtyRequest

- (PKPaymentNotifyIssuerAppletDirtyRequest)initWithPassSerialNumber:(id)a3 deviceAccountIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPaymentNotifyIssuerAppletDirtyRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passSerialNumber, a3);
    objc_storeStrong(&v10->_deviceAccountIdentifier, a4);
  }

  return v10;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v23[5] = *MEMORY[0x1E69E9840];
  v23[0] = @"devices";
  v23[1] = a4;
  passSerialNumber = self->_passSerialNumber;
  v23[2] = @"passes";
  v23[3] = passSerialNumber;
  v23[4] = @"notifyIssuerAppletStateDirty";
  v9 = MEMORY[0x1E695DEC8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 arrayWithObjects:v23 count:5];
  v14 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v12 endpointComponents:v13 queryParameters:0 appleAccountInformation:v10];

  [v14 setHTTPMethod:@"POST"];
  [v14 setCachePolicy:1];
  [v14 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v15 = objc_opt_class();
  deviceAccountIdentifier = self->_deviceAccountIdentifier;
  v21 = @"dpanIdentifier";
  v22 = deviceAccountIdentifier;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v18 = [v15 _HTTPBodyWithDictionary:v17];
  [v14 setHTTPBody:v18];

  v19 = [v14 copy];

  return v19;
}

@end