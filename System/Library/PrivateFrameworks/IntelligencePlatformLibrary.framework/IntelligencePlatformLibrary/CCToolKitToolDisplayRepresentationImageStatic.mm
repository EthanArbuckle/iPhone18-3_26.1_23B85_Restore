@interface CCToolKitToolDisplayRepresentationImageStatic
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentationImageStatic)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolDisplayRepresentationImageStatic)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error;
- (CCToolKitToolDisplayRepresentationImageStaticSymbol)symbol;
- (NSData)data;
- (NSString)file;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolDisplayRepresentationImageStatic

- (CCToolKitToolDisplayRepresentationImageStatic)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v22[2] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    if (v9)
    {
      objc_opt_class();
      v22[1] = v8;
      v10 = CCValidateIsInstanceOfExpectedClass();
      v11 = v8;

      if ((v10 & 1) == 0)
      {
        CCSetError();
        v19 = 0;
        v8 = v11;
LABEL_21:

        goto LABEL_22;
      }

      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

      v9 = v12;
      v8 = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"symbol"];
    if (v13)
    {
      v22[0] = 0;
      v14 = [[CCToolKitToolDisplayRepresentationImageStaticSymbol alloc] initWithJSONDictionary:v13 error:v22];
      v15 = v22[0];
      v16 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        v19 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v13 = v14;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"file"];
    if (v9)
    {
      v17 = v9;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v14 = v9;
    if (v13)
    {
      v14 = v13;

      v18 = 2;
    }

    if (v16)
    {
      v20 = v16;

      v18 = 3;
      v14 = v20;
    }

    v19 = [[CCToolKitToolDisplayRepresentationImageStatic alloc] initWithKind:v14 kindType:v18 error:error];
    goto LABEL_20;
  }

  CCSetError();
  v19 = 0;
LABEL_22:

  return v19;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_data)
    {
      goto LABEL_10;
    }

    data = [(CCToolKitToolDisplayRepresentationImageStatic *)self data];
    v6 = [data base64EncodedStringWithOptions:0];
    [v3 setObject:v6 forKeyedSubscript:@"data"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_symbol)
    {
      goto LABEL_10;
    }

    symbol = [(CCToolKitToolDisplayRepresentationImageStatic *)self symbol];
    jsonDictionary = [symbol jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"symbol"];

    kindType = self->_kindType;
  }

  if (kindType == 3 && self->_file)
  {
    file = [(CCToolKitToolDisplayRepresentationImageStatic *)self file];
    [v3 setObject:file forKeyedSubscript:@"file"];
  }

LABEL_10:
  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_data)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] bytesValue:self->_data];
    v11[2](v11, v7);
  }

  if (self->_symbol)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_symbol];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_file)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_file];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSString)file
{
  v2 = [(NSString *)self->_file copy];

  return v2;
}

- (CCToolKitToolDisplayRepresentationImageStaticSymbol)symbol
{
  v2 = [(CCToolKitToolDisplayRepresentationImageStaticSymbol *)self->_symbol copy];

  return v2;
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
    goto LABEL_34;
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
            goto LABEL_35;
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
        goto LABEL_35;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v34 = CCPBReaderReadStringNoCopy();
        file = self->_file;
        self->_file = v34;

        data = self->_data;
        self->_data = 0;

        symbol = self->_symbol;
        self->_symbol = 0;

        v10 = 0;
        self->_kindType = 3;
        goto LABEL_31;
      }

      if (v23 == 2)
      {
        v28 = [CCToolKitToolDisplayRepresentationImageStaticSymbol alloc];
        v29 = CCPBReaderReadDataNoCopy();
        v47 = 0;
        v30 = [(CCItemMessage *)v28 initWithData:v29 error:&v47];
        v10 = v47;
        v31 = self->_symbol;
        self->_symbol = v30;

        if (!v10)
        {
          v32 = self->_data;
          self->_data = 0;

          self->_kindType = 2;
          v33 = self->_file;
          self->_file = 0;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = CCPBReaderReadData();
          v25 = self->_data;
          self->_data = v24;

          self->_kindType = 1;
          v26 = self->_symbol;
          self->_symbol = 0;

          v27 = self->_file;
          self->_file = 0;

LABEL_29:
          v10 = 0;
          goto LABEL_31;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          goto LABEL_29;
        }

        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

LABEL_31:
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
    goto LABEL_36;
  }

LABEL_34:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v45 = 1;
    goto LABEL_38;
  }

LABEL_35:
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  v43 = *&v6[*v9];
  v44 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_36:
  v45 = 0;
LABEL_38:

  return v45;
}

- (CCToolKitToolDisplayRepresentationImageStatic)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error
{
  kindCopy = kind;
  v9 = objc_opt_new();
  if (!kindCopy || type != 1)
  {
    if (kindCopy && type == 2)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v11 = 0;
      if (IsInstanceOfExpectedClass)
      {
        data = [kindCopy data];
        CCPBDataWriterWriteDataField();

        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      if (!kindCopy || type != 3)
      {
        goto LABEL_13;
      }

      objc_opt_class();
      v14 = CCValidateIsInstanceOfExpectedClass();
      v11 = 0;
      if (v14)
      {
        CCPBDataWriterWriteStringField();
        goto LABEL_13;
      }
    }

LABEL_14:
    CCSetError();
    selfCopy = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  v10 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v10)
  {
    goto LABEL_14;
  }

  CCPBDataWriterWriteDataField();
LABEL_13:
  immutableData = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end