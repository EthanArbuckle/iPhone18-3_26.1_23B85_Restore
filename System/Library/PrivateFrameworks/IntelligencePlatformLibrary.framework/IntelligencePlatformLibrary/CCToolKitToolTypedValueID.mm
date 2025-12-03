@interface CCToolKitToolTypedValueID
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypeInstance)typeInstance;
- (CCToolKitToolTypedValueID)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValueID)initWithSerializedVariable:(id)variable typeInstance:(id)instance identifier:(id)identifier error:(id *)error;
- (NSData)serializedVariable;
- (NSString)identifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValueID

- (CCToolKitToolTypedValueID)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v20[2] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"serializedVariable"];
    if (v9)
    {
      objc_opt_class();
      v20[1] = v8;
      v10 = CCValidateIsInstanceOfExpectedClass();
      v11 = v8;

      if ((v10 & 1) == 0)
      {
        CCSetError();
        v18 = 0;
        v8 = v11;
LABEL_15:

        goto LABEL_16;
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

      v9 = v12;
      v8 = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"typeInstance"];
    if (v13)
    {
      v14 = v13;
      v20[0] = 0;
      v15 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v13 error:v20];
      v16 = v20[0];
      v17 = v16;
      if (!v15 || v16)
      {
        CCSetError();

        v18 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    v18 = [[CCToolKitToolTypedValueID alloc] initWithSerializedVariable:v9 typeInstance:v15 identifier:v17 error:error];
    v14 = v15;
LABEL_14:

    goto LABEL_15;
  }

  CCSetError();
  v18 = 0;
LABEL_16:

  return v18;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_serializedVariable)
  {
    serializedVariable = [(CCToolKitToolTypedValueID *)self serializedVariable];
    v5 = [serializedVariable base64EncodedStringWithOptions:0];
    [v3 setObject:v5 forKeyedSubscript:@"serializedVariable"];
  }

  if (self->_typeInstance)
  {
    typeInstance = [(CCToolKitToolTypedValueID *)self typeInstance];
    jsonDictionary = [typeInstance jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"typeInstance"];
  }

  if (self->_identifier)
  {
    identifier = [(CCToolKitToolTypedValueID *)self identifier];
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_serializedVariable)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] bytesValue:self->_serializedVariable];
    v11[2](v11, v7);
  }

  if (self->_typeInstance)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_typeInstance];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_identifier)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_identifier];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

  return v2;
}

- (CCToolKitToolTypeInstance)typeInstance
{
  v2 = [(CCToolKitToolTypeInstance *)self->_typeInstance copy];

  return v2;
}

- (NSData)serializedVariable
{
  v2 = [(NSData *)self->_serializedVariable copy];

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
      if ((v21 >> 3) != 3)
      {
        if (v23 == 2)
        {
          v26 = [CCToolKitToolTypeInstance alloc];
          v27 = CCPBReaderReadDataNoCopy();
          v38 = 0;
          v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v38];
          v10 = v38;
          typeInstance = self->_typeInstance;
          self->_typeInstance = v28;
        }

        else
        {
          if (v23 == 1)
          {
            v24 = CCPBReaderReadData();
            v10 = 0;
            v25 = 16;
LABEL_27:
            v27 = *(&self->super.super.isa + v25);
            *(&self->super.super.isa + v25) = v24;
            goto LABEL_28;
          }

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

          v30 = objc_opt_class();
          v27 = NSStringFromClass(v30);
          v31 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
        }

LABEL_28:

        goto LABEL_29;
      }

      v24 = CCPBReaderReadStringNoCopy();
      v10 = 0;
      v25 = 32;
      goto LABEL_27;
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
    v10 = 0;
    v36 = 1;
    goto LABEL_40;
  }

LABEL_37:
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = *&v6[*v9];
  v35 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_38:
  v36 = 0;
LABEL_40:

  return v36;
}

- (CCToolKitToolTypedValueID)initWithSerializedVariable:(id)variable typeInstance:(id)instance identifier:(id)identifier error:(id *)error
{
  variableCopy = variable;
  instanceCopy = instance;
  identifierCopy = identifier;
  v13 = objc_opt_new();
  if (variableCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteDataField();
    if (!instanceCopy)
    {
LABEL_4:
      v16 = v15;
      if (identifierCopy)
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
    if (!instanceCopy)
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

  data = [instanceCopy data];
  CCPBDataWriterWriteDataField();

  if (!identifierCopy)
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