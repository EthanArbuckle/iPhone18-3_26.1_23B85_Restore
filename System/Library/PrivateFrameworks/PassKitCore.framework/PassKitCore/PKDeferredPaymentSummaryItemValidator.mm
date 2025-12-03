@interface PKDeferredPaymentSummaryItemValidator
+ (id)validatorWithObject:(id)object;
- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error;
- (PKDeferredPaymentSummaryItemValidator)initWithDeferredPaymentSummaryItem:(id)item;
@end

@implementation PKDeferredPaymentSummaryItemValidator

+ (id)validatorWithObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithDeferredPaymentSummaryItem:objectCopy];

  return v4;
}

- (PKDeferredPaymentSummaryItemValidator)initWithDeferredPaymentSummaryItem:(id)item
{
  v4.receiver = self;
  v4.super_class = PKDeferredPaymentSummaryItemValidator;
  return [(PKPaymentSummaryItemValidator *)&v4 initWithPaymentSummaryItem:item];
}

- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKDeferredPaymentSummaryItemValidator;
  if ([PKPaymentSummaryItemValidator isValidWithAPIType:sel_isValidWithAPIType_withError_ withError:?])
  {
    item = [(PKPaymentSummaryItemValidator *)self item];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    item2 = [(PKPaymentSummaryItemValidator *)self item];
    v9 = objc_opt_class();
    v10 = _PKPaymentValidateProperty(item2, @"deferredDate", v9, 1, type, error);

    if (v10)
    {
      item = [(PKPaymentSummaryItemValidator *)self item];
      deferredDate = [item deferredDate];
      if (!deferredDate || (v12 = deferredDate, [MEMORY[0x1E695DF00] now], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(item, "deferredDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "compare:", v14), v14, v13, v12, v15 != 1))
      {
        LOBYTE(error) = 1;
        goto LABEL_14;
      }

      if (!error)
      {
LABEL_14:

        return error;
      }

      if ((type - 1) >= 2)
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
      *error = [v17 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v19];

LABEL_11:
      LOBYTE(error) = 0;
      goto LABEL_14;
    }
  }

  LOBYTE(error) = 0;
  return error;
}

@end