@interface PKAccountWebServicePromotionsRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServicePromotionsRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v23 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v20 = v14;
    v21 = 2082;
    v22 = "_baseURL";
LABEL_13:
    _os_log_impl(&dword_1AD337000, dictionary, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_14;
  }

  if (!informationCopy)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    *buf = 138543618;
    v20 = v14;
    v21 = 2082;
    v22 = "appleAccountInformation";
    goto LABEL_13;
  }

  if (!self->_accountIdentifier)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v14 = NSStringFromClass(v16);
      *buf = 138543618;
      v20 = v14;
      v21 = 2082;
      v22 = "_accountIdentifier";
      goto LABEL_13;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  addedSinceDate = self->_addedSinceDate;
  if (addedSinceDate)
  {
    v8 = PKW3CDateStringFromDate(addedSinceDate);
    [dictionary setObject:v8 forKey:@"addedSinceDate"];
  }

  accountIdentifier = self->_accountIdentifier;
  v18[0] = @"accounts";
  v18[1] = accountIdentifier;
  v18[2] = @"promotions";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v11 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v10 queryParameters:dictionary appleAccountInformation:v5];
  [v11 setHTTPMethod:@"GET"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v12 = [v11 copy];

LABEL_15:

  return v12;
}

@end