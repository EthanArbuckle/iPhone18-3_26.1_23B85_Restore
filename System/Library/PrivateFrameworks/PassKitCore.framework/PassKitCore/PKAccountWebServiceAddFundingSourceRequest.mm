@interface PKAccountWebServiceAddFundingSourceRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceAddFundingSourceRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v29 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v26 = v17;
    v27 = 2082;
    v28 = "_baseURL";
LABEL_24:
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_25;
  }

  if (!informationCopy)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    *buf = 138543618;
    v26 = v17;
    v27 = 2082;
    v28 = "appleAccountInformation";
    goto LABEL_24;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v19 = objc_opt_class();
    v17 = NSStringFromClass(v19);
    *buf = 138543618;
    v26 = v17;
    v27 = 2082;
    v28 = "_accountIdentifier";
    goto LABEL_24;
  }

  if (!self->_fundingSource)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    *buf = 138543618;
    v26 = v17;
    v27 = 2082;
    v28 = "_fundingSource";
    goto LABEL_24;
  }

  if (!self->_certificatesResponse)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v21 = objc_opt_class();
    v17 = NSStringFromClass(v21);
    *buf = 138543618;
    v26 = v17;
    v27 = 2082;
    v28 = "_certificatesResponse";
    goto LABEL_24;
  }

  if (!self->_fundingSourceTermsIdentifier)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v17 = NSStringFromClass(v22);
      *buf = 138543618;
      v26 = v17;
      v27 = 2082;
      v28 = "_fundingSourceTermsIdentifier";
      goto LABEL_24;
    }

LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  v24[0] = @"accounts";
  v24[1] = accountIdentifier;
  v24[2] = @"fundingSources";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];

  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = [(PKAccountPaymentFundingSource *)self->_fundingSource jsonDictionaryRepresentationWithCertificatesResponse:self->_certificatesResponse];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v10 forKeyedSubscript:@"fundingSource"];
  [dictionary setObject:self->_fundingSourceTermsIdentifier forKeyedSubscript:@"fundingSourceTermsIdentifier"];
  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata)
  {
    dictionaryRepresentation = [(PKPaymentDeviceMetadata *)deviceMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"deviceMetadata"];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [dictionary setObject:odiAssessment forKeyedSubscript:@"odiAssessment"];
  }

  v15 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v9 setHTTPBody:v15];

LABEL_26:

  return v9;
}

@end