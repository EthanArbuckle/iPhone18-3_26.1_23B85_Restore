@interface PKPeerPaymentRequestTokenRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata;
@end

@implementation PKPeerPaymentRequestTokenRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata
{
  v56 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  identifierCopy = identifier;
  scoreCopy = score;
  assessmentCopy = assessment;
  metadataCopy = metadata;
  v20 = metadataCopy;
  if (!lCopy)
  {
    v40 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    *buf = 138543618;
    v53 = v42;
    v54 = 2082;
    v55 = "url";
LABEL_54:
    _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_55;
  }

  if (!informationCopy)
  {
    v40 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v43 = objc_opt_class();
    v42 = NSStringFromClass(v43);
    *buf = 138543618;
    v53 = v42;
    v54 = 2082;
    v55 = "appleAccountInformation";
    goto LABEL_54;
  }

  if (!identifierCopy)
  {
    v40 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v44 = objc_opt_class();
    v42 = NSStringFromClass(v44);
    *buf = 138543618;
    v53 = v42;
    v54 = 2082;
    v55 = "deviceIdentifier";
    goto LABEL_54;
  }

  if (!metadataCopy)
  {
    v40 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v45 = objc_opt_class();
    v42 = NSStringFromClass(v45);
    *buf = 138543618;
    v53 = v42;
    v54 = 2082;
    v55 = "deviceMetadata";
    goto LABEL_54;
  }

  if (!self->_senderAddress)
  {
    v40 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v46 = objc_opt_class();
    v42 = NSStringFromClass(v46);
    *buf = 138543618;
    v53 = v42;
    v54 = 2082;
    v55 = "_senderAddress";
    goto LABEL_54;
  }

  if (!self->_amount)
  {
    v40 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v47 = objc_opt_class();
    v42 = NSStringFromClass(v47);
    *buf = 138543618;
    v53 = v42;
    v54 = 2082;
    v55 = "_amount";
    goto LABEL_54;
  }

  if (!self->_currency)
  {
    v40 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v48 = objc_opt_class();
    v42 = NSStringFromClass(v48);
    *buf = 138543618;
    v53 = v42;
    v54 = 2082;
    v55 = "_currency";
    goto LABEL_54;
  }

  if (self->_behavior != 2 && !self->_recipientIdentifier)
  {
    v40 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v49 = objc_opt_class();
      v42 = NSStringFromClass(v49);
      *buf = 138543618;
      v53 = v42;
      v54 = 2082;
      v55 = "_recipientIdentifier";
      goto LABEL_54;
    }

LABEL_55:

    v39 = 0;
    goto LABEL_56;
  }

  v21 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B4718 queryParameters:0 appleAccountInformation:informationCopy];
  [v21 setHTTPMethod:@"POST"];
  v51 = v21;
  [v21 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:identifierCopy forKey:@"deviceIdentifier"];
  recipientIdentifier = self->_recipientIdentifier;
  if (recipientIdentifier)
  {
    [dictionary setObject:recipientIdentifier forKey:@"recipientIdentifier"];
  }

  amount = self->_amount;
  if (amount)
  {
    stringValue = [(NSDecimalNumber *)amount stringValue];
    [dictionary setObject:stringValue forKey:@"amount"];
  }

  currency = self->_currency;
  if (currency)
  {
    [dictionary setObject:currency forKey:@"currency"];
  }

  v27 = self->_source - 1;
  v28 = @"unknown";
  if (v27 <= 2)
  {
    v28 = off_1E79E2E98[v27];
  }

  [dictionary setObject:v28 forKey:@"source"];
  messagesContext = self->_messagesContext;
  if (messagesContext == 1)
  {
    goto LABEL_21;
  }

  if (messagesContext == 2)
  {
    messagesContext = 3;
LABEL_21:
    v30 = PKPeerPaymentPaymentModeToString(messagesContext);
    [dictionary setObject:v30 forKey:@"paymentMode"];
  }

  behavior = self->_behavior;
  if (behavior)
  {
    v32 = @"untracked";
    if (behavior != 2)
    {
      v32 = @"unknown";
    }

    if (behavior == 1)
    {
      v33 = @"tracked";
    }

    else
    {
      v33 = v32;
    }

    [dictionary setObject:v33 forKey:@"behavior"];
  }

  senderAddress = self->_senderAddress;
  if (senderAddress)
  {
    v35 = PKIDSNormalizedAddress(senderAddress);
    if (v35)
    {
      [dictionary setObject:v35 forKey:@"senderAddress"];
    }
  }

  if (scoreCopy)
  {
    hexEncoding = [scoreCopy hexEncoding];
    [dictionary setObject:hexEncoding forKey:@"deviceScore"];
  }

  if (assessmentCopy)
  {
    [dictionary setObject:assessmentCopy forKey:@"odiAssessment"];
  }

  dictionaryRepresentation = [v20 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];

  v38 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v51 setHTTPBody:v38];

  v39 = [v51 copy];
LABEL_56:

  return v39;
}

@end