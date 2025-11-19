@interface PKPaymentOfferWebServiceConfirmResponse
- (PKPaymentOfferWebServiceConfirmResponse)initWithData:(id)a3;
@end

@implementation PKPaymentOfferWebServiceConfirmResponse

- (PKPaymentOfferWebServiceConfirmResponse)initWithData:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PKPaymentOfferWebServiceConfirmResponse;
  v3 = [(PKWebServiceResponse *)&v37 initWithData:a3];
  v4 = v3;
  if (!v3)
  {
LABEL_12:
    v24 = v4;
    goto LABEL_16;
  }

  v5 = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 PKStringForKey:@"paymentHash"];
    paymentHash = v4->_paymentHash;
    v4->_paymentHash = v6;

    v8 = [v5 PKURLForKey:@"issuerInstallmentManagementURL"];
    issuerInstallmentManagementURL = v4->_issuerInstallmentManagementURL;
    v4->_issuerInstallmentManagementURL = v8;

    v10 = [v5 PKStringForKey:@"followUpAction"];
    v11 = v10;
    if (v10 != @"none" && v10 != 0)
    {
      v13 = [(__CFString *)v10 isEqualToString:@"none"];

      if ((v13 & 1) == 0)
      {
        v31 = v11;
        if (v31 == @"getOffers" || (v32 = v31, v33 = [(__CFString *)v31 isEqualToString:@"getOffers"], v32, (v33 & 1) != 0))
        {
          v14 = 1;
          goto LABEL_9;
        }

        v34 = v32;
        if (v34 == @"waitForPush" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"waitForPush"], v35, v36))
        {
          v14 = 2;
          goto LABEL_9;
        }
      }
    }

    v14 = 0;
LABEL_9:

    v4->_followUpAction = v14;
    v15 = [v5 PKDictionaryForKey:@"redemption"];
    if (v15)
    {
      v16 = [PKPaymentRewardsRedemption alloc];
      v17 = [v15 PKStringForKey:@"identifier"];
      v18 = [v15 PKStringForKey:@"balanceIdentifier"];
      v19 = [v15 PKStringForKey:@"status"];
      v20 = PKPaymentRewardsRedemptionStatusFromString(v19);
      v21 = [v15 PKURLForKey:@"statusLink"];
      v22 = [(PKPaymentRewardsRedemption *)v16 initWithIdentifier:v17 balanceIdentifier:v18 status:v20 statusLink:v21 paymentHash:v4->_paymentHash];
      redemption = v4->_redemption;
      v4->_redemption = v22;
    }

    goto LABEL_12;
  }

  v25 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    *buf = 138543618;
    v39 = v27;
    v40 = 2114;
    v41 = v29;
    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
  }

  v24 = 0;
LABEL_16:

  return v24;
}

@end