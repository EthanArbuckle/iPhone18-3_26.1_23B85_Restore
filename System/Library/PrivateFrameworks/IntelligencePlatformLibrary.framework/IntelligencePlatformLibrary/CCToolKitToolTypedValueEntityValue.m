@interface CCToolKitToolTypedValueEntityValue
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolDisplayRepresentation)displayRepresentation;
- (CCToolKitToolTypeIdentifier)type;
- (CCToolKitToolTypedValueEntityValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValueEntityValue)initWithType:(id)a3 identifier:(id)a4 properties:(id)a5 displayRepresentation:(id)a6 hydratedAppEntity:(id)a7 siriKitEntity:(id)a8 error:(id *)a9;
- (NSArray)properties;
- (NSData)hydratedAppEntity;
- (NSData)siriKitEntity;
- (NSString)identifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValueEntityValue

- (CCToolKitToolTypedValueEntityValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v56[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"type"];
    if (v9)
    {
      v56[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v9 error:v56];
      v11 = v56[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v33 = 0;
        goto LABEL_43;
      }

      v9 = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"identifier"];
    v13 = [v6 objectForKeyedSubscript:@"properties"];
    if (!v13)
    {
      v10 = 0;
      v27 = v8;
      goto LABEL_24;
    }

    v14 = v13;
    objc_opt_class();
    v55 = v8;
    v15 = CCValidateIsInstanceOfExpectedClass();
    v16 = v8;

    if (v15)
    {
      v43 = v16;
      v44 = a4;
      v46 = v12;
      v10 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v17 = v14;
      v18 = [(CCToolKitToolTypeIdentifier *)v17 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v52;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v52 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v51 + 1) + 8 * i);
            v23 = [CCToolKitToolTypedValueEntityValuePropertiesEntry alloc];
            v50 = 0;
            v24 = [(CCToolKitToolTypedValueEntityValuePropertiesEntry *)v23 initWithJSONDictionary:v22 error:&v50];
            v25 = v50;
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
              v10 = v17;
              v8 = v43;
              v12 = v46;
              goto LABEL_43;
            }

            [(CCToolKitToolTypeIdentifier *)v10 addObject:v24];
          }

          v19 = [(CCToolKitToolTypeIdentifier *)v17 countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v19);
      }

      v12 = v46;
      v27 = v43;
      a4 = v44;
LABEL_24:
      v28 = [v6 objectForKeyedSubscript:@"displayRepresentation"];
      if (v28)
      {
        v49 = 0;
        v29 = [[CCToolKitToolDisplayRepresentation alloc] initWithJSONDictionary:v28 error:&v49];
        v30 = v49;
        v31 = v30;
        if (!v29 || v30)
        {
          CCSetError();

          v33 = 0;
          goto LABEL_42;
        }

        v47 = v12;

        v28 = v29;
      }

      else
      {
        v47 = v12;
      }

      v31 = [v6 objectForKeyedSubscript:@"hydratedAppEntity"];
      if (!v31)
      {
        goto LABEL_33;
      }

      objc_opt_class();
      v34 = CCValidateIsInstanceOfExpectedClass();
      v35 = v27;

      if (v34)
      {
        v36 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v31 options:0];

        v31 = v36;
        v27 = v35;
LABEL_33:
        v37 = [v6 objectForKeyedSubscript:@"siriKitEntity"];
        if (v37)
        {
          objc_opt_class();
          v48 = v27;
          v38 = v27;
          v39 = CCValidateIsInstanceOfExpectedClass();
          v45 = v48;

          if ((v39 & 1) == 0)
          {
            v27 = v45;
            CCSetError();
            v33 = 0;
            v12 = v47;
            goto LABEL_41;
          }

          v40 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v37 options:0];

          v37 = v40;
          v27 = v45;
          v12 = v47;
        }

        else
        {
          v12 = v47;
        }

        v33 = [[CCToolKitToolTypedValueEntityValue alloc] initWithType:v9 identifier:v12 properties:v10 displayRepresentation:v28 hydratedAppEntity:v31 siriKitEntity:v37 error:a4];
LABEL_41:

        goto LABEL_42;
      }

      CCSetError();
      v33 = 0;
      v27 = v35;
      v12 = v47;
LABEL_42:

      v8 = v27;
      goto LABEL_43;
    }

    CCSetError();
    v33 = 0;
    v10 = v14;
    v8 = v16;
LABEL_43:

    goto LABEL_44;
  }

  CCSetError();
  v33 = 0;
