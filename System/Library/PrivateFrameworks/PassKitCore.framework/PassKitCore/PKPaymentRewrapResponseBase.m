@interface PKPaymentRewrapResponseBase
- (PKPaymentRewrapResponseBase)initWithData:(id)a3;
@end

@implementation PKPaymentRewrapResponseBase

- (PKPaymentRewrapResponseBase)initWithData:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = PKPaymentRewrapResponseBase;
  v3 = [(PKWebServiceResponse *)&v48 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      p_super = [v5 objectForKey:@"header"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [p_super PKStringForKey:@"transactionId"];
        transactionIdentifier = v4->_transactionIdentifier;
        v4->_transactionIdentifier = v7;
      }

      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = [v5 objectForKey:@"data"];
      [v9 safelySetObject:v10 forKey:@"data"];

      [v9 safelySetObject:p_super forKey:@"header"];
      v11 = [v5 objectForKey:@"signature"];
      [v9 safelySetObject:v11 forKey:@"signature"];

      v12 = [v5 objectForKey:@"version"];
      [v9 safelySetObject:v12 forKey:@"version"];

      v47 = 0;
      v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:&v47];
      v14 = v47;
      if (v13)
      {
        [(PKPaymentRewrapResponseBase *)v4 setRewrappedPaymentData:v13];
      }

      else
      {
        v21 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = objc_opt_class();
          *buf = 138543618;
          v50 = v22;
          v51 = 2112;
          v52 = v14;
          v23 = v22;
          _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Could not create rewrappedPaymentData for %{public}@: %@", buf, 0x16u);
        }
      }

      v24 = [v5 PKStringForKey:@"primaryAccountNumberSuffix"];
      primaryAccountNumberSuffix = v4->_primaryAccountNumberSuffix;
      v4->_primaryAccountNumberSuffix = v24;

      v26 = [v5 PKDictionaryForKey:@"account"];
      if (v26)
      {
        v27 = [[PKAccount alloc] initWithDictionary:v26];
        account = v4->_account;
        v4->_account = v27;
      }

      v29 = [v5 PKDictionaryForKey:@"redemption"];
      if (v29)
      {
        v43 = [PKPaymentRewardsRedemption alloc];
        v30 = [v29 PKStringForKey:@"identifier"];
        [v29 PKStringForKey:@"balanceIdentifier"];
        v44 = v5;
        v31 = v45 = v14;
        [v29 PKStringForKey:@"status"];
        v32 = v46 = v13;
        v33 = v26;
        v34 = v9;
        v35 = PKPaymentRewardsRedemptionStatusFromString(v32);
        v36 = [v29 PKURLForKey:@"statusLink"];
        v37 = v35;
        v9 = v34;
        v26 = v33;
        v38 = [(PKPaymentRewardsRedemption *)v43 initWithIdentifier:v30 balanceIdentifier:v31 status:v37 statusLink:v36 paymentHash:v4->_transactionIdentifier];
        redemption = v4->_redemption;
        v4->_redemption = v38;

        v13 = v46;
        v5 = v44;
        v14 = v45;
      }

      v40 = [v5 PKURLForKey:@"issuerInstallmentManagementURL"];
      issuerInstallmentManagementURL = v4->_issuerInstallmentManagementURL;
      v4->_issuerInstallmentManagementURL = v40;
    }

    else
    {
      if (v5 || ![objc_opt_class() jsonDataOptional])
      {
        v16 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = objc_opt_class();
          *buf = 138543618;
          v50 = v18;
          v51 = 2112;
          v52 = v19;
          v20 = v19;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
        }

        p_super = &v4->super.super.super;
        v4 = 0;
        goto LABEL_23;
      }

      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        return v4;
      }

      v15 = objc_opt_class();
      *buf = 138412290;
      v50 = v15;
      v9 = v15;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "No data received in re-wrap of %@ (which is allowed)", buf, 0xCu);
    }

    goto LABEL_23;
  }

  return v4;
}

@end