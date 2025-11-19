@interface CCToolKitToolAssistantSchemaIdentifier
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolAssistantSchemaIdentifier)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolAssistantSchemaIdentifier)initWithKind:(id)a3 version:(id)a4 domain:(id)a5 error:(id *)a6;
- (CCToolKitToolAssistantSchemaVersion)version;
- (NSString)domain;
- (NSString)kind;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolAssistantSchemaIdentifier

- (CCToolKitToolAssistantSchemaIdentifier)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v17[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"kind"];
    v10 = [v6 objectForKeyedSubscript:@"version"];
    if (v10)
    {
      v11 = v10;
      v17[0] = 0;
      v12 = [[CCToolKitToolAssistantSchemaVersion alloc] initWithJSONDictionary:v10 error:v17];
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

    v14 = [v6 objectForKeyedSubscript:@"domain"];
    v15 = [[CCToolKitToolAssistantSchemaIdentifier alloc] initWithKind:v9 version:v12 domain:v14 error:a4];
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
  if (self->_kind)
  {
    v4 = [(CCToolKitToolAssistantSchemaIdentifier *)self kind];
    [v3 setObject:v4 forKeyedSubscript:@"kind"];
  }

  if (self->_version)
  {
    v5 = [(CCToolKitToolAssistantSchemaIdentifier *)self version];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"version"];
  }

  if (self->_domain)
  {
    v7 = [(CCToolKitToolAssistantSchemaIdentifier *)self domain];
    [v3 setObject:v7 forKeyedSubscript:@"domain"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_kind)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_kind];
    v11[2](v11, v7);
  }

  if (self->_version)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_version];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_domain)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_domain];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (NSString)domain
{
  v2 = [(NSString *)self->_domain copy];

  return v2;
}

- (CCToolKitToolAssistantSchemaVersion)version
{
  v2 = [(CCToolKitToolAssistantSchemaVersion *)self->_version copy];

  return v2;
}

- (NSString)kind
{
  v2 = [(NSString *)self->_kind copy];

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
          v26 = [CCToolKitToolAssistantSchemaVersion alloc];
          v27 = CCPBReaderReadDataNoCopy();
          v38 = 0;
          v28 = [(CCItemMessage *)v26 initWithData:v27 error:&v38];
          v10 = v38;
          version = self->_version;
          self->_version = v28;
        }

        else
        {
          if (v23 == 1)
          {
            v24 = CCPBReaderReadStringNoCopy();
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

- (CCToolKitToolAssistantSchemaIdentifier)initWithKind:(id)a3 version:(id)a4 domain:(id)a5 error:(id *)a6
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