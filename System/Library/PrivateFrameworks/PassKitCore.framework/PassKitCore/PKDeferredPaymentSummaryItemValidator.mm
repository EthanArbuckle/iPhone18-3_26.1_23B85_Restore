@interface PKDeferredPaymentSummaryItemValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKDeferredPaymentSummaryItemValidator)initWithDeferredPaymentSummaryItem:(id)a3;
@end

@implementation PKDeferredPaymentSummaryItemValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDeferredPaymentSummaryItem:v3];

  return v4;
}

- (PKDeferredPaymentSummaryItemValidator)initWithDeferredPaymentSummaryItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKDeferredPaymentSummaryItemValidator;
  return [(PKPaymentSummaryItemValidator *)&v4 initWithPaymentSummaryItem:a3];
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKDeferredPaymentSummaryItemValidator;
  if ([PKPaymentSummaryItemValidator isValidWithAPIType:sel_isValidWithAPIType_withError_ withError:?])
  {
    v7 = [(PKPaymentSummaryItemValidator *)self item];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = [(PKPaymentSummaryItemValidator *)self item];
    v9 = objc_opt_class();
    v10 = _PKPaymentValidateProperty(v8, @"deferredDate", v9, 1, a3, a4);

    if (v10)
    {
      v7 = [(PKPaymentSummaryItemValidator *)self item];
      v11 = [v7 deferredDate];
      if (!v11 || (v12 = v11, [MEMORY[0x1E695DF00] now], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "deferredDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "compare:", v14), v14, v13, v12, v15 != 1))
      {
        LOBYTE(a4) = 1;
        goto LABEL_14;
      }

      if (!a4)
      {
LABEL_14:

        return a4;
      }

      if ((a3 - 1) >= 2)
      {
        v16 = @"PKDeferredPaymentSummaryItem";
      }

      else
      {
        v16 = @"Deferred line item";
      }

      v17 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ must have a deferredDate later than current date", v16];
      v23[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a4 = [v17 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v19];

LABEL_11:
      LOBYTE(a4) = 0;
      goto LABEL_14;
    }
  }

  LOBYTE(a4) = 0;
  return a4;
}

@end