@interface PKPaymentOfferWebServiceRewardsBalancesResponse
- (PKPaymentOfferWebServiceRewardsBalancesResponse)initWithData:(id)a3;
@end

@implementation PKPaymentOfferWebServiceRewardsBalancesResponse

- (PKPaymentOfferWebServiceRewardsBalancesResponse)initWithData:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = PKPaymentOfferWebServiceRewardsBalancesResponse;
  v3 = [(PKWebServiceResponse *)&v29 initWithData:a3];
  p_isa = &v3->super.super.super.super.isa;
  if (!v3)
  {
LABEL_19:
    v23 = p_isa;
    goto LABEL_20;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 PKArrayContaining:objc_opt_class() forKey:@"rewardsBalances"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [PKPaymentRewardsBalance alloc];
          v15 = [(PKPaymentRewardsBalance *)v14 initWithDictionary:v13, v25];
          [v7 safelyAddObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    v16 = [v7 count];
    if (v16)
    {
      v17 = [v7 copy];
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(p_isa + 4, v17);
    if (v16)
    {
    }

    goto LABEL_19;
  }

  v18 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    *buf = 138543618;
    v32 = v20;
    v33 = 2114;
    v34 = v22;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v23 = 0;
LABEL_20:

  return v23;
}

@end