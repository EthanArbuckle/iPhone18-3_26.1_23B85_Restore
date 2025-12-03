@interface PKAccountWebServiceAddFundingSourceResponse
- (PKAccountWebServiceAddFundingSourceResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceAddFundingSourceResponse

- (PKAccountWebServiceAddFundingSourceResponse)initWithData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PKAccountWebServiceAddFundingSourceResponse;
  v3 = [(PKWebServiceResponse *)&v19 initWithData:data];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    v12 = v4;
    goto LABEL_10;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = jSONObject;
    v7 = [v6 objectForKey:@"confirmationPage"];
    if ([v7 count])
    {
      v8 = [[PKApplyVerificationPage alloc] initWithDictonary:v7];
      confirmationPage = v4->_confirmationPage;
      v4->_confirmationPage = v8;
    }

    v10 = [[PKAccountPaymentFundingSource alloc] initWithDictionary:v6];

    fundingSource = v4->_fundingSource;
    v4->_fundingSource = v10;

    goto LABEL_6;
  }

  v13 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v21 = v15;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v12 = 0;
LABEL_10:

  return v12;
}

@end