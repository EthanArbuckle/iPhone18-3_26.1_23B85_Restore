@interface PKAccountWebServiceFundingSourcesResponse
- (PKAccountWebServiceFundingSourcesResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceFundingSourcesResponse

- (PKAccountWebServiceFundingSourcesResponse)initWithData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PKAccountWebServiceFundingSourcesResponse;
  v3 = [(PKWebServiceResponse *)&v28 initWithData:data];
  v4 = v3;
  if (!v3)
  {
LABEL_11:
    v17 = v4;
    goto LABEL_15;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [jSONObject PKArrayForKey:@"fundingSources"];
    array = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          v14 = [PKAccountPaymentFundingSource alloc];
          v15 = [(PKAccountPaymentFundingSource *)v14 initWithDictionary:v13, v24];
          [(NSArray *)array safelyAddObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    fundingSources = v4->_fundingSources;
    v4->_fundingSources = array;

    goto LABEL_11;
  }

  v18 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    *buf = 138543618;
    v31 = v20;
    v32 = 2114;
    v33 = v22;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

@end