LABEL_44:

  v41 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id)jsonDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_type)
  {
    v4 = [(CCToolKitToolTypedValueEntityValue *)self type];
    v5 = [v4 jsonDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"type"];
  }

  if (self->_identifier)
  {
    v6 = [(CCToolKitToolTypedValueEntityValue *)self identifier];
    [v3 setObject:v6 forKeyedSubscript:@"identifier"];
  }

  if (self->_properties)
  {
    v7 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [(CCToolKitToolTypedValueEntityValue *)self properties];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v23 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"properties"];
  }

  if (self->_displayRepresentation)
  {
    v14 = [(CCToolKitToolTypedValueEntityValue *)self displayRepresentation];
    v15 = [v14 jsonDictionary];
    [v3 setObject:v15 forKeyedSubscript:@"displayRepresentation"];
  }

  if (self->_hydratedAppEntity)
  {
    v16 = [(CCToolKitToolTypedValueEntityValue *)self hydratedAppEntity];
    v17 = [v16 base64EncodedStringWithOptions:0];
    [v3 setObject:v17 forKeyedSubscript:@"hydratedAppEntity"];
  }

  if (self->_siriKitEntity)
  {
    v18 = [(CCToolKitToolTypedValueEntityValue *)self siriKitEntity];
    v19 = [v18 base64EncodedStringWithOptions:0];
    [v3 setObject:v19 forKeyedSubscript:@"siriKitEntity"];
  }

  v20 = [v3 copy];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v14 = v5;
  if (self->_type)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_type];
    v14[2](v14, v7);
  }

  if (self->_identifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_identifier];
    v14[2](v14, v8);
  }

  if (self->_properties)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 repeatedSubMessageValue:self->_properties];
    v14[2](v14, v9);
  }

  if (self->_displayRepresentation)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_displayRepresentation];
    v14[2](v14, v10);
  }

  if (self->_hydratedAppEntity)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 bytesValue:self->_hydratedAppEntity];
    v14[2](v14, v11);
  }

  v12 = v14;
  if (self->_siriKitEntity)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 bytesValue:self->_siriKitEntity];
    v14[2](v14, v13);

    v12 = v14;
  }
}

- (NSData)siriKitEntity
{
  v2 = [(NSData *)self->_siriKitEntity copy];

  return v2;
}

- (NSData)hydratedAppEntity
{
  v2 = [(NSData *)self->_hydratedAppEntity copy];

  return v2;
}

- (CCToolKitToolDisplayRepresentation)displayRepresentation
{
  v2 = [(CCToolKitToolDisplayRepresentation *)self->_displayRepresentation copy];

  return v2;
}

- (NSArray)properties
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_properties copyItems:1];

  return v2;
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

  return v2;
}

- (CCToolKitToolTypeIdentifier)type
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_type copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v46 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v46];
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
        goto LABEL_49;
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
            goto LABEL_48;
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
        goto LABEL_48;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 3)
      {
        if (v23 != 4)
        {
          if (v23 == 5)
          {
            v27 = CCPBReaderReadData();
            v8 = 0;
            v28 = 48;
          }

          else
          {
            if (v23 != 6)
            {
LABEL_38:
              if (CCPBReaderSkipValueWithTag())
              {
                v8 = 0;
                goto LABEL_44;
              }

              v34 = objc_opt_class();
              v24 = NSStringFromClass(v34);
              v35 = *&v5[*v10];
              v8 = CCSkipFieldErrorForMessage();
LABEL_43:

LABEL_44:
              if (*&v5[*v6] < *&v5[*v7])
              {
                continue;
              }

              goto LABEL_49;
            }

            v27 = CCPBReaderReadData();
            v8 = 0;
            v28 = 56;
          }

LABEL_42:
          v24 = *(&self->super.super.isa + v28);
          *(&self->super.super.isa + v28) = v27;
          goto LABEL_43;
        }

        v32 = [CCToolKitToolDisplayRepresentation alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v47 = 0;
        v30 = [(CCItemMessage *)v32 initWithData:v24 error:&v47];
        v8 = v47;
        v31 = 40;
      }

      else
      {
        if (v23 != 1)
        {
          if (v23 != 2)
          {
            if (v23 == 3)
            {
              v24 = CCPBReaderReadDataNoCopy();
              if (!v9)
              {
                v9 = objc_opt_new();
              }

              v25 = [CCToolKitToolTypedValueEntityValuePropertiesEntry alloc];
              v48 = 0;
              v26 = [(CCItemMessage *)v25 initWithData:v24 error:&v48];
              v8 = v48;
              if (!v8 && v26)
              {
                [v9 addObject:v26];
              }

              goto LABEL_43;
            }

            goto LABEL_38;
          }

          v27 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v28 = 24;
          goto LABEL_42;
        }

        v29 = [CCToolKitToolTypeIdentifier alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v49 = 0;
        v30 = [(CCItemMessage *)v29 initWithData:v24 error:&v49];
        v8 = v49;
        v31 = 16;
      }

      break;
    }

    v33 = *(&self->super.super.isa + v31);
    *(&self->super.super.isa + v31) = v30;

    goto LABEL_43;
  }

  v9 = 0;
