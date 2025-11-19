@interface PKAccountWebServiceAccountResponse
- (PKAccountWebServiceAccountResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServiceAccountResponse

- (PKAccountWebServiceAccountResponse)initWithData:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKAccountWebServiceAccountResponse;
  v3 = [(PKWebServiceResponse *)&v15 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[PKAccount alloc] initWithDictionary:v5];
    account = v4->_account;
    v4->_account = v6;

LABEL_4:
    v8 = v4;
    goto LABEL_8;
  }

  v9 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end