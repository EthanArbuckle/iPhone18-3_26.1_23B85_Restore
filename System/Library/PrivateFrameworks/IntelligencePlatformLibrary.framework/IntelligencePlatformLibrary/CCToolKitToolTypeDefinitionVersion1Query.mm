@interface CCToolKitToolTypeDefinitionVersion1Query
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypeDefinitionVersion1Query)initWithIdentifier:(id)identifier templates:(id)templates error:(id *)error;
- (CCToolKitToolTypeDefinitionVersion1Query)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)templates;
- (CCToolKitToolTypeIdentifier)identifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypeDefinitionVersion1Query

- (CCToolKitToolTypeDefinitionVersion1Query)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v20[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"templates"];
    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v12 = v13;
    v19 = 0;
    v14 = [[CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates alloc] initWithJSONDictionary:v13 error:&v19];
    v15 = v19;
    v16 = v15;
    if (v14 && !v15)
    {

LABEL_13:
      v17 = [[CCToolKitToolTypeDefinitionVersion1Query alloc] initWithIdentifier:v9 templates:v14 error:error];
      v12 = v14;
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
  if (self->_identifier)
  {
    identifier = [(CCToolKitToolTypeDefinitionVersion1Query *)self identifier];
    jsonDictionary = [identifier jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"identifier"];
  }

  if (self->_templates)
  {
    templates = [(CCToolKitToolTypeDefinitionVersion1Query *)self templates];
    jsonDictionary2 = [templates jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"templates"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_identifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_identifier];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_templates)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 subMessageValue:self->_templates];
    blockCopy[2](blockCopy, v7);
  }
}

- (CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates)templates
{
  v2 = [(CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates *)self->_templates copy];

  return v2;
}

- (CCToolKitToolTypeIdentifier)identifier
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_identifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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
        v27 = [CCToolKitToolTypeDefinitionVersion1QueryPredicateTemplates alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v37 = 0;
        v25 = [(CCItemMessage *)v27 initWithData:v24 error:&v37];
        v10 = v37;
        v26 = 24;
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

          v29 = objc_opt_class();
          v24 = NSStringFromClass(v29);
          v30 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_26:

          goto LABEL_27;
        }

        v23 = [CCToolKitToolTypeIdentifier alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v38 = 0;
        v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v38];
        v10 = v38;
        v26 = 16;
      }

      v28 = *(&self->super.super.isa + v26);
      *(&self->super.super.isa + v26) = v25;

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
    v10 = 0;
    v35 = 1;
    goto LABEL_38;
  }

LABEL_35:
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = *&v6[*v9];
  v34 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_36:
  v35 = 0;
LABEL_38:

  return v35;
}

- (CCToolKitToolTypeDefinitionVersion1Query)initWithIdentifier:(id)identifier templates:(id)templates error:(id *)error
{
  identifierCopy = identifier;
  templatesCopy = templates;
  v10 = objc_opt_new();
  if (!identifierCopy)
  {
    v12 = 0;
    if (!templatesCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v20 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v15;
      goto LABEL_11;
    }

    data = [templatesCopy data];
    CCPBDataWriterWriteDataField();

    v12 = v15;
    goto LABEL_8;
  }

  objc_opt_class();
  v11 = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_11;
  }

  data2 = [identifierCopy data];
  CCPBDataWriterWriteDataField();

  if (templatesCopy)
  {
    goto LABEL_6;
  }

LABEL_8:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

@end