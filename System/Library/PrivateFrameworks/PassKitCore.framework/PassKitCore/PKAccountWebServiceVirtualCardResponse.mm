@interface PKAccountWebServiceVirtualCardResponse
- (PKAccountWebServiceVirtualCardResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceVirtualCardResponse

- (PKAccountWebServiceVirtualCardResponse)initWithData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKAccountWebServiceVirtualCardResponse;
  v3 = [(PKWebServiceResponse *)&v16 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [PKVirtualCard alloc];
      v8 = [v6 PKDictionaryForKey:@"virtualCard"];

      v9 = [(PKVirtualCard *)v7 initWithDictionary:v8];
      virtualCard = v4->_virtualCard;
      v4->_virtualCard = v9;
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v18 = v12;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end