@interface PKPaymentRewrapRequestBase
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier rewrapData:(id)data appleAccountInformation:(id)information;
- (id)bodyDictionary;
@end

@implementation PKPaymentRewrapRequestBase

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier rewrapData:(id)data appleAccountInformation:(id)information
{
  dataCopy = data;
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  pass = [(PKPaymentRewrapRequestBase *)self pass];
  passTypeIdentifier = [pass passTypeIdentifier];
  serialNumber = [pass serialNumber];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"devices", identifierCopy, 0}];

  if (self->_type <= 4uLL)
  {
    [v17 addObject:@"passes"];
    [v17 addObject:passTypeIdentifier];
    [v17 addObject:serialNumber];
  }

  v33 = serialNumber;
  endpointComponents = [(PKPaymentRewrapRequestBase *)self endpointComponents];
  if ([endpointComponents count])
  {
    [v17 addObjectsFromArray:endpointComponents];
  }

  v19 = passTypeIdentifier;
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
  v23 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:v21 endpointComponents:v22 queryParameters:0 appleAccountInformation:informationCopy];

  [v23 setHTTPMethod:@"POST"];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (dataCopy)
  {
    platformData = [dataCopy platformData];
    hexEncoding = [platformData hexEncoding];
    [v24 setValue:hexEncoding forKey:@"pairedSEP"];

    platformDataSignature = [dataCopy platformDataSignature];
    hexEncoding2 = [platformDataSignature hexEncoding];
    [v24 setValue:hexEncoding2 forKey:@"pairedSEPSignature"];
  }

  bodyDictionary = [(PKPaymentRewrapRequestBase *)self bodyDictionary];
  [v24 addEntriesFromDictionary:bodyDictionary];

  v30 = [objc_opt_class() _HTTPBodyWithDictionary:v24];
  [v23 setHTTPBody:v30];

  v31 = [v23 copy];

  return v31;
}

- (id)bodyDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  transactionData = [(PKWrappedPayment *)self->_wrappedPayment transactionData];
  v5 = transactionData;
  if (transactionData)
  {
    hexEncoding = [transactionData hexEncoding];
    [dictionary setValue:hexEncoding forKey:@"paymentData"];
  }

  certificates = [(PKWrappedPayment *)self->_wrappedPayment certificates];
  dictionary2 = [certificates dictionary];

  if (dictionary2)
  {
    [dictionary setValue:dictionary2 forKey:@"casdCertificate"];
  }

  v41 = dictionary2;
  transactionInstructionsSignature = [(PKWrappedPayment *)self->_wrappedPayment transactionInstructionsSignature];
  v10 = transactionInstructionsSignature;
  if (transactionInstructionsSignature)
  {
    hexEncoding2 = [transactionInstructionsSignature hexEncoding];
    [dictionary setValue:hexEncoding2 forKey:@"transactionInstructionsSignature"];
  }

  v40 = v10;
  applicationData = [(PKPaymentRewrapRequestBase *)self applicationData];
  if (applicationData)
  {
    v13 = applicationData;
    applicationData2 = [(PKPaymentRewrapRequestBase *)self applicationData];
    sHA256Hash = [applicationData2 SHA256Hash];
    hexEncoding3 = [sHA256Hash hexEncoding];

    if (hexEncoding3)
    {
      [dictionary setValue:hexEncoding3 forKey:@"applicationData"];
    }
  }

  kextBlacklistVersion = [(PKWrappedPayment *)self->_wrappedPayment kextBlacklistVersion];
  if ([kextBlacklistVersion length])
  {
    [dictionary setValue:kextBlacklistVersion forKey:@"kextBlacklistVersion"];
  }

  merchantCountryCode = [(PKWrappedPayment *)self->_wrappedPayment merchantCountryCode];
  if (merchantCountryCode)
  {
    [dictionary setValue:merchantCountryCode forKey:@"merchantCountryCode"];
  }

  issuerCountryCode = [(PKSecureElementPass *)self->_pass issuerCountryCode];
  if (issuerCountryCode)
  {
    [dictionary setValue:issuerCountryCode forKey:@"issuerCountryCode"];
  }

  primaryAccountIdentifier = [(PKSecureElementPass *)self->_pass primaryAccountIdentifier];
  if (primaryAccountIdentifier)
  {
    [dictionary setValue:primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  }

  v42 = v5;
  dpanIdentifier = [(PKPaymentApplication *)self->_paymentApplication dpanIdentifier];
  if (dpanIdentifier)
  {
    [dictionary setValue:dpanIdentifier forKey:@"devicePrimaryAccountIdentifier"];
  }

  v22 = PKPaymentCryptogramTypeToString(self->_cryptogramType);
  [dictionary setValue:v22 forKey:@"cryptogramType"];

  serviceProviderData = self->_serviceProviderData;
  if (serviceProviderData)
  {
    [dictionary setObject:serviceProviderData forKey:@"serviceProviderData"];
  }

  paymentHash = self->_paymentHash;
  if (paymentHash)
  {
    [dictionary setObject:paymentHash forKey:@"paymentHash"];
  }

  fundingSourceDetails = self->_fundingSourceDetails;
  if (fundingSourceDetails)
  {
    [dictionary setObject:fundingSourceDetails forKey:@"fundingSourceMetadata"];
  }

  initiative = self->_initiative;
  if (initiative)
  {
    [dictionary setObject:initiative forKey:@"initiative"];
    if ([(NSString *)self->_initiative isEqualToString:@"merchant_token"])
    {
      [dictionary setObject:self->_merchantTokenUseCase forKey:@"merchantTokenUseCase"];
    }
  }

  initiativeContext = self->_initiativeContext;
  if (initiativeContext)
  {
    [dictionary setObject:initiativeContext forKey:@"initiativeContext"];
  }

  merchantTokenManagementURL = self->_merchantTokenManagementURL;
  if (merchantTokenManagementURL)
  {
    [dictionary setObject:merchantTokenManagementURL forKey:@"merchantTokenManagementURL"];
  }

  remoteDeviceModel = self->_remoteDeviceModel;
  if (remoteDeviceModel)
  {
    [dictionary setObject:remoteDeviceModel forKey:@"remoteDeviceModel"];
  }

  if (self->_isDeferredPayment)
  {
    [dictionary setObject:&unk_1F23B6300 forKey:@"tokenRequestAttributes"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [dictionary setObject:userAgent forKey:@"webViewUserAgent"];
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
    [dictionary setObject:v32 forKeyedSubscript:@"remoteRequestData"];
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
    [dictionary setObject:v34 forKeyedSubscript:@"paymentDataContext"];
  }

  if (self->_type == 2)
  {
    virtualCardIdentifier = [(PKPaymentApplication *)self->_paymentApplication virtualCardIdentifier];
    [dictionary setObject:virtualCardIdentifier forKeyedSubscript:@"virtualCardNumberIdentifier"];

    [dictionary setObject:@"virtual_card_refresh" forKeyedSubscript:@"initiative"];
  }

  shippingAddressHash = self->_shippingAddressHash;
  if (shippingAddressHash)
  {
    [dictionary setObject:shippingAddressHash forKey:@"shippingAddressHash"];
  }

  deviceAssessments = self->_deviceAssessments;
  if (deviceAssessments)
  {
    [dictionary setObject:deviceAssessments forKey:@"deviceAssessments"];
  }

  v38 = [dictionary copy];

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