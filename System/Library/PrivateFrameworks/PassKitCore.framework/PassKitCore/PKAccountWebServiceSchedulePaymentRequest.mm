@interface PKAccountWebServiceSchedulePaymentRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (id)endpointComponents;
- (id)manifestHashWithReferenceIdentifier:(id)identifier;
@end

@implementation PKAccountWebServiceSchedulePaymentRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v27 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKAccountWebServiceSchedulePaymentRequest *)self baseURL];
  if (!baseURL)
  {
    v15 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v23 = 138543618;
    v24 = v17;
    v25 = 2082;
    v26 = "baseURL";
LABEL_19:
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v23, 0x16u);

    goto LABEL_20;
  }

  if (!informationCopy)
  {
    v15 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v23 = 138543618;
    v24 = v17;
    v25 = 2082;
    v26 = "appleAccountInformation";
    goto LABEL_19;
  }

  if (!self->_scheduledPayments)
  {
    v15 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v19 = objc_opt_class();
    v17 = NSStringFromClass(v19);
    v23 = 138543618;
    v24 = v17;
    v25 = 2082;
    v26 = "_scheduledPayments";
    goto LABEL_19;
  }

  if (!self->_scheduleDetails)
  {
    v15 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    v23 = 138543618;
    v24 = v17;
    v25 = 2082;
    v26 = "_scheduleDetails";
    goto LABEL_19;
  }

  if (!self->_accountIdentifier)
  {
    v15 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v17 = NSStringFromClass(v21);
      v23 = 138543618;
      v24 = v17;
      v25 = 2082;
      v26 = "_accountIdentifier";
      goto LABEL_19;
    }

LABEL_20:

    v14 = 0;
    goto LABEL_21;
  }

  endpointComponents = [(PKAccountWebServiceSchedulePaymentRequest *)self endpointComponents];
  v7 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:endpointComponents queryParameters:0 appleAccountInformation:informationCopy];

  [v7 setHTTPMethod:@"POST"];
  [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(PKAccountScheduledPaymentList *)self->_scheduledPayments jsonArrayRepresentationWithCertificatesResponse:self->_certificatesResponse];
  [dictionary setObject:v9 forKeyedSubscript:@"scheduledPayments"];

  jsonDictionaryRepresentation = [(PKAccountPaymentScheduleDetails *)self->_scheduleDetails jsonDictionaryRepresentation];
  [dictionary setObject:jsonDictionaryRepresentation forKeyedSubscript:@"scheduleDetails"];

  hexEncoding = [(NSData *)self->_publicKeyHash hexEncoding];
  [dictionary setObject:hexEncoding forKeyedSubscript:@"publicKeyHash"];

  dictionaryRepresentation = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];
  }

  v13 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v7 setHTTPBody:v13];

  v14 = [v7 copy];
LABEL_21:

  return v14;
}

- (id)endpointComponents
{
  v5[3] = *MEMORY[0x1E69E9840];
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    v5[0] = @"accounts";
    v5[1] = accountIdentifier;
    v5[2] = @"payments";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)manifestHashWithReferenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PKAccountScheduledPaymentList *)self->_scheduledPayments scheduledPaymentOfFundingSourceType:1];
  v6 = [(PKAccountScheduledPaymentList *)self->_scheduledPayments scheduledPaymentOfFundingSourceType:2];
  v7 = [v5 hashComponentWithCertificatesResponse:self->_certificatesResponse];
  v8 = [v6 hashComponentWithCertificatesResponse:self->_certificatesResponse];
  hashString = [(PKAccountPaymentScheduleDetails *)self->_scheduleDetails hashString];
  string = [MEMORY[0x1E696AD60] string];
  if ([v7 length])
  {
    [string appendString:v7];
  }

  if ([v8 length])
  {
    [string appendString:v8];
  }

  if (hashString)
  {
    [string appendString:hashString];
  }

  [string appendString:identifierCopy];
  v11 = [string dataUsingEncoding:4];
  sHA256Hash = [v11 SHA256Hash];

  return sHA256Hash;
}

@end