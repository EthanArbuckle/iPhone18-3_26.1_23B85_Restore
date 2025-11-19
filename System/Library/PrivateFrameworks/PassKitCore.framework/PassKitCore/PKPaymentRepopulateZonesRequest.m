@interface PKPaymentRepopulateZonesRequest
- (PKPaymentRepopulateZonesRequest)initWithCloudStoreZoneNames:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentRepopulateZonesRequest

- (PKPaymentRepopulateZonesRequest)initWithCloudStoreZoneNames:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentRepopulateZonesRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudStoreZoneNames, a3);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v18 = @"devices";
  v19 = v8;
  v20 = @"repopulateZones";
  v9 = MEMORY[0x1E695DEC8];
  v10 = a5;
  v11 = a3;
  v12 = [v9 arrayWithObjects:&v18 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v10, v18, v19, v20, v21];

  [v13 setHTTPMethod:@"POST"];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSArray *)self->_cloudStoreZoneNames count])
  {
    [v14 setObject:self->_cloudStoreZoneNames forKey:@"cloudStoreZoneNames"];
  }

  v15 = [objc_opt_class() _HTTPBodyWithDictionary:v14];
  [v13 setHTTPBody:v15];

  v16 = [v13 copy];

  return v16;
}

@end