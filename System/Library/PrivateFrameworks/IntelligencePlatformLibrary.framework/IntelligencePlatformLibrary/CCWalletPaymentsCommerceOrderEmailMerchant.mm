@interface CCWalletPaymentsCommerceOrderEmailMerchant
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletPaymentsCommerceOrderEmailMerchant)initWithDisplayName:(id)name error:(id *)error;
- (CCWalletPaymentsCommerceOrderEmailMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSString)displayName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletPaymentsCommerceOrderEmailMerchant

- (CCWalletPaymentsCommerceOrderEmailMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    v10 = [[CCWalletPaymentsCommerceOrderEmailMerchant alloc] initWithDisplayName:v9 error:error];
  }

  else
  {
    CCSetError();
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_displayName)
  {
    displayName = [(CCWalletPaymentsCommerceOrderEmailMerchant *)self displayName];
    [v3 setObject:displayName forKeyedSubscript:@"displayName"];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  if (self->_displayName)
  {
    v6 = MEMORY[0x1E69939F0];
    blockCopy = block;
    v8 = [[v6 alloc] initWithFieldType:8025 stringValue:self->_displayName];
    (*(block + 2))(blockCopy, v8);
  }
}

- (NSString)displayName
{
  v2 = [(NSString *)self->_displayName copy];

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
    goto LABEL_30;
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
            goto LABEL_31;
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
        goto LABEL_31;
      }

LABEL_21:
      if ((v21 >> 3) == 1)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        displayName = self->_displayName;
        self->_displayName = v23;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_27;
        }

        v25 = objc_opt_class();
        displayName = NSStringFromClass(v25);
        v26 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

LABEL_27:
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
    goto LABEL_32;
  }

LABEL_30:
  if (!*&v6[*v9])
  {
    v30 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v27 = objc_opt_class();
  v10 = NSStringFromClass(v27);
  v28 = *&v6[*v9];
  v29 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_32:
  v30 = 0;
LABEL_34:

  return v30;
}

- (CCWalletPaymentsCommerceOrderEmailMerchant)initWithDisplayName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = objc_opt_new();
  if (nameCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v9 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v9 = 0;
  }

  immutableData = [v7 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

@end