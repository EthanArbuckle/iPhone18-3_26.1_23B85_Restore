@interface PKPaymentOfferWebServiceCatalogRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKPaymentOfferWebServiceCatalogRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  baseURL = self->_baseURL;
  if (baseURL)
  {
    if (v4)
    {
      v15 = @"paymentOfferCatalog";
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      v8 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:v5];

      [v8 setHTTPMethod:@"GET"];
      [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      v9 = PKPaymentOfferCatalogUpdateReasonToString(self->_updateReason);
      [v8 setValue:v9 forHTTPHeaderField:@"X-Apple-Catalog-Update-Reason"];

      v10 = [v8 copy];
      goto LABEL_10;
    }

    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v12 = NSStringFromClass(v13);
      *buf = 138543618;
      v17 = v12;
      v18 = 2082;
      v19 = "appleAccountInformation";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v17 = v12;
      v18 = 2082;
      v19 = "_baseURL";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

@end