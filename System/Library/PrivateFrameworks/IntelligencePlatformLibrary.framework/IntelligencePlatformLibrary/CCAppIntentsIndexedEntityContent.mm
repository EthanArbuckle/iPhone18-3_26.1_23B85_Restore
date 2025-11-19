@interface CCAppIntentsIndexedEntityContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppEntityDisplayRepresentation)displayRepresentation;
- (CCAppEntityTypeDisplayRepresentation)typeDisplayRepresentation;
- (CCAppIntentsIndexedEntityContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppIntentsIndexedEntityContent)initWithTypeIdentifier:(id)a3 displayRepresentation:(id)a4 typeDisplayRepresentation:(id)a5 assistantDefinedSchemas:(id)a6 error:(id *)a7;
- (NSArray)assistantDefinedSchemas;
- (NSString)typeIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsIndexedEntityContent

- (CCAppIntentsIndexedEntityContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v44[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"typeIdentifier"];
    v10 = [v6 objectForKeyedSubscript:@"displayRepresentation"];
    if (v10)
    {
      v44[0] = 0;
      v11 = [[CCAppEntityDisplayRepresentation alloc] initWithJSONDictionary:v10 error:v44];
      v12 = v44[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        goto LABEL_29;
      }

      v10 = v11;
    }

    v13 = [v6 objectForKeyedSubscript:@"typeDisplayRepresentation"];
    if (!v13)
    {
      v36 = v10;
      goto LABEL_13;
    }

    v43 = 0;
    v14 = [[CCAppEntityTypeDisplayRepresentation alloc] initWithJSONDictionary:v13 error:&v43];
    v15 = v43;
    v11 = v15;
    if (v14 && !v15)
    {
      v36 = v10;

      v13 = v14;
LABEL_13:
      v17 = [v6 objectForKeyedSubscript:@"assistantDefinedSchemas"];
      if (v17)
      {
        v11 = v17;
        objc_opt_class();
        v42 = v8;
        v18 = CCValidateIsInstanceOfExpectedClass();
        v19 = v8;

        if ((v18 & 1) == 0)
        {
          CCSetError();
          v16 = 0;
          v8 = v19;
LABEL_33:
          v10 = v36;
          goto LABEL_34;
        }

        v33 = v19;
        v34 = v9;
        v35 = self;
        v20 = objc_opt_new();
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v11 = v11;
        v21 = [(CCAppEntityDisplayRepresentation *)v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v39;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(v11);
              }

              v25 = *(*(&v38 + 1) + 8 * i);
              v26 = [CCAssistantSchema alloc];
              v37 = 0;
              v27 = [(CCAssistantSchema *)v26 initWithJSONDictionary:v25 error:&v37];
              v28 = v37;
              if (v27)
              {
                v29 = v28 == 0;
              }

              else
              {
                v29 = 0;
              }

              if (!v29)
              {
                v30 = v28;
                CCSetError();

                v16 = 0;
                v8 = v33;
                v9 = v34;
                self = v35;
                goto LABEL_33;
              }

              [(CCAppEntityDisplayRepresentation *)v20 addObject:v27];
            }

            v22 = [(CCAppEntityDisplayRepresentation *)v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
          }

          while (v22);
        }

        v8 = v33;
        v9 = v34;
        self = v35;
      }

      else
      {
        v20 = 0;
      }

      v10 = v36;
      v16 = [[CCAppIntentsIndexedEntityContent alloc] initWithTypeIdentifier:v9 displayRepresentation:v36 typeDisplayRepresentation:v13 assistantDefinedSchemas:v20 error:a4];
      v11 = v20;
LABEL_34:

      goto LABEL_35;
    }

    CCSetError();

LABEL_29:
    v16 = 0;
    goto LABEL_34;
  }

  CCSetError();
  v16 = 0;
LABEL_35:

  v31 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)jsonDictionary
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_typeIdentifier)
  {
    v4 = [(CCAppIntentsIndexedEntityContent *)self typeIdentifier];
    [v3 setObject:v4 forKeyedSubscript:@"typeIdentifier"];
  }

  if (self->_displayRepresentation)
  {
    v5 = [(CCAppIntentsIndexedEntityContent *)self displayRepresentation];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"displayRepresentation"];
  }

  if (self->_typeDisplayRepresentation)
  {
    v7 = [(CCAppIntentsIndexedEntityContent *)self typeDisplayRepresentation];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"typeDisplayRepresentation"];
  }

  if (self->_assistantDefinedSchemas)
  {
    v9 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(CCAppIntentsIndexedEntityContent *)self assistantDefinedSchemas];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * i) jsonDictionary];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"assistantDefinedSchemas"];
  }

  v16 = [v3 copy];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v10 = a3;
  if (self->_typeIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:47354 stringValue:self->_typeIdentifier];
    v10[2](v10, v5);
  }

  if (self->_displayRepresentation)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:47343 subMessageValue:self->_displayRepresentation];
    v10[2](v10, v6);
  }

  if (self->_typeDisplayRepresentation)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:47344 subMessageValue:self->_typeDisplayRepresentation];
    v10[2](v10, v7);
  }

  v8 = v10;
  if (self->_assistantDefinedSchemas)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:47356 repeatedSubMessageValue:self->_assistantDefinedSchemas];
    v10[2](v10, v9);

    v8 = v10;
  }
}

