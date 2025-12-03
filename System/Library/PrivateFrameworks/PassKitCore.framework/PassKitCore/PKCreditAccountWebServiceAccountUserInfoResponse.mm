@interface PKCreditAccountWebServiceAccountUserInfoResponse
- (PKCreditAccountWebServiceAccountUserInfoResponse)initWithData:(id)data;
- (id)_stringValueFromDictionary:(id)dictionary key:(id)key isOptional:(BOOL)optional;
@end

@implementation PKCreditAccountWebServiceAccountUserInfoResponse

- (PKCreditAccountWebServiceAccountUserInfoResponse)initWithData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PKCreditAccountWebServiceAccountUserInfoResponse;
  v3 = [(PKWebServiceResponse *)&v13 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[PKCreditAccountUserInfo alloc] initWithDictionary:jSONObject];
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

- (id)_stringValueFromDictionary:(id)dictionary key:(id)key isOptional:(BOOL)optional
{
  v14 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v8 = [dictionary objectForKey:keyCopy];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 length])
  {
    v9 = v8;
  }

  else
  {
    if (!optional)
    {
      v10 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = keyCopy;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Invalid %@ in user info response", &v12, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

@end