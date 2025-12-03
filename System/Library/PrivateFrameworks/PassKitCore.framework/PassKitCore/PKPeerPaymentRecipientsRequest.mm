@interface PKPeerPaymentRecipientsRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier;
@end

@implementation PKPeerPaymentRecipientsRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  identifierCopy = identifier;
  v11 = identifierCopy;
  if (!lCopy)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    *buf = 138543618;
    v42 = v26;
    v43 = 2082;
    v44 = "url";
LABEL_33:
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_34;
  }

  if (!informationCopy)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v27 = objc_opt_class();
    v26 = NSStringFromClass(v27);
    *buf = 138543618;
    v42 = v26;
    v43 = 2082;
    v44 = "appleAccountInformation";
    goto LABEL_33;
  }

  if (!identifierCopy)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v28 = objc_opt_class();
    v26 = NSStringFromClass(v28);
    *buf = 138543618;
    v42 = v26;
    v43 = 2082;
    v44 = "deviceIdentifier";
    goto LABEL_33;
  }

  if (!self->_recipientAddresses)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v29 = objc_opt_class();
    v26 = NSStringFromClass(v29);
    *buf = 138543618;
    v42 = v26;
    v43 = 2082;
    v44 = "_recipientAddresses";
    goto LABEL_33;
  }

  if (!self->_senderAddress)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v26 = NSStringFromClass(v30);
      *buf = 138543618;
      v42 = v26;
      v43 = 2082;
      v44 = "_senderAddress";
      goto LABEL_33;
    }

LABEL_34:
    v31 = 0;
    goto LABEL_35;
  }

  v12 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B4700 queryParameters:0 appleAccountInformation:informationCopy];
  [v12 setHTTPMethod:@"POST"];
  [v12 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v12 setTimeoutInterval:15.0];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v11 forKey:@"deviceIdentifier"];
  if ([(NSArray *)self->_recipientAddresses count])
  {
    v34 = dictionary;
    v35 = v11;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = self->_recipientAddresses;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = PKIDSNormalizedAddress(*(*(&v36 + 1) + 8 * i));
          [v14 addObject:v20];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v17);
    }

    dictionary = v34;
    if ([v14 count])
    {
      [v34 setObject:v14 forKey:@"recipientAddresses"];
    }

    v11 = v35;
  }

  senderAddress = self->_senderAddress;
  if (senderAddress)
  {
    v22 = PKIDSNormalizedAddress(senderAddress);
    if (v22)
    {
      [dictionary setObject:v22 forKey:@"senderAddress"];
    }
  }

  v23 = self->_recipientAddressSource - 1;
  if (v23 > 2)
  {
    v24 = @"unknown";
  }

  else
  {
    v24 = off_1E79E2E80[v23];
  }

  [dictionary setObject:v24 forKey:@"recipientSource"];
  v33 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v12 setHTTPBody:v33];

  v31 = [v12 copy];
LABEL_35:

  return v31;
}

@end