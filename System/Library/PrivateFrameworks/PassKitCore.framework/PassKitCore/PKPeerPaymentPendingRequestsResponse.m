@interface PKPeerPaymentPendingRequestsResponse
- (PKPeerPaymentPendingRequestsResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentPendingRequestsResponse

- (PKPeerPaymentPendingRequestsResponse)initWithData:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PKPeerPaymentPendingRequestsResponse;
  v3 = [(PKWebServiceResponse *)&v24 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [MEMORY[0x1E695DF70] array];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [v6 PKArrayForKey:@"requests", 0];
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          v12 = 0;
          do
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[PKPeerPaymentPendingRequestSummary alloc] initWithDictionary:*(*(&v20 + 1) + 8 * v12)];
            [v7 addObject:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v29 count:16];
        }

        while (v10);
      }

      v14 = [v7 copy];
      requestSummaries = v4->_requestSummaries;
      v4->_requestSummaries = v14;
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0xCuLL);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        return v4;
      }

      v16 = objc_opt_class();
      v7 = NSStringFromClass(v16);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      v26 = v7;
      v27 = 2114;
      v28 = v18;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  return v4;
}

@end