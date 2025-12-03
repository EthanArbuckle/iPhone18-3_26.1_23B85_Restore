@interface PKAutomaticReloadPaymentSummaryItemValidator
+ (id)validatorWithObject:(id)object;
- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error;
- (PKAutomaticReloadPaymentSummaryItemValidator)initWithAutomaticReloadPaymentSummaryItem:(id)item;
@end

@implementation PKAutomaticReloadPaymentSummaryItemValidator

+ (id)validatorWithObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithAutomaticReloadPaymentSummaryItem:objectCopy];

  return v4;
}

- (PKAutomaticReloadPaymentSummaryItemValidator)initWithAutomaticReloadPaymentSummaryItem:(id)item
{
  v4.receiver = self;
  v4.super_class = PKAutomaticReloadPaymentSummaryItemValidator;
  return [(PKPaymentSummaryItemValidator *)&v4 initWithPaymentSummaryItem:item];
}

- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PKAutomaticReloadPaymentSummaryItemValidator;
  if (![PKPaymentSummaryItemValidator isValidWithAPIType:sel_isValidWithAPIType_withError_ withError:?])
  {
    LOBYTE(v9) = 0;
    v10 = 0;
LABEL_8:
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  item = [(PKPaymentSummaryItemValidator *)self item];
  v8 = objc_opt_class();
  v27 = 0;
  v9 = _PKPaymentValidateProperty(item, @"thresholdAmount", v8, 1, type, &v27);
  v10 = v27;

  if (!v9)
  {
    goto LABEL_8;
  }

  currencyCode = [(PKPaymentSummaryItemValidator *)self currencyCode];

  if (!currencyCode)
  {
    LOBYTE(v9) = 1;
    goto LABEL_14;
  }

  item2 = [(PKPaymentSummaryItemValidator *)self item];
  thresholdAmount = [item2 thresholdAmount];
  currencyCode2 = [(PKPaymentSummaryItemValidator *)self currencyCode];
  v26 = v10;
  IsValidCurrencyAmount = _PKPaymentIsValidCurrencyAmount(thresholdAmount, currencyCode2, &v26);
  v16 = v26;

  if (IsValidCurrencyAmount)
  {
    thresholdAmount2 = [item2 thresholdAmount];
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v19 = [thresholdAmount2 isEqualToNumber:notANumber];

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
  if (error)
  {
LABEL_9:
    if ((v9 & 1) == 0)
    {
      if ((type - 1) >= 2)
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
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v24];

      LOBYTE(v9) = 0;
    }
  }

LABEL_14:

  return v9;
}

@end