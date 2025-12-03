@interface PKPaymentProvisionPrecursorPassRequest
- (PKPaymentProvisionPrecursorPassRequest)initWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number actions:(id)actions;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentProvisionPrecursorPassRequest

- (PKPaymentProvisionPrecursorPassRequest)initWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number actions:(id)actions
{
  identifierCopy = identifier;
  numberCopy = number;
  actionsCopy = actions;
  v15.receiver = self;
  v15.super_class = PKPaymentProvisionPrecursorPassRequest;
  v12 = [(PKOverlayableWebServiceRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_passTypeIdentifier, identifier);
    objc_storeStrong(&v13->_passSerialNumber, number);
    objc_storeStrong(&v13->_actions, actions);
  }

  return v13;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  identifierCopy = identifier;
  v21 = @"getPrecursorPass";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:&v19 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"1" endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v19, identifierCopy, v21, v22];

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