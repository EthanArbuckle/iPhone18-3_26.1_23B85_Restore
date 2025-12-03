@interface PKPaymentProvisionPrecursorPassResponse
- (PKPaymentProvisionPrecursorPassResponse)initWithData:(id)data;
@end

@implementation PKPaymentProvisionPrecursorPassResponse

- (PKPaymentProvisionPrecursorPassResponse)initWithData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PKPaymentProvisionPrecursorPassResponse;
  v3 = [(PKWebServiceResponse *)&v19 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [(PKPaymentProvisionPrecursorPassResponse *)v6 PKArrayContaining:objc_opt_class() forKey:@"passes"];
      v8 = [v7 pk_arrayBySafelyApplyingBlock:&__block_literal_global_1510];
      downloadablePasses = v4->_downloadablePasses;
      v4->_downloadablePasses = v8;

      v10 = v4->_downloadablePasses;
      if (v10 && [(NSArray *)v10 count])
      {
        goto LABEL_12;
      }

      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        *buf = 138412290;
        v21 = v12;
        v13 = v12;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Malformed response: missing downloadable pass urls inside %@", buf, 0xCu);
      }
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = objc_opt_class();
        *buf = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        v17 = v16;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
    }

    v4 = 0;
LABEL_12:
  }

  return v4;
}

PKPaymentProvisioningPassData *__56__PKPaymentProvisionPrecursorPassResponse_initWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPaymentProvisioningPassData alloc] initWithDictionary:v2];

  return v3;
}

@end