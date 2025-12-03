@interface CCWalletPaymentsCommerceOrderEmailShippingRecipient
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletPaymentsCommerceOrderEmailAddress)address;
- (CCWalletPaymentsCommerceOrderEmailShippingRecipient)initWithFullName:(id)name phoneNumber:(id)number emailAddress:(id)address address:(id)a6 error:(id *)error;
- (CCWalletPaymentsCommerceOrderEmailShippingRecipient)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSString)emailAddress;
- (NSString)fullName;
- (NSString)phoneNumber;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletPaymentsCommerceOrderEmailShippingRecipient

- (CCWalletPaymentsCommerceOrderEmailShippingRecipient)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v19[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"fullName"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumber"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"emailAddress"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    if (v12)
    {
      v13 = v12;
      v19[0] = 0;
      v14 = [[CCWalletPaymentsCommerceOrderEmailAddress alloc] initWithJSONDictionary:v12 error:v19];
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

    v17 = [[CCWalletPaymentsCommerceOrderEmailShippingRecipient alloc] initWithFullName:v9 phoneNumber:v10 emailAddress:v11 address:v14 error:error];
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
    fullName = [(CCWalletPaymentsCommerceOrderEmailShippingRecipient *)self fullName];
    [v3 setObject:fullName forKeyedSubscript:@"fullName"];
  }

  if (self->_phoneNumber)
  {
    phoneNumber = [(CCWalletPaymentsCommerceOrderEmailShippingRecipient *)self phoneNumber];
    [v3 setObject:phoneNumber forKeyedSubscript:@"phoneNumber"];
  }

  if (self->_emailAddress)
  {
    emailAddress = [(CCWalletPaymentsCommerceOrderEmailShippingRecipient *)self emailAddress];
    [v3 setObject:emailAddress forKeyedSubscript:@"emailAddress"];
  }

  if (self->_address)
  {
    address = [(CCWalletPaymentsCommerceOrderEmailShippingRecipient *)self address];
    jsonDictionary = [address jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"address"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v12 = blockCopy;
  if (self->_fullName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_fullName];
    v12[2](v12, v7);
  }

  if (self->_phoneNumber)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_phoneNumber];
    v12[2](v12, v8);
  }

  if (self->_emailAddress)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_emailAddress];
    v12[2](v12, v9);
  }

  v10 = v12;
  if (self->_address)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_address];
    v12[2](v12, v11);

    v10 = v12;
  }
}

- (CCWalletPaymentsCommerceOrderEmailAddress)address
{
  v2 = [(CCWalletPaymentsCommerceOrderEmailAddress *)self->_address copy];

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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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
          v26 = [CCWalletPaymentsCommerceOrderEmailAddress alloc];
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

- (CCWalletPaymentsCommerceOrderEmailShippingRecipient)initWithFullName:(id)name phoneNumber:(id)number emailAddress:(id)address address:(id)a6 error:(id *)error
{
  nameCopy = name;
  numberCopy = number;
  addressCopy = address;
  v15 = a6;
  v16 = objc_opt_new();
  if (nameCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v18 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_16;
    }

    errorCopy2 = error;
    CCPBDataWriterWriteStringField();
    if (!numberCopy)
    {
LABEL_4:
      v19 = v18;
      if (addressCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    errorCopy2 = error;
    v18 = 0;
    if (!numberCopy)
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
  if (addressCopy)
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
        data = [v15 data];
        CCPBDataWriterWriteDataField();

        v18 = v19;
        goto LABEL_14;
      }

LABEL_15:
      CCSetError();
      selfCopy = 0;
      v18 = v19;
      goto LABEL_17;
    }

LABEL_16:
    CCSetError();
    selfCopy = 0;
    goto LABEL_17;
  }

LABEL_11:
  v18 = v19;
  if (v15)
  {
    goto LABEL_12;
  }

LABEL_14:
  immutableData = [v16 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:errorCopy2];

  selfCopy = self;
LABEL_17:

  return selfCopy;
}

@end