@interface PKPeerPaymentBankLookupRequest
- (PKPeerPaymentBankLookupRequest)initWithCountryCode:(id)a3 query:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentBankLookupRequest

- (PKPeerPaymentBankLookupRequest)initWithCountryCode:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentBankLookupRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    countryCode = v8->_countryCode;
    v8->_countryCode = v9;

    v11 = [v7 copy];
    query = v8->_query;
    v8->_query = v11;
  }

  return v8;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "url";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_15;
  }

  if (!v7)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "appleAccountInformation";
    goto LABEL_14;
  }

  countryCode = self->_countryCode;
  if (!countryCode)
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v17 = objc_opt_class();
    v15 = NSStringFromClass(v17);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "_countryCode";
    goto LABEL_14;
  }

  query = self->_query;
  if (query)
  {
    v20[0] = @"countryCode";
    v20[1] = @"query";
    v21[0] = countryCode;
    v21[1] = query;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v12 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:&unk_1F23B47F0 queryParameters:v11 appleAccountInformation:v8];
    [v12 setHTTPMethod:@"GET"];

    v13 = [v12 copy];
    goto LABEL_16;
  }

  v12 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v15 = NSStringFromClass(v18);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "_query";
    goto LABEL_14;
  }

LABEL_15:
  v13 = 0;
LABEL_16:

  return v13;
}

@end