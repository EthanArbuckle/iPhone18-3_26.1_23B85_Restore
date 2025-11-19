@interface CCWalletPaymentsCommerceTrackedOrderTransaction
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderTransaction)initWithAmount:(id)a3 isoCurrencyCode:(id)a4 paymentMethod:(id)a5 transactionIdenifier:(id)a6 error:(id *)a7;
- (CCWalletPaymentsCommerceTrackedOrderTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)paymentMethod;
- (NSString)amount;
- (NSString)isoCurrencyCode;
- (NSString)transactionIdenifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceTrackedOrderTransaction

- (CCWalletPaymentsCommerceTrackedOrderTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v18[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"amount"];
    v10 = [v6 objectForKeyedSubscript:@"isoCurrencyCode"];
    v11 = [v6 objectForKeyedSubscript:@"paymentMethod"];
    if (v11)
    {
      v12 = v11;
      v18[0] = 0;
      v13 = [[CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod alloc] initWithJSONDictionary:v11 error:v18];
      v14 = v18[0];
      v15 = v14;
      if (!v13 || v14)
      {
        CCSetError();

        v16 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"transactionIdenifier"];
    v16 = [[CCWalletPaymentsCommerceTrackedOrderTransaction alloc] initWithAmount:v9 isoCurrencyCode:v10 paymentMethod:v13 transactionIdenifier:v15 error:a4];
    v12 = v13;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v16 = 0;
LABEL_11:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_amount)
  {
    v4 = [(CCWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
    [v3 setObject:v4 forKeyedSubscript:@"amount"];
  }

  if (self->_isoCurrencyCode)
  {
    v5 = [(CCWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
    [v3 setObject:v5 forKeyedSubscript:@"isoCurrencyCode"];
  }

  if (self->_paymentMethod)
  {
    v6 = [(CCWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"paymentMethod"];
  }

  if (self->_transactionIdenifier)
  {
    v8 = [(CCWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
    [v3 setObject:v8 forKeyedSubscript:@"transactionIdenifier"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v10 = a3;
  if (self->_amount)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8010 stringValue:self->_amount];
    v10[2](v10, v5);
  }

  if (self->_isoCurrencyCode)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8011 stringValue:self->_isoCurrencyCode];
    v10[2](v10, v6);
  }

  if (self->_paymentMethod)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8012 subMessageValue:self->_paymentMethod];
    v10[2](v10, v7);
  }

  v8 = v10;
  if (self->_transactionIdenifier)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8016 stringValue:self->_transactionIdenifier];
    v10[2](v10, v9);

    v8 = v10;
  }
}

- (NSString)transactionIdenifier
{
  v2 = [(NSString *)self->_transactionIdenifier copy];

  return v2;
}

- (CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)paymentMethod
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self->_paymentMethod copy];

  return v2;
}

- (NSString)isoCurrencyCode
{
  v2 = [(NSString *)self->_isoCurrencyCode copy];

  return v2;
}

- (NSString)amount
{
  v2 = [(NSString *)self->_amount copy];

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
    goto LABEL_38;
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
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_39;
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
        goto LABEL_39;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v27 = [CCWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod alloc];
          v26 = CCPBReaderReadDataNoCopy();
          v38 = 0;
          v28 = [(CCItemMessage *)v27 initWithData:v26 error:&v38];
          v10 = v38;
          paymentMethod = self->_paymentMethod;
          self->_paymentMethod = v28;

          goto LABEL_34;
        }

        if (v23 == 4)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 40;
          goto LABEL_31;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 16;
          goto LABEL_31;
        }

        if (v23 == 2)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 24;
LABEL_31:
          v26 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;
          goto LABEL_34;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_35;
      }

      v30 = objc_opt_class();
      v26 = NSStringFromClass(v30);
      v31 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_34:

LABEL_35:
      if (*&v6[*v7] < *&v6[*v8])
      {
        continue;
      }
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_40;
  }

LABEL_38:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v36 = 1;
    goto LABEL_42;
  }

LABEL_39:
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = *&v6[*v9];
  v35 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_40:
  v36 = 0;
LABEL_42:

  return v36;
}

- (CCWalletPaymentsCommerceTrackedOrderTransaction)initWithAmount:(id)a3 isoCurrencyCode:(id)a4 paymentMethod:(id)a5 transactionIdenifier:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_opt_new();
  v17 = 0x1E696A000uLL;
  if (v12)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v19 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

    CCPBDataWriterWriteStringField();
    if (!v13)
    {
LABEL_4:
      v20 = v19;
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_12:
      v19 = v20;
      if (!v15)
      {
LABEL_15:
        v27 = [v16 immutableData];
        self = [(CCItemMessage *)self initWithData:v27 error:a7];

        v23 = self;
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v24 = CCValidateIsInstanceOfExpectedClass();
  v20 = v19;

  if (!v24)
  {
    goto LABEL_16;
  }

  CCPBDataWriterWriteStringField();
  v17 = 0x1E696A000uLL;
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  v21 = CCValidateIsInstanceOfExpectedClass();
  v19 = v20;

  if (v21)
  {
    v22 = [v14 data];
    CCPBDataWriterWriteDataField();

    v17 = 0x1E696A000;
    if (!v15)
    {
      goto LABEL_15;
    }

LABEL_13:
    v25 = *(v17 + 3776);
    objc_opt_class();
    v29 = v19;
    v26 = CCValidateIsInstanceOfExpectedClass();
    v20 = v19;

    if (v26)
    {
      CCPBDataWriterWriteStringField();
      v19 = v20;
      goto LABEL_15;
    }

LABEL_16:
    CCSetError();
    v23 = 0;
    v19 = v20;
    goto LABEL_17;
  }

LABEL_8:
  CCSetError();
  v23 = 0;
LABEL_17:

  return v23;
}

@end