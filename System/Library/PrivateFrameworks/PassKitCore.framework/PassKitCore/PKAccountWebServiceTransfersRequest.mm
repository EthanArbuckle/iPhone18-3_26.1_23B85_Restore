@interface PKAccountWebServiceTransfersRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceTransfersRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v27 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543618;
    v24 = v18;
    v25 = 2082;
    v26 = "_baseURL";
LABEL_17:
    _os_log_impl(&dword_1AD337000, dictionary, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_18;
  }

  if (!informationCopy)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    *buf = 138543618;
    v24 = v18;
    v25 = 2082;
    v26 = "appleAccountInformation";
    goto LABEL_17;
  }

  if (!self->_accountIdentifier)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v18 = NSStringFromClass(v20);
      *buf = 138543618;
      v24 = v18;
      v25 = 2082;
      v26 = "_accountIdentifier";
      goto LABEL_17;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  beginDate = self->_beginDate;
  if (beginDate)
  {
    v8 = PKISO8601DateStringFromDate(beginDate);
    [dictionary setObject:v8 forKey:@"beginDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v10 = PKISO8601DateStringFromDate(endDate);
    [dictionary setObject:v10 forKey:@"endDate"];
  }

  state = self->_state;
  if (state)
  {
    v12 = PKAccountTransferStateStringForState(state);
    [dictionary setObject:v12 forKey:@"state"];
  }

  accountIdentifier = self->_accountIdentifier;
  v22[0] = @"accounts";
  v22[1] = accountIdentifier;
  v22[2] = @"transfers";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v15 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v14 queryParameters:dictionary appleAccountInformation:v5];
  [v15 setHTTPMethod:@"GET"];
  [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v16 = [v15 copy];

LABEL_19:

  return v16;
}

@end