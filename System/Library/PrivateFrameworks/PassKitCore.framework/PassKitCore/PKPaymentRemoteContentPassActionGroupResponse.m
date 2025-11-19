@interface PKPaymentRemoteContentPassActionGroupResponse
- (PKPaymentRemoteContentPassActionGroupResponse)initWithExistingActionGroup:(id)a3 data:(id)a4 pass:(id)a5;
@end

@implementation PKPaymentRemoteContentPassActionGroupResponse

- (PKPaymentRemoteContentPassActionGroupResponse)initWithExistingActionGroup:(id)a3 data:(id)a4 pass:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v40.receiver = self;
  v40.super_class = PKPaymentRemoteContentPassActionGroupResponse;
  v8 = [(PKWebServiceResponse *)&v40 initWithData:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [(PKWebServiceResponse *)v8 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v10;
      v11 = v10;
      v12 = [(PKPaymentRemoteContentPassActionGroupResponse *)v11 PKDictionaryForKey:@"actionGroup"];
      v33 = v11;
      v13 = [(PKPaymentRemoteContentPassActionGroupResponse *)v11 PKArrayForKey:@"actions"];
      v14 = [v7 actionLocalizations];
      v34 = v12;
      v15 = [[PKPaymentPassActionGroup alloc] initWithDictionary:v12 localizations:v14];
      updatedActionGroup = v9->_updatedActionGroup;
      v9->_updatedActionGroup = v15;

      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v18 = v13;
      v19 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [[PKPaymentPassAction alloc] initWithDictionary:*(*(&v36 + 1) + 8 * i) localizations:v14];
            [v17 safelyAddObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v20);
      }

      v24 = v9->_updatedActionGroup;
      v25 = [v17 copy];
      [(PKPaymentPassActionGroup *)v24 setActions:v25];

      v10 = v35;
      v27 = v33;
      v26 = v34;
    }

    else
    {
      v26 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = objc_opt_class();
        *buf = 138543618;
        v42 = v29;
        v43 = 2112;
        v44 = v30;
        v31 = v30;
        _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v27 = v9;
      v9 = 0;
    }
  }

  return v9;
}

@end