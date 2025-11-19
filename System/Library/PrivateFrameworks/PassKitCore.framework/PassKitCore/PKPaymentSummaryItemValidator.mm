@interface PKPaymentSummaryItemValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKPaymentSummaryItemValidator)initWithPaymentSummaryItem:(id)a3;
@end

@implementation PKPaymentSummaryItemValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKRecurringPaymentSummaryItemValidator;
LABEL_11:
    v5 = [(__objc2_class *)v4 validatorWithObject:v3];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKDeferredPaymentSummaryItemValidator;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKAutomaticReloadPaymentSummaryItemValidator;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKDisbursementSummaryItemValidator;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKInstantFundsOutFeeSummaryItemValidator;
    goto LABEL_11;
  }

  v5 = [objc_alloc(objc_opt_class()) initWithPaymentSummaryItem:v3];
LABEL_12:
  v6 = v5;

  return v6;
}

- (PKPaymentSummaryItemValidator)initWithPaymentSummaryItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentSummaryItemValidator;
  v6 = [(PKPaymentSummaryItemValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = [(PKPaymentSummaryItem *)self->_item amount];
  v9 = [MEMORY[0x1E696AB90] notANumber];
  v10 = [v8 isEqualToNumber:v9];

  if ((isKindOfClass & 1) == 0)
  {
    if (!a4)
    {
      IsValidCurrencyAmount = 0;
      v14 = 0;
      goto LABEL_24;
    }

    if ((a3 - 1) >= 2)
    {
      v16 = @"PKPaymentSummaryItem has an invalid label or amount property";
    }

    else
    {
      v16 = @"Line item has an invalid label or amount";
    }

    goto LABEL_15;
  }

  item = self->_item;
  v12 = objc_opt_class();
  v34 = 0;
  v13 = _PKPaymentValidateProperty(item, @"label", v12, 1, a3, &v34);
  v14 = v34;
  if (v10 & 1 | ((v13 & 1) == 0))
  {
    IsValidCurrencyAmount = 0;
  }

  else
  {
    if ([(PKPaymentSummaryItem *)self->_item type])
    {
      IsValidCurrencyAmount = 1;
      goto LABEL_24;
    }

    v25 = self->_item;
    v26 = objc_opt_class();
    v33 = v14;
    v27 = _PKPaymentValidateProperty(v25, @"amount", v26, 1, a3, &v33);
    v28 = v33;

    if (v27)
    {
      v29 = [(PKPaymentSummaryItemValidator *)self currencyCode];

      if (!v29)
      {
        IsValidCurrencyAmount = 1;
        v14 = v28;
        goto LABEL_24;
      }

      v30 = [(PKPaymentSummaryItem *)self->_item amount];
      v31 = [(PKPaymentSummaryItemValidator *)self currencyCode];
      v32 = v28;
      IsValidCurrencyAmount = _PKPaymentIsValidCurrencyAmount(v30, v31, &v32);
      v14 = v32;
    }

    else
    {
      IsValidCurrencyAmount = 0;
      v14 = v28;
    }
  }

  if (a4 && (IsValidCurrencyAmount & 1) == 0)
  {
    if ((a3 - 1) >= 2)
    {
      v16 = @"PKPaymentSummaryItem has an invalid label or amount property";
    }

    else
    {
      v16 = @"Line item has an invalid label or amount";
    }

    if (v14)
    {
      v17 = *MEMORY[0x1E696A578];
LABEL_20:
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696AA08];
      v35[0] = v17;
      v35[1] = v22;
      v36[0] = v16;
      v36[1] = v14;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      *a4 = [v21 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v23];

      IsValidCurrencyAmount = 0;
      goto LABEL_24;
    }

LABEL_15:
    v18 = @"Unknown error occurred";
    if (v10)
    {
      v18 = @"Item's amount is not a valid decimal number";
    }

    if ((isKindOfClass & 1) == 0)
    {
      v18 = @"Item is not a kind of PKPaymentSymmaryItem";
    }

    v19 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v37 = *MEMORY[0x1E696A578];
    v38[0] = v18;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v14 = [v19 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v20];

    goto LABEL_20;
  }

LABEL_24:

  return IsValidCurrencyAmount;
}

@end