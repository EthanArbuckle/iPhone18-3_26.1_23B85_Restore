@interface PKShippingMethodValidator
+ (id)validatorWithObject:(id)object;
- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error;
- (PKShippingMethodValidator)initWithShippingMethod:(id)method;
@end

@implementation PKShippingMethodValidator

+ (id)validatorWithObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithShippingMethod:objectCopy];

  return v4;
}

- (PKShippingMethodValidator)initWithShippingMethod:(id)method
{
  v4.receiver = self;
  v4.super_class = PKShippingMethodValidator;
  return [(PKPaymentSummaryItemValidator *)&v4 initWithPaymentSummaryItem:method];
}

- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PKShippingMethodValidator;
  if (![PKPaymentSummaryItemValidator isValidWithAPIType:sel_isValidWithAPIType_withError_ withError:?])
  {
    goto LABEL_9;
  }

  item = [(PKPaymentSummaryItemValidator *)self item];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  item2 = [(PKPaymentSummaryItemValidator *)self item];
  v9 = objc_opt_class();
  if ((_PKPaymentValidateProperty(item2, @"identifier", v9, 1, type, error) & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  item3 = [(PKPaymentSummaryItemValidator *)self item];
  v11 = objc_opt_class();
  v12 = _PKPaymentValidateProperty(item3, @"detail", v11, 0, type, error);

  if (v12)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    item4 = [(PKPaymentSummaryItemValidator *)self item];
    amount = [item4 amount];
    v16 = [zero compare:amount];

    if (v16 != 1)
    {
      return 1;
    }
  }

LABEL_9:
  if (error)
  {
    v18 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    if ((type - 1) >= 2)
    {
      v19 = @"PKShippingMethod";
    }

    else
    {
      v19 = @"Shipping method";
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ must have an identifier and an amount >= 0", v19];
    v24[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v18 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v21];
  }

  return 0;
}

@end