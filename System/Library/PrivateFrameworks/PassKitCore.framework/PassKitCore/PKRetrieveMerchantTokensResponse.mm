@interface PKRetrieveMerchantTokensResponse
- (PKRetrieveMerchantTokensResponse)initWithData:(id)a3;
- (PKRetrieveMerchantTokensResponse)initWithMerchantTokens:(id)a3 totalMerchantTokens:(id)a4 pageSize:(id)a5 totalPages:(id)a6 pageNumber:(id)a7;
@end

@implementation PKRetrieveMerchantTokensResponse

- (PKRetrieveMerchantTokensResponse)initWithData:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PKRetrieveMerchantTokensResponse;
  v3 = [(PKWebServiceResponse *)&v35 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKArrayContaining:objc_opt_class() forKey:@"merchantTokens"];
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = v6;
      v9 = [(PKRetrieveMerchantTokensResponse *)v8 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          v12 = 0;
          do
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * v12);
            v14 = [PKMerchantToken alloc];
            v15 = [(PKMerchantToken *)v14 initWithDictionary:v13, v31];
            if (v15)
            {
              [v7 addObject:v15];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [(PKRetrieveMerchantTokensResponse *)v8 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v10);
      }

      v16 = [v7 copy];
      merchantTokens = v4->_merchantTokens;
      v4->_merchantTokens = v16;

      v18 = [v5 PKNumberForKey:@"totalMerchantTokens"];
      totalMerchantTokens = v4->_totalMerchantTokens;
      v4->_totalMerchantTokens = v18;

      v20 = [v5 PKNumberForKey:@"pageSize"];
      pageSize = v4->_pageSize;
      v4->_pageSize = v20;

      v22 = [v5 PKNumberForKey:@"totalPages"];
      totalPages = v4->_totalPages;
      v4->_totalPages = v22;

      v24 = [v5 PKNumberForKey:@"pageNumber"];
      pageNumber = v4->_pageNumber;
      v4->_pageNumber = v24;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = objc_opt_class();
        *buf = 138543618;
        v37 = v27;
        v38 = 2112;
        v39 = v28;
        v29 = v28;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v8 = v4;
      v4 = 0;
    }
  }

  return v4;
}

- (PKRetrieveMerchantTokensResponse)initWithMerchantTokens:(id)a3 totalMerchantTokens:(id)a4 pageSize:(id)a5 totalPages:(id)a6 pageNumber:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = PKRetrieveMerchantTokensResponse;
  v17 = [(PKRetrieveMerchantTokensResponse *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    merchantTokens = v17->_merchantTokens;
    v17->_merchantTokens = v18;

    v20 = [v13 copy];
    totalMerchantTokens = v17->_totalMerchantTokens;
    v17->_totalMerchantTokens = v20;

    v22 = [v14 copy];
    pageSize = v17->_pageSize;
    v17->_pageSize = v22;

    v24 = [v15 copy];
    totalPages = v17->_totalPages;
    v17->_totalPages = v24;

    v26 = [v16 copy];
    pageNumber = v17->_pageNumber;
    v17->_pageNumber = v26;
  }

  return v17;
}

@end