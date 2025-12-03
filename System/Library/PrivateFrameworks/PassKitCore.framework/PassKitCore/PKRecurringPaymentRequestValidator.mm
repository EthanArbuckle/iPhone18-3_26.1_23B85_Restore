@interface PKRecurringPaymentRequestValidator
+ (id)validatorWithObject:(id)object;
- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error;
- (PKRecurringPaymentRequestValidator)initWithRecurringPaymentRequest:(id)request;
@end

@implementation PKRecurringPaymentRequestValidator

+ (id)validatorWithObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithRecurringPaymentRequest:objectCopy];

  return v4;
}

- (PKRecurringPaymentRequestValidator)initWithRecurringPaymentRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = PKRecurringPaymentRequestValidator;
  v6 = [(PKRecurringPaymentRequestValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recurringPaymentRequest, request);
  }

  return v7;
}

- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  recurringPaymentRequest = self->_recurringPaymentRequest;
  v8 = objc_opt_class();
  v41 = 0;
  v9 = _PKPaymentValidateProperty(recurringPaymentRequest, @"paymentDescription", v8, 1, type, &v41);
  v10 = v41;
  if (v9)
  {
    v11 = self->_recurringPaymentRequest;
    v12 = objc_opt_class();
    v40 = v10;
    v9 = _PKPaymentValidateProperty(v11, @"billingAgreement", v12, 0, type, &v40);
    v13 = v40;

    if (!v9)
    {
      goto LABEL_10;
    }

    v14 = self->_recurringPaymentRequest;
    v15 = objc_opt_class();
    v39 = v13;
    v9 = _PKPaymentValidateProperty(v14, @"managementURL", v15, 1, type, &v39);
    v10 = v39;

    if (v9)
    {
      v16 = self->_recurringPaymentRequest;
      v17 = objc_opt_class();
      v38 = v10;
      v9 = _PKPaymentValidateProperty(v16, @"tokenNotificationURL", v17, 0, type, &v38);
      v13 = v38;

      if (!v9)
      {
        goto LABEL_10;
      }

      v18 = self->_recurringPaymentRequest;
      v19 = objc_opt_class();
      v37 = v13;
      v9 = _PKPaymentValidateProperty(v18, @"regularBilling", v19, 1, type, &v37);
      v10 = v37;

      if (v9)
      {
        v20 = self->_recurringPaymentRequest;
        v21 = objc_opt_class();
        v36 = v10;
        v9 = _PKPaymentValidateProperty(v20, @"trialBilling", v21, 0, type, &v36);
        v13 = v36;

        if (v9)
        {
          regularBilling = [(PKRecurringPaymentRequest *)self->_recurringPaymentRequest regularBilling];
          v23 = [(PKPaymentSummaryItemValidator *)[PKRecurringPaymentSummaryItemValidator alloc] initWithPaymentSummaryItem:regularBilling];
          currencyCode = [(PKRecurringPaymentRequestValidator *)self currencyCode];
          [(PKPaymentSummaryItemValidator *)v23 setCurrencyCode:currencyCode];

          v35 = v13;
          v9 = [(PKRecurringPaymentSummaryItemValidator *)v23 isValidWithAPIType:type withError:&v35];
          v10 = v35;

          goto LABEL_11;
        }

LABEL_10:
        v10 = v13;
      }
    }
  }

LABEL_11:
  trialBilling = [(PKRecurringPaymentRequest *)self->_recurringPaymentRequest trialBilling];
  v26 = trialBilling;
  if (v9 && trialBilling)
  {
    v27 = [(PKPaymentSummaryItemValidator *)[PKRecurringPaymentSummaryItemValidator alloc] initWithPaymentSummaryItem:trialBilling];
    currencyCode2 = [(PKRecurringPaymentRequestValidator *)self currencyCode];
    [(PKPaymentSummaryItemValidator *)v27 setCurrencyCode:currencyCode2];

    v34 = v10;
    LOBYTE(v9) = [(PKRecurringPaymentSummaryItemValidator *)v27 isValidWithAPIType:type withError:&v34];
    v29 = v34;

    v10 = v29;
  }

  if (error && (v9 & 1) == 0)
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v30 setObject:@"Invalid recurring payment request." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v30 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v31 = MEMORY[0x1E696ABC0];
    v32 = [v30 copy];
    *error = [v31 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v32];
  }

  return v9;
}

@end