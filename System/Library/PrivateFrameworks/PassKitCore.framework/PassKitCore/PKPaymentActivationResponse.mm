@interface PKPaymentActivationResponse
+ (id)responseWithData:(id)a3 forPass:(id)a4;
- (PKPaymentActivationResponse)initWithData:(id)a3 forPass:(id)a4;
@end

@implementation PKPaymentActivationResponse

+ (id)responseWithData:(id)a3 forPass:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithData:v6 forPass:v5];

  return v7;
}

- (PKPaymentActivationResponse)initWithData:(id)a3 forPass:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v36.receiver = self;
  v36.super_class = PKPaymentActivationResponse;
  v7 = [(PKWebServiceResponse *)&v36 initWithData:a3];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_35;
  }

  v9 = [(PKWebServiceResponse *)v7 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKeyedSubscript:@"status"];
    v11 = v10;
    if (v10)
    {
      v8->_verificationStatus = [v10 integerValue];
      v12 = [v9 PKStringForKey:@"stepIdentifier"];
      stepIdentifier = v8->_stepIdentifier;
      v8->_stepIdentifier = v12;

      v14 = [v9 PKStringForKey:@"previousStepIdentifier"];
      previousStepIdentifier = v8->_previousStepIdentifier;
      v8->_previousStepIdentifier = v14;

      verificationStatus = v8->_verificationStatus;
      if (verificationStatus != 1)
      {
        if (verificationStatus != 2)
        {
          if (verificationStatus == 3)
          {
            v17 = [v9 objectForKey:@"passURL"];
            if (v17)
            {
              v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17];
              passURL = v8->_passURL;
              v8->_passURL = v18;
            }

            if (!v8->_passURL)
            {
              v32 = PKLogFacilityTypeGetObject(7uLL);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Error: passURL malformed or empty", buf, 2u);
              }
            }

            goto LABEL_33;
          }

          v17 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v38 = verificationStatus;
            _os_log_error_impl(&dword_1AD337000, v17, OS_LOG_TYPE_ERROR, "Error: unknown state for activation returned : %ldl", buf, 0xCu);
          }

          goto LABEL_23;
        }

        v17 = [v9 PKArrayContaining:objc_opt_class() forKey:@"methods"];
        if (PKEnableGroupVerificationMethods())
        {
          v27 = [v17 pk_arrayBySafelyApplyingBlock:&__block_literal_global_954];
          methodGroups = v8->_methodGroups;
          v8->_methodGroups = v27;
        }

        else
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __52__PKPaymentActivationResponse_initWithData_forPass___block_invoke_2;
          v34[3] = &unk_1E79CC0D8;
          v35 = v6;
          v30 = [v17 pk_arrayBySafelyApplyingBlock:v34];
          v31 = v8->_methodGroups;
          v8->_methodGroups = v30;

          methodGroups = v35;
        }

        if ([(NSArray *)v8->_methodGroups count])
        {
LABEL_33:

          goto LABEL_34;
        }

        v22 = PKLogFacilityTypeGetObject(7uLL);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = 0;
        v23 = "Error: no verification channels / methods returned";
        v24 = v22;
        v25 = 2;
LABEL_11:
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
LABEL_12:

LABEL_23:
        goto LABEL_24;
      }

      objc_storeStrong(&v8->_requiredVerificationFieldData, v9);
      if ([(NSDictionary *)v8->_requiredVerificationFieldData count])
      {
LABEL_34:

LABEL_35:
        v29 = v8;
        goto LABEL_36;
      }

      v17 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v26 = "Error: no verfication fields returned";
    }

    else
    {
      v17 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      *buf = 0;
      v26 = "Error: no verfication status returned";
    }

    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    goto LABEL_23;
  }

  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    v21 = objc_opt_class();
    *buf = 138543618;
    v38 = v17;
    v39 = 2112;
    v40 = v21;
    v22 = v21;
    v23 = "Malformed response: expected dictionary and received %{public}@ inside %@";
    v24 = v11;
    v25 = 22;
    goto LABEL_11;
  }

LABEL_24:

  v29 = 0;
LABEL_36:

  return v29;
}

PKPassVerificationMethodGroup *__52__PKPaymentActivationResponse_initWithData_forPass___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassVerificationMethodGroup alloc] initWithDictionary:v2];

  return v3;
}

id __52__PKPaymentActivationResponse_initWithData_forPass___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 organizationName];
  v5 = [PKVerificationChannel verificationChannelWithDictionary:v3 andOrganizationName:v4];

  if (v5)
  {
    v6 = [PKPassVerificationMethodGroup methodGroupFromLegacyChannel:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end