LABEL_48:
  v8 = 0;
LABEL_49:
  v36 = [v9 copy];
  properties = self->_properties;
  self->_properties = v36;

  if (v8)
  {
    CCSetError();
    v38 = 0;
    v39 = v46;
  }

  else
  {
    v40 = MEMORY[0x1E6993AA8];
    v39 = v46;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = *&v5[*v40];
      v44 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }
  }

  return v38;
}

- (CCToolKitToolTypedValueEntityValue)initWithType:(id)a3 identifier:(id)a4 properties:(id)a5 displayRepresentation:(id)a6 hydratedAppEntity:(id)a7 siriKitEntity:(id)a8 error:(id *)a9
{
  v59 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = objc_opt_new();
  if (!v15)
  {
    v23 = 0;
LABEL_5:
    v50 = v20;
    if (v16)
    {
      objc_opt_class();
      v56 = v23;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v26 = v23;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_11;
      }

      CCPBDataWriterWriteStringField();
      if (!v17)
      {
LABEL_8:
        v23 = v26;
        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v26 = v23;
      if (!v17)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v55 = v26;
    v30 = CCValidateArrayValues();
    v23 = v26;

    if (!v30)
    {
LABEL_28:
      CCSetError();
      v29 = 0;
      goto LABEL_29;
    }

    v47 = self;
    v48 = v19;
    v46 = v18;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v31 = v17;
    v32 = [v31 countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v52;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v52 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [*(*(&v51 + 1) + 8 * i) data];
          CCPBDataWriterWriteDataField();
        }

        v33 = [v31 countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v33);
    }

    v18 = v46;
    self = v47;
    v19 = v48;
    if (v46)
    {
LABEL_9:
      objc_opt_class();
      v27 = CCValidateIsInstanceOfExpectedClass();
      v26 = v23;

      if (v27)
      {
        v28 = [v18 data];
        CCPBDataWriterWriteDataField();

LABEL_24:
        v37 = 0x1E695D000uLL;
        if (!v19)
        {
          v49 = 0;
          v23 = v26;
          v20 = v50;
          if (!v50)
          {
LABEL_34:
            v19 = v49;
            v45 = [v21 immutableData];
            self = [(CCItemMessage *)self initWithData:v45 error:a9];

            v29 = self;
            goto LABEL_30;
          }

LABEL_32:
          v41 = *(v37 + 3824);
          objc_opt_class();
          v42 = CCValidateIsInstanceOfExpectedClass();
          v43 = v20;
          v44 = v23;

          if (!v42)
          {
            CCSetError();
            v29 = 0;
            v23 = v44;
            v20 = v43;
            v19 = v49;
            goto LABEL_30;
          }

          CCPBDataWriterWriteDataField();
          v23 = v44;
          v20 = v43;
          goto LABEL_34;
        }

        objc_opt_class();
        v38 = CCValidateIsInstanceOfExpectedClass();
        v23 = v26;

        if (v38)
        {
          v49 = v19;
          CCPBDataWriterWriteDataField();
          v20 = v50;
          v37 = 0x1E695D000;
          if (!v50)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        goto LABEL_28;
      }

LABEL_11:
      CCSetError();
      v29 = 0;
      v23 = v26;
LABEL_29:
      v20 = v50;
      goto LABEL_30;
    }

LABEL_23:
    v26 = v23;
    goto LABEL_24;
  }

  objc_opt_class();
  v57 = 0;
  v22 = CCValidateIsInstanceOfExpectedClass();
  v23 = 0;
  if (v22)
  {
    v24 = [v15 data];
    CCPBDataWriterWriteDataField();

    goto LABEL_5;
  }

  CCSetError();
  v29 = 0;
LABEL_30:

  v39 = *MEMORY[0x1E69E9840];
  return v29;
}

@end