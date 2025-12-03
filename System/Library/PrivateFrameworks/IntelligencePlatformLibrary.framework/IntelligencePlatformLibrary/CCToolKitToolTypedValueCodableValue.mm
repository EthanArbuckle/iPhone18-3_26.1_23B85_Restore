@interface CCToolKitToolTypedValueCodableValue
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypedValueCodableValue)initWithIdentifier:(id)identifier data:(id)data displayRepresentation:(id)representation error:(id *)error;
- (CCToolKitToolTypedValueCodableValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSData)data;
- (NSString)identifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValueCodableValue

- (CCToolKitToolTypedValueCodableValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v21[2] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    if (v10)
    {
      objc_opt_class();
      v21[1] = v8;
      v11 = CCValidateIsInstanceOfExpectedClass();
      v12 = v8;

      if ((v11 & 1) == 0)
      {
        CCSetError();
        v19 = 0;
        v8 = v12;
LABEL_15:

        goto LABEL_16;
      }

      v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];

      v8 = v12;
      v10 = v13;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
    if (v14)
    {
      v15 = v14;
      v21[0] = 0;
      v16 = [[CCToolKitToolDisplayRepresentation alloc] initWithJSONDictionary:v14 error:v21];
      v17 = v21[0];
      v18 = v17;
      if (!v16 || v17)
      {
        CCSetError();

        v19 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    v19 = [[CCToolKitToolTypedValueCodableValue alloc] initWithIdentifier:v9 data:v10 displayRepresentation:v16 error:error];
    v15 = v16;
LABEL_14:

    goto LABEL_15;
  }

  CCSetError();
  v19 = 0;
LABEL_16:

  return v19;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    identifier = [(CCToolKitToolTypedValueCodableValue *)self identifier];
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  if (self->_data)
  {
    data = [(CCToolKitToolTypedValueCodableValue *)self data];
    v6 = [data base64EncodedStringWithOptions:0];
    [v3 setObject:v6 forKeyedSubscript:@"data"];
  }

  if (self->_displayRepresentation)
  {
    displayRepresentation = [(CCToolKitToolTypedValueCodableValue *)self displayRepresentation];
    jsonDictionary = [displayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"displayRepresentation"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_identifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_identifier];
    v11[2](v11, v7);
  }

  if (self->_data)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 bytesValue:self->_data];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_displayRepresentation)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_displayRepresentation];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (CCToolKitToolDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSData)data
{
  v2 = [(NSData *)self->_data copy];

  return v2;
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

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
    goto LABEL_35;
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
            goto LABEL_36;
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
        goto LABEL_36;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v27 = [CCToolKitToolDisplayRepresentation alloc];
        v26 = CCPBReaderReadDataNoCopy();
        v38 = 0;
        v28 = [(CCItemMessage *)v27 initWithData:v26 error:&v38];
        v10 = v38;
        displayRepresentation = self->_displayRepresentation;
        self->_displayRepresentation = v28;

        goto LABEL_31;
      }

      if (v23 == 2)
      {
        v24 = CCPBReaderReadData();
        v10 = 0;
        v25 = 24;
      }

      else
      {
        if (v23 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
            goto LABEL_32;
          }

          v30 = objc_opt_class();
          v26 = NSStringFromClass(v30);
          v31 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_31:

LABEL_32:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        v24 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v25 = 16;
      }

      v26 = *(&self->super.super.isa + v25);
      *(&self->super.super.isa + v25) = v24;
      goto LABEL_31;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_37;
  }

LABEL_35:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v36 = 1;
    goto LABEL_39;
  }

LABEL_36:
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = *&v6[*v9];
  v35 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_37:
  v36 = 0;
LABEL_39:

  return v36;
}

- (CCToolKitToolTypedValueCodableValue)initWithIdentifier:(id)identifier data:(id)data displayRepresentation:(id)representation error:(id *)error
{
  identifierCopy = identifier;
  dataCopy = data;
  representationCopy = representation;
  v13 = objc_opt_new();
  if (identifierCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
    if (!dataCopy)
    {
LABEL_4:
      v16 = v15;
      if (representationCopy)
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
    if (!dataCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v20 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v20)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v16;
    goto LABEL_14;
  }

  CCPBDataWriterWriteDataField();
  if (!representationCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    data = [representationCopy data];
    CCPBDataWriterWriteDataField();

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