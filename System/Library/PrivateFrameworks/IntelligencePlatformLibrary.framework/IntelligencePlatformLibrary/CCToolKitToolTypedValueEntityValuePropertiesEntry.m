@interface CCToolKitToolTypedValueEntityValuePropertiesEntry
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValue)value;
- (CCToolKitToolTypedValueEntityValuePropertiesEntry)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValueEntityValuePropertiesEntry)initWithKey:(id)a3 value:(id)a4 error:(id *)a5;
- (NSString)key;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValueEntityValuePropertiesEntry

- (CCToolKitToolTypedValueEntityValuePropertiesEntry)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v17[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"key"];
    v10 = [v6 objectForKeyedSubscript:@"value"];
    if (v10)
    {
      v11 = v10;
      v17[0] = 0;
      v12 = [[CCToolKitToolTypedValue alloc] initWithJSONDictionary:v10 error:v17];
      v13 = v17[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();

        v15 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = [[CCToolKitToolTypedValueEntityValuePropertiesEntry alloc] initWithKey:v9 value:v12 error:a4];
    v11 = v12;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v15 = 0;
LABEL_11:

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_key)
  {
    v4 = [(CCToolKitToolTypedValueEntityValuePropertiesEntry *)self key];
    [v3 setObject:v4 forKeyedSubscript:@"key"];
  }

  if (self->_value)
  {
    v5 = [(CCToolKitToolTypedValueEntityValuePropertiesEntry *)self value];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"value"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_key)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_key];
    v8[2](v8, v6);
  }

  if (self->_value)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 subMessageValue:self->_value];
    v8[2](v8, v7);
  }
}

- (CCToolKitToolTypedValue)value
{
  v2 = [(CCToolKitToolTypedValue *)self->_value copy];

  return v2;
}

- (NSString)key
{
  v2 = [(NSString *)self->_key copy];

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
    goto LABEL_32;
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
            goto LABEL_33;
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
        goto LABEL_33;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v25 = [CCToolKitToolTypedValue alloc];
        key = CCPBReaderReadDataNoCopy();
        v36 = 0;
        v26 = [(CCItemMessage *)v25 initWithData:key error:&v36];
        v10 = v36;
        value = self->_value;
        self->_value = v26;
      }

      else if ((v21 >> 3) == 1)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        key = self->_key;
        self->_key = v23;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_29;
        }

        v28 = objc_opt_class();
        key = NSStringFromClass(v28);
        v29 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

LABEL_29:
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
    goto LABEL_34;
  }

LABEL_32:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v34 = 1;
    goto LABEL_36;
  }

LABEL_33:
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v32 = *&v6[*v9];
  v33 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_34:
  v34 = 0;
LABEL_36:

  return v34;
}

- (CCToolKitToolTypedValueEntityValuePropertiesEntry)initWithKey:(id)a3 value:(id)a4 error:(id *)a5
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
    v19 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v17 = 0;
      v12 = v14;
      goto LABEL_11;
    }

    v15 = [v9 data];
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
    v17 = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteStringField();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_8:
  v16 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v16 error:a5];

  v17 = self;
LABEL_11:

  return v17;
}

@end