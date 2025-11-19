@interface CCToolKitToolTypedValueEnumerationValue
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypeIdentifier)type;
- (CCToolKitToolTypedValueEnumerationValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValueEnumerationValue)initWithType:(id)a3 caseValue:(id)a4 displayRepresentation:(id)a5 error:(id *)a6;
- (NSString)caseValue;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValueEnumerationValue

- (CCToolKitToolTypedValueEnumerationValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v20[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"type"];
    if (v9)
    {
      v20[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v9 error:v20];
      v11 = v20[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        goto LABEL_15;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"caseValue"];
    v13 = [v6 objectForKeyedSubscript:@"displayRepresentation"];
    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v10 = v13;
    v19 = 0;
    v14 = [[CCToolKitToolDisplayRepresentation alloc] initWithJSONDictionary:v13 error:&v19];
    v15 = v19;
    v16 = v15;
    if (v14 && !v15)
    {

LABEL_13:
      v17 = [[CCToolKitToolTypedValueEnumerationValue alloc] initWithType:v9 caseValue:v12 displayRepresentation:v14 error:a4];
      v10 = v14;
LABEL_16:

      goto LABEL_17;
    }

    CCSetError();

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  CCSetError();
  v17 = 0;
LABEL_17:

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_type)
  {
    v4 = [(CCToolKitToolTypedValueEnumerationValue *)self type];
    v5 = [v4 jsonDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"type"];
  }

  if (self->_caseValue)
  {
    v6 = [(CCToolKitToolTypedValueEnumerationValue *)self caseValue];
    [v3 setObject:v6 forKeyedSubscript:@"caseValue"];
  }

  if (self->_displayRepresentation)
  {
    v7 = [(CCToolKitToolTypedValueEnumerationValue *)self displayRepresentation];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"displayRepresentation"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_type)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_type];
    v11[2](v11, v7);
  }

  if (self->_caseValue)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_caseValue];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_displayRepresentation)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_displayRepresentation];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (CCToolKitToolDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSString)caseValue
{
  v2 = [(NSString *)self->_caseValue copy];

  return v2;
}

- (CCToolKitToolTypeIdentifier)type
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_type copy];

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
          v28 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          caseValue = self->_caseValue;
          self->_caseValue = v28;
        }

        else
        {
          if (v23 == 1)
          {
            v24 = [CCToolKitToolTypeIdentifier alloc];
            caseValue = CCPBReaderReadDataNoCopy();
            v40 = 0;
            v26 = [(CCItemMessage *)v24 initWithData:caseValue error:&v40];
            v10 = v40;
            v27 = 16;
LABEL_27:
            v30 = *(&self->super.super.isa + v27);
            *(&self->super.super.isa + v27) = v26;

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

          v31 = objc_opt_class();
          caseValue = NSStringFromClass(v31);
          v32 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
        }

LABEL_28:

        goto LABEL_29;
      }

      v29 = [CCToolKitToolDisplayRepresentation alloc];
      caseValue = CCPBReaderReadDataNoCopy();
      v39 = 0;
      v26 = [(CCItemMessage *)v29 initWithData:caseValue error:&v39];
      v10 = v39;
      v27 = 32;
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
    v37 = 1;
    goto LABEL_40;
  }

LABEL_37:
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = *&v6[*v9];
  v36 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_38:
  v37 = 0;
LABEL_40:

  return v37;
}

- (CCToolKitToolTypedValueEnumerationValue)initWithType:(id)a3 caseValue:(id)a4 displayRepresentation:(id)a5 error:(id *)a6
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

    v16 = [v10 data];
    CCPBDataWriterWriteDataField();

    if (!v11)
    {
LABEL_4:
      v17 = v15;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = v17;
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
  v21 = CCValidateIsInstanceOfExpectedClass();
  v17 = v15;

  if (!v21)
  {
    CCSetError();
    v20 = 0;
    v15 = v17;
    goto LABEL_14;
  }

  CCPBDataWriterWriteStringField();
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v15 = v17;

  if (v18)
  {
    v19 = [v12 data];
    CCPBDataWriterWriteDataField();

LABEL_12:
    v22 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v22 error:a6];

    v20 = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  v20 = 0;
LABEL_14:

  return v20;
}

@end