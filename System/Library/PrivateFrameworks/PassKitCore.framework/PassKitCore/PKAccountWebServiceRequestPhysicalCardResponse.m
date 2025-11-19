@interface PKAccountWebServiceRequestPhysicalCardResponse
- (PKAccountWebServiceRequestPhysicalCardResponse)initWithData:(id)a3;
@end

@implementation PKAccountWebServiceRequestPhysicalCardResponse

- (PKAccountWebServiceRequestPhysicalCardResponse)initWithData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PKAccountWebServiceRequestPhysicalCardResponse;
  v3 = [(PKWebServiceResponse *)&v18 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [PKPhysicalCard alloc];
      v8 = [v6 PKDictionaryForKey:@"physicalCard"];
      v9 = [(PKPhysicalCard *)v7 initWithDictionary:v8];
      physicalCard = v4->_physicalCard;
      v4->_physicalCard = v9;

      v4->_shipmentQuoteMinimum = [v6 PKIntegerForKey:@"shipmentQuoteMinimum"];
      v11 = [v6 PKIntegerForKey:@"shipmentQuoteMaximum"];

      v4->_shipmentQuoteMaximum = v11;
    }

    else
    {
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
    }
  }

  return v4;
}

@end