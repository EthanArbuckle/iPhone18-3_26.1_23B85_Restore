@interface PKRecurringPaymentRequestValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKRecurringPaymentRequestValidator)initWithRecurringPaymentRequest:(id)a3;
@end

@implementation PKRecurringPaymentRequestValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRecurringPaymentRequest:v3];

  return v4;
}

- (PKRecurringPaymentRequestValidator)initWithRecurringPaymentRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKRecurringPaymentRequestValidator;
  v6 = [(PKRecurringPaymentRequestValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recurringPaymentRequest, a3);
  }

  return v7;
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
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
  v9 = _PKPaymentValidateProperty(recurringPaymentRequest, @"paymentDescription", v8, 1, a3, &v41);
  v10 = v41;
  if (v9)
  {
    v11 = self->_recurringPaymentRequest;
    v12 = objc_opt_class();
    v40 = v10;
    v9 = _PKPaymentValidateProperty(v11, @"billingAgreement", v12, 0, a3, &v40);
    v13 = v40;

    if (!v9)
    {
      goto LABEL_10;
    }

    v14 = self->_recurringPaymentRequest;
    v15 = objc_opt_class();
    v39 = v13;
    v9 = _PKPaymentValidateProperty(v14, @"managementURL", v15, 1, a3, &v39);
    v10 = v39;

    if (v9)
    {
      v16 = self->_recurringPaymentRequest;
      v17 = objc_opt_class();
      v38 = v10;
      v9 = _PKPaymentValidateProperty(v16, @"tokenNotificationURL", v17, 0, a3, &v38);
      v13 = v38;

      if (!v9)
      {
        goto LABEL_10;
      }

      v18 = self->_recurringPaymentRequest;
      v19 = objc_opt_class();
      v37 = v13;
      v9 = _PKPaymentValidateProperty(v18, @"regularBilling", v19, 1, a3, &v37);
      v10 = v37;

      if (v9)
      {
        v20 = self->_recurringPaymentRequest;
        v21 = objc_opt_class();
        v36 = v10;
        v9 = _PKPaymentValidateProperty(v20, @"trialBilling", v21, 0, a3, &v36);
        v13 = v36;

        if (v9)
        {
          v22 = [(PKRecurringPaymentRequest *)self->_recurringPaymentRequest regularBilling];
          v23 = [(PKPaymentSummaryItemValidator *)[PKRecurringPaymentSummaryItemValidator alloc] initWithPaymentSummaryItem:v22];
          v24 = [(PKRecurringPaymentRequestValidator *)self currencyCode];
          [(PKPaymentSummaryItemValidator *)v23 setCurrencyCode:v24];

          v35 = v13;
          v9 = [(PKRecurringPaymentSummaryItemValidator *)v23 isValidWithAPIType:a3 withError:&v35];
          v10 = v35;

          goto LABEL_11;
        }

LABEL_10:
        v10 = v13;
      }
    }
  }

LABEL_11:
  v25 = [(PKRecurringPaymentRequest *)self->_recurringPaymentRequest trialBilling];
  v26 = v25;
  if (v9 && v25)
  {
    v27 = [(PKPaymentSummaryItemValidator *)[PKRecurringPaymentSummaryItemValidator alloc] initWithPaymentSummaryItem:v25];
    v28 = [(PKRecurringPaymentRequestValidator *)self currencyCode];
    [(PKPaymentSummaryItemValidator *)v27 setCurrencyCode:v28];

    v34 = v10;
    LOBYTE(v9) = [(PKRecurringPaymentSummaryItemValidator *)v27 isValidWithAPIType:a3 withError:&v34];
    v29 = v34;

    v10 = v29;
  }

  if (a4 && (v9 & 1) == 0)
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v30 setObject:@"Invalid recurring payment request." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v30 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v31 = MEMORY[0x1E696ABC0];
    v32 = [v30 copy];
    *a4 = [v31 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v32];
  }

  return v9;
}

@end