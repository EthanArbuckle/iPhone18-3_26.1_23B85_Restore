@interface PKPaymentPassesResponse
- (PKPaymentPassesResponse)initWithData:(id)data;
@end

@implementation PKPaymentPassesResponse

- (PKPaymentPassesResponse)initWithData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PKPaymentPassesResponse;
  v3 = [(PKWebServiceResponse *)&v28 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [jSONObject objectForKey:@"lastUpdated"];
      lastUpdatedTag = v4->_lastUpdatedTag;
      v4->_lastUpdatedTag = v6;

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = [jSONObject objectForKey:@"passURLs"];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        do
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v24 + 1) + 8 * v13)];
            if (v14)
            {
              [(NSArray *)v8 addObject:v14];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v11);
      }

      passURLs = v4->_passURLs;
      v4->_passURLs = v8;
      v16 = v8;

      v17 = [jSONObject objectForKey:@"devicePassSerialNumbers"];
      devicePassSerialNumbers = v4->_devicePassSerialNumbers;
      v4->_devicePassSerialNumbers = v17;
    }

    else
    {
      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = objc_opt_class();
        *buf = 138543618;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        v22 = v21;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v9 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end