@interface CCToolKitToolTypedValuePrimitiveValueFile
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypedValuePrimitiveValueFile)initWithFile:(id)a3 displayRepresentation:(id)a4 url:(id)a5 error:(id *)a6;
- (CCToolKitToolTypedValuePrimitiveValueFile)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSData)file;
- (NSString)url;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueFile

- (CCToolKitToolTypedValuePrimitiveValueFile)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v20[2] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"file"];
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

    v13 = [v6 objectForKeyedSubscript:@"displayRepresentation"];
    if (v13)
    {
      v14 = v13;
      v20[0] = 0;
      v15 = [[CCToolKitToolDisplayRepresentation alloc] initWithJSONDictionary:v13 error:v20];
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

    v17 = [v6 objectForKeyedSubscript:@"url"];
    v18 = [[CCToolKitToolTypedValuePrimitiveValueFile alloc] initWithFile:v9 displayRepresentation:v15 url:v17 error:a4];
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
  if (self->_file)
  {
    v4 = [(CCToolKitToolTypedValuePrimitiveValueFile *)self file];
    v5 = [v4 base64EncodedStringWithOptions:0];
    [v3 setObject:v5 forKeyedSubscript:@"file"];
  }

  if (self->_displayRepresentation)
  {
    v6 = [(CCToolKitToolTypedValuePrimitiveValueFile *)self displayRepresentation];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"displayRepresentation"];
  }

  if (self->_url)
  {
    v8 = [(CCToolKitToolTypedValuePrimitiveValueFile *)self url];
    [v3 setObject:v8 forKeyedSubscript:@"url"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_file)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] bytesValue:self->_file];
    v11[2](v11, v7);
  }

  if (self->_displayRepresentation)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_displayRepresentation];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_url)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_url];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSString)url
{
  v2 = [(NSString *)self->_url copy];

  return v2;
}

- (CCToolKitToolDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSData)file
{
  v2 = [(NSData *)self->_file copy];

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
      if ((v21 >> 3) != 3)
      {
        if (v23 == 2)
        {
          v26 = [CCToolKitToolDisplayRepresentation alloc];
          v27 = CCPBReaderReadDataNoCopy();
          v38 = 0;
          v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v38];
          v10 = v38;
          displayRepresentation = self->_displayRepresentation;
          self->_displayRepresentation = v28;
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

- (CCToolKitToolTypedValuePrimitiveValueFile)initWithFile:(id)a3 displayRepresentation:(id)a4 url:(id)a5 error:(id *)a6
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
      goto LABEL_7;
    }

    CCPBDataWriterWriteDataField();
    if (!v11)
    {
LABEL_4:
      v16 = v15;
      if (v12)
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
    if (!v11)
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
    v18 = 0;
    v15 = v16;
    goto LABEL_14;
  }

  v20 = [v11 data];
  CCPBDataWriterWriteDataField();

  if (!v12)
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
    v21 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v21 error:a6];

    v18 = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  v18 = 0;
LABEL_14:

  return v18;
}

@end