@interface PKPaymentRemoteContentPassActionResponse
- (PKPaymentRemoteContentPassActionResponse)initWithExistingAction:(id)action pass:(id)pass data:(id)data;
@end

@implementation PKPaymentRemoteContentPassActionResponse

- (PKPaymentRemoteContentPassActionResponse)initWithExistingAction:(id)action pass:(id)pass data:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  passCopy = pass;
  v23.receiver = self;
  v23.super_class = PKPaymentRemoteContentPassActionResponse;
  v10 = [(PKWebServiceResponse *)&v23 initWithData:data];
  v11 = v10;
  if (v10)
  {
    jSONObject = [(PKWebServiceResponse *)v10 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = jSONObject;
      secureElementPass = [passCopy secureElementPass];
      actionLocalizations = [secureElementPass actionLocalizations];
      v16 = [actionCopy actionUpdatedWithDictionary:v13 localizations:actionLocalizations];

      updatedAction = v11->_updatedAction;
      v11->_updatedAction = v16;
    }

    else
    {
      actionLocalizations = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(actionLocalizations, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = objc_opt_class();
        *buf = 138543618;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        v21 = v20;
        _os_log_impl(&dword_1AD337000, actionLocalizations, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      secureElementPass = v11;
      v11 = 0;
    }
  }

  return v11;
}

@end