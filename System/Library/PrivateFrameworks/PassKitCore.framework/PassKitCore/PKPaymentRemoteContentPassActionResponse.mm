@interface PKPaymentRemoteContentPassActionResponse
- (PKPaymentRemoteContentPassActionResponse)initWithExistingAction:(id)a3 pass:(id)a4 data:(id)a5;
@end

@implementation PKPaymentRemoteContentPassActionResponse

- (PKPaymentRemoteContentPassActionResponse)initWithExistingAction:(id)a3 pass:(id)a4 data:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = PKPaymentRemoteContentPassActionResponse;
  v10 = [(PKWebServiceResponse *)&v23 initWithData:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [(PKWebServiceResponse *)v10 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      v14 = [v9 secureElementPass];
      v15 = [v14 actionLocalizations];
      v16 = [v8 actionUpdatedWithDictionary:v13 localizations:v15];

      updatedAction = v11->_updatedAction;
      v11->_updatedAction = v16;
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = objc_opt_class();
        *buf = 138543618;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        v21 = v20;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v14 = v11;
      v11 = 0;
    }
  }

  return v11;
}

@end