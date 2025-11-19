@interface PKPaymentPrepareToProvisionRequest
- (PKPaymentPrepareToProvisionRequest)initWithCredentials:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentPrepareToProvisionRequest

- (PKPaymentPrepareToProvisionRequest)initWithCredentials:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKPaymentPrepareToProvisionRequest;
    v6 = [(PKOverlayableWebServiceRequest *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_credentials, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v19 = @"devices";
  v20 = v8;
  v21 = @"prepareForProvisionings";
  v9 = MEMORY[0x1E695DEC8];
  v10 = a5;
  v11 = a3;
  v12 = [v9 arrayWithObjects:&v19 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v10, v19, v20, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  [v13 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v14 = [(NSArray *)self->_credentials pk_arrayBySafelyApplyingBlock:&__block_literal_global_2635];
  if ([v14 count])
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:v14 forKeyedSubscript:@"cards"];
    v16 = [objc_opt_class() _HTTPBodyWithDictionary:v15];
    [v13 setHTTPBody:v16];

    v17 = [v13 copy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id __105__PKPaymentPrepareToProvisionRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isRemoteCredential])
  {
    v3 = [v2 remoteCredential];
    v4 = [v3 serialNumber];
    v5 = [v3 paymentPass];
    v6 = [v5 passTypeIdentifier];

    v7 = 0;
    if (v4 && v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = [v3 identifier];
      [v7 setObject:v8 forKeyedSubscript:@"identifier"];

      [v7 setObject:v4 forKeyedSubscript:@"passSerialNumber"];
      [v7 setObject:v6 forKeyedSubscript:@"passTypeIdentifier"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end