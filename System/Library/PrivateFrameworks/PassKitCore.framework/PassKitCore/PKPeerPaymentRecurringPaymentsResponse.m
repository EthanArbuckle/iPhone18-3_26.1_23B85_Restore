@interface PKPeerPaymentRecurringPaymentsResponse
- (PKPeerPaymentRecurringPaymentsResponse)initWithData:(id)a3 productTimeZone:(id)a4;
@end

@implementation PKPeerPaymentRecurringPaymentsResponse

- (PKPeerPaymentRecurringPaymentsResponse)initWithData:(id)a3 productTimeZone:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v31.receiver = self;
  v31.super_class = PKPeerPaymentRecurringPaymentsResponse;
  v7 = [(PKWebServiceResponse *)&v31 initWithData:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [(PKWebServiceResponse *)v7 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v9;
      v10 = v9;
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = [v10 PKArrayForKey:@"recurringPayments"];
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [[PKPeerPaymentRecurringPayment alloc] initWithDictionary:*(*(&v27 + 1) + 8 * i) productTimeZone:v6];
            if ([(PKPeerPaymentRecurringPayment *)v18 status])
            {
              v19 = v11;
            }

            else
            {
              v19 = v12;
            }

            [v19 addObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v15);
      }

      v20 = [v11 copy];
      recurringPayments = v8->_recurringPayments;
      v8->_recurringPayments = v20;

      v9 = v26;
      if ([v12 count])
      {
        v22 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v12;
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentRecurringPaymentsResponse: received recurring payments with unknown status %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Malformed PKPeerPaymentRecurringPaymentsResponse: expected dictionary and received %{public}@", buf, 0xCu);
      }
    }
  }

  return v8;
}

@end