@interface PKPeerPaymentRequestTokenRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5 deviceScore:(id)a6 odiAssessment:(id)a7 deviceMetadata:(id)a8;
@end

@implementation PKPeerPaymentRequestTokenRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5 deviceScore:(id)a6 odiAssessment:(id)a7 deviceMetadata:(id)a8
{
  v56 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v14)
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

  if (!v15)
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

  if (!v16)
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

  if (!v19)
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

  v21 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v14 endpointComponents:&unk_1F23B4718 queryParameters:0 appleAccountInformation:v15];
  [v21 setHTTPMethod:@"POST"];
  v51 = v21;
  [v21 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v22 = [MEMORY[0x1E695DF90] dictionary];
  [v22 setObject:v16 forKey:@"deviceIdentifier"];
  recipientIdentifier = self->_recipientIdentifier;
  if (recipientIdentifier)
  {
    [v22 setObject:recipientIdentifier forKey:@"recipientIdentifier"];
  }

  amount = self->_amount;
  if (amount)
  {
    v25 = [(NSDecimalNumber *)amount stringValue];
    [v22 setObject:v25 forKey:@"amount"];
  }

  currency = self->_currency;
  if (currency)
  {
    [v22 setObject:currency forKey:@"currency"];
  }

  v27 = self->_source - 1;
  v28 = @"unknown";
  if (v27 <= 2)
  {
    v28 = off_1E79E2E98[v27];
  }

  [v22 setObject:v28 forKey:@"source"];
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
    [v22 setObject:v30 forKey:@"paymentMode"];
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

    [v22 setObject:v33 forKey:@"behavior"];
  }

  senderAddress = self->_senderAddress;
  if (senderAddress)
  {
    v35 = PKIDSNormalizedAddress(senderAddress);
    if (v35)
    {
      [v22 setObject:v35 forKey:@"senderAddress"];
    }
  }

  if (v17)
  {
    v36 = [v17 hexEncoding];
    [v22 setObject:v36 forKey:@"deviceScore"];
  }

  if (v18)
  {
    [v22 setObject:v18 forKey:@"odiAssessment"];
  }

  v37 = [v20 dictionaryRepresentation];
  [v22 setObject:v37 forKey:@"deviceMetadata"];

  v38 = [objc_opt_class() _HTTPBodyWithDictionary:v22];
  [v51 setHTTPBody:v38];

  v39 = [v51 copy];
LABEL_56:

  return v39;
}

@end