@interface PKPaymentProvisioningResponse
- (PKPaymentProvisioningResponse)initWithCoder:(id)coder;
- (PKPaymentProvisioningResponse)initWithData:(id)data;
- (id)supportDataRepresentationWithSID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentProvisioningResponse

- (PKPaymentProvisioningResponse)initWithData:(id)data
{
  v60 = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = PKPaymentProvisioningResponse;
  v3 = [(PKWebServiceResponse *)&v54 initWithData:data];
  if (v3)
  {
    v4 = v3;
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v38 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = objc_opt_class();
        *buf = 138543618;
        v56 = v40;
        v57 = 2112;
        v58 = v41;
        v42 = v41;
        _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v37 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__PKPaymentProvisioningResponse_initWithData___block_invoke;
    aBlock[3] = &unk_1E79E4400;
    v7 = v6;
    v52 = v7;
    v8 = v4;
    v53 = v8;
    v9 = _Block_copy(aBlock);
    if ((v9[2](v9, jSONObject) & 1) == 0)
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Unexpected response: expected root json to contain provisioning pass data. Attempting with passes", buf, 2u);
      }

      v11 = [jSONObject PKArrayContaining:objc_opt_class() forKey:@"passes"];
      v12 = v11;
      if (!v11)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = jSONObject;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Unexpected response: passes dictionary array did not exist or did not contain expected dictionary of provisioning pass data.\nJSON: %@", buf, 0xCu);
        }

        v36 = 0;
        v26 = v8;
        v8 = 0;
        goto LABEL_30;
      }

      firstObject = [v11 firstObject];
      v14 = v9[2](v9, firstObject);

      if ((v14 & 1) == 0)
      {
        v36 = 0;
        v37 = 0;
LABEL_31:

        if ((v36 & 1) == 0)
        {

          v43 = 0;
          goto LABEL_34;
        }

        goto LABEL_32;
      }
    }

    v15 = [v7 copy];
    downloadablePasses = v8->_downloadablePasses;
    v8->_downloadablePasses = v15;

    v12 = [jSONObject PKArrayContaining:objc_opt_class() forKey:@"moreInfoURLs"];
    if ([v12 count])
    {
      v45 = v9;
      v46 = v7;
      array = [MEMORY[0x1E695DF70] array];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v48;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v48 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v47 + 1) + 8 * i)];
            if (v23)
            {
              [array addObject:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v47 objects:v59 count:16];
        }

        while (v20);
      }

      v24 = [array copy];
      moreInfoURLs = v8->_moreInfoURLs;
      v8->_moreInfoURLs = v24;

      v9 = v45;
      v7 = v46;
    }

    v26 = [jSONObject PKDictionaryForKey:@"contactInformation"];
    if (v26)
    {
      v27 = [[PKContactInformation alloc] initWithDictionary:v26];
      idmsContactInformation = v8->_idmsContactInformation;
      v8->_idmsContactInformation = v27;
    }

    v29 = [jSONObject PKDictionaryForKey:@"encryptedProvisioningSupportData"];
    encryptedSupportDataDictionary = v8->_encryptedSupportDataDictionary;
    v8->_encryptedSupportDataDictionary = v29;

    v31 = [jSONObject PKStringForKey:@"nonce"];
    nonce = v8->_nonce;
    v8->_nonce = v31;

    v33 = [PKExternalProvisioningOptions alloc];
    v10 = [jSONObject PKDictionaryForKey:@"externalDestinationOptions"];
    v34 = [(PKExternalProvisioningOptions *)v33 initWithDictionary:v10];
    externalProvisioningOptions = v8->_externalProvisioningOptions;
    v8->_externalProvisioningOptions = v34;

    v36 = 1;
LABEL_30:
    v37 = v8;

    v8 = v26;
    goto LABEL_31;
  }

  v37 = 0;
LABEL_33:
  v37 = v37;
  v43 = v37;
LABEL_34:

  return v43;
}

BOOL __46__PKPaymentProvisioningResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[PKPaymentProvisioningPassData alloc] initWithDictionary:v3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2112;
      v11 = v3;
      v6 = v9;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Parsing Failure: did not create pass data inside %@ using %@", &v8, 0x16u);
    }
  }

  return v4 != 0;
}

- (id)supportDataRepresentationWithSID:(id)d
{
  if (self->_encryptedSupportDataDictionary)
  {
    dCopy = d;
    v5 = [[PKProvisioningJPKISupportData alloc] initWithEncryptedSupportDataDictionary:self->_encryptedSupportDataDictionary sid:dCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPaymentProvisioningResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKPaymentProvisioningResponse;
  v5 = [(PKWebServiceResponse *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"downloadablePasses"];
    downloadablePasses = v5->_downloadablePasses;
    v5->_downloadablePasses = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"moreInfoURLs"];
    moreInfoURLs = v5->_moreInfoURLs;
    v5->_moreInfoURLs = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idmsContactInformation"];
    idmsContactInformation = v5->_idmsContactInformation;
    v5->_idmsContactInformation = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalProvisioningOptions"];
    externalProvisioningOptions = v5->_externalProvisioningOptions;
    v5->_externalProvisioningOptions = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentProvisioningResponse;
  coderCopy = coder;
  [(PKWebServiceResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_downloadablePasses forKey:{@"downloadablePasses", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_moreInfoURLs forKey:@"moreInfoURLs"];
  [coderCopy encodeObject:self->_idmsContactInformation forKey:@"idmsContactInformation"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeObject:self->_externalProvisioningOptions forKey:@"externalProvisioningOptions"];
}

@end