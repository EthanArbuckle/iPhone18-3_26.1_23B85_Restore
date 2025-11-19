@interface PKAccountWebServiceSchedulePaymentResponse
- (PKAccountWebServiceSchedulePaymentResponse)initWithData:(id)a3 account:(id)a4 request:(id)a5;
@end

@implementation PKAccountWebServiceSchedulePaymentResponse

- (PKAccountWebServiceSchedulePaymentResponse)initWithData:(id)a3 account:(id)a4 request:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v37.receiver = self;
  v37.super_class = PKAccountWebServiceSchedulePaymentResponse;
  v8 = [(PKWebServiceResponse *)&v37 initWithData:a3];
  v9 = v8;
  if (!v8)
  {
LABEL_13:
    v24 = v9;
    goto LABEL_17;
  }

  v10 = [(PKWebServiceResponse *)v8 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v9;
    v11 = [v10 PKArrayForKey:@"payments"];
    v12 = [MEMORY[0x1E695DF70] array];
    v32 = v7;
    v13 = [v7 creditDetails];
    v14 = [v13 productTimeZone];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
            v22 = [[PKAccountPayment alloc] initWithDictionary:v21 productTimeZone:v14];
            [(NSArray *)v12 safelyAddObject:v22];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v17);
    }

    v9 = v31;
    payments = v31->_payments;
    v31->_payments = v12;

    v7 = v32;
    goto LABEL_13;
  }

  v25 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    *buf = 138543618;
    v40 = v27;
    v41 = 2114;
    v42 = v29;
    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v24 = 0;
LABEL_17:

  return v24;
}

@end