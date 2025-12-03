@interface CCAppEnumCase
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppEnumCase)initWithCaseIdentifier:(id)identifier displayRepresentation:(id)representation error:(id *)error;
- (CCAppEnumCase)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppEnumCaseDisplayRepresentation)displayRepresentation;
- (NSString)caseIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppEnumCase

- (CCAppEnumCase)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v17[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"caseIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
    if (v10)
    {
      v11 = v10;
      v17[0] = 0;
      v12 = [[CCAppEnumCaseDisplayRepresentation alloc] initWithJSONDictionary:v10 error:v17];
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

    v15 = [[CCAppEnumCase alloc] initWithCaseIdentifier:v9 displayRepresentation:v12 error:error];
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
  if (self->_caseIdentifier)
  {
    caseIdentifier = [(CCAppEnumCase *)self caseIdentifier];
    [v3 setObject:caseIdentifier forKeyedSubscript:@"caseIdentifier"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCAppEnumCase *)self displayRepresentation];
    jsonDictionary = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"displayRepresentation"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_caseIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42617 stringValue:self->_caseIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_displayRepresentation)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42616 subMessageValue:self->_displayRepresentation];
    blockCopy[2](blockCopy, v6);
  }
}

- (CCAppEnumCaseDisplayRepresentation)displayRepresentation
{
  v2 = [(CCAppEnumCaseDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSString)caseIdentifier
{
  v2 = [(NSString *)self->_caseIdentifier copy];

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
      if ((v20 >> 3) == 2)
      {
        v24 = [CCAppEnumCaseDisplayRepresentation alloc];
        caseIdentifier = CCPBReaderReadDataNoCopy();
        v35 = 0;
        v25 = [(CCItemMessage *)v24 initWithData:caseIdentifier error:&v35];
        v10 = v35;
        displayRepresentation = self->_displayRepresentation;
        self->_displayRepresentation = v25;
      }

      else if ((v20 >> 3) == 1)
      {
        v22 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        caseIdentifier = self->_caseIdentifier;
        self->_caseIdentifier = v22;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_29;
        }

        v27 = objc_opt_class();
        caseIdentifier = NSStringFromClass(v27);
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

- (CCAppEnumCase)initWithCaseIdentifier:(id)identifier displayRepresentation:(id)representation error:(id *)error
{
  identifierCopy = identifier;
  representationCopy = representation;
  v10 = objc_opt_new();
  if (!identifierCopy)
  {
    v12 = 0;
    if (!representationCopy)
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

    data = [representationCopy data];
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
  if (representationCopy)
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

@end