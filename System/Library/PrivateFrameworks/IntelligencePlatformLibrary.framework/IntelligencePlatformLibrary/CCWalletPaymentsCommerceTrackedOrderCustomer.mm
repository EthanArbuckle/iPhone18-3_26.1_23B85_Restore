@interface CCWalletPaymentsCommerceTrackedOrderCustomer
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletPaymentsCommerceTrackedOrderAddress)billingAddress;
- (CCWalletPaymentsCommerceTrackedOrderCustomer)initWithFullName:(id)name phoneNumber:(id)number emailAddress:(id)address billingAddress:(id)billingAddress error:(id *)error;
- (CCWalletPaymentsCommerceTrackedOrderCustomer)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSString)emailAddress;
- (NSString)fullName;
- (NSString)phoneNumber;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletPaymentsCommerceTrackedOrderCustomer

- (CCWalletPaymentsCommerceTrackedOrderCustomer)initWithJSONDictionary:(id)dictionary error:(id *)error
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
    v12 = [dictionaryCopy objectForKeyedSubscript:@"billingAddress"];
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

    v17 = [[CCWalletPaymentsCommerceTrackedOrderCustomer alloc] initWithFullName:v9 phoneNumber:v10 emailAddress:v11 billingAddress:v14 error:error];
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
    fullName = [(CCWalletPaymentsCommerceTrackedOrderCustomer *)self fullName];
    [v3 setObject:fullName forKeyedSubscript:@"fullName"];
  }

  if (self->_phoneNumber)
  {
    phoneNumber = [(CCWalletPaymentsCommerceTrackedOrderCustomer *)self phoneNumber];
    [v3 setObject:phoneNumber forKeyedSubscript:@"phoneNumber"];
  }

  if (self->_emailAddress)
  {
    emailAddress = [(CCWalletPaymentsCommerceTrackedOrderCustomer *)self emailAddress];
    [v3 setObject:emailAddress forKeyedSubscript:@"emailAddress"];
  }

  if (self->_billingAddress)
  {
    billingAddress = [(CCWalletPaymentsCommerceTrackedOrderCustomer *)self billingAddress];
    jsonDictionary = [billingAddress jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"billingAddress"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_fullName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7997 stringValue:self->_fullName];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_phoneNumber)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7998 stringValue:self->_phoneNumber];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_emailAddress)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7999 stringValue:self->_emailAddress];
    blockCopy[2](blockCopy, v7);
  }

  v8 = blockCopy;
  if (self->_billingAddress)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8000 subMessageValue:self->_billingAddress];
    blockCopy[2](blockCopy, v9);

    v8 = blockCopy;
  }
}

- (CCWalletPaymentsCommerceTrackedOrderAddress)billingAddress
{
  v2 = [(CCWalletPaymentsCommerceTrackedOrderAddress *)self->_billingAddress copy];

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
          v26 = [CCWalletPaymentsCommerceTrackedOrderAddress alloc];
          v27 = CCPBReaderReadDataNoCopy();
          v38 = 0;
          v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v38];
          v10 = v38;
          billingAddress = self->_billingAddress;
          self->_billingAddress = v28;

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

- (CCWalletPaymentsCommerceTrackedOrderCustomer)initWithFullName:(id)name phoneNumber:(id)number emailAddress:(id)address billingAddress:(id)billingAddress error:(id *)error
{
  nameCopy = name;
  numberCopy = number;
  addressCopy = address;
  billingAddressCopy = billingAddress;
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
      if (!billingAddressCopy)
      {
        goto LABEL_14;
      }

LABEL_12:
      objc_opt_class();
      v22 = CCValidateIsInstanceOfExpectedClass();
      v19 = v18;

      if (v22)
      {
        data = [billingAddressCopy data];
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
  if (billingAddressCopy)
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