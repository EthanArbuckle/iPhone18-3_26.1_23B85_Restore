@interface PKPaymentTokenContextValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (PKPaymentTokenContextValidator)initWithPaymentTokenContext:(id)a3;
@end

@implementation PKPaymentTokenContextValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPaymentTokenContext:v3];

  return v4;
}

- (PKPaymentTokenContextValidator)initWithPaymentTokenContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentTokenContextValidator;
  v6 = [(PKPaymentTokenContextValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    context = self->_context;
    v8 = objc_opt_class();
    v40 = 0;
    v9 = _PKPaymentValidateProperty(context, @"merchantIdentifier", v8, 1, a3, &v40);
    v10 = v40;
    if (v9)
    {
      v11 = self->_context;
      v12 = objc_opt_class();
      v39 = v10;
      v13 = _PKPaymentValidateProperty(v11, @"externalIdentifier", v12, 1, a3, &v39);
      v14 = v39;

      if (!v13)
      {
        goto LABEL_12;
      }

      v15 = self->_context;
      v16 = objc_opt_class();
      v38 = v14;
      v17 = _PKPaymentValidateProperty(v15, @"merchantName", v16, 1, a3, &v38);
      v10 = v38;

      if (v17)
      {
        v18 = self->_context;
        v19 = objc_opt_class();
        v37 = v10;
        v20 = _PKPaymentValidateProperty(v18, @"merchantDomain", v19, 0, a3, &v37);
        v14 = v37;

        if (v20)
        {
          v21 = self->_context;
          v22 = objc_opt_class();
          v36 = v14;
          v23 = _PKPaymentValidateProperty(v21, @"amount", v22, 1, a3, &v36);
          v10 = v36;

          if (v23)
          {
            v24 = [(PKPaymentTokenContext *)self->_context amount];
            v25 = [MEMORY[0x1E696AB90] notANumber];
            v26 = [v24 isEqualToNumber:v25];

            if ((v26 & 1) == 0)
            {
              v31 = [(PKPaymentTokenContextValidator *)self currencyCode];

              if (!v31)
              {
                IsValidCurrencyAmount = 1;
                goto LABEL_18;
              }

              v32 = [(PKPaymentTokenContext *)self->_context amount];
              v33 = [(PKPaymentTokenContextValidator *)self currencyCode];
              v35 = v10;
              IsValidCurrencyAmount = _PKPaymentIsValidCurrencyAmount(v32, v33, &v35);
              v34 = v35;

              v10 = v34;
              if (!a4)
              {
                goto LABEL_18;
              }

              goto LABEL_13;
            }
          }

          goto LABEL_8;
        }

LABEL_12:
        IsValidCurrencyAmount = 0;
        v10 = v14;
        if (!a4)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

LABEL_8:
    IsValidCurrencyAmount = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  IsValidCurrencyAmount = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((IsValidCurrencyAmount & 1) == 0)
  {
    if ((a3 - 1) >= 2)
    {
      v28 = @"PKPaymentTokenContext invalid";
    }

    else
    {
      v28 = @"Payment token context invalid";
    }

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v29 setObject:v28 forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v29 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v29];

    IsValidCurrencyAmount = 0;
  }

LABEL_18:

  return IsValidCurrencyAmount;
}

@end