@interface PKPaymentRewrapRequestBase
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 rewrapData:(id)a5 appleAccountInformation:(id)a6;
- (id)bodyDictionary;
@end

@implementation PKPaymentRewrapRequestBase

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 rewrapData:(id)a5 appleAccountInformation:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(PKPaymentRewrapRequestBase *)self pass];
  v15 = [v14 passTypeIdentifier];
  v16 = [v14 serialNumber];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"devices", v12, 0}];

  if (self->_type <= 4uLL)
  {
    [v17 addObject:@"passes"];
    [v17 addObject:v15];
    [v17 addObject:v16];
  }

  v33 = v16;
  v18 = [(PKPaymentRewrapRequestBase *)self endpointComponents];
  if ([v18 count])
  {
    [v17 addObjectsFromArray:v18];
  }

  v19 = v15;
  type = self->_type;
  if (type > 4)
  {
    v21 = 0;
  }

  else
  {
    v21 = off_1E79DB148[type];
  }

  v22 = [v17 copy];
  v23 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v13 version:v21 endpointComponents:v22 queryParameters:0 appleAccountInformation:v11];

  [v23 setHTTPMethod:@"POST"];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v10)
  {
    v25 = [v10 platformData];
    v26 = [v25 hexEncoding];
    [v24 setValue:v26 forKey:@"pairedSEP"];

    v27 = [v10 platformDataSignature];
    v28 = [v27 hexEncoding];
    [v24 setValue:v28 forKey:@"pairedSEPSignature"];
  }

  v29 = [(PKPaymentRewrapRequestBase *)self bodyDictionary];
  [v24 addEntriesFromDictionary:v29];

  v30 = [objc_opt_class() _HTTPBodyWithDictionary:v24];
  [v23 setHTTPBody:v30];

  v31 = [v23 copy];

  return v31;
}

