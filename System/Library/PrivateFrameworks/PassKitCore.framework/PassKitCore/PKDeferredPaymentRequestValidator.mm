@interface PKDeferredPaymentRequestValidator
+ (id)validatorWithObject:(id)object;
- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error;
- (PKDeferredPaymentRequestValidator)initWithDeferredPaymentRequest:(id)request;
@end

@implementation PKDeferredPaymentRequestValidator

+ (id)validatorWithObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithDeferredPaymentRequest:objectCopy];

  return v4;
}

- (PKDeferredPaymentRequestValidator)initWithDeferredPaymentRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = PKDeferredPaymentRequestValidator;
  v6 = [(PKDeferredPaymentRequestValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deferredPaymentRequest, request);
  }

  return v7;
}

- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = 0;
    v10 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  deferredPaymentRequest = self->_deferredPaymentRequest;
  v8 = objc_opt_class();
  v45 = 0;
  v9 = _PKPaymentValidateProperty(deferredPaymentRequest, @"paymentDescription", v8, 1, type, &v45);
  v10 = v45;
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = self->_deferredPaymentRequest;
  v12 = objc_opt_class();
  v44 = v10;
  v13 = _PKPaymentValidateProperty(v11, @"billingAgreement", v12, 0, type, &v44);
  v14 = v44;

  if (!v13)
  {
    goto LABEL_17;
  }

  v15 = self->_deferredPaymentRequest;
  v16 = objc_opt_class();
  v43 = v14;
  v17 = _PKPaymentValidateProperty(v15, @"managementURL", v16, 1, type, &v43);
  v10 = v43;

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = self->_deferredPaymentRequest;
  v19 = objc_opt_class();
  v42 = v10;
  v20 = _PKPaymentValidateProperty(v18, @"tokenNotificationURL", v19, 0, type, &v42);
  v14 = v42;

  if (!v20)
  {
LABEL_17:
    v35 = 0;
    v10 = v14;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v21 = self->_deferredPaymentRequest;
  v22 = objc_opt_class();
  v41 = v14;
  v23 = _PKPaymentValidateProperty(v21, @"deferredBilling", v22, 1, type, &v41);
  v10 = v41;

  if (!v23)
  {
LABEL_15:
    v35 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  deferredBilling = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest deferredBilling];
  v25 = [(PKPaymentSummaryItemValidator *)[PKDeferredPaymentSummaryItemValidator alloc] initWithPaymentSummaryItem:deferredBilling];
  currencyCode = [(PKDeferredPaymentRequestValidator *)self currencyCode];
  [(PKPaymentSummaryItemValidator *)v25 setCurrencyCode:currencyCode];

  v40 = v10;
  LODWORD(currencyCode) = [(PKDeferredPaymentSummaryItemValidator *)v25 isValidWithAPIType:type withError:&v40];
  v27 = v40;

  if (currencyCode)
  {
    freeCancellationDate = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest freeCancellationDate];
    v29 = freeCancellationDate != 0;

    freeCancellationDateTimeZone = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest freeCancellationDateTimeZone];

    if ((v29 ^ (freeCancellationDateTimeZone == 0)))
    {
      deferredBilling2 = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest deferredBilling];
      deferredDate = [deferredBilling2 deferredDate];

      freeCancellationDate2 = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest freeCancellationDate];
      v34 = freeCancellationDate2;
      v35 = 1;
      if (deferredDate && freeCancellationDate2 && [deferredDate compare:freeCancellationDate2] == -1)
      {
        v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v36 setObject:@"A deferred payment request's deferred billing date cannot be before its freeCancellationDate" forKey:*MEMORY[0x1E696A578]];
        v37 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v36];

        v35 = 0;
        v27 = v37;
      }
    }

    else
    {
      deferredDate = objc_alloc_init(MEMORY[0x1E695DF90]);
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:deferredDate];
      v35 = 0;
      v27 = v34 = v27;
    }
  }

  else
  {
    v35 = 0;
  }

  v10 = v27;
  if (error)
  {
LABEL_18:
    if (!v35)
    {
      v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v38 setObject:@"Invalid deferred payment request" forKey:*MEMORY[0x1E696A578]];
      if (v10)
      {
        [v38 setObject:v10 forKey:*MEMORY[0x1E696AA08]];
      }

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v38];
    }
  }

LABEL_22:

  return v35;
}

@end