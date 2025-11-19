@interface PKPeerPaymentQuoteCertificatesRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentQuoteCertificatesRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v22 = v15;
    v23 = 2082;
    v24 = "url";
LABEL_11:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_12;
  }

  if (!v7)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    *buf = 138543618;
    v22 = v15;
    v23 = 2082;
    v24 = "appleAccountInformation";
    goto LABEL_11;
  }

  destination = self->_destination;
  if (destination)
  {
    v19 = @"destination";
    v10 = PKPeerPaymentQuoteRequestDestinationTypeToString(destination);
    v20 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v12 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:&unk_1F23B4760 queryParameters:v11 appleAccountInformation:v8, v19];
    [v12 setHTTPMethod:@"GET"];
    v13 = [v12 copy];

    goto LABEL_13;
  }

  v11 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v15 = NSStringFromClass(v17);
    *buf = 138543618;
    v22 = v15;
    v23 = 2082;
    v24 = "_destination";
    goto LABEL_11;
  }

LABEL_12:
  v13 = 0;
LABEL_13:

  return v13;
}

@end