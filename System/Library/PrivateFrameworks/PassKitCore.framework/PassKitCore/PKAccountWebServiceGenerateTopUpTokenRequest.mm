@interface PKAccountWebServiceGenerateTopUpTokenRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceGenerateTopUpTokenRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v24 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKAccountWebServiceGenerateTopUpTokenRequest *)self baseURL];
  if (!baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543618;
    v21 = v10;
    v22 = 2082;
    v23 = "baseURL";
LABEL_12:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_13;
  }

  if (!informationCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    *buf = 138543618;
    v21 = v10;
    v22 = 2082;
    v23 = "appleAccountInformation";
    goto LABEL_12;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v10 = NSStringFromClass(v12);
      *buf = 138543618;
      v21 = v10;
      v22 = 2082;
      v23 = "_accountIdentifier";
      goto LABEL_12;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if (self->_tokenType == 1)
  {
    v7 = 0;
    goto LABEL_15;
  }

  v19[0] = @"accounts";
  v19[1] = accountIdentifier;
  v19[2] = @"generateTopUpToken";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v14 queryParameters:0 appleAccountInformation:informationCopy];

  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v15 = PKUniqueDeviceIdentifier();
  [v8 setValue:v15 forHTTPHeaderField:@"X-Apple-Device-GUID"];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17 = PKAppleBalanceInStoreTopUpTokenTypeToString(self->_tokenType);
  [dictionary setObject:v17 forKeyedSubscript:@"tokenType"];

  v18 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v8 setHTTPBody:v18];

  v7 = [v8 copy];
LABEL_14:

LABEL_15:

  return v7;
}

@end