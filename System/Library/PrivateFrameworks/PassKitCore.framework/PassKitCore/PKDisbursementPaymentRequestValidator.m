@interface PKDisbursementPaymentRequestValidator
+ (id)validatorWithObject:(id)a3;
+ (id)validatorWithObject:(id)a3 shouldSkipValidation:(BOOL)a4;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKDisbursementPaymentRequestValidator)initWithDisbursementPaymentRequest:(id)a3 shouldSkipSummaryItemValidation:(BOOL)a4;
@end

@implementation PKDisbursementPaymentRequestValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() validatorWithObject:v3 shouldSkipValidation:0];

  return v4;
}

+ (id)validatorWithObject:(id)a3 shouldSkipValidation:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithDisbursementPaymentRequest:v5 shouldSkipSummaryItemValidation:v4];

  return v6;
}

- (PKDisbursementPaymentRequestValidator)initWithDisbursementPaymentRequest:(id)a3 shouldSkipSummaryItemValidation:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKDisbursementPaymentRequestValidator;
  v8 = [(PKDisbursementPaymentRequestValidator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_disbursementPaymentRequest, a3);
    v9->_shouldSkipSummaryItemValidation = a4;
  }

  return v9;
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_shouldSkipSummaryItemValidation)
    {
      v7 = 0;
      v8 = 0;
      v9 = 1;
      goto LABEL_20;
    }

    v10 = [(PKPaymentRequest *)self->_disbursementPaymentRequest paymentSummaryItems];
    v11 = [v10 firstObject];
    v12 = objc_opt_class();
    LOBYTE(v12) = [v12 isEqual:objc_opt_class()];

    if (v12)
    {
      v13 = [v10 lastObject];
      v14 = objc_opt_class();
      LOBYTE(v14) = [v14 isEqual:objc_opt_class()];

      if (v14)
      {
        v15 = [(PKPaymentRequest *)self->_disbursementPaymentRequest merchantCapabilities];
        v16 = [v10 pk_firstObjectPassingTest:&__block_literal_global_145];
        v17 = v16;
        v18 = v16 != 0;
        if ((v15 & 0x80) == 0 || v16)
        {
          v7 = 0;
          if ((v15 & 0x80) != 0 || !v16)
          {
LABEL_25:

            if (((v15 >> 7) & 1) == v18)
            {
              v26 = [v10 pk_objectsPassingTest:&__block_literal_global_419];
              if ([v26 count] < 2)
              {

                v26 = [v10 pk_objectsPassingTest:&__block_literal_global_421];
                if ([v26 count] < 2)
                {

                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __70__PKDisbursementPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_4;
                  aBlock[3] = &unk_1E79DA3F0;
                  aBlock[4] = self;
                  v29 = _Block_copy(aBlock);
                  disbursementPaymentRequest = self->_disbursementPaymentRequest;
                  v31 = objc_opt_class();
                  v32 = 0;
                  v9 = _PKPaymentValidatePropertyArray(disbursementPaymentRequest, @"paymentSummaryItems", v31, v29, 1, a3, &v32);
                  v8 = v32;

LABEL_15:
                  if (!a4)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_16;
                }

                v27 = &PKDisbursementRequestValidationErrorMultipleDisbursementSummaryItems;
              }

              else
              {
                v27 = PKDisbursementRequestValidationErrorMultipleIFOSummaryItems;
              }

              v28 = *v27;

              v9 = 0;
              v8 = 0;
              v7 = v28;
              goto LABEL_15;
            }

LABEL_14:
            v9 = 0;
            v8 = 0;
            goto LABEL_15;
          }

          v19 = PKDisbursementRequestValidationErrorIFOSummaryItemButNoIFOCapability;
        }

        else
        {
          v19 = PKDisbursementRequestValidationErrorIFOCapabilityButNoIFOSummaryItem;
        }

        v7 = *v19;
        goto LABEL_25;
      }

      v20 = PKDisbursementRequestValidationErrorFinalSummaryItemNotDisbursementSummaryItem;
    }

    else
    {
      v20 = PKDisbursementRequestValidationErrorFirstSummaryItemNotPaymentSummaryItem;
    }

    v7 = *v20;
    goto LABEL_14;
  }

  v9 = 0;
  v7 = 0;
  v8 = 0;
  if (!a4)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((v9 & 1) == 0)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = *MEMORY[0x1E696A578];
    [v21 setObject:@"Invalid Disbursement request" forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (!v8)
    {
      v23 = MEMORY[0x1E696ABC0];
      v34 = v22;
      v35[0] = v7;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v8 = [v23 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v24];
    }

    [v21 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v21];

    v9 = 0;
  }

LABEL_20:

  return v9;
}

uint64_t __70__PKDisbursementPaymentRequestValidator_isValidWithAPIType_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __70__PKDisbursementPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __70__PKDisbursementPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __70__PKDisbursementPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(a1 + 32) + 24);
    v4 = v6;
    v5 = [v3 currencyCode];
    [v4 setCurrencyCode:v5];
  }
}

@end