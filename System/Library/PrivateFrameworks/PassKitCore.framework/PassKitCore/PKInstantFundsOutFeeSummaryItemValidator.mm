@interface PKInstantFundsOutFeeSummaryItemValidator
+ (id)validatorWithObject:(id)object;
- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error;
- (PKInstantFundsOutFeeSummaryItemValidator)initWithInstantFundsOutFeeSummaryItem:(id)item;
@end

@implementation PKInstantFundsOutFeeSummaryItemValidator

+ (id)validatorWithObject:(id)object
{
  objectCopy = object;
  v4 = [objc_alloc(objc_opt_class()) initWithInstantFundsOutFeeSummaryItem:objectCopy];

  return v4;
}

- (PKInstantFundsOutFeeSummaryItemValidator)initWithInstantFundsOutFeeSummaryItem:(id)item
{
  v4.receiver = self;
  v4.super_class = PKInstantFundsOutFeeSummaryItemValidator;
  return [(PKPaymentSummaryItemValidator *)&v4 initWithPaymentSummaryItem:item];
}

- (BOOL)isValidWithAPIType:(int64_t)type withError:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKInstantFundsOutFeeSummaryItemValidator;
  v6 = [(PKPaymentSummaryItemValidator *)&v16 isValidWithAPIType:type withError:?];
  item = [(PKPaymentSummaryItemValidator *)self item];
  v8 = item;
  if (v6)
  {
    amount = [item amount];
    pk_isNegativeNumber = [amount pk_isNegativeNumber];

    if (!pk_isNegativeNumber)
    {
      v13 = 0;
      LOBYTE(error) = 1;
      goto LABEL_8;
    }

    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"PKInstantFundsOutFeeSummaryItem amount must be non-negative";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v12];

    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = 0;
  if (error)
  {
LABEL_6:
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:@"PKInstantFundsOutFeeSummaryItem has an invalid amount" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v14];

    LOBYTE(error) = 0;
  }

LABEL_8:

  return error;
}

@end