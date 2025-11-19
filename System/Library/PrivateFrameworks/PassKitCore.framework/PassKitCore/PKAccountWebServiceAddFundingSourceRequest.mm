@interface PKAccountWebServiceAddFundingSourceRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceAddFundingSourceRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
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

  if (!v4)
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
  v11 = [MEMORY[0x1E695DF90] dictionary];
  [v11 setObject:v10 forKeyedSubscript:@"fundingSource"];
  [v11 setObject:self->_fundingSourceTermsIdentifier forKeyedSubscript:@"fundingSourceTermsIdentifier"];
  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata)
  {
    v13 = [(PKPaymentDeviceMetadata *)deviceMetadata dictionaryRepresentation];
    [v11 setObject:v13 forKeyedSubscript:@"deviceMetadata"];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [v11 setObject:odiAssessment forKeyedSubscript:@"odiAssessment"];
  }

  v15 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
  [v9 setHTTPBody:v15];

LABEL_26:

  return v9;
}

@end