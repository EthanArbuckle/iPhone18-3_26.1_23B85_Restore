@interface PKAccountWebServiceAccountActionRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceAccountActionRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v38 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138543618;
    v35 = v24;
    v36 = 2082;
    v37 = "_baseURL";
LABEL_23:
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_24;
  }

  if (!informationCopy)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    *buf = 138543618;
    v35 = v24;
    v36 = 2082;
    v37 = "appleAccountInformation";
    goto LABEL_23;
  }

  if (!self->_accountIdentifier)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v26 = objc_opt_class();
    v24 = NSStringFromClass(v26);
    *buf = 138543618;
    v35 = v24;
    v36 = 2082;
    v37 = "_accountIdentifier";
    goto LABEL_23;
  }

  action = self->_action;
  if (!action)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v27 = objc_opt_class();
    v24 = NSStringFromClass(v27);
    *buf = 138543618;
    v35 = v24;
    v36 = 2082;
    v37 = "_action";
    goto LABEL_23;
  }

  if (![(PKAccountAction *)action actionType])
  {
    amount = [(PKAccountAction *)self->_action amount];

    if (!amount)
    {
      v10 = PKLogFacilityTypeGetObject(0xFuLL);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v32 = objc_opt_class();
      v24 = NSStringFromClass(v32);
      *buf = 138543618;
      v35 = v24;
      v36 = 2082;
      v37 = "[_action amount]";
      goto LABEL_23;
    }

    currencyCode = [(PKAccountAction *)self->_action currencyCode];

    if (currencyCode)
    {
      goto LABEL_6;
    }

    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v24 = NSStringFromClass(v31);
      *buf = 138543618;
      v35 = v24;
      v36 = 2082;
      v37 = "[_action currencyCode]";
      goto LABEL_23;
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

LABEL_6:
  baseURL = self->_baseURL;
  accountIdentifier = self->_accountIdentifier;
  v33[0] = @"accounts";
  v33[1] = accountIdentifier;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v10 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v9 queryParameters:0 appleAccountInformation:v5];

  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = PKAccountActionTypeToString([(PKAccountAction *)self->_action actionType]);
  [dictionary setObject:v12 forKey:@"action"];

  accountUserAltDSID = self->_accountUserAltDSID;
  if (accountUserAltDSID)
  {
    [dictionary setObject:accountUserAltDSID forKey:@"accountUserAltDSID"];
  }

  if (![(PKAccountAction *)self->_action actionType])
  {
    amount2 = [(PKAccountAction *)self->_action amount];
    stringValue = [amount2 stringValue];
    [dictionary setObject:stringValue forKey:@"amount"];

    currencyCode2 = [(PKAccountAction *)self->_action currencyCode];
    [dictionary setObject:currencyCode2 forKey:@"currencyCode"];

    identifier = [(PKAccountAction *)self->_action identifier];
    [dictionary setObject:identifier forKey:@"identifier"];

    v18 = PKAccountRewardRedemptionTypeToString([(PKAccountAction *)self->_action redemptionType]);
    [dictionary setObject:v18 forKey:@"rewardRedemptionType"];
  }

  if ([(PKAccountAction *)self->_action actionType]== 2)
  {
    v19 = PKAccountRewardRedemptionTypeToString([(PKAccountAction *)self->_action redemptionType]);
    [dictionary setObject:v19 forKey:@"rewardRedemptionType"];

    identifier2 = [(PKAccountAction *)self->_action identifier];
    if ([identifier2 length])
    {
      [dictionary setObject:identifier2 forKey:@"identifier"];
    }
  }

  v21 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v10 setHTTPBody:v21];

  v22 = [v10 copy];
LABEL_25:

  return v22;
}

@end