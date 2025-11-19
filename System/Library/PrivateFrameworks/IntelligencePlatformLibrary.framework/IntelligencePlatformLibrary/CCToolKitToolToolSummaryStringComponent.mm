@interface CCToolKitToolToolSummaryStringComponent
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolToolSummaryStringComponent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolToolSummaryStringComponent)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (NSString)parameter;
- (NSString)text;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolToolSummaryStringComponent

- (CCToolKitToolToolSummaryStringComponent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"text"];
    v10 = [v6 objectForKeyedSubscript:@"parameter"];
    if (v9)
    {
      v11 = v9;
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    v14 = v9;
    if (v10)
    {
      v14 = v10;

      v12 = 2;
    }

    v13 = [[CCToolKitToolToolSummaryStringComponent alloc] initWithKind:v14 kindType:v12 error:a4];
  }

  else
  {
    CCSetError();
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_text)
    {
      goto LABEL_7;
    }

    v5 = [(CCToolKitToolToolSummaryStringComponent *)self text];
    [v3 setObject:v5 forKeyedSubscript:@"text"];

    kindType = self->_kindType;
  }

  if (kindType == 2 && self->_parameter)
  {
    v6 = [(CCToolKitToolToolSummaryStringComponent *)self parameter];
    [v3 setObject:v6 forKeyedSubscript:@"parameter"];
  }

LABEL_7:
  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_text)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_text];
    v8[2](v8, v6);
  }

  if (self->_parameter)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 stringValue:self->_parameter];
    v8[2](v8, v7);
  }
}

- (NSString)parameter
{
  v2 = [(NSString *)self->_parameter copy];

  return v2;
}

- (NSString)text
{
  v2 = [(NSString *)self->_text copy];

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
    goto LABEL_31;
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
            goto LABEL_32;
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
        goto LABEL_32;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v26 = CCPBReaderReadStringNoCopy();
        parameter = self->_parameter;
        self->_parameter = v26;

        text = self->_text;
        self->_text = 0;

        v10 = 0;
        self->_kindType = 2;
        goto LABEL_28;
      }

      if ((v21 >> 3) == 1)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v24 = self->_text;
        self->_text = v23;

        self->_kindType = 1;
        v25 = self->_parameter;
        self->_parameter = 0;
      }

      else if ((CCPBReaderSkipValueWithTag() & 1) == 0)
      {
        v29 = objc_opt_class();
        NSStringFromClass(v29);
        v31 = v30 = v5;
        v32 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

        v5 = v30;
LABEL_28:
        if (*&v6[*v7] < *&v6[*v8])
        {
          continue;
        }

        break;
      }

      v10 = 0;
      goto LABEL_28;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_33;
  }

LABEL_31:
  if (!*&v6[*v9])
  {
    v36 = 1;
    goto LABEL_35;
  }

LABEL_32:
  v33 = objc_opt_class();
  v10 = NSStringFromClass(v33);
  v34 = *&v6[*v9];
  v35 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_33:
  v36 = 0;
LABEL_35:

  return v36;
}

- (CCToolKitToolToolSummaryStringComponent)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

LABEL_10:
    CCSetError();
    v14 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!v8 || a4 != 2)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  v16 = 0;
  v12 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  CCPBDataWriterWriteStringField();
LABEL_9:
  v13 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v13 error:a5];

  v14 = self;
LABEL_11:

  return v14;
}

@end