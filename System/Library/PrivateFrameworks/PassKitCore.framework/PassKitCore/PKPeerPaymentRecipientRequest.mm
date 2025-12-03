@interface PKPeerPaymentRecipientRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier;
@end

@implementation PKPeerPaymentRecipientRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (!lCopy)
  {
    v20 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v30 = 138543618;
    v31 = v22;
    v32 = 2082;
    v33 = "url";
LABEL_26:
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v30, 0x16u);

    goto LABEL_27;
  }

  if (!informationCopy)
  {
    v20 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    v30 = 138543618;
    v31 = v22;
    v32 = 2082;
    v33 = "appleAccountInformation";
    goto LABEL_26;
  }

  if (!identifierCopy)
  {
    v20 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v24 = objc_opt_class();
    v22 = NSStringFromClass(v24);
    v30 = 138543618;
    v31 = v22;
    v32 = 2082;
    v33 = "deviceIdentifier";
    goto LABEL_26;
  }

  if (!self->_recipientAddress)
  {
    v20 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v25 = objc_opt_class();
    v22 = NSStringFromClass(v25);
    v30 = 138543618;
    v31 = v22;
    v32 = 2082;
    v33 = "_recipientAddress";
    goto LABEL_26;
  }

  if (!self->_senderAddress)
  {
    v20 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v22 = NSStringFromClass(v26);
      v30 = 138543618;
      v31 = v22;
      v32 = 2082;
      v33 = "_senderAddress";
      goto LABEL_26;
    }

LABEL_27:

    v27 = 0;
    goto LABEL_28;
  }

  v12 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B46E8 queryParameters:0 appleAccountInformation:informationCopy];
  [v12 setHTTPMethod:@"POST"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v12 setTimeoutInterval:15.0];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v11 forKey:@"deviceIdentifier"];
  recipientAddress = self->_recipientAddress;
  if (recipientAddress)
  {
    v15 = PKIDSNormalizedAddress(recipientAddress);
    if (v15)
    {
      [dictionary setObject:v15 forKey:@"recipientQuery"];
    }
  }

  senderAddress = self->_senderAddress;
  if (senderAddress)
  {
    v17 = PKIDSNormalizedAddress(senderAddress);
    if (v17)
    {
      [dictionary setObject:v17 forKey:@"senderAddress"];
    }
  }

  v18 = self->_recipientAddressSource - 1;
  if (v18 > 2)
  {
    v19 = @"unknown";
  }

  else
  {
    v19 = off_1E79E2E80[v18];
  }

  [dictionary setObject:v19 forKey:@"recipientSource"];
  v29 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v12 setHTTPBody:v29];

  v27 = [v12 copy];
LABEL_28:

  return v27;
}

@end