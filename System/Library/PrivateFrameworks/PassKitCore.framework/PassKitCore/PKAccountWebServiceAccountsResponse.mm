@interface PKAccountWebServiceAccountsResponse
- (PKAccountWebServiceAccountsResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceAccountsResponse

- (PKAccountWebServiceAccountsResponse)initWithData:(id)data
{
  v45 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PKAccountWebServiceAccountsResponse;
  v3 = [(PKWebServiceResponse *)&v39 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject PKStringForKey:@"lastUpdated"];
      lastUpdated = v4->_lastUpdated;
      v4->_lastUpdated = v6;

      v8 = [jSONObject objectForKey:@"accounts"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v36;
          do
          {
            v14 = 0;
            do
            {
              if (*v36 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v35 + 1) + 8 * v14);
              v16 = [PKAccount alloc];
              v17 = [(PKAccount *)v16 initWithDictionary:v15, v35];
              if (v17)
              {
                [v9 addObject:v17];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v12);
        }

        v18 = [v9 copy];
        accounts = v4->_accounts;
        v4->_accounts = v18;

        v20 = [jSONObject objectForKey:@"featureFailures"];
        if (v20)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [[PKFeatureFailureCollection alloc] initWithArray:v20];
            featureFailures = v4->_featureFailures;
            v4->_featureFailures = v21;
          }
        }

        goto LABEL_17;
      }

      v29 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138543618;
        v42 = v31;
        v43 = 2114;
        v44 = v33;
        _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138543618;
        v42 = v26;
        v43 = 2114;
        v44 = v28;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }

    v23 = 0;
    goto LABEL_25;
  }

LABEL_17:
  v23 = v4;
LABEL_25:

  return v23;
}

@end