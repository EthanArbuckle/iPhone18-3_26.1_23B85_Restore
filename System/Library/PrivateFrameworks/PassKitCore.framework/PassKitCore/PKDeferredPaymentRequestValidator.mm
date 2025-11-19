@interface PKDeferredPaymentRequestValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKDeferredPaymentRequestValidator)initWithDeferredPaymentRequest:(id)a3;
@end

@implementation PKDeferredPaymentRequestValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDeferredPaymentRequest:v3];

  return v4;
}

- (PKDeferredPaymentRequestValidator)initWithDeferredPaymentRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKDeferredPaymentRequestValidator;
  v6 = [(PKDeferredPaymentRequestValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deferredPaymentRequest, a3);
  }

  return v7;
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  deferredPaymentRequest = self->_deferredPaymentRequest;
  v8 = objc_opt_class();
  v45 = 0;
  v9 = _PKPaymentValidateProperty(deferredPaymentRequest, @"paymentDescription", v8, 1, a3, &v45);
  v10 = v45;
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = self->_deferredPaymentRequest;
  v12 = objc_opt_class();
  v44 = v10;
  v13 = _PKPaymentValidateProperty(v11, @"billingAgreement", v12, 0, a3, &v44);
  v14 = v44;

  if (!v13)
  {
    goto LABEL_17;
  }

  v15 = self->_deferredPaymentRequest;
  v16 = objc_opt_class();
  v43 = v14;
  v17 = _PKPaymentValidateProperty(v15, @"managementURL", v16, 1, a3, &v43);
  v10 = v43;

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = self->_deferredPaymentRequest;
  v19 = objc_opt_class();
  v42 = v10;
  v20 = _PKPaymentValidateProperty(v18, @"tokenNotificationURL", v19, 0, a3, &v42);
  v14 = v42;

  if (!v20)
  {
LABEL_17:
    v35 = 0;
    v10 = v14;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v21 = self->_deferredPaymentRequest;
  v22 = objc_opt_class();
  v41 = v14;
  v23 = _PKPaymentValidateProperty(v21, @"deferredBilling", v22, 1, a3, &v41);
  v10 = v41;

  if (!v23)
  {
LABEL_15:
    v35 = 0;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v24 = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest deferredBilling];
  v25 = [(PKPaymentSummaryItemValidator *)[PKDeferredPaymentSummaryItemValidator alloc] initWithPaymentSummaryItem:v24];
  v26 = [(PKDeferredPaymentRequestValidator *)self currencyCode];
  [(PKPaymentSummaryItemValidator *)v25 setCurrencyCode:v26];

  v40 = v10;
  LODWORD(v26) = [(PKDeferredPaymentSummaryItemValidator *)v25 isValidWithAPIType:a3 withError:&v40];
  v27 = v40;

  if (v26)
  {
    v28 = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest freeCancellationDate];
    v29 = v28 != 0;

    v30 = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest freeCancellationDateTimeZone];

    if ((v29 ^ (v30 == 0)))
    {
      v31 = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest deferredBilling];
      v32 = [v31 deferredDate];

      v33 = [(PKDeferredPaymentRequest *)self->_deferredPaymentRequest freeCancellationDate];
      v34 = v33;
      v35 = 1;
      if (v32 && v33 && [v32 compare:v33] == -1)
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
      v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v32];
      v35 = 0;
      v27 = v34 = v27;
    }
  }

  else
  {
    v35 = 0;
  }

  v10 = v27;
  if (a4)
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

      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v38];
    }
  }

LABEL_22:

  return v35;
}

@end