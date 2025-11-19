@interface PKPaymentPushProvisioningSharingIdentifiersResponse
- (PKPaymentPushProvisioningSharingIdentifiersResponse)initWithData:(id)a3;
@end

@implementation PKPaymentPushProvisioningSharingIdentifiersResponse

- (PKPaymentPushProvisioningSharingIdentifiersResponse)initWithData:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PKPaymentPushProvisioningSharingIdentifiersResponse;
  v3 = [(PKWebServiceResponse *)&v24 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = [v5 PKArrayForKey:@"availableSharedCredentials"];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[PKPaymentPushProvisioningCredential alloc] initWithDict:*(*(&v20 + 1) + 8 * v11)];
            [(PKPaymentPushProvisioningSharingIdentifiersResponse *)v6 safelyAddObject:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
        }

        while (v9);
      }

      v13 = [(PKPaymentPushProvisioningSharingIdentifiersResponse *)v6 copy];
      sharedCredentials = v4->_sharedCredentials;
      v4->_sharedCredentials = v13;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = objc_opt_class();
        *buf = 138543618;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        v18 = v17;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
      v4 = 0;
    }
  }

  return v4;
}

@end