@interface PKAccountWebServiceSharedAccountCloudStoreResponse
- (PKAccountWebServiceSharedAccountCloudStoreResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServiceSharedAccountCloudStoreResponse

- (PKAccountWebServiceSharedAccountCloudStoreResponse)initWithData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PKAccountWebServiceSharedAccountCloudStoreResponse;
  v3 = [(PKWebServiceResponse *)&v18 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 PKArrayForKey:@"sharedAccountCloudStore"];
    v7 = [PKSharedAccountCloudStore alloc];
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [(PKSharedAccountCloudStore *)v7 initWithArray:v6 lastUpdated:v8];
    sharedAccountCloudStore = v4->_sharedAccountCloudStore;
    v4->_sharedAccountCloudStore = v9;

LABEL_4:
    v11 = v4;
    goto LABEL_8;
  }

  v12 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543618;
    v20 = v14;
    v21 = 2114;
    v22 = v16;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

@end