@interface PKPeerPaymentDocumentSubmissionResponse
- (PKPeerPaymentDocumentSubmissionResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentDocumentSubmissionResponse

- (PKPeerPaymentDocumentSubmissionResponse)initWithData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKPeerPaymentDocumentSubmissionResponse;
  v3 = [(PKWebServiceResponse *)&v12 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:@"result"];
      v4->_status = PKPeerPaymentDocumentSubmissionStatusFromString(v6);
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138543618;
        v14 = v8;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end