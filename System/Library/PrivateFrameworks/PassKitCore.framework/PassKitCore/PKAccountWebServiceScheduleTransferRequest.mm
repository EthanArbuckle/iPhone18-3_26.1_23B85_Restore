@interface PKAccountWebServiceScheduleTransferRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (id)endpointComponents;
- (id)manifestHashWithReferenceIdentifier:(id)identifier;
@end

@implementation PKAccountWebServiceScheduleTransferRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v28 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKAccountWebServiceScheduleTransferRequest *)self baseURL];
  if (!baseURL)
  {
    v16 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v24 = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "baseURL";
LABEL_21:
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v24, 0x16u);

    goto LABEL_22;
  }

  if (!informationCopy)
  {
    v16 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v24 = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_21;
  }

  if (!self->_scheduledTransfers)
  {
    v16 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v20 = objc_opt_class();
    v18 = NSStringFromClass(v20);
    v24 = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "_scheduledTransfers";
    goto LABEL_21;
  }

  if (!self->_scheduleDetails)
  {
    v16 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v21 = objc_opt_class();
    v18 = NSStringFromClass(v21);
    v24 = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "_scheduleDetails";
    goto LABEL_21;
  }

  if (!self->_accountIdentifier)
  {
    v16 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v18 = NSStringFromClass(v22);
      v24 = 138543618;
      v25 = v18;
      v26 = 2082;
      v27 = "_accountIdentifier";
      goto LABEL_21;
    }

LABEL_22:

    v15 = 0;
    goto LABEL_23;
  }

  endpointComponents = [(PKAccountWebServiceScheduleTransferRequest *)self endpointComponents];
  v7 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:endpointComponents queryParameters:0 appleAccountInformation:informationCopy];

  [v7 setHTTPMethod:@"POST"];
  [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  jsonArrayRepresentation = [(PKAccountScheduledTransferList *)self->_scheduledTransfers jsonArrayRepresentation];
  [dictionary setObject:jsonArrayRepresentation forKeyedSubscript:@"scheduledTransfers"];

  jsonDictionaryRepresentation = [(PKAccountTransferScheduleDetails *)self->_scheduleDetails jsonDictionaryRepresentation];
  [dictionary setObject:jsonDictionaryRepresentation forKeyedSubscript:@"scheduleDetails"];

  hexEncoding = [(NSData *)self->_publicKeyHash hexEncoding];
  [dictionary setObject:hexEncoding forKeyedSubscript:@"publicKeyHash"];

  dictionaryRepresentation = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [dictionary setObject:odiAssessment forKey:@"odiAssessment"];
  }

  v14 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v7 setHTTPBody:v14];

  v15 = [v7 copy];
LABEL_23:

  return v15;
}

- (id)endpointComponents
{
  v5[3] = *MEMORY[0x1E69E9840];
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    v5[0] = @"accounts";
    v5[1] = accountIdentifier;
    v5[2] = @"transfers";
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
  v5 = [(PKAccountScheduledTransferList *)self->_scheduledTransfers scheduledTransferOfFundingSourceType:1];
  v6 = [(PKAccountScheduledTransferList *)self->_scheduledTransfers scheduledTransferOfFundingSourceType:2];
  hashComponent = [v5 hashComponent];
  hashComponent2 = [v6 hashComponent];
  hashString = [(PKAccountTransferScheduleDetails *)self->_scheduleDetails hashString];
  string = [MEMORY[0x1E696AD60] string];
  if ([hashComponent length])
  {
    [string appendString:hashComponent];
  }

  if ([hashComponent2 length])
  {
    [string appendString:hashComponent2];
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