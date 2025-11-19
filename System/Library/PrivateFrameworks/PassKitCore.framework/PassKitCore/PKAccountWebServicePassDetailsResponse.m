@interface PKAccountWebServicePassDetailsResponse
- (PKAccountWebServicePassDetailsResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServicePassDetailsResponse

- (PKAccountWebServicePassDetailsResponse)initWithData:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = PKAccountWebServicePassDetailsResponse;
  v3 = [(PKWebServiceResponse *)&v40 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_28;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 PKStringForKey:@"provisioningIdentifier"];
    provisioningIdentifier = v4->_provisioningIdentifier;
    v4->_provisioningIdentifier = v7;

    v4->_cardType = [v6 PKIntegerForKey:@"cardType"];
    v4->_status = [v6 PKIntegerForKey:@"status"];
    v9 = [v6 PKURLForKey:@"passURL"];
    passURL = v4->_passURL;
    v4->_passURL = v9;

    v11 = [v6 PKStringForKey:@"passTypeIdentifier"];
    passTypeIdentifier = v4->_passTypeIdentifier;
    v4->_passTypeIdentifier = v11;

    v13 = [v6 PKStringForKey:@"passSerialNumber"];
    passSerialNumber = v4->_passSerialNumber;
    v4->_passSerialNumber = v13;

    v15 = [v6 PKStringForKey:@"ownershipTokenIdentifier"];
    ownershipTokenIdentifier = v4->_ownershipTokenIdentifier;
    v4->_ownershipTokenIdentifier = v15;

    v17 = [v6 PKArrayForKey:@"postProvisioningContent"];
    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v35 = v17;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v37;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v37 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [[PKAccountPostProvisioningContent alloc] initWithDictionary:*(*(&v36 + 1) + 8 * i)];
            if (v24)
            {
              [v18 addObject:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v21);
      }

      v25 = [v18 copy];
      postProvisioningContent = v4->_postProvisioningContent;
      v4->_postProvisioningContent = v25;

      v17 = v35;
    }

    status = v4->_status;
    if (status > 3)
    {
      if (status == 5)
      {
        goto LABEL_25;
      }

      if (status != 4)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else if (status)
    {
      if (status != 1)
      {
        goto LABEL_26;
      }

LABEL_25:
      if (v4->_provisioningIdentifier)
      {
        goto LABEL_26;
      }

      v31 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v32 = "Malformed - Missing provisioningIdentifier";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (!v4->_passURL)
    {
      v31 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v32 = "Malformed - Missing passURL";
LABEL_32:
        _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
      }

LABEL_33:

      v33 = 0;
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v6 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v17 = NSStringFromClass(v28);
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    *buf = 138543618;
    v42 = v17;
    v43 = 2114;
    v44 = v30;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);

    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  v33 = v4;
LABEL_29:

  return v33;
}

@end