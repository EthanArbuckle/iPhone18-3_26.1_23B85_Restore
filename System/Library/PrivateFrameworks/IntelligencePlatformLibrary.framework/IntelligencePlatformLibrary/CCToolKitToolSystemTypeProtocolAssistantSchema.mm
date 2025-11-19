@interface CCToolKitToolSystemTypeProtocolAssistantSchema
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolAssistantSchemaIdentifier)identifier;
- (CCToolKitToolSystemTypeProtocolAssistantSchema)initWithIdentifier:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemTypeProtocolAssistantSchema)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolSystemTypeProtocolAssistantSchema

- (CCToolKitToolSystemTypeProtocolAssistantSchema)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v16[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"identifier"];
    if (v9)
    {
      v10 = v9;
      v16[0] = 0;
      v11 = [[CCToolKitToolAssistantSchemaIdentifier alloc] initWithJSONDictionary:v9 error:v16];
      v12 = v16[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();

        v14 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
    }

    v14 = [[CCToolKitToolSystemTypeProtocolAssistantSchema alloc] initWithIdentifier:v11 error:a4];
    v10 = v11;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v14 = 0;
LABEL_11:

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    v4 = [(CCToolKitToolSystemTypeProtocolAssistantSchema *)self identifier];
    v5 = [v4 jsonDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  if (self->_identifier)
  {
    v6 = MEMORY[0x1E69939F0];
    v7 = a3;
    v8 = [v6 alloc];
    v9 = [v8 initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_identifier];
    (*(a3 + 2))(v7, v9);
  }
}

- (CCToolKitToolAssistantSchemaIdentifier)identifier
{
  v2 = [(CCToolKitToolAssistantSchemaIdentifier *)self->_identifier copy];

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
    goto LABEL_30;
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
            goto LABEL_31;
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
        goto LABEL_31;
      }

LABEL_21:
      if ((v21 >> 3) == 1)
      {
        v23 = [CCToolKitToolAssistantSchemaIdentifier alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v35 = 0;
        v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v35];
        v10 = v35;
        identifier = self->_identifier;
        self->_identifier = v25;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_27;
        }

        v27 = objc_opt_class();
        v24 = NSStringFromClass(v27);
        v28 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

LABEL_27:
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
    goto LABEL_32;
  }

LABEL_30:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v33 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = *&v6[*v9];
  v32 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_32:
  v33 = 0;
LABEL_34:

  return v33;
}

- (CCToolKitToolSystemTypeProtocolAssistantSchema)initWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  if (v6)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v9 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v12 = 0;
      goto LABEL_7;
    }

    v10 = [v6 data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v9 = 0;
  }

  v11 = [v7 immutableData];
  self = [(CCItemMessage *)self initWithData:v11 error:a4];

  v12 = self;
LABEL_7:

  return v12;
}

@end