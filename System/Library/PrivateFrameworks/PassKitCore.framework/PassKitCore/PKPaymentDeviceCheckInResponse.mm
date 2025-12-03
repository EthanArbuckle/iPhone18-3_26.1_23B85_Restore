@interface PKPaymentDeviceCheckInResponse
- (PKPaymentDeviceCheckInResponse)initWithData:(id)data;
@end

@implementation PKPaymentDeviceCheckInResponse

- (PKPaymentDeviceCheckInResponse)initWithData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKPaymentDeviceCheckInResponse;
  v3 = [(PKWebServiceResponse *)&v16 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_21;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [jSONObject PKStringForKey:@"deviceAction"];
    if (v6)
    {
      v7 = v6;
      if ([v6 isEqualToString:@"updateConfig"])
      {
        v8 = 1;
      }

      else if ([v7 isEqualToString:@"updateRegistration"])
      {
        v8 = 2;
      }

      else if ([v7 isEqualToString:@"reRegister"])
      {
        v8 = 3;
      }

      else if ([v7 isEqualToString:@"checkInRequiresAuth"])
      {
        v8 = 4;
      }

      else
      {
        if (([v7 isEqualToString:@"reRegisterPeerPayment"] & 1) == 0)
        {
LABEL_20:

LABEL_21:
          v14 = v4;
          goto LABEL_22;
        }

        v8 = 5;
      }

      v4->_action = v8;
      goto LABEL_20;
    }

    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: Device check in did not return an action", buf, 2u);
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v13 = v12;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
    }
  }

  v14 = 0;
LABEL_22:

  return v14;
}

@end