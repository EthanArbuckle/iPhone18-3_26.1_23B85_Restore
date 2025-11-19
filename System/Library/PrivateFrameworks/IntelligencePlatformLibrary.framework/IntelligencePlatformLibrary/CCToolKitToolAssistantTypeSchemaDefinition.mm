@interface CCToolKitToolAssistantTypeSchemaDefinition
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolAssistantTypeSchemaDefinition)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolAssistantTypeSchemaDefinition)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)entity;
- (CCToolKitToolAssistantTypeSchemaDefinitionEnumeration)enumeration;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolAssistantTypeSchemaDefinition

- (CCToolKitToolAssistantTypeSchemaDefinition)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v20[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"entity"];
    if (v9)
    {
      v20[0] = 0;
      v10 = [[CCToolKitToolAssistantTypeSchemaDefinitionEntity alloc] initWithJSONDictionary:v9 error:v20];
      v11 = v20[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        goto LABEL_15;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"enumeration"];
    if (!v12)
    {
LABEL_10:
      if (v9)
      {
        v15 = v9;
        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      v10 = v9;
      if (v12)
      {
        v10 = v12;

        v16 = 2;
      }

      v17 = [[CCToolKitToolAssistantTypeSchemaDefinition alloc] initWithKind:v10 kindType:v16 error:a4];
      goto LABEL_20;
    }

    v19 = 0;
    v13 = [[CCToolKitToolAssistantTypeSchemaDefinitionEnumeration alloc] initWithJSONDictionary:v12 error:&v19];
    v14 = v19;
    v10 = v14;
    if (v13 && !v14)
    {

      v12 = v13;
      goto LABEL_10;
    }

    CCSetError();

LABEL_15:
    v17 = 0;
LABEL_20:

    goto LABEL_21;
  }

  CCSetError();
  v17 = 0;
LABEL_21:

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_entity)
    {
      goto LABEL_7;
    }

    v5 = [(CCToolKitToolAssistantTypeSchemaDefinition *)self entity];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"entity"];

    kindType = self->_kindType;
  }

  if (kindType == 2 && self->_enumeration)
  {
    v7 = [(CCToolKitToolAssistantTypeSchemaDefinition *)self enumeration];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"enumeration"];
  }

LABEL_7:
  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_entity)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_entity];
    v8[2](v8, v6);
  }

  if (self->_enumeration)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 subMessageValue:self->_enumeration];
    v8[2](v8, v7);
  }
}

- (CCToolKitToolAssistantTypeSchemaDefinitionEnumeration)enumeration
{
  v2 = [(CCToolKitToolAssistantTypeSchemaDefinitionEnumeration *)self->_enumeration copy];

  return v2;
}

- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)entity
{
  v2 = [(CCToolKitToolAssistantTypeSchemaDefinitionEntity *)self->_entity copy];

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
    goto LABEL_33;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      break;
    }

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
          goto LABEL_34;
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
      goto LABEL_34;
    }

LABEL_21:
    if ((v21 >> 3) == 2)
    {
      v28 = [CCToolKitToolAssistantTypeSchemaDefinitionEnumeration alloc];
      v29 = CCPBReaderReadDataNoCopy();
      v42 = 0;
      v30 = [(CCItemMessage *)v28 initWithData:v29 error:&v42];
      v10 = v42;
      enumeration = self->_enumeration;
      self->_enumeration = v30;

      if (!v10)
      {
        entity = self->_entity;
        self->_entity = 0;

        self->_kindType = 2;
      }
    }

    else if ((v21 >> 3) == 1)
    {
      v23 = [CCToolKitToolAssistantTypeSchemaDefinitionEntity alloc];
      v24 = CCPBReaderReadDataNoCopy();
      v43 = 0;
      v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v43];
      v10 = v43;
      v26 = self->_entity;
      self->_entity = v25;

      if (!v10)
      {
        self->_kindType = 1;
        v27 = self->_enumeration;
        self->_enumeration = 0;
      }
    }

    else if (CCPBReaderSkipValueWithTag())
    {
      v10 = 0;
    }

    else
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
    }
  }

  while (*&v6[*v7] < *&v6[*v8]);
  if (v10)
  {
    CCSetError();
  }

  else
  {
LABEL_33:
    if (!*&v6[*v9])
    {
      v10 = 0;
      v40 = 1;
      goto LABEL_37;
    }

LABEL_34:
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = *&v6[*v9];
    v39 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v10 = 0;
  }

  v40 = 0;
LABEL_37:

  return v40;
}

- (CCToolKitToolAssistantTypeSchemaDefinition)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
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
    v15 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!v8 || a4 != 2)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  v17 = 0;
  v12 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v13 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_9:
  v14 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v14 error:a5];

  v15 = self;
LABEL_11:

  return v15;
}

@end