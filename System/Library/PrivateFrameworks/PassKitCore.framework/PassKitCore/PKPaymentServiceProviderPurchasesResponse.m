@interface PKPaymentServiceProviderPurchasesResponse
- (PKPaymentServiceProviderPurchasesResponse)initWithData:(id)a3;
@end

@implementation PKPaymentServiceProviderPurchasesResponse

- (PKPaymentServiceProviderPurchasesResponse)initWithData:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKPaymentServiceProviderPurchasesResponse;
  v3 = [(PKWebServiceResponse *)&v26 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          v11 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v22 + 1) + 8 * v11);
            v13 = [PKServiceProviderPurchase alloc];
            v14 = [(PKServiceProviderPurchase *)v13 initWithDictionary:v12, v22];
            if (v14)
            {
              [v6 addObject:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v9);
      }

      v15 = [v6 copy];
      p_super = &v4->_purchases->super;
      v4->_purchases = v15;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = objc_opt_class();
        *buf = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        v20 = v19;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: expected array and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end