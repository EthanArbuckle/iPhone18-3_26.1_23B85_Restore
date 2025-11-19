@interface PKPaymentOfferWebServiceDynamicContentResponse
- (PKPaymentOfferWebServiceDynamicContentResponse)initWithData:(id)a3;
@end

@implementation PKPaymentOfferWebServiceDynamicContentResponse

- (PKPaymentOfferWebServiceDynamicContentResponse)initWithData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKPaymentOfferWebServiceDynamicContentResponse;
  v3 = [(PKWebServiceResponse *)&v16 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
LABEL_6:
    v9 = v4;
    goto LABEL_10;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 PKDictionaryForKey:@"dynamicContent"];
    if ([v6 count])
    {
      v7 = [[PKPaymentOfferDynamicContent alloc] initWithDictionary:v6];
      dynamicContent = v4->_dynamicContent;
      v4->_dynamicContent = v7;
    }

    goto LABEL_6;
  }

  v10 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v18 = v12;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

@end