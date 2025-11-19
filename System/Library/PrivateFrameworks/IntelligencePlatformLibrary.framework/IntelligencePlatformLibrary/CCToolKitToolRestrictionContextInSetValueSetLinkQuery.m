@interface CCToolKitToolRestrictionContextInSetValueSetLinkQuery
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)initWithParameterKey:(id)a3 queryIdentifier:(id)a4 actionIdentifier:(id)a5 error:(id *)a6;
- (NSString)actionIdentifier;
- (NSString)parameterKey;
- (NSString)queryIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolRestrictionContextInSetValueSetLinkQuery

- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"parameterKey"];
    v10 = [v6 objectForKeyedSubscript:@"queryIdentifier"];
    v11 = [v6 objectForKeyedSubscript:@"actionIdentifier"];
    v12 = [[CCToolKitToolRestrictionContextInSetValueSetLinkQuery alloc] initWithParameterKey:v9 queryIdentifier:v10 actionIdentifier:v11 error:a4];
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_parameterKey)
  {
    v4 = [(CCToolKitToolRestrictionContextInSetValueSetLinkQuery *)self parameterKey];
    [v3 setObject:v4 forKeyedSubscript:@"parameterKey"];
  }

  if (self->_queryIdentifier)
  {
    v5 = [(CCToolKitToolRestrictionContextInSetValueSetLinkQuery *)self queryIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"queryIdentifier"];
  }

  if (self->_actionIdentifier)
  {
    v6 = [(CCToolKitToolRestrictionContextInSetValueSetLinkQuery *)self actionIdentifier];
    [v3 setObject:v6 forKeyedSubscript:@"actionIdentifier"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_parameterKey)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_parameterKey];
    v11[2](v11, v7);
  }

  if (self->_queryIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_queryIdentifier];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_actionIdentifier)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_actionIdentifier];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSString)actionIdentifier
{
  v2 = [(NSString *)self->_actionIdentifier copy];

  return v2;
}

- (NSString)queryIdentifier
{
  v2 = [(NSString *)self->_queryIdentifier copy];

  return v2;
}

- (NSString)parameterKey
{
  v2 = [(NSString *)self->_parameterKey copy];

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
      if ((v21 >> 3) == 6)
      {
        v24 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v25 = 32;
      }

      else if (v23 == 5)
      {
        v24 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v25 = 24;
      }

      else
      {
        if (v23 != 4)
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

- (CCToolKitToolRestrictionContextInSetValueSetLinkQuery)initWithParameterKey:(id)a3 queryIdentifier:(id)a4 actionIdentifier:(id)a5 error:(id *)a6
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
  v19 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v19)
  {
    CCSetError();
    v18 = 0;
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
    CCPBDataWriterWriteStringField();
LABEL_12:
    v20 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v20 error:a6];

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