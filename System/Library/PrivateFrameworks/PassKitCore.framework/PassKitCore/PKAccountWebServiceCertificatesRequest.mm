@interface PKAccountWebServiceCertificatesRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceCertificatesRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v23 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (self->_baseURL)
  {
    if (informationCopy)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v7 = dictionary;
      v8 = self->_destination - 1;
      if (v8 > 2)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_1E79C9B18[v8];
      }

      [dictionary setObject:v9 forKeyedSubscript:@"destination"];
      baseURL = self->_baseURL;
      v18 = @"certificates";
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v16 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v15 queryParameters:v7 appleAccountInformation:v5];

      [v16 setHTTPMethod:@"GET"];
      [v16 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      v13 = [v16 copy];

      goto LABEL_13;
    }

    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      *buf = 138543618;
      v20 = v11;
      v21 = 2082;
      v22 = "appleAccountInformation";
      goto LABEL_9;
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v20 = v11;
      v21 = 2082;
      v22 = "_baseURL";
LABEL_9:
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

@end