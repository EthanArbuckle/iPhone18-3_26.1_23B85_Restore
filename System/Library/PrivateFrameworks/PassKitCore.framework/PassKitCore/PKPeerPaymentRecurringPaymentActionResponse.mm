@interface PKPeerPaymentRecurringPaymentActionResponse
- (PKPeerPaymentRecurringPaymentActionResponse)initWithData:(id)data productTimeZone:(id)zone;
@end

@implementation PKPeerPaymentRecurringPaymentActionResponse

- (PKPeerPaymentRecurringPaymentActionResponse)initWithData:(id)data productTimeZone:(id)zone
{
  v19 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  v16.receiver = self;
  v16.super_class = PKPeerPaymentRecurringPaymentActionResponse;
  v7 = [(PKWebServiceResponse *)&v16 initWithData:data];
  v8 = v7;
  if (v7)
  {
    jSONObject = [(PKWebServiceResponse *)v7 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = jSONObject;
      v11 = [[PKPeerPaymentRecurringPayment alloc] initWithDictionary:v10 productTimeZone:zoneCopy];

      p_super = &v8->_recurringPayment->super;
      v8->_recurringPayment = v11;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543362;
        v18 = v14;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed PKPeerPaymentRecurringPaymentActionResponse: expected dictionary and received %{public}@", buf, 0xCu);
      }
    }
  }

  return v8;
}

@end