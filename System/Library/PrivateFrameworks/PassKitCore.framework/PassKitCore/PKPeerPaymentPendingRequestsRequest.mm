@interface PKPeerPaymentPendingRequestsRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPeerPaymentPendingRequestsRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v8 = informationCopy;
  if (!lCopy)
  {
    v15 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v21 = 138543618;
    v22 = v17;
    v23 = 2082;
    v24 = "url";
LABEL_13:
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v21, 0x16u);

    goto LABEL_14;
  }

  if (!informationCopy)
  {
    v15 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v21 = 138543618;
    v22 = v17;
    v23 = 2082;
    v24 = "appleAccountInformation";
    goto LABEL_13;
  }

  if (!self->_requestTokens)
  {
    v15 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v17 = NSStringFromClass(v19);
      v21 = 138543618;
      v22 = v17;
      v23 = 2082;
      v24 = "_requestTokens";
      goto LABEL_13;
    }

LABEL_14:

    v14 = 0;
    goto LABEL_15;
  }

  v9 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B4730 queryParameters:0 appleAccountInformation:informationCopy];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = dictionary;
  requestTokens = self->_requestTokens;
  if (requestTokens)
  {
    [dictionary setObject:requestTokens forKey:@"requestTokens"];
  }

  v13 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
  [v9 setHTTPBody:v13];

  v14 = [v9 copy];
LABEL_15:

  return v14;
}

@end