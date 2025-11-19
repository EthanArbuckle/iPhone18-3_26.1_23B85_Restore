@interface CCToolKitToolDefinitionContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolDefinitionContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolDefinitionContent)initWithToolkitProtoVersion:(id)a3 toolkitProtoBytes:(id)a4 error:(id *)a5;
- (NSData)toolkitProtoBytes;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolDefinitionContent

- (CCToolKitToolDefinitionContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"toolkitProtoVersion"];
    v10 = [v6 objectForKeyedSubscript:@"toolkitProtoBytes"];
    if (v10)
    {
      objc_opt_class();
      v11 = CCValidateIsInstanceOfExpectedClass();
      v12 = v8;

      if ((v11 & 1) == 0)
      {
        CCSetError();
        v14 = 0;
        goto LABEL_9;
      }

      v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:0];

      v10 = v13;
    }

    else
    {
      v12 = v8;
    }

    v14 = [[CCToolKitToolDefinitionContent alloc] initWithToolkitProtoVersion:v9 toolkitProtoBytes:v10 error:a4];
LABEL_9:

    v8 = v12;
    goto LABEL_10;
  }

  CCSetError();
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasToolkitProtoVersion)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolDefinitionContent toolkitProtoVersion](self, "toolkitProtoVersion")}];
    [v3 setObject:v4 forKeyedSubscript:@"toolkitProtoVersion"];
  }

  if (self->_toolkitProtoBytes)
  {
    v5 = [(CCToolKitToolDefinitionContent *)self toolkitProtoBytes];
    v6 = [v5 base64EncodedStringWithOptions:0];
    [v3 setObject:v6 forKeyedSubscript:@"toolkitProtoBytes"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  if (self->_hasToolkitProtoVersion)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:29398 uint32Value:self->_toolkitProtoVersion];
    v8[2](v8, v5);
  }

  v6 = v8;
  if (self->_toolkitProtoBytes)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:29399 bytesValue:self->_toolkitProtoBytes];
    v8[2](v8, v7);

    v6 = v8;
  }
}

- (NSData)toolkitProtoBytes
{
  v2 = [(NSData *)self->_toolkitProtoBytes copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_41;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v41 = self;
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        if (v18 == -1 || v18 >= *&v7[*v9])
        {
          break;
        }

        v19 = *(*&v7[*v12] + v18);
        *&v7[v17] = v18 + 1;
        v16 |= (v19 & 0x7F) << v14;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v20 = v15++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_42;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v22 = *&v7[*v10];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v16;
      }

      if (v22)
      {
        goto LABEL_42;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v29 = CCPBReaderReadData();
        toolkitProtoBytes = self->_toolkitProtoBytes;
        self->_toolkitProtoBytes = v29;
      }

      else
      {
        if ((v21 >> 3) == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v26 = *v8;
            v27 = *&v7[v26];
            if (v27 == -1 || v27 >= *&v7[*v9])
            {
              break;
            }

            v28 = *(*&v7[*v12] + v27);
            *&v7[v26] = v27 + 1;
            v25 |= (v28 & 0x7F) << v23;
            if ((v28 & 0x80) == 0)
            {
              goto LABEL_34;
            }

            v23 += 7;
            v20 = v24++ >= 9;
            if (v20)
            {
              LODWORD(v25) = 0;
              goto LABEL_36;
            }
          }

          *&v7[*v10] = 1;
LABEL_34:
          if (*&v7[*v10])
          {
            LODWORD(v25) = 0;
          }

LABEL_36:
          v11 = 0;
          self->_toolkitProtoVersion = v25;
          self->_hasToolkitProtoVersion = 1;
LABEL_38:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v31 = objc_opt_class();
          NSStringFromClass(v31);
          v32 = a4;
          v34 = v33 = v6;
          v35 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          v6 = v33;
          a4 = v32;
          self = v41;
          goto LABEL_38;
        }
      }

      v11 = 0;
      goto LABEL_38;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_43;
  }

LABEL_41:
  if (!*&v7[*v10])
  {
    v39 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v36 = objc_opt_class();
  v11 = NSStringFromClass(v36);
  v37 = *&v7[*v10];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_43:
  v39 = 0;
LABEL_45:

  return v39;
}

- (CCToolKitToolDefinitionContent)initWithToolkitProtoVersion:(id)a3 toolkitProtoBytes:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if (!v8)
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v18 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v16 = 0;
      v12 = v14;
      goto LABEL_11;
    }

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
    v16 = 0;
    goto LABEL_11;
  }

  [v8 unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_8:
  v15 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v15 error:a5];

  v16 = self;
LABEL_11:

  return v16;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 - 29397) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E73E7B48[(a3 - 29397)];
  }
}

@end