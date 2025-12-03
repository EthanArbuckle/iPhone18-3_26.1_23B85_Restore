@interface PKPeerPaymentReOpenAccountRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPeerPaymentReOpenAccountRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v8 = informationCopy;
  if (lCopy)
  {
    if (informationCopy)
    {
      v9 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B4820 queryParameters:0 appleAccountInformation:informationCopy];
      [v9 setHTTPMethod:@"POST"];
      [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"reopen" forKey:@"action"];
      v11 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
      [v9 setHTTPBody:v11];

      v12 = [v9 copy];
      goto LABEL_10;
    }

    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      v18 = 138543618;
      v19 = v15;
      v20 = 2082;
      v21 = "appleAccountInformation";
      goto LABEL_8;
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v18 = 138543618;
      v19 = v15;
      v20 = 2082;
      v21 = "url";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v18, 0x16u);
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

@end