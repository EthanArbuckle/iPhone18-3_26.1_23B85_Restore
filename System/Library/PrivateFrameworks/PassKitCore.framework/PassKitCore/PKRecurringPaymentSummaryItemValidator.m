@interface PKRecurringPaymentSummaryItemValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKRecurringPaymentSummaryItemValidator)initWithRecurringPaymentSummaryItem:(id)a3;
@end

@implementation PKRecurringPaymentSummaryItemValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRecurringPaymentSummaryItem:v3];

  return v4;
}

- (PKRecurringPaymentSummaryItemValidator)initWithRecurringPaymentSummaryItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKRecurringPaymentSummaryItemValidator;
  return [(PKPaymentSummaryItemValidator *)&v4 initWithPaymentSummaryItem:a3];
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKRecurringPaymentSummaryItemValidator_isValidWithAPIType_withError___block_invoke;
  aBlock[3] = &__block_descriptor_40_e27___NSError_16__0__NSString_8l;
  aBlock[4] = a3;
  v7 = _Block_copy(aBlock);
  v25.receiver = self;
  v25.super_class = PKRecurringPaymentSummaryItemValidator;
  if ([(PKPaymentSummaryItemValidator *)&v25 isValidWithAPIType:a3 withError:a4])
  {
    v8 = [(PKPaymentSummaryItemValidator *)self item];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v9 = [(PKPaymentSummaryItemValidator *)self item];
    v10 = objc_opt_class();
    if (!_PKPaymentValidateProperty(v9, @"startDate", v10, 0, a3, a4))
    {
      goto LABEL_19;
    }

    v11 = [(PKPaymentSummaryItemValidator *)self item];
    v12 = objc_opt_class();
    v13 = _PKPaymentValidateProperty(v11, @"endDate", v12, 0, a3, a4);

    if (v13)
    {
      v8 = [(PKPaymentSummaryItemValidator *)self item];
      v9 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F23B51B0, &unk_1F23B51C8, &unk_1F23B51E0, &unk_1F23B51F8, &unk_1F23B5210, 0}];
      if ([v8 intervalCount] > 0)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "intervalUnit")}];
        v15 = [v9 containsObject:v14];

        if ((v15 & 1) == 0)
        {
          if (a4)
          {
            v7[2](v7, @"must have a valid intervalUnit: year, month, day, hour or minute");
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v16 = [v8 startDate];
        if (v16)
        {
          v17 = v16;
          v18 = [v8 endDate];
          if (v18)
          {
            v19 = v18;
            v20 = [v8 startDate];
            v21 = [v8 endDate];
            v22 = [v20 compare:v21];

            if (v22 == 1)
            {
              if (a4)
              {
                v7[2](v7, @"must have a startDate earlier than or equal to endDate");
LABEL_18:
                *a4 = v23 = 0;
LABEL_20:

                goto LABEL_21;
              }

              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v23 = 1;
        goto LABEL_20;
      }

      if (a4)
      {
        v7[2](v7, @"must have a intervalCount >= 1");
        goto LABEL_18;
      }

LABEL_19:
      v23 = 0;
      goto LABEL_20;
    }
  }

  v23 = 0;
LABEL_22:

  return v23;
}

id __71__PKRecurringPaymentSummaryItemValidator_isValidWithAPIType_withError___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) - 1) >= 2)
  {
    v2 = @"PKRecurringPaymentSummaryItem";
  }

  else
  {
    v2 = @"Recurring line item";
  }

  v3 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v2, a2];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v5];

  return v6;
}

@end