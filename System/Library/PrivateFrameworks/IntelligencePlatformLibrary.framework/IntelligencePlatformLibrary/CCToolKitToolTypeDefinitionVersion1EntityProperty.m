@interface CCToolKitToolTypeDefinitionVersion1EntityProperty
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeDefinitionVersion1EntityProperty)initWithId:(id)a3 displayName:(id)a4 type:(id)a5 error:(id *)a6;
- (CCToolKitToolTypeDefinitionVersion1EntityProperty)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeInstance)type;
- (NSString)displayName;
- (NSString)id;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypeDefinitionVersion1EntityProperty

- (CCToolKitToolTypeDefinitionVersion1EntityProperty)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v18[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"id"];
    v10 = [v6 objectForKeyedSubscript:@"displayName"];
    v11 = [v6 objectForKeyedSubscript:@"type"];
    if (v11)
    {
      v12 = v11;
      v18[0] = 0;
      v13 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v11 error:v18];
      v14 = v18[0];
      v15 = v14;
      if (!v13 || v14)
      {
        CCSetError();

        v16 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = [[CCToolKitToolTypeDefinitionVersion1EntityProperty alloc] initWithId:v9 displayName:v10 type:v13 error:a4];
    v12 = v13;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v16 = 0;
LABEL_11:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_id)
  {
    v4 = [(CCToolKitToolTypeDefinitionVersion1EntityProperty *)self id];
    [v3 setObject:v4 forKeyedSubscript:@"id"];
  }

  if (self->_displayName)
  {
    v5 = [(CCToolKitToolTypeDefinitionVersion1EntityProperty *)self displayName];
    [v3 setObject:v5 forKeyedSubscript:@"displayName"];
  }

  if (self->_type)
  {
    v6 = [(CCToolKitToolTypeDefinitionVersion1EntityProperty *)self type];
    v7 = [v6 jsonDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"type"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_id)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_id];
    v11[2](v11, v7);
  }

  if (self->_displayName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_displayName];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_type)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_type];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (CCToolKitToolTypeInstance)type
{
  v2 = [(CCToolKitToolTypeInstance *)self->_type copy];

  return v2;
}

- (NSString)displayName
{
  v2 = [(NSString *)self->_displayName copy];

  return v2;
}

- (NSString)id
{
  v2 = [(NSString *)self->_id copy];

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
        v27 = [CCToolKitToolTypeInstance alloc];
        v26 = CCPBReaderReadDataNoCopy();
        v38 = 0;
        v28 = [(CCItemMessage *)v27 initWithData:v26 error:&v38];
        v10 = v38;
        type = self->_type;
        self->_type = v28;

        goto LABEL_31;
      }

      if (v23 == 2)
      {
        v24 = CCPBReaderReadStringNoCopy();
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

- (CCToolKitToolTypeDefinitionVersion1EntityProperty)initWithId:(id)a3 displayName:(id)a4 type:(id)a5 error:(id *)a6
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

    CCPBDataWriterWriteStringField();
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
  v20 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v20)
  {
    CCSetError();
    v19 = 0;
    v15 = v16;
    goto LABEL_14;
  }

  CCPBDataWriterWriteStringField();
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
    v18 = [v12 data];
    CCPBDataWriterWriteDataField();

LABEL_12:
    v21 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v21 error:a6];

    v19 = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  v19 = 0;
LABEL_14:

  return v19;
}

@end