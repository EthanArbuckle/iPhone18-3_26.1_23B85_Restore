@interface CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage)initWithActionIdentifier:(id)a3 parameterKey:(id)a4 error:(id *)a5;
- (CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSString)actionIdentifier;
- (NSString)parameterKey;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage

- (CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"actionIdentifier"];
    v10 = [v6 objectForKeyedSubscript:@"parameterKey"];
    v11 = [[CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage alloc] initWithActionIdentifier:v9 parameterKey:v10 error:a4];
  }

  else
  {
    CCSetError();
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_actionIdentifier)
  {
    v4 = [(CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage *)self actionIdentifier];
    [v3 setObject:v4 forKeyedSubscript:@"actionIdentifier"];
  }

  if (self->_parameterKey)
  {
    v5 = [(CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage *)self parameterKey];
    [v3 setObject:v5 forKeyedSubscript:@"parameterKey"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_actionIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_actionIdentifier];
    v8[2](v8, v6);
  }

  if (self->_parameterKey)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 stringValue:self->_parameterKey];
    v8[2](v8, v7);
  }
}

- (NSString)parameterKey
{
  v2 = [(NSString *)self->_parameterKey copy];

  return v2;
}

- (NSString)actionIdentifier
{
  v2 = [(NSString *)self->_actionIdentifier copy];

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
      if ((v21 >> 3) == 2)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v24 = 24;
      }

      else
      {
        if ((v21 >> 3) != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
LABEL_27:
            if (*&v6[*v7] < *&v6[*v8])
            {
              continue;
            }

            break;
          }

          v26 = objc_opt_class();
          v25 = NSStringFromClass(v26);
          v27 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_26:

          goto LABEL_27;
        }

        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v24 = 16;
      }

      v25 = *(&self->super.super.isa + v24);
      *(&self->super.super.isa + v24) = v23;
      goto LABEL_26;
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
    v31 = 1;
    goto LABEL_38;
  }

LABEL_35:
  v28 = objc_opt_class();
  v10 = NSStringFromClass(v28);
  v29 = *&v6[*v9];
  v30 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_36:
  v31 = 0;
LABEL_38:

  return v31;
}

- (CCToolKitToolTypedValueDeferredValueStorageActionParameterDefaultValueStorage)initWithActionIdentifier:(id)a3 parameterKey:(id)a4 error:(id *)a5
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

    CCPBDataWriterWriteStringField();
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

  CCPBDataWriterWriteStringField();
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

@end