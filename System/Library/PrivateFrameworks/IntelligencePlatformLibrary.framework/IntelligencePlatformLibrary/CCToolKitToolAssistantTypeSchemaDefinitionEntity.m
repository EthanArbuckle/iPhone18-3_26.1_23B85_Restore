@interface CCToolKitToolAssistantTypeSchemaDefinitionEntity
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolAssistantSchemaIdentifier)identifier;
- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)initWithIdentifier:(id)a3 properties:(id)a4 displayRepresentation:(id)a5 error:(id *)a6;
- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeDisplayRepresentation)displayRepresentation;
- (NSArray)properties;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolAssistantTypeSchemaDefinitionEntity

- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v45[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"identifier"];
    if (v9)
    {
      v45[0] = 0;
      v10 = [[CCToolKitToolAssistantSchemaIdentifier alloc] initWithJSONDictionary:v9 error:v45];
      v11 = v45[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();

        v33 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v9 = v10;
    }

    v13 = [v6 objectForKeyedSubscript:@"properties"];
    if (v13)
    {
      v14 = v13;
      objc_opt_class();
      v44 = v8;
      v15 = CCValidateIsInstanceOfExpectedClass();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v33 = 0;
        v12 = v14;
LABEL_33:
        v8 = v16;
        goto LABEL_34;
      }

      v36 = v16;
      v37 = a4;
      v12 = objc_opt_new();
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v40 + 1) + 8 * i);
            v23 = [CCToolKitToolTypeDefinitionVersion1EntityProperty alloc];
            v39 = 0;
            v24 = [(CCToolKitToolTypeDefinitionVersion1EntityProperty *)v23 initWithJSONDictionary:v22 error:&v39];
            v25 = v39;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v32 = v25;
              CCSetError();

              v33 = 0;
              v12 = v17;
              v8 = v36;
              goto LABEL_34;
            }

            [v12 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v19);
      }

      a4 = v37;
      v16 = v36;
    }

    else
    {
      v12 = 0;
      v16 = v8;
    }

    v27 = [v6 objectForKeyedSubscript:@"displayRepresentation"];
    if (v27)
    {
      v28 = v27;
      v38 = 0;
      v29 = [[CCToolKitToolTypeDisplayRepresentation alloc] initWithJSONDictionary:v27 error:&v38];
      v30 = v38;
      v31 = v30;
      if (!v29 || v30)
      {
        CCSetError();

        v33 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v29 = 0;
    }

    v33 = [[CCToolKitToolAssistantTypeSchemaDefinitionEntity alloc] initWithIdentifier:v9 properties:v12 displayRepresentation:v29 error:a4];
    v28 = v29;
LABEL_32:

    goto LABEL_33;
  }

  CCSetError();
  v33 = 0;
LABEL_35:

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id)jsonDictionary
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    v4 = [(CCToolKitToolAssistantTypeSchemaDefinitionEntity *)self identifier];
    v5 = [v4 jsonDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  if (self->_properties)
  {
    v6 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(CCToolKitToolAssistantTypeSchemaDefinitionEntity *)self properties];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"properties"];
  }

  if (self->_displayRepresentation)
  {
    v13 = [(CCToolKitToolAssistantTypeSchemaDefinitionEntity *)self displayRepresentation];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"displayRepresentation"];
  }

  v15 = [v3 copy];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v11 = v5;
  if (self->_identifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_identifier];
    v11[2](v11, v7);
  }

  if (self->_properties)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_properties];
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

- (CCToolKitToolTypeDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolTypeDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSArray)properties
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_properties copyItems:1];

  return v2;
}

- (CCToolKitToolAssistantSchemaIdentifier)identifier
{
  v2 = [(CCToolKitToolAssistantSchemaIdentifier *)self->_identifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v44 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v44];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] < *&v5[*MEMORY[0x1E6993AB0]])
  {
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    while (2)
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        goto LABEL_41;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
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
        goto LABEL_40;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v30 = [CCToolKitToolTypeDisplayRepresentation alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v45 = 0;
        v26 = [(CCItemMessage *)v30 initWithData:v25 error:&v45];
        v8 = v45;
        v27 = 32;
      }

      else
      {
        if (v23 == 2)
        {
          v25 = CCPBReaderReadDataNoCopy();
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          v28 = [CCToolKitToolTypeDefinitionVersion1EntityProperty alloc];
          v46 = 0;
          v29 = [(CCItemMessage *)v28 initWithData:v25 error:&v46];
          v8 = v46;
          if (!v8 && v29)
          {
            [v9 addObject:v29];
          }

          goto LABEL_33;
        }

        if (v23 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
LABEL_34:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_41;
          }

          v32 = objc_opt_class();
          v25 = NSStringFromClass(v32);
          v33 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
LABEL_33:

          goto LABEL_34;
        }

        v24 = [CCToolKitToolAssistantSchemaIdentifier alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v47 = 0;
        v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v47];
        v8 = v47;
        v27 = 16;
      }

      break;
    }

    v31 = *(&self->super.super.isa + v27);
    *(&self->super.super.isa + v27) = v26;

    goto LABEL_33;
  }

  v9 = 0;
LABEL_40:
  v8 = 0;
LABEL_41:
  v34 = [v9 copy];
  properties = self->_properties;
  self->_properties = v34;

  if (v8)
  {
    CCSetError();
    v36 = 0;
    v37 = v44;
  }

  else
  {
    v38 = MEMORY[0x1E6993AA8];
    v37 = v44;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = *&v5[*v38];
      v42 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  return v36;
}

- (CCToolKitToolAssistantTypeSchemaDefinitionEntity)initWithIdentifier:(id)a3 properties:(id)a4 displayRepresentation:(id)a5 error:(id *)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  if (v10)
  {
    objc_opt_class();
    v38 = 0;
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

LABEL_18:
      v15 = v17;
      goto LABEL_19;
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
  v37 = v15;
  v21 = CCValidateArrayValues();
  v17 = v15;

  if (!v21)
  {
    CCSetError();
    v20 = 0;
    v15 = v17;
    goto LABEL_21;
  }

  v31 = a6;
  v32 = self;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = v11;
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      v26 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v33 + 1) + 8 * v26) data];
        CCPBDataWriterWriteDataField();

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v24);
  }

  a6 = v31;
  self = v32;
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_5:
  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v15 = v17;

  if (v18)
  {
    v19 = [v12 data];
    CCPBDataWriterWriteDataField();

LABEL_19:
    v28 = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:v28 error:a6];

    v20 = self;
    goto LABEL_21;
  }

LABEL_7:
  CCSetError();
  v20 = 0;
LABEL_21:

  v29 = *MEMORY[0x1E69E9840];
  return v20;
}

@end