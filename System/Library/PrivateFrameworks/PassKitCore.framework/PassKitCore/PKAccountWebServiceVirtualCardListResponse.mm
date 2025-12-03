@interface PKAccountWebServiceVirtualCardListResponse
- (PKAccountWebServiceVirtualCardListResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceVirtualCardListResponse

- (PKAccountWebServiceVirtualCardListResponse)initWithData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PKAccountWebServiceVirtualCardListResponse;
  v3 = [(PKWebServiceResponse *)&v23 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      array = [MEMORY[0x1E695DF70] array];
      v8 = [v6 PKArrayForKey:@"virtualCards"];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[PKVirtualCard alloc] initWithDictionary:*(*(&v19 + 1) + 8 * v12)];
            [array addObject:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
        }

        while (v10);
      }

      v14 = [array copy];
      virtualCards = v4->_virtualCards;
      v4->_virtualCards = v14;
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0xFuLL);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        return v4;
      }

      v16 = objc_opt_class();
      array = NSStringFromClass(v16);
      v17 = objc_opt_class();
      v8 = NSStringFromClass(v17);
      *buf = 138543618;
      v25 = array;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  return v4;
}

@end