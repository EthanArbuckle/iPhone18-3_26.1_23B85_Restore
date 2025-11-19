@interface PKCreditAccountWebServiceAccountUserInfoResponse
- (PKCreditAccountWebServiceAccountUserInfoResponse)initWithData:(id)a3;
- (id)_stringValueFromDictionary:(id)a3 key:(id)a4 isOptional:(BOOL)a5;
@end

@implementation PKCreditAccountWebServiceAccountUserInfoResponse

- (PKCreditAccountWebServiceAccountUserInfoResponse)initWithData:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PKCreditAccountWebServiceAccountUserInfoResponse;
  v3 = [(PKWebServiceResponse *)&v13 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[PKCreditAccountUserInfo alloc] initWithDictionary:v5];
      p_super = &v4->_userInfo->super;
      v4->_userInfo = v6;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

- (id)_stringValueFromDictionary:(id)a3 key:(id)a4 isOptional:(BOOL)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [a3 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 length])
  {
    v9 = v8;
  }

  else
  {
    if (!a5)
    {
      v10 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Invalid %@ in user info response", &v12, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

@end