- (id)bodyDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PKWrappedPayment *)self->_wrappedPayment transactionData];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 hexEncoding];
    [v3 setValue:v6 forKey:@"paymentData"];
  }

  v7 = [(PKWrappedPayment *)self->_wrappedPayment certificates];
  v8 = [v7 dictionary];

  if (v8)
  {
    [v3 setValue:v8 forKey:@"casdCertificate"];
  }

  v41 = v8;
  v9 = [(PKWrappedPayment *)self->_wrappedPayment transactionInstructionsSignature];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 hexEncoding];
    [v3 setValue:v11 forKey:@"transactionInstructionsSignature"];
  }

  v40 = v10;
  v12 = [(PKPaymentRewrapRequestBase *)self applicationData];
  if (v12)
  {
    v13 = v12;
    v14 = [(PKPaymentRewrapRequestBase *)self applicationData];
    v15 = [v14 SHA256Hash];
    v16 = [v15 hexEncoding];

    if (v16)
    {
      [v3 setValue:v16 forKey:@"applicationData"];
    }
  }

  v17 = [(PKWrappedPayment *)self->_wrappedPayment kextBlacklistVersion];
  if ([v17 length])
  {
    [v3 setValue:v17 forKey:@"kextBlacklistVersion"];
  }

  v18 = [(PKWrappedPayment *)self->_wrappedPayment merchantCountryCode];
  if (v18)
  {
    [v3 setValue:v18 forKey:@"merchantCountryCode"];
  }

  v19 = [(PKSecureElementPass *)self->_pass issuerCountryCode];
  if (v19)
  {
    [v3 setValue:v19 forKey:@"issuerCountryCode"];
  }

  v20 = [(PKSecureElementPass *)self->_pass primaryAccountIdentifier];
  if (v20)
  {
    [v3 setValue:v20 forKey:@"primaryAccountIdentifier"];
  }

  v42 = v5;
  v21 = [(PKPaymentApplication *)self->_paymentApplication dpanIdentifier];
  if (v21)
  {
    [v3 setValue:v21 forKey:@"devicePrimaryAccountIdentifier"];
  }

  v22 = PKPaymentCryptogramTypeToString(self->_cryptogramType);
  [v3 setValue:v22 forKey:@"cryptogramType"];

  serviceProviderData = self->_serviceProviderData;
  if (serviceProviderData)
  {
    [v3 setObject:serviceProviderData forKey:@"serviceProviderData"];
  }

  paymentHash = self->_paymentHash;
  if (paymentHash)
  {
    [v3 setObject:paymentHash forKey:@"paymentHash"];
  }

  fundingSourceDetails = self->_fundingSourceDetails;
  if (fundingSourceDetails)
  {
    [v3 setObject:fundingSourceDetails forKey:@"fundingSourceMetadata"];
  }

  initiative = self->_initiative;
  if (initiative)
  {
    [v3 setObject:initiative forKey:@"initiative"];
    if ([(NSString *)self->_initiative isEqualToString:@"merchant_token"])
    {
      [v3 setObject:self->_merchantTokenUseCase forKey:@"merchantTokenUseCase"];
    }
  }

  initiativeContext = self->_initiativeContext;
  if (initiativeContext)
  {
    [v3 setObject:initiativeContext forKey:@"initiativeContext"];
  }

  merchantTokenManagementURL = self->_merchantTokenManagementURL;
  if (merchantTokenManagementURL)
  {
    [v3 setObject:merchantTokenManagementURL forKey:@"merchantTokenManagementURL"];
  }

  remoteDeviceModel = self->_remoteDeviceModel;
  if (remoteDeviceModel)
  {
    [v3 setObject:remoteDeviceModel forKey:@"remoteDeviceModel"];
  }

  if (self->_isDeferredPayment)
  {
    [v3 setObject:&unk_1F23B6300 forKey:@"tokenRequestAttributes"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v3 setObject:userAgent forKey:@"webViewUserAgent"];
  }

  if ([(NSString *)self->_remoteNetworkRequestPaymentTopicID length]|| [(NSString *)self->_remoteNetworkRequestInitiatingUserAgent length])
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([(NSString *)self->_remoteNetworkRequestPaymentTopicID length])
    {
      [v31 setObject:self->_remoteNetworkRequestPaymentTopicID forKeyedSubscript:@"paymentTopicId"];
    }

    if ([(NSString *)self->_remoteNetworkRequestInitiatingUserAgent length])
    {
      [v31 setObject:self->_remoteNetworkRequestInitiatingUserAgent forKeyedSubscript:@"userAgent"];
    }

    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"remoteRequestData"];
  }

  if ([(NSArray *)self->_multiTokenContexts count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PKPaymentRewrapRequestBase_bodyDictionary__block_invoke;
    aBlock[3] = &unk_1E79DB0D0;
    aBlock[4] = self;
    v33 = _Block_copy(aBlock);
    v34 = [(NSArray *)self->_multiTokenContexts pk_arrayByApplyingBlock:v33];
    [v3 setObject:v34 forKeyedSubscript:@"paymentDataContext"];
  }

  if (self->_type == 2)
  {
    v35 = [(PKPaymentApplication *)self->_paymentApplication virtualCardIdentifier];
    [v3 setObject:v35 forKeyedSubscript:@"virtualCardNumberIdentifier"];

    [v3 setObject:@"virtual_card_refresh" forKeyedSubscript:@"initiative"];
  }

  shippingAddressHash = self->_shippingAddressHash;
  if (shippingAddressHash)
  {
    [v3 setObject:shippingAddressHash forKey:@"shippingAddressHash"];
  }

  deviceAssessments = self->_deviceAssessments;
  if (deviceAssessments)
  {
    [v3 setObject:deviceAssessments forKey:@"deviceAssessments"];
  }

  v38 = [v3 copy];

  return v38;
}

id __44__PKPaymentRewrapRequestBase_bodyDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 merchantIdentifier];
  v7 = [v6 dataUsingEncoding:4];
  v8 = [v7 SHA256Hash];
  v9 = [v8 hexEncoding];

  [v5 setObject:v9 forKeyedSubscript:@"merchantIdentifier"];
  v10 = [v4 externalIdentifier];
  [v5 setObject:v10 forKeyedSubscript:@"externalMerchantIdentifier"];

  v11 = [v4 merchantDomain];
  [v5 setObject:v11 forKeyedSubscript:@"merchantDomain"];

  v12 = [v4 merchantName];
  [v5 setObject:v12 forKeyedSubscript:@"merchantName"];

  v13 = [v4 amount];

  v14 = PKCurrencyAmountCreate(v13, *(*(a1 + 32) + 160), 0);

  v15 = [v14 amountByConvertingToSmallestCommonCurrencyUnit];
  v16 = [v15 stringValue];
  [v5 setObject:v16 forKeyedSubscript:@"transactionAmount"];

  v17 = [v5 copy];

  return v17;
}

@end