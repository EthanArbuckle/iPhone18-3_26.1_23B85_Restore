@interface PKPeerPaymentUpdatePreferencesRequest
- (PKPeerPaymentUpdatePreferencesRequest)initWithPeerPaymentPreferences:(id)preferences;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPeerPaymentUpdatePreferencesRequest

- (PKPeerPaymentUpdatePreferencesRequest)initWithPeerPaymentPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentUpdatePreferencesRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerPaymentPreferences, preferences);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v8 = informationCopy;
  if (!lCopy)
  {
    v14 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v20 = 138543618;
    v21 = v16;
    v22 = 2082;
    v23 = "url";
LABEL_11:
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v20, 0x16u);

    goto LABEL_12;
  }

  if (!informationCopy)
  {
    v14 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v20 = 138543618;
    v21 = v16;
    v22 = 2082;
    v23 = "appleAccountInformation";
    goto LABEL_11;
  }

  if (self->_peerPaymentPreferences)
  {
    v9 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B47D8 queryParameters:0 appleAccountInformation:informationCopy];
    [v9 setHTTPMethod:@"POST"];
    [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v10 = objc_opt_class();
    dictionaryRepresentation = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences dictionaryRepresentation];
    v12 = [v10 _HTTPBodyWithDictionary:dictionaryRepresentation];
    [v9 setHTTPBody:v12];

    v13 = [v9 copy];
    goto LABEL_13;
  }

  v14 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v16 = NSStringFromClass(v18);
    v20 = 138543618;
    v21 = v16;
    v22 = 2082;
    v23 = "_peerPaymentPreferences";
    goto LABEL_11;
  }

LABEL_12:

  v13 = 0;
LABEL_13:

  return v13;
}

@end