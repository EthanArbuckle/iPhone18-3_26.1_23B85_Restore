@interface PKAutomaticReloadPaymentSummaryItemValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKAutomaticReloadPaymentSummaryItemValidator)initWithAutomaticReloadPaymentSummaryItem:(id)a3;
@end

@implementation PKAutomaticReloadPaymentSummaryItemValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithAutomaticReloadPaymentSummaryItem:v3];

  return v4;
}

- (PKAutomaticReloadPaymentSummaryItemValidator)initWithAutomaticReloadPaymentSummaryItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKAutomaticReloadPaymentSummaryItemValidator;
  return [(PKPaymentSummaryItemValidator *)&v4 initWithPaymentSummaryItem:a3];
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PKAutomaticReloadPaymentSummaryItemValidator;
  if (![PKPaymentSummaryItemValidator isValidWithAPIType:sel_isValidWithAPIType_withError_ withError:?])
  {
    LOBYTE(v9) = 0;
    v10 = 0;
LABEL_8:
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v7 = [(PKPaymentSummaryItemValidator *)self item];
  v8 = objc_opt_class();
  v27 = 0;
  v9 = _PKPaymentValidateProperty(v7, @"thresholdAmount", v8, 1, a3, &v27);
  v10 = v27;

  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = [(PKPaymentSummaryItemValidator *)self currencyCode];

  if (!v11)
  {
    LOBYTE(v9) = 1;
    goto LABEL_14;
  }

  v12 = [(PKPaymentSummaryItemValidator *)self item];
  v13 = [v12 thresholdAmount];
  v14 = [(PKPaymentSummaryItemValidator *)self currencyCode];
  v26 = v10;
  IsValidCurrencyAmount = _PKPaymentIsValidCurrencyAmount(v13, v14, &v26);
  v16 = v26;

  if (IsValidCurrencyAmount)
  {
    v17 = [v12 thresholdAmount];
    v18 = [MEMORY[0x1E696AB90] notANumber];
    v19 = [v17 isEqualToNumber:v18];

    if (v19)
    {
      v20 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v30[0] = @"PKAutomaticReloadPaymentSummaryItem thresholdAmount value can't be NaN";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v22 = [v20 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v21];

      LOBYTE(v9) = 0;
      v16 = v22;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = v16;
  if (a4)
  {
LABEL_9:
    if ((v9 & 1) == 0)
    {
      if ((a3 - 1) >= 2)
      {
        v23 = @"PKAutomaticReloadPaymentSummaryItem has an invalid amount";
      }

      else
      {
        v23 = @"Automatic reload item has an invalid amount";
      }

      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v24 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A578]];
      [v24 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v24];

      LOBYTE(v9) = 0;
    }
  }

LABEL_14:

  return v9;
}

@end