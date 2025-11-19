@interface PKPeerPaymentStatementRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentStatementRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543618;
    v25 = v12;
    v26 = 2082;
    v27 = "url";
LABEL_12:
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_13;
  }

  if (!v7)
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    *buf = 138543618;
    v25 = v12;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_12;
  }

  if (!self->_emailAddress)
  {
    v10 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v12 = NSStringFromClass(v14);
      *buf = 138543618;
      v25 = v12;
      v26 = 2082;
      v27 = "_emailAddress";
      goto LABEL_12;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_18;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    v22 = @"accountIdentifier";
    v23 = accountIdentifier;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v10 = 0;
  }

  v16 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:&unk_1F23B4808 queryParameters:v10 appleAccountInformation:v8];
  [v16 setHTTPMethod:@"POST"];
  [v16 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = v17;
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v17 setObject:emailAddress forKey:@"emailAddress"];
  }

  v20 = [objc_opt_class() _HTTPBodyWithDictionary:v18];
  [v16 setHTTPBody:v20];

  v15 = [v16 copy];
LABEL_18:

  return v15;
}

@end