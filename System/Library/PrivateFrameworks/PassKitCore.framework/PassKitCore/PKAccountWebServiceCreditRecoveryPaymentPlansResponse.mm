@interface PKAccountWebServiceCreditRecoveryPaymentPlansResponse
- (PKAccountWebServiceCreditRecoveryPaymentPlansResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceCreditRecoveryPaymentPlansResponse

- (PKAccountWebServiceCreditRecoveryPaymentPlansResponse)initWithData:(id)data
{
  v56 = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PKAccountWebServiceCreditRecoveryPaymentPlansResponse;
  v3 = [(PKWebServiceResponse *)&v49 initWithData:data];
  v4 = v3;
  if (!v3)
  {
LABEL_20:
    v24 = v4;
    goto LABEL_28;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [jSONObject PKArrayForKey:@"eligiblePaymentPlans"];
    v39 = jSONObject;
    v40 = [jSONObject PKArrayForKey:@"enrolledPaymentPlans"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v45 + 1) + 8 * v12);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = PKLogFacilityTypeGetObject(0xFuLL);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              v32 = objc_opt_class();
              v33 = NSStringFromClass(v32);
              *buf = 138543618;
              v53 = v31;
              v54 = 2114;
              v55 = v33;
              _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected eligible plan to be dictionary and received %{public}@", buf, 0x16u);
            }

            v15 = v8;
LABEL_26:
            jSONObject = v39;

            goto LABEL_27;
          }

          v14 = [[PKCreditRecoveryPaymentPlan alloc] initWithDictionary:v13 enrolled:0];
          [v7 addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = v40;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v41 + 1) + 8 * v19);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = PKLogFacilityTypeGetObject(0xFuLL);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              *buf = 138543618;
              v53 = v36;
              v54 = 2114;
              v55 = v38;
              _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected enrolled plan to be dictionary and received %{public}@", buf, 0x16u);
            }

            goto LABEL_26;
          }

          v21 = [[PKCreditRecoveryPaymentPlan alloc] initWithDictionary:v20 enrolled:1];
          [v7 addObject:v21];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v22 = [v7 copy];
    paymentPlans = v4->_paymentPlans;
    v4->_paymentPlans = v22;

    goto LABEL_20;
  }

  v8 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    *buf = 138543618;
    v53 = v26;
    v54 = 2114;
    v55 = v28;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

LABEL_27:

  v24 = 0;
LABEL_28:

  return v24;
}

@end