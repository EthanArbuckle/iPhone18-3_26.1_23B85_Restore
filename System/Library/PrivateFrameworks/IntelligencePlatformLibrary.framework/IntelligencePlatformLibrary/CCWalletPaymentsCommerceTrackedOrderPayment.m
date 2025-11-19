@interface CCWalletPaymentsCommerceTrackedOrderPayment
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderPayment)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderPayment)initWithTotalAmount:(id)a3 totalIsoCurrencyCode:(id)a4 transactions:(id)a5 error:(id *)a6;
- (NSArray)transactions;
- (NSString)totalAmount;
- (NSString)totalIsoCurrencyCode;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceTrackedOrderPayment

- (CCWalletPaymentsCommerceTrackedOrderPayment)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v38 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"totalAmount"];
    v10 = [v6 objectForKeyedSubscript:@"totalIsoCurrencyCode"];
    v11 = [v6 objectForKeyedSubscript:@"transactions"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v37 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v26 = 0;
        goto LABEL_21;
      }

      v29 = v14;
      v30 = v9;
      v31 = self;
      v15 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = v12;
      v16 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v12);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            v21 = [CCWalletPaymentsCommerceTrackedOrderTransaction alloc];
            v32 = 0;
            v22 = [(CCWalletPaymentsCommerceTrackedOrderTransaction *)v21 initWithJSONDictionary:v20 error:&v32];
            v23 = v32;
            if (v22)
            {
              v24 = v23 == 0;
            }

            else
            {
              v24 = 0;
            }

            if (!v24)
            {
              v25 = v23;
              CCSetError();

              v26 = 0;
              v9 = v30;
              self = v31;
              v14 = v29;
              goto LABEL_21;
            }

            [v15 addObject:v22];
          }

          v17 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v17);
      }

      v9 = v30;
      self = v31;
      v14 = v29;
    }

    else
    {
      v15 = 0;
      v14 = v8;
    }

    v26 = [[CCWalletPaymentsCommerceTrackedOrderPayment alloc] initWithTotalAmount:v9 totalIsoCurrencyCode:v10 transactions:v15 error:a4];
    v12 = v15;
LABEL_21:

    v8 = v14;
    goto LABEL_22;
  }

  CCSetError();
  v26 = 0;
LABEL_22:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)jsonDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_totalAmount)
  {
    v4 = [(CCWalletPaymentsCommerceTrackedOrderPayment *)self totalAmount];
    [v3 setObject:v4 forKeyedSubscript:@"totalAmount"];
  }

  if (self->_totalIsoCurrencyCode)
  {
    v5 = [(CCWalletPaymentsCommerceTrackedOrderPayment *)self totalIsoCurrencyCode];
    [v3 setObject:v5 forKeyedSubscript:@"totalIsoCurrencyCode"];
  }

  if (self->_transactions)
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(CCWalletPaymentsCommerceTrackedOrderPayment *)self transactions];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"transactions"];
  }

  v13 = [v3 copy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v9 = a3;
  if (self->_totalAmount)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8007 stringValue:self->_totalAmount];
    v9[2](v9, v5);
  }

  if (self->_totalIsoCurrencyCode)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8008 stringValue:self->_totalIsoCurrencyCode];
    v9[2](v9, v6);
  }

  v7 = v9;
  if (self->_transactions)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8009 repeatedSubMessageValue:self->_transactions];
    v9[2](v9, v8);

    v7 = v9;
  }
}

- (NSArray)transactions
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_transactions copyItems:1];

  return v2;
}

- (NSString)totalIsoCurrencyCode
{
  v2 = [(NSString *)self->_totalIsoCurrencyCode copy];

  return v2;
}

- (NSString)totalAmount
{
  v2 = [(NSString *)self->_totalAmount copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v41 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v41];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
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
        goto LABEL_40;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v26 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v27 = [CCWalletPaymentsCommerceTrackedOrderTransaction alloc];
        v42 = 0;
        v28 = [(CCItemMessage *)v27 initWithData:v26 error:&v42];
        v8 = v42;
        if (!v8 && v28)
        {
          [v9 addObject:v28];
        }

        goto LABEL_36;
      }

      if (v23 == 2)
      {
        v24 = CCPBReaderReadStringNoCopy();
        v8 = 0;
        v25 = 24;
      }

      else
      {
        if (v23 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
            goto LABEL_37;
          }

          v29 = objc_opt_class();
          v26 = NSStringFromClass(v29);
          v30 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
LABEL_36:

LABEL_37:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_41;
        }

        v24 = CCPBReaderReadStringNoCopy();
        v8 = 0;
        v25 = 16;
      }

      break;
    }

    v26 = *(&self->super.super.isa + v25);
    *(&self->super.super.isa + v25) = v24;
    goto LABEL_36;
  }

  v9 = 0;
LABEL_40:
  v8 = 0;
LABEL_41:
  v31 = [v9 copy];
  transactions = self->_transactions;
  self->_transactions = v31;

  if (v8)
  {
    CCSetError();
    v33 = 0;
    v34 = v41;
  }

  else
  {
    v35 = MEMORY[0x1E6993AA8];
    v34 = v41;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = *&v5[*v35];
      v39 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }
  }

  return v33;
}

- (CCWalletPaymentsCommerceTrackedOrderPayment)initWithTotalAmount:(id)a3 totalIsoCurrencyCode:(id)a4 transactions:(id)a5 error:(id *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    v37 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_14;
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

LABEL_18:
      v15 = v16;
LABEL_19:
      v26 = [v13 immutableData];
      self = [(CCItemMessage *)self initWithData:v26 error:a6];

      v24 = self;
      goto LABEL_21;
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
  v36 = v15;
  v25 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v25)
  {
    CCSetError();
    v24 = 0;
    v15 = v16;
    goto LABEL_21;
  }

  CCPBDataWriterWriteStringField();
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_5:
  objc_opt_class();
  v35 = v16;
  v17 = CCValidateArrayValues();
  v15 = v16;

  if (v17)
  {
    v29 = a6;
    v30 = self;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        v22 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v31 + 1) + 8 * v22) data];
          CCPBDataWriterWriteDataField();

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v20);
    }

    a6 = v29;
    self = v30;
    goto LABEL_19;
  }

LABEL_14:
  CCSetError();
  v24 = 0;
LABEL_21:

  v27 = *MEMORY[0x1E69E9840];
  return v24;
}

@end