- (NSArray)assistantDefinedSchemas
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_assistantDefinedSchemas copyItems:1];

  return v2;
}

- (CCAppEntityTypeDisplayRepresentation)typeDisplayRepresentation
{
  v2 = [(CCAppEntityTypeDisplayRepresentation *)self->_typeDisplayRepresentation copy];

  return v2;
}

- (CCAppEntityDisplayRepresentation)displayRepresentation
{
  v2 = [(CCAppEntityDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSString)typeIdentifier
{
  v2 = [(NSString *)self->_typeIdentifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v45 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v45];
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
        goto LABEL_44;
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
            goto LABEL_43;
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
        goto LABEL_43;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v31 = [CCAppEntityTypeDisplayRepresentation alloc];
          typeIdentifier = CCPBReaderReadDataNoCopy();
          v47 = 0;
          v26 = [(CCItemMessage *)v31 initWithData:typeIdentifier error:&v47];
          v8 = v47;
          v27 = 32;
          goto LABEL_37;
        }

        if (v23 == 4)
        {
          typeIdentifier = CCPBReaderReadDataNoCopy();
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          v28 = [CCAssistantSchema alloc];
          v46 = 0;
          v29 = [(CCItemMessage *)v28 initWithData:typeIdentifier error:&v46];
          v8 = v46;
          if (!v8 && v29)
          {
            [v9 addObject:v29];
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v30 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          typeIdentifier = self->_typeIdentifier;
          self->_typeIdentifier = v30;
          goto LABEL_38;
        }

        if (v23 == 2)
        {
          v24 = [CCAppEntityDisplayRepresentation alloc];
          typeIdentifier = CCPBReaderReadDataNoCopy();
          v48 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:typeIdentifier error:&v48];
          v8 = v48;
          v27 = 24;
LABEL_37:
          v32 = *(&self->super.super.isa + v27);
          *(&self->super.super.isa + v27) = v26;

          goto LABEL_38;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v8 = 0;
        goto LABEL_39;
      }

      v33 = objc_opt_class();
      typeIdentifier = NSStringFromClass(v33);
      v34 = *&v5[*v10];
      v8 = CCSkipFieldErrorForMessage();
LABEL_38:

LABEL_39:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }

      goto LABEL_44;
    }
  }

  v9 = 0;
LABEL_43:
  v8 = 0;
LABEL_44:
  v35 = [v9 copy];
  assistantDefinedSchemas = self->_assistantDefinedSchemas;
  self->_assistantDefinedSchemas = v35;

  if (v8)
  {
    CCSetError();
    v37 = 0;
    v38 = v45;
  }

  else
  {
    v39 = MEMORY[0x1E6993AA8];
    v38 = v45;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = *&v5[*v39];
      v43 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  return v37;
}

- (CCAppIntentsIndexedEntityContent)initWithTypeIdentifier:(id)a3 displayRepresentation:(id)a4 typeDisplayRepresentation:(id)a5 assistantDefinedSchemas:(id)a6 error:(id *)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_opt_new();
  if (v12)
  {
    objc_opt_class();
    v45 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v18 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

    CCPBDataWriterWriteStringField();
    if (!v13)
    {
LABEL_4:
      v19 = v18;
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_12:
      v18 = v19;
      if (!v15)
      {
LABEL_22:
        v32 = [v16 immutableData];
        self = [(CCItemMessage *)self initWithData:v32 error:a7];

        v22 = self;
        goto LABEL_24;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v44 = v18;
  v23 = CCValidateIsInstanceOfExpectedClass();
  v19 = v18;

  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = [v13 data];
  CCPBDataWriterWriteDataField();

  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  v43 = v19;
  v20 = CCValidateIsInstanceOfExpectedClass();
  v18 = v19;

  if (v20)
  {
    v21 = [v14 data];
    CCPBDataWriterWriteDataField();

    if (!v15)
    {
      goto LABEL_22;
    }

LABEL_13:
    objc_opt_class();
    v42 = v18;
    v25 = CCValidateArrayValues();
    v19 = v18;

    if (v25)
    {
      v35 = v19;
      v36 = a7;
      v37 = self;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = v15;
      v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v39;
        do
        {
          v30 = 0;
          do
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [*(*(&v38 + 1) + 8 * v30) data];
            CCPBDataWriterWriteDataField();

            ++v30;
          }

          while (v28 != v30);
          v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v28);
      }

      v18 = v35;
      a7 = v36;
      self = v37;
      goto LABEL_22;
    }

LABEL_23:
    CCSetError();
    v22 = 0;
    v18 = v19;
    goto LABEL_24;
  }

LABEL_8:
  CCSetError();
  v22 = 0;
LABEL_24:

  v33 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 + 18195) > 0x14u)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E6CE0 + (a3 + 18195));
  }
}

@end