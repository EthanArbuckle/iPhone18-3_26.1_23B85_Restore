@interface CCWalletPassContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCWalletPassContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCWalletPassContent)initWithPassUniqueIdentifier:(id)identifier eventContent:(id)content error:(id *)error;
- (CCWalletPassEventContent)eventContent;
- (NSString)passUniqueIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCWalletPassContent

- (CCWalletPassContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v17[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"passUniqueIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"eventContent"];
    if (v10)
    {
      v11 = v10;
      v17[0] = 0;
      v12 = [[CCWalletPassEventContent alloc] initWithJSONDictionary:v10 error:v17];
      v13 = v17[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();

        v15 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = [[CCWalletPassContent alloc] initWithPassUniqueIdentifier:v9 eventContent:v12 error:error];
    v11 = v12;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v15 = 0;
LABEL_11:

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_passUniqueIdentifier)
  {
    passUniqueIdentifier = [(CCWalletPassContent *)self passUniqueIdentifier];
    [v3 setObject:passUniqueIdentifier forKeyedSubscript:@"passUniqueIdentifier"];
  }

  if (self->_eventContent)
  {
    eventContent = [(CCWalletPassContent *)self eventContent];
    jsonDictionary = [eventContent jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"eventContent"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_passUniqueIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46121 stringValue:self->_passUniqueIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_eventContent)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:46122 subMessageValue:self->_eventContent];
    blockCopy[2](blockCopy, v6);
  }
}

- (CCWalletPassEventContent)eventContent
{
  v2 = [(CCWalletPassEventContent *)self->_eventContent copy];

  return v2;
}

- (NSString)passUniqueIdentifier
{
  v2 = [(NSString *)self->_passUniqueIdentifier copy];

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
    goto LABEL_32;
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
        if (v17 == -1 || v17 >= *&v6[*v8])
        {
          break;
        }

        v18 = *(*&v6[*v11] + v17);
        *&v6[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_33;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v21 = *&v6[*v9];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_33;
      }

LABEL_21:
      if ((v20 >> 3) == 3)
      {
        v24 = [CCWalletPassEventContent alloc];
        passUniqueIdentifier = CCPBReaderReadDataNoCopy();
        v35 = 0;
        v25 = [(CCItemMessage *)v24 initWithData:passUniqueIdentifier error:&v35];
        v10 = v35;
        eventContent = self->_eventContent;
        self->_eventContent = v25;
      }

      else if ((v20 >> 3) == 1)
      {
        v22 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        passUniqueIdentifier = self->_passUniqueIdentifier;
        self->_passUniqueIdentifier = v22;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_29;
        }

        v27 = objc_opt_class();
        passUniqueIdentifier = NSStringFromClass(v27);
        v28 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

LABEL_29:
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
    goto LABEL_34;
  }

LABEL_32:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v33 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = *&v6[*v9];
  v32 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_34:
  v33 = 0;
LABEL_36:

  return v33;
}

- (CCWalletPassContent)initWithPassUniqueIdentifier:(id)identifier eventContent:(id)content error:(id *)error
{
  identifierCopy = identifier;
  contentCopy = content;
  v10 = objc_opt_new();
  if (!identifierCopy)
  {
    v12 = 0;
    if (!contentCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v19 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v14;
      goto LABEL_11;
    }

    data = [contentCopy data];
    CCPBDataWriterWriteDataField();

    v12 = v14;
    goto LABEL_8;
  }

  objc_opt_class();
  v11 = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteStringField();
  if (contentCopy)
  {
    goto LABEL_6;
  }

LABEL_8:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 19416) > 0xCu)
  {
    return 0;
  }

  else
  {
    return off_1E73E7B88[(identifier + 19416)];
  }
}

@end