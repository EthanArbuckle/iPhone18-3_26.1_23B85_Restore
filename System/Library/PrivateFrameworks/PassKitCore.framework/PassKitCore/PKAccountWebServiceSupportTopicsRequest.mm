@interface PKAccountWebServiceSupportTopicsRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceSupportTopicsRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v26 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "_baseURL";
LABEL_12:
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_13;
  }

  if (!informationCopy)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "appleAccountInformation";
    goto LABEL_12;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    v21[0] = @"accounts";
    v21[1] = accountIdentifier;
    v21[2] = @"supportTopics";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
    transaction = self->_transaction;
    if (transaction)
    {
      v9 = PKAccountSupportTopicTransactionSubtypeForTransaction(transaction);
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = PKPaymentTransactionTypeToString([(PKPaymentTransaction *)self->_transaction transactionType]);
      [v10 setObject:v11 forKey:@"transactionType"];

      v12 = PKAccountSupportTopicTransactionSubtypeToString(v9);
      [v10 setObject:v12 forKey:@"transactionSubType"];

      v13 = PKPaymentTransactionStatusToString([(PKPaymentTransaction *)self->_transaction transactionStatus]);
      [v10 setObject:v13 forKey:@"transactionStatus"];
    }

    else
    {
      v10 = 0;
    }

    v19 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v7 queryParameters:v10 appleAccountInformation:v5];
    [v19 setHTTPMethod:@"GET"];
    [v19 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v18 = [v19 copy];

    goto LABEL_16;
  }

  v7 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v15 = NSStringFromClass(v17);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "_accountIdentifier";
    goto LABEL_12;
  }

LABEL_13:
  v18 = 0;
LABEL_16:

  return v18;
}

@end