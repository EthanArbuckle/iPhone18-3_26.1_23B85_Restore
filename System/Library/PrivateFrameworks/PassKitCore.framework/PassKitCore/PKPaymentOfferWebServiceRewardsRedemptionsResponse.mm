@interface PKPaymentOfferWebServiceRewardsRedemptionsResponse
- (PKPaymentOfferWebServiceRewardsRedemptionsResponse)initWithData:(id)data;
@end

@implementation PKPaymentOfferWebServiceRewardsRedemptionsResponse

- (PKPaymentOfferWebServiceRewardsRedemptionsResponse)initWithData:(id)data
{
  v37 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = PKPaymentOfferWebServiceRewardsRedemptionsResponse;
  v3 = [(PKWebServiceResponse *)&v31 initWithData:data];
  v4 = v3;
  if (!v3)
  {
LABEL_19:
    v25 = v4;
    goto LABEL_20;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [jSONObject PKArrayContaining:objc_opt_class() forKey:@"rewardsRedemptions"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [PKPaymentRewardsRedemption alloc];
          v15 = [(PKPaymentRewardsRedemption *)v14 initWithDictionary:v13, v27];
          [v7 safelyAddObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    v4->_moreComing = [jSONObject PKBoolForKey:@"moreComing"];
    v16 = [jSONObject PKDateForKey:@"lastUpdated"];
    lastUpdated = v4->_lastUpdated;
    v4->_lastUpdated = v16;

    v18 = [v7 count];
    if (v18)
    {
      v19 = [v7 copy];
    }

    else
    {
      v19 = 0;
    }

    objc_storeStrong(&v4->_rewardsRedemptions, v19);
    if (v18)
    {
    }

    goto LABEL_19;
  }

  v20 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138543618;
    v34 = v22;
    v35 = 2114;
    v36 = v24;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v25 = 0;
LABEL_20:

  return v25;
}

@end