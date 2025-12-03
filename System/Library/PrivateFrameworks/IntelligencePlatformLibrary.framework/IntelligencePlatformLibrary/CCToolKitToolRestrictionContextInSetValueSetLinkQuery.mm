@interface CCToolKitToolRestrictionContextInSetValueSetLinkQuery
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)initWithParameterKey:(id)key queryIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier error:(id *)error;
- (NSString)actionIdentifier;
- (NSString)parameterKey;
- (NSString)queryIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolRestrictionContextInSetValueSetLinkQuery

- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"parameterKey"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"queryIdentifier"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"actionIdentifier"];
    v12 = [[CCToolKitToolRestrictionContextInSetValueSetLinkQuery alloc] initWithParameterKey:v9 queryIdentifier:v10 actionIdentifier:v11 error:error];
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
  if (self->_parameterKey)
  {
    parameterKey = [(CCToolKitToolRestrictionContextInSetValueSetLinkQuery *)self parameterKey];
    [v3 setObject:parameterKey forKeyedSubscript:@"parameterKey"];
  }

  if (self->_queryIdentifier)
  {
    queryIdentifier = [(CCToolKitToolRestrictionContextInSetValueSetLinkQuery *)self queryIdentifier];
    [v3 setObject:queryIdentifier forKeyedSubscript:@"queryIdentifier"];
  }

  if (self->_actionIdentifier)
  {
    actionIdentifier = [(CCToolKitToolRestrictionContextInSetValueSetLinkQuery *)self actionIdentifier];
    [v3 setObject:actionIdentifier forKeyedSubscript:@"actionIdentifier"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_parameterKey)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_parameterKey];
    v11[2](v11, v7);
  }

  if (self->_queryIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_queryIdentifier];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_actionIdentifier)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_actionIdentifier];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSString)actionIdentifier
{
  v2 = [(NSString *)self->_actionIdentifier copy];

  return v2;
}

- (NSString)queryIdentifier
{
  v2 = [(NSString *)self->_queryIdentifier copy];

  return v2;
}

- (NSString)parameterKey
{
  v2 = [(NSString *)self->_parameterKey copy];

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
    goto LABEL_36;
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
            goto LABEL_37;
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
        goto LABEL_37;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 6)
      {
        v24 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v25 = 32;
      }

      else if (v23 == 5)
      {
        v24 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v25 = 24;
      }

      else
      {
        if (v23 != 4)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
LABEL_29:
            if (*&v6[*v7] < *&v6[*v8])
            {
              continue;
            }

            break;
          }

          v27 = objc_opt_class();
          v26 = NSStringFromClass(v27);
          v28 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_28:

          goto LABEL_29;
        }

        v24 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v25 = 16;
      }

      v26 = *(&self->super.super.isa + v25);
      *(&self->super.super.isa + v25) = v24;
      goto LABEL_28;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_38;
  }

LABEL_36:
  if (!*&v6[*v9])
  {
    v32 = 1;
    goto LABEL_40;
  }

LABEL_37:
  v29 = objc_opt_class();
  v10 = NSStringFromClass(v29);
  v30 = *&v6[*v9];
  v31 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_38:
  v32 = 0;
LABEL_40:

  return v32;
}

- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)initWithParameterKey:(id)key queryIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier error:(id *)error
{
  keyCopy = key;
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  v13 = objc_opt_new();
  if (keyCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
    if (!identifierCopy)
    {
LABEL_4:
      v16 = v15;
      if (actionIdentifierCopy)
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
    if (!identifierCopy)
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
  if (!actionIdentifierCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    CCPBDataWriterWriteStringField();
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