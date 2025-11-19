@interface PKPeerPaymentRecurringPaymentActionRequest
- (PKPeerPaymentRecurringPaymentActionRequest)initWithRecurringPaymentIdentifier:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentRecurringPaymentActionRequest

- (PKPeerPaymentRecurringPaymentActionRequest)initWithRecurringPaymentIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentRecurringPaymentActionRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recurringPaymentIdentifier, a3);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "url";
LABEL_16:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_17;
  }

  if (!v7)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    *buf = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_16;
  }

  recurringPaymentIdentifier = self->_recurringPaymentIdentifier;
  if (!recurringPaymentIdentifier)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v20 = objc_opt_class();
    v18 = NSStringFromClass(v20);
    *buf = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "_recurringPaymentIdentifier";
    goto LABEL_16;
  }

  if (!self->_action)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v18 = NSStringFromClass(v21);
      *buf = 138543618;
      v25 = v18;
      v26 = 2082;
      v27 = "_action";
      goto LABEL_16;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v23[0] = @"recurringPayment";
  v23[1] = recurringPaymentIdentifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v11 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:v10 queryParameters:0 appleAccountInformation:v8];

  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v12;
  action = self->_action;
  if (action)
  {
    [v12 setObject:action forKey:@"action"];
  }

  v15 = [objc_opt_class() _HTTPBodyWithDictionary:v13];
  [v11 setHTTPBody:v15];

  v16 = [v11 copy];
LABEL_18:

  return v16;
}

@end