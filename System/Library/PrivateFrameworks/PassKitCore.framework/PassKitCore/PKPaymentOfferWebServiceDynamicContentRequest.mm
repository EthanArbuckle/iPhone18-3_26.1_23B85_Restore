@interface PKPaymentOfferWebServiceDynamicContentRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKPaymentOfferWebServiceDynamicContentRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v26 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v23 = v17;
    v24 = 2082;
    v25 = "_baseURL";
LABEL_13:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_14;
  }

  if (!self->_criteriaIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    *buf = 138543618;
    v23 = v17;
    v24 = 2082;
    v25 = "_criteriaIdentifier";
    goto LABEL_13;
  }

  if (!informationCopy)
  {
    v6 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v17 = NSStringFromClass(v19);
      *buf = 138543618;
      v23 = v17;
      v24 = 2082;
      v25 = "appleAccountInformation";
      goto LABEL_13;
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  v6 = PKPaymentOffersSessionDetailsContextToString(self->_context);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:@"context"];
  baseURL = self->_baseURL;
  criteriaIdentifier = self->_criteriaIdentifier;
  v21[0] = @"paymentOfferDynamicContent";
  v21[1] = criteriaIdentifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v11 = [(PKPaymentOfferWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v10 queryParameters:v7 appleAccountInformation:v5];

  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [(NSArray *)self->_types pk_createArrayBySafelyApplyingBlock:&__block_literal_global_99];
  [v12 setObject:v13 forKeyedSubscript:@"types"];

  if (v12)
  {
    v14 = [objc_opt_class() _HTTPBodyWithDictionary:v12];
    [v11 setHTTPBody:v14];
  }

  v15 = [v11 copy];

LABEL_15:

  return v15;
}

__CFString *__88__PKPaymentOfferWebServiceDynamicContentRequest__urlRequestWithAppleAccountInformation___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return PKPaymentOfferDynamicContentPageTypeToString(v2);
}

@end