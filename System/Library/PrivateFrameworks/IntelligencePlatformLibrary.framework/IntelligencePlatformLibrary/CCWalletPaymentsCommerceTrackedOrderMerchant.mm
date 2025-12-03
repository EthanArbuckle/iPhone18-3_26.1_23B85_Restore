@interface CCWalletPaymentsCommerceTrackedOrderMerchant
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletPaymentsCommerceTrackedOrderMerchant)initWithDisplayName:(id)name domainName:(id)domainName displayNameUpdateDate:(id)date error:(id *)error;
- (CCWalletPaymentsCommerceTrackedOrderMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSDate)displayNameUpdateDate;
- (NSString)displayName;
- (NSString)domainName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletPaymentsCommerceTrackedOrderMerchant

- (CCWalletPaymentsCommerceTrackedOrderMerchant)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"domainName"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"displayNameUpdateDate"];
    if (v11)
    {
      objc_opt_class();
      v12 = CCValidateIsInstanceOfExpectedClass();
      v13 = v8;

      if ((v12 & 1) == 0)
      {
        CCSetError();
        v16 = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E695DF00]);
      [v11 doubleValue];
      v15 = [v14 initWithTimeIntervalSinceReferenceDate:?];

      v11 = v15;
    }

    else
    {
      v13 = v8;
    }

    v16 = [[CCWalletPaymentsCommerceTrackedOrderMerchant alloc] initWithDisplayName:v9 domainName:v10 displayNameUpdateDate:v11 error:error];
LABEL_9:

    v8 = v13;
    goto LABEL_10;
  }

  CCSetError();
  v16 = 0;
LABEL_10:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_displayName)
  {
    displayName = [(CCWalletPaymentsCommerceTrackedOrderMerchant *)self displayName];
    [v3 setObject:displayName forKeyedSubscript:@"displayName"];
  }

  if (self->_domainName)
  {
    domainName = [(CCWalletPaymentsCommerceTrackedOrderMerchant *)self domainName];
    [v3 setObject:domainName forKeyedSubscript:@"domainName"];
  }

  if (self->_hasRaw_displayNameUpdateDate)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_displayNameUpdateDate];
    [v3 setObject:v6 forKeyedSubscript:@"displayNameUpdateDate"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_displayName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7971 stringValue:self->_displayName];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_domainName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:7972 stringValue:self->_domainName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_hasRaw_displayNameUpdateDate)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:8035 doubleValue:self->_raw_displayNameUpdateDate];
    blockCopy[2](blockCopy, v7);
  }
}

- (NSDate)displayNameUpdateDate
{
  if (self->_hasRaw_displayNameUpdateDate)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:self->_raw_displayNameUpdateDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)domainName
{
  v2 = [(NSString *)self->_domainName copy];

  return v2;
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
          v22 = *v9;
          if (*&v6[v22])
          {
            goto LABEL_39;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *v9;
      v23 = *&v6[v22];
      if (v23)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v23)
      {
        goto LABEL_39;
      }

LABEL_21:
      v24 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v29 = *v7;
        v30 = *&v6[v29];
        if (v30 <= 0xFFFFFFFFFFFFFFF7 && v30 + 8 <= *&v6[*v8])
        {
          v31 = *(*&v6[*v11] + v30);
          *&v6[v29] = v30 + 8;
        }

        else
        {
          *&v6[v22] = 1;
          v31 = 0.0;
        }

        v10 = 0;
        self->_raw_displayNameUpdateDate = v31;
        self->_hasRaw_displayNameUpdateDate = 1;
      }

      else
      {
        if (v24 == 2)
        {
          v27 = CCPBReaderReadStringNoCopy();
          domainName = self->_domainName;
          self->_domainName = v27;

          v10 = 0;
          goto LABEL_35;
        }

        if (v24 == 1)
        {
          v25 = CCPBReaderReadStringNoCopy();
          displayName = self->_displayName;
          self->_displayName = v25;

LABEL_30:
          v10 = 0;
          goto LABEL_35;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          goto LABEL_30;
        }

        v32 = objc_opt_class();
        NSStringFromClass(v32);
        v34 = v33 = dataCopy;
        v35 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

        dataCopy = v33;
      }

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
    v39 = 1;
    goto LABEL_42;
  }

LABEL_39:
  v36 = objc_opt_class();
  v10 = NSStringFromClass(v36);
  v37 = *&v6[*v9];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_40:
  v39 = 0;
LABEL_42:

  return v39;
}

- (CCWalletPaymentsCommerceTrackedOrderMerchant)initWithDisplayName:(id)name domainName:(id)domainName displayNameUpdateDate:(id)date error:(id *)error
{
  nameCopy = name;
  domainNameCopy = domainName;
  dateCopy = date;
  v13 = objc_opt_new();
  if (nameCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
    if (!domainNameCopy)
    {
LABEL_4:
      v16 = v15;
      if (dateCopy)
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
    if (!domainNameCopy)
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
    selfCopy = 0;
    v15 = v16;
    goto LABEL_14;
  }

  CCPBDataWriterWriteStringField();
  if (!dateCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    CCPBDataWriterWriteDoubleField();
LABEL_12:
    immutableData = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:immutableData error:error];

    selfCopy = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

@end