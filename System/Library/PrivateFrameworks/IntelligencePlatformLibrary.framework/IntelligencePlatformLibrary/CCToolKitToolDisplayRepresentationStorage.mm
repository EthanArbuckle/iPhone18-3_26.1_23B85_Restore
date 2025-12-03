@interface CCToolKitToolDisplayRepresentationStorage
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentationStorage)initWithData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentationStorage)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSData)data;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolDisplayRepresentationStorage

- (CCToolKitToolDisplayRepresentationStorage)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    if (v9)
    {
      objc_opt_class();
      v10 = CCValidateIsInstanceOfExpectedClass();
      v11 = v8;

      if ((v10 & 1) == 0)
      {
        CCSetError();
        v13 = 0;
        goto LABEL_9;
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

      v9 = v12;
    }

    else
    {
      v11 = v8;
    }

    v13 = [[CCToolKitToolDisplayRepresentationStorage alloc] initWithData:v9 error:error];
LABEL_9:

    v8 = v11;
    goto LABEL_10;
  }

  CCSetError();
  v13 = 0;
LABEL_10:

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_data)
  {
    data = [(CCToolKitToolDisplayRepresentationStorage *)self data];
    v5 = [data base64EncodedStringWithOptions:0];
    [v3 setObject:v5 forKeyedSubscript:@"data"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  if (self->_data)
  {
    v6 = MEMORY[0x1E69939F0];
    blockCopy = block;
    v8 = [v6 alloc];
    v9 = [v8 initWithFieldType:*MEMORY[0x1E69939A8] bytesValue:self->_data];
    (*(block + 2))(blockCopy, v9);
  }
}

- (NSData)data
{
  v2 = [(NSData *)self->_data copy];

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
        v23 = CCPBReaderReadData();
        v10 = 0;
        data = self->_data;
        self->_data = v23;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_27;
        }

        v25 = objc_opt_class();
        data = NSStringFromClass(v25);
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

- (CCToolKitToolDisplayRepresentationStorage)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = objc_opt_new();
  if (dataCopy)
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

    CCPBDataWriterWriteDataField();
  }

  else
  {
    v9 = 0;
  }

  immutableData = [v7 immutableData];
  self = [(CCToolKitToolDisplayRepresentationStorage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

@end