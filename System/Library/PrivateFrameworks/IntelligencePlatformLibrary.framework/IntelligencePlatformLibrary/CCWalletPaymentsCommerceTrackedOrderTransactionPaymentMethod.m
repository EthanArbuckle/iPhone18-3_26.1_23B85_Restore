@interface CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)initWithDisplayName:(id)a3 lastFourDigits:(id)a4 isApplePay:(id)a5 error:(id *)a6;
- (CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSString)displayName;
- (NSString)lastFourDigits;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod

- (CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"displayName"];
    v10 = [v6 objectForKeyedSubscript:@"lastFourDigits"];
    v11 = [v6 objectForKeyedSubscript:@"isApplePay"];
    v12 = [[CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod alloc] initWithDisplayName:v9 lastFourDigits:v10 isApplePay:v11 error:a4];
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_displayName)
  {
    v4 = [(CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self displayName];
    [v3 setObject:v4 forKeyedSubscript:@"displayName"];
  }

  if (self->_lastFourDigits)
  {
    v5 = [(CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self lastFourDigits];
    [v3 setObject:v5 forKeyedSubscript:@"lastFourDigits"];
  }

  if (self->_hasIsApplePay)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod isApplePay](self, "isApplePay")}];
    [v3 setObject:v6 forKeyedSubscript:@"isApplePay"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  if (self->_displayName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8013 stringValue:self->_displayName];
    v8[2](v8, v5);
  }

  if (self->_lastFourDigits)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8014 stringValue:self->_lastFourDigits];
    v8[2](v8, v6);
  }

  if (self->_hasIsApplePay)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8015 BOOLValue:self->_isApplePay];
    v8[2](v8, v7);
  }
}

- (NSString)lastFourDigits
{
  v2 = [(NSString *)self->_lastFourDigits copy];

  return v2;
}

- (NSString)displayName
{
  v2 = [(NSString *)self->_displayName copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_48;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_49;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_49;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 1)
      {
        v32 = CCPBReaderReadStringNoCopy();
        v33 = 24;
      }

      else
      {
        if (v23 != 2)
        {
          if (v23 == 3)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              v27 = *v7;
              v28 = *&v6[v27];
              v29 = v28 + 1;
              if (v28 == -1 || v29 > *&v6[*v8])
              {
                break;
              }

              v30 = *(*&v6[*v11] + v28);
              *&v6[v27] = v29;
              v26 |= (v30 & 0x7F) << v24;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_38;
              }

              v24 += 7;
              v20 = v25++ >= 9;
              if (v20)
              {
                v31 = 0;
                goto LABEL_44;
              }
            }

            *&v6[*v9] = 1;
LABEL_38:
            if (*&v6[*v9])
            {
              v39 = 1;
            }

            else
            {
              v39 = v26 == 0;
            }

            v31 = !v39;
LABEL_44:
            v10 = 0;
            self->_isApplePay = v31;
            self->_hasIsApplePay = 1;
LABEL_45:
            if (*&v6[*v7] < *&v6[*v8])
            {
              continue;
            }

            break;
          }

          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v35 = objc_opt_class();
            NSStringFromClass(v35);
            v37 = v36 = v5;
            v38 = *&v6[*v9];
            v10 = CCSkipFieldErrorForMessage();

            v5 = v36;
            goto LABEL_45;
          }

LABEL_34:
          v10 = 0;
          goto LABEL_45;
        }

        v32 = CCPBReaderReadStringNoCopy();
        v33 = 32;
      }

      v34 = *(&self->super.super.isa + v33);
      *(&self->super.super.isa + v33) = v32;

      goto LABEL_34;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_50;
  }

LABEL_48:
  if (!*&v6[*v9])
  {
    v43 = 1;
    goto LABEL_52;
  }

LABEL_49:
  v40 = objc_opt_class();
  v10 = NSStringFromClass(v40);
  v41 = *&v6[*v9];
  v42 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_50:
  v43 = 0;
LABEL_52:

  return v43;
}

- (CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)initWithDisplayName:(id)a3 lastFourDigits:(id)a4 isApplePay:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
    if (!v11)
    {
LABEL_4:
      v16 = v15;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = v16;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v19)
  {
    CCSetError();
    v18 = 0;
    v15 = v16;
    goto LABEL_14;
  }

  CCPBDataWriterWriteStringField();
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    [v12 BOOLValue];
    CCPBDataWriterWriteBOOLField();
LABEL_12:
    v20 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v20 error:a6];

    v18 = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  v18 = 0;
LABEL_14:

  return v18;
}

@end