@interface PKPaymentProvisionPrecursorPassRequest
- (PKPaymentProvisionPrecursorPassRequest)initWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4 actions:(id)a5;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentProvisionPrecursorPassRequest

- (PKPaymentProvisionPrecursorPassRequest)initWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4 actions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKPaymentProvisionPrecursorPassRequest;
  v12 = [(PKOverlayableWebServiceRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passTypeIdentifier, a3);
    objc_storeStrong(&v13->_passSerialNumber, a4);
    objc_storeStrong(&v13->_actions, a5);
  }

  return v13;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  v20 = a4;
  v21 = @"getPrecursorPass";
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v19 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 version:@"1" endpointComponents:v12 queryParameters:0 appleAccountInformation:v9, v19, v20, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  [v13 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v14 setObject:self->_passTypeIdentifier forKeyedSubscript:@"passTypeIdentifier"];
  [v14 setObject:self->_passSerialNumber forKeyedSubscript:@"serialNumber"];
  v15 = [(NSArray *)self->_actions pk_arrayByApplyingBlock:&__block_literal_global_2652];

  [v14 setObject:v15 forKeyedSubscript:@"actions"];
  v16 = [objc_opt_class() _HTTPBodyWithDictionary:v14];
  [v13 setHTTPBody:v16];

  v17 = [v13 copy];

  return v17;
}

@end