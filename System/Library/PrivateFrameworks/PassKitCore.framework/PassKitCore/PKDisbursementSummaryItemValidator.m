@interface PKDisbursementSummaryItemValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKDisbursementSummaryItemValidator)initWithDisbursementSummaryItem:(id)a3;
@end

@implementation PKDisbursementSummaryItemValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDisbursementSummaryItem:v3];

  return v4;
}

- (PKDisbursementSummaryItemValidator)initWithDisbursementSummaryItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKDisbursementSummaryItemValidator;
  return [(PKPaymentSummaryItemValidator *)&v4 initWithPaymentSummaryItem:a3];
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKDisbursementSummaryItemValidator;
  v6 = [(PKPaymentSummaryItemValidator *)&v16 isValidWithAPIType:a3 withError:?];
  v7 = [(PKPaymentSummaryItemValidator *)self item];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 amount];
    v10 = [v9 pk_isNegativeNumber];

    if (!v10)
    {
      v13 = 0;
      LOBYTE(a4) = 1;
      goto LABEL_8;
    }

    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"PKDisbursementSummaryItem amount must be non-negative";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v12];

    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = 0;
  if (a4)
  {
LABEL_6:
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:@"PKDisbursementSummaryItem has an invalid amount" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v14];

    LOBYTE(a4) = 0;
  }

LABEL_8:

  return a4;
}

@end