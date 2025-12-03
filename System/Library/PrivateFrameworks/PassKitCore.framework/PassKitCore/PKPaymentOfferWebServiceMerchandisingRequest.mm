@interface PKPaymentOfferWebServiceMerchandisingRequest
+ (id)merchandisingEphemeralDeviceIdentifier;
- (id)_urlRequest;
- (id)merchandisingBodyDictionary;
- (id)merchandisingBodyString;
@end

@implementation PKPaymentOfferWebServiceMerchandisingRequest

- (id)_urlRequest
{
  v28 = *MEMORY[0x1E69E9840];
  baseURL = [(PKPaymentOfferWebServiceMerchandisingRequest *)self baseURL];
  if (!baseURL)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "baseURL";
LABEL_15:
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_16;
  }

  if (!self->_merchandisingIdentifiers)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "_merchandisingIdentifiers";
    goto LABEL_15;
  }

  if (!self->_sessionDetails)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v17 = NSStringFromClass(v19);
      *buf = 138543618;
      v25 = v17;
      v26 = 2082;
      v27 = "_sessionDetails";
      goto LABEL_15;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v23 = @"merchandising";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v5 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v4 queryParameters:0 appleAccountInformation:0];

  [v5 setHTTPMethod:@"POST"];
  [v5 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  merchandisingBodyString = [(PKPaymentOfferWebServiceMerchandisingRequest *)self merchandisingBodyString];
  [v6 setObject:merchandisingBodyString forKey:@"bodyData"];
  certificates = self->_certificates;
  if (certificates)
  {
    v21[0] = @"certificates";
    v9 = [(NSArray *)certificates pk_arrayByApplyingBlock:&__block_literal_global_478];
    v21[1] = @"encryptionVersion";
    v22[0] = v9;
    v22[1] = @"EV_ECC_v1";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v6 setObject:v10 forKeyedSubscript:@"encryptionFields"];
  }

  signature = self->_signature;
  if (signature)
  {
    v12 = [(NSData *)signature base64EncodedStringWithOptions:0];
    [v5 setValue:v12 forHTTPHeaderField:@"X-Apple-BAA-Signature"];
  }

  v13 = [objc_opt_class() _HTTPBodyWithDictionary:v6];
  [v5 setHTTPBody:v13];

  merchandisingEphemeralDeviceIdentifier = [objc_opt_class() merchandisingEphemeralDeviceIdentifier];
  [v5 setValue:merchandisingEphemeralDeviceIdentifier forHTTPHeaderField:@"ephemeral-device-id"];

  v15 = [v5 copy];
LABEL_17:

  return v15;
}

- (id)merchandisingBodyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  allObjects = [(NSSet *)self->_merchandisingIdentifiers allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"merchandisingIdentifiers"];

  needsProvisioningMerchandisingIdentifiers = self->_needsProvisioningMerchandisingIdentifiers;
  if (needsProvisioningMerchandisingIdentifiers)
  {
    allObjects2 = [(NSSet *)needsProvisioningMerchandisingIdentifiers allObjects];
    [v3 setObject:allObjects2 forKeyedSubscript:@"needsProvisioningMerchandisingIdentifiers"];
  }

  httpDictionaryRepresentation = [(PKPaymentOffersSessionDetails *)self->_sessionDetails httpDictionaryRepresentation];
  [v3 setObject:httpDictionaryRepresentation forKeyedSubscript:@"sessionDetails"];

  v8 = [v3 copy];

  return v8;
}

- (id)merchandisingBodyString
{
  v3 = objc_opt_class();
  merchandisingBodyDictionary = [(PKPaymentOfferWebServiceMerchandisingRequest *)self merchandisingBodyDictionary];
  v5 = [v3 _HTTPBodyWithDictionary:merchandisingBodyDictionary];

  if (v5)
  {
    v6 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)merchandisingEphemeralDeviceIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Wallet"];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__32;
  v26 = __Block_byref_object_dispose__32;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__32;
  v20 = __Block_byref_object_dispose__32;
  v21 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKPaymentOfferWebServiceMerchandisingRequest_merchandisingEphemeralDeviceIdentifier__block_invoke;
  aBlock[3] = &unk_1E79D40A0;
  v14 = &v22;
  v15 = &v16;
  v3 = v2;
  v13 = v3;
  v4 = _Block_copy(aBlock);
  v5 = [v3 objectForKey:@"PaymentOffersMerchandisingEphemeralDeviceIdentifier"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(v23 + 5, v5);
    }
  }

  v6 = [v3 objectForKey:@"PaymentOffersMerchandisingEphemeralDeviceIdentifierCreatedAt"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(v17 + 5, v6);
    }
  }

  if (v23[5] && v17[5] || (v4[2](v4), v17[5]))
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v17[5]];
    v9 = v8;

    if (v9 > 18000.0)
    {
      v4[2](v4);
    }
  }

  v10 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

uint64_t __86__PKPaymentOfferWebServiceMerchandisingRequest_merchandisingEphemeralDeviceIdentifier__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [MEMORY[0x1E695DF00] date];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(a1 + 32) setObject:*(*(*(a1 + 40) + 8) + 40) forKey:@"PaymentOffersMerchandisingEphemeralDeviceIdentifier"];
  v9 = *(a1 + 32);
  v10 = *(*(*(a1 + 48) + 8) + 40);

  return [v9 setObject:v10 forKey:@"PaymentOffersMerchandisingEphemeralDeviceIdentifierCreatedAt"];
}

@end