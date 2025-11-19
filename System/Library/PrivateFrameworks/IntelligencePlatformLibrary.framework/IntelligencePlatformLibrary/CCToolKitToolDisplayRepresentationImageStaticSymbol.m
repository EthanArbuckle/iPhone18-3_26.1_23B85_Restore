@interface CCToolKitToolDisplayRepresentationImageStaticSymbol
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolDisplayRepresentationImageStaticSymbol)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolDisplayRepresentationImageStaticSymbol)initWithName:(id)a3 tintColorData:(id)a4 configurationData:(id)a5 error:(id *)a6;
- (NSData)configurationData;
- (NSData)tintColorData;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolDisplayRepresentationImageStaticSymbol

- (CCToolKitToolDisplayRepresentationImageStaticSymbol)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"name"];
    v10 = [v6 objectForKeyedSubscript:@"tintColorData"];
    if (v10)
    {
      objc_opt_class();
      v11 = CCValidateIsInstanceOfExpectedClass();
      v12 = v8;

      if ((v11 & 1) == 0)
      {
        CCSetError();
        v17 = 0;
LABEL_14:

        v8 = v12;
        goto LABEL_15;
      }

      v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];

      v8 = v12;
      v10 = v13;
    }

    v14 = [v6 objectForKeyedSubscript:@"configurationData"];
    if (v14)
    {
      objc_opt_class();
      v15 = CCValidateIsInstanceOfExpectedClass();
      v12 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v17 = 0;
        goto LABEL_13;
      }

      v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:0];

      v14 = v16;
    }

    else
    {
      v12 = v8;
    }

    v17 = [[CCToolKitToolDisplayRepresentationImageStaticSymbol alloc] initWithName:v9 tintColorData:v10 configurationData:v14 error:a4];
LABEL_13:

    goto LABEL_14;
  }

  CCSetError();
  v17 = 0;
LABEL_15:

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_name)
  {
    v4 = [(CCToolKitToolDisplayRepresentationImageStaticSymbol *)self name];
    [v3 setObject:v4 forKeyedSubscript:@"name"];
  }

  if (self->_tintColorData)
  {
    v5 = [(CCToolKitToolDisplayRepresentationImageStaticSymbol *)self tintColorData];
    v6 = [v5 base64EncodedStringWithOptions:0];
    [v3 setObject:v6 forKeyedSubscript:@"tintColorData"];
  }

  if (self->_configurationData)
  {
    v7 = [(CCToolKitToolDisplayRepresentationImageStaticSymbol *)self configurationData];
    v8 = [v7 base64EncodedStringWithOptions:0];
    [v3 setObject:v8 forKeyedSubscript:@"configurationData"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_name)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_name];
    v11[2](v11, v7);
  }

  if (self->_tintColorData)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 bytesValue:self->_tintColorData];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_configurationData)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 bytesValue:self->_configurationData];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSData)configurationData
{
  v2 = [(NSData *)self->_configurationData copy];

  return v2;
}

- (NSData)tintColorData
{
  v2 = [(NSData *)self->_tintColorData copy];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
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
      if ((v21 >> 3) == 3)
      {
        v24 = CCPBReaderReadData();
        v10 = 0;
        v25 = 32;
      }

      else if (v23 == 2)
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

- (CCToolKitToolDisplayRepresentationImageStaticSymbol)initWithName:(id)a3 tintColorData:(id)a4 configurationData:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_13;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v17 = v15;

    if (!v16)
    {
      CCSetError();
      v20 = 0;
      v15 = v17;
      goto LABEL_15;
    }

    CCPBDataWriterWriteDataField();
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v17 = v15;
  if (v12)
  {
LABEL_10:
    objc_opt_class();
    v18 = CCValidateIsInstanceOfExpectedClass();
    v15 = v17;

    if (v18)
    {
      CCPBDataWriterWriteDataField();
      goto LABEL_12;
    }

LABEL_13:
    CCSetError();
    v20 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v15 = v17;
LABEL_12:
  v19 = [v13 immutableData];
  self = [(CCItemMessage *)self initWithData:v19 error:a6];

  v20 = self;
LABEL_15:

  return v20;
}

@end