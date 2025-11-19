@interface CCWalletPaymentsCommerceTrackedOrderShippingRecipient
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCWalletPaymentsCommerceTrackedOrderAddress)address;
- (CCWalletPaymentsCommerceTrackedOrderShippingRecipient)initWithFullName:(id)a3 phoneNumber:(id)a4 emailAddress:(id)a5 address:(id)a6 error:(id *)a7;
- (CCWalletPaymentsCommerceTrackedOrderShippingRecipient)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSString)emailAddress;
- (NSString)fullName;
- (NSString)phoneNumber;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCWalletPaymentsCommerceTrackedOrderShippingRecipient

- (CCWalletPaymentsCommerceTrackedOrderShippingRecipient)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v19[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"fullName"];
    v10 = [v6 objectForKeyedSubscript:@"phoneNumber"];
    v11 = [v6 objectForKeyedSubscript:@"emailAddress"];
    v12 = [v6 objectForKeyedSubscript:@"address"];
    if (v12)
    {
      v13 = v12;
      v19[0] = 0;
      v14 = [[CCWalletPaymentsCommerceTrackedOrderAddress alloc] initWithJSONDictionary:v12 error:v19];
      v15 = v19[0];
      v16 = v15;
      if (!v14 || v15)
      {
        CCSetError();

        v17 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = [[CCWalletPaymentsCommerceTrackedOrderShippingRecipient alloc] initWithFullName:v9 phoneNumber:v10 emailAddress:v11 address:v14 error:a4];
    v13 = v14;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v17 = 0;
LABEL_11:

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_fullName)
  {
    v4 = [(CCWalletPaymentsCommerceTrackedOrderShippingRecipient *)self fullName];
    [v3 setObject:v4 forKeyedSubscript:@"fullName"];
  }

  if (self->_phoneNumber)
  {
    v5 = [(CCWalletPaymentsCommerceTrackedOrderShippingRecipient *)self phoneNumber];
    [v3 setObject:v5 forKeyedSubscript:@"phoneNumber"];
  }

  if (self->_emailAddress)
  {
    v6 = [(CCWalletPaymentsCommerceTrackedOrderShippingRecipient *)self emailAddress];
    [v3 setObject:v6 forKeyedSubscript:@"emailAddress"];
  }

  if (self->_address)
  {
    v7 = [(CCWalletPaymentsCommerceTrackedOrderShippingRecipient *)self address];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"address"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v10 = a3;
  if (self->_fullName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7987 stringValue:self->_fullName];
    v10[2](v10, v5);
  }

  if (self->_phoneNumber)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7988 stringValue:self->_phoneNumber];
    v10[2](v10, v6);
  }

  if (self->_emailAddress)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7989 stringValue:self->_emailAddress];
    v10[2](v10, v7);
  }

  v8 = v10;
  if (self->_address)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7990 subMessageValue:self->_address];
    v10[2](v10, v9);

    v8 = v10;
  }
}

- (CCWalletPaymentsCommerceTrackedOrderAddress)address
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderAddress *)self->_address copy];

  return v2;
}

- (NSString)emailAddress
{
  v2 = [(NSString *)self->_emailAddress copy];

  return v2;
}

- (NSString)phoneNumber
{
  v2 = [(NSString *)self->_phoneNumber copy];

  return v2;
}

- (NSString)fullName
{
  v2 = [(NSString *)self->_fullName copy];

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
    goto LABEL_39;
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 32;
          goto LABEL_32;
        }

        if (v23 == 4)
        {
          v26 = [CCWalletPaymentsCommerceTrackedOrderAddress alloc];
          v27 = CCPBReaderReadDataNoCopy();
          v38 = 0;
          v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v38];
          v10 = v38;
          address = self->_address;
          self->_address = v28;

          goto LABEL_33;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 16;
          goto LABEL_32;
        }

        if (v23 == 2)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 24;
LABEL_32:
          v27 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;
          goto LABEL_33;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_34;
      }

      v30 = objc_opt_class();
      v27 = NSStringFromClass(v30);
      v31 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_33:

LABEL_34:
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
    goto LABEL_41;
  }

LABEL_39:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v36 = 1;
    goto LABEL_43;
  }

LABEL_40:
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = *&v6[*v9];
  v35 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_41:
  v36 = 0;
LABEL_43:

  return v36;
}

- (CCWalletPaymentsCommerceTrackedOrderShippingRecipient)initWithFullName:(id)a3 phoneNumber:(id)a4 emailAddress:(id)a5 address:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_opt_new();
  if (v12)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v18 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_16;
    }

    v27 = a7;
    CCPBDataWriterWriteStringField();
    if (!v13)
    {
LABEL_4:
      v19 = v18;
      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v27 = a7;
    v18 = 0;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v21 = CCValidateIsInstanceOfExpectedClass();
  v19 = v18;

  if (!v21)
  {
    goto LABEL_15;
  }

  CCPBDataWriterWriteStringField();
  if (v14)
  {
LABEL_5:
    objc_opt_class();
    v20 = CCValidateIsInstanceOfExpectedClass();
    v18 = v19;

    if (v20)
    {
      CCPBDataWriterWriteStringField();
      if (!v15)
      {
        goto LABEL_14;
      }

LABEL_12:
      objc_opt_class();
      v22 = CCValidateIsInstanceOfExpectedClass();
      v19 = v18;

      if (v22)
      {
        v23 = [v15 data];
        CCPBDataWriterWriteDataField();

        v18 = v19;
        goto LABEL_14;
      }

LABEL_15:
      CCSetError();
      v25 = 0;
      v18 = v19;
      goto LABEL_17;
    }

LABEL_16:
    CCSetError();
    v25 = 0;
    goto LABEL_17;
  }

LABEL_11:
  v18 = v19;
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_14:
  v24 = [v16 immutableData];
  self = [(CCItemMessage *)self initWithData:v24 error:v27];

  v25 = self;
LABEL_17:

  return v25;
}

@end