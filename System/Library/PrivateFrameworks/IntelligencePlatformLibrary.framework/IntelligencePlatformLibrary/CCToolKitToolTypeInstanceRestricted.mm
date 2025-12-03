@interface CCToolKitToolTypeInstanceRestricted
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypeIdentifier)identifier;
- (CCToolKitToolTypeInstanceRestricted)initWithIdentifier:(id)identifier context:(id)context error:(id *)error;
- (CCToolKitToolTypeInstanceRestricted)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSArray)context;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypeInstanceRestricted

- (CCToolKitToolTypeInstanceRestricted)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v38[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    if (v9)
    {
      v38[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v9 error:v38];
      v11 = v38[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();

        v27 = 0;
        goto LABEL_26;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    if (v13)
    {
      v12 = v13;
      objc_opt_class();
      v37 = v8;
      v14 = CCValidateIsInstanceOfExpectedClass();
      v15 = v8;

      if ((v14 & 1) == 0)
      {
        CCSetError();
        v27 = 0;
        v8 = v15;
        goto LABEL_26;
      }

      v30 = v15;
      errorCopy = error;
      v16 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = v12;
      v17 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v12);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            v22 = [CCToolKitToolRestrictionContext alloc];
            v32 = 0;
            v23 = [(CCToolKitToolRestrictionContext *)v22 initWithJSONDictionary:v21 error:&v32];
            v24 = v32;
            if (v23)
            {
              v25 = v24 == 0;
            }

            else
            {
              v25 = 0;
            }

            if (!v25)
            {
              v26 = v24;
              CCSetError();

              v27 = 0;
              v8 = v30;
              goto LABEL_26;
            }

            [v16 addObject:v23];
          }

          v18 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v18);
      }

      v8 = v30;
      error = errorCopy;
    }

    else
    {
      v16 = 0;
    }

    v27 = [[CCToolKitToolTypeInstanceRestricted alloc] initWithIdentifier:v9 context:v16 error:error];
    v12 = v16;
LABEL_26:

    goto LABEL_27;
  }

  CCSetError();
  v27 = 0;
LABEL_27:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)jsonDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_identifier)
  {
    identifier = [(CCToolKitToolTypeInstanceRestricted *)self identifier];
    jsonDictionary = [identifier jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"identifier"];
  }

  if (self->_context)
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    context = [(CCToolKitToolTypeInstanceRestricted *)self context];
    v8 = [context countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(context);
          }

          jsonDictionary2 = [*(*(&v16 + 1) + 8 * i) jsonDictionary];
          [v6 addObject:jsonDictionary2];
        }

        v9 = [context countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"context"];
  }

  v13 = [v3 copy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
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

  if (self->_context)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 repeatedSubMessageValue:self->_context];
    blockCopy[2](blockCopy, v7);
  }
}

- (NSArray)context
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_context copyItems:1];

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
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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
        goto LABEL_38;
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
            goto LABEL_37;
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
        goto LABEL_37;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v24 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v27 = [CCToolKitToolRestrictionContext alloc];
        v43 = 0;
        v28 = [(CCItemMessage *)v27 initWithData:v24 error:&v43];
        v8 = v43;
        if (!v8 && v28)
        {
          [v9 addObject:v28];
        }
      }

      else if ((v21 >> 3) == 1)
      {
        v23 = [CCToolKitToolTypeIdentifier alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v44 = 0;
        v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v44];
        v8 = v44;
        identifier = self->_identifier;
        self->_identifier = v25;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_34;
        }

        v29 = objc_opt_class();
        v24 = NSStringFromClass(v29);
        v30 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
      }

LABEL_34:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }

      goto LABEL_38;
    }
  }

  v9 = 0;
LABEL_37:
  v8 = 0;
LABEL_38:
  v31 = [v9 copy];
  context = self->_context;
  self->_context = v31;

  if (v8)
  {
    CCSetError();
    v33 = 0;
    v34 = dataCopy;
  }

  else
  {
    v35 = MEMORY[0x1E6993AA8];
    v34 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = *&v5[*v35];
      v39 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }
  }

  return v33;
}

- (CCToolKitToolTypeInstanceRestricted)initWithIdentifier:(id)identifier context:(id)context error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  v10 = objc_opt_new();
  if (!identifierCopy)
  {
    v12 = 0;
    if (!contextCopy)
    {
      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    v31 = v12;
    v14 = CCValidateArrayValues();
    v15 = v12;

    if (!v14)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v15;
      goto LABEL_18;
    }

    errorCopy = error;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = contextCopy;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          data = [*(*(&v27 + 1) + 8 * v20) data];
          CCPBDataWriterWriteDataField();

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v18);
    }

    v12 = v15;
    error = errorCopy;
    goto LABEL_15;
  }

  objc_opt_class();
  v32 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_18;
  }

  data2 = [identifierCopy data];
  CCPBDataWriterWriteDataField();

  if (contextCopy)
  {
    goto LABEL_6;
  }

LABEL_15:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end