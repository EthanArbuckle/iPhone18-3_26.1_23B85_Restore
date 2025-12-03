@interface PKAutomaticReloadPaymentRequestValidator
+ (id)validatorWithObject:(id)object;
- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error;
- (PKAutomaticReloadPaymentRequestValidator)initWithAutomaticReloadPaymentRequest:(id)request;
@end

@implementation PKAutomaticReloadPaymentRequestValidator

+ (id)validatorWithObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithAutomaticReloadPaymentRequest:objectCopy];

  return v4;
}

- (PKAutomaticReloadPaymentRequestValidator)initWithAutomaticReloadPaymentRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = PKAutomaticReloadPaymentRequestValidator;
  v6 = [(PKAutomaticReloadPaymentRequestValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_automaticReloadPaymentRequest, request);
  }

  return v7;
}

- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error
{
  requestType = [(PKAutomaticReloadPaymentRequestValidator *)self requestType];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = 0;
    v11 = 0;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  automaticReloadPaymentRequest = self->_automaticReloadPaymentRequest;
  v9 = objc_opt_class();
  v38 = 0;
  v10 = _PKPaymentValidateProperty(automaticReloadPaymentRequest, @"paymentDescription", v9, 1, type, &v38);
  v11 = v38;
  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = self->_automaticReloadPaymentRequest;
  v13 = objc_opt_class();
  v37 = v11;
  v14 = _PKPaymentValidateProperty(v12, @"billingAgreement", v13, 0, type, &v37);
  v15 = v37;

  if (!v14)
  {
    v29 = 0;
    v11 = v15;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v16 = requestType != 8;
  v17 = self->_automaticReloadPaymentRequest;
  v18 = objc_opt_class();
  v36 = v15;
  LODWORD(v17) = _PKPaymentValidateProperty(v17, @"managementURL", v18, v16, type, &v36);
  v11 = v36;

  if (!v17)
  {
    goto LABEL_11;
  }

  v19 = self->_automaticReloadPaymentRequest;
  v20 = objc_opt_class();
  v35 = v11;
  v21 = _PKPaymentValidateProperty(v19, @"tokenNotificationURL", v20, 0, type, &v35);
  v22 = v35;

  if (v21)
  {
    v23 = self->_automaticReloadPaymentRequest;
    v24 = objc_opt_class();
    v34 = v22;
    v25 = _PKPaymentValidateProperty(v23, @"automaticReloadBilling", v24, 1, type, &v34);
    v11 = v34;

    if (v25)
    {
      automaticReloadBilling = [(PKAutomaticReloadPaymentRequest *)self->_automaticReloadPaymentRequest automaticReloadBilling];
      v27 = [(PKPaymentSummaryItemValidator *)[PKAutomaticReloadPaymentSummaryItemValidator alloc] initWithPaymentSummaryItem:automaticReloadBilling];
      currencyCode = [(PKAutomaticReloadPaymentRequestValidator *)self currencyCode];
      [(PKPaymentSummaryItemValidator *)v27 setCurrencyCode:currencyCode];

      v33 = v11;
      v29 = [(PKAutomaticReloadPaymentSummaryItemValidator *)v27 isValidWithAPIType:type withError:&v33];
      v30 = v33;

      v11 = v30;
      if (!error)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

LABEL_11:
    v29 = 0;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v29 = 0;
  v11 = v22;
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!v29)
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v31 setObject:@"Invalid automatic reload payment request" forKey:*MEMORY[0x1E696A578]];
    if (v11)
    {
      [v31 setObject:v11 forKey:*MEMORY[0x1E696AA08]];
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v31];
  }

LABEL_18:

  return v29;
}

@end