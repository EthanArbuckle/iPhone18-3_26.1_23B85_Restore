@interface CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains)initWithValues:(id)values error:(id *)error;
- (NSArray)values;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v34 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"values"];
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      v33 = v8;
      v11 = CCValidateIsInstanceOfExpectedClass();
      v12 = v8;

      if ((v11 & 1) == 0)
      {
        CCSetError();
        v24 = 0;
        goto LABEL_21;
      }

      selfCopy = self;
      v13 = objc_opt_new();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = v10;
      v14 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            v19 = [CCToolKitToolTypedValue alloc];
            v28 = 0;
            v20 = [(CCToolKitToolTypedValue *)v19 initWithJSONDictionary:v18 error:&v28];
            v21 = v28;
            if (v20)
            {
              v22 = v21 == 0;
            }

            else
            {
              v22 = 0;
            }

            if (!v22)
            {
              v23 = v21;
              CCSetError();

              v24 = 0;
              self = selfCopy;
              goto LABEL_21;
            }

            [v13 addObject:v20];
          }

          v15 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v15);
      }

      self = selfCopy;
    }

    else
    {
      v13 = 0;
      v12 = v8;
    }

    v24 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains alloc] initWithValues:v13 error:error];
    v10 = v13;
LABEL_21:

    v8 = v12;
    goto LABEL_22;
  }

  CCSetError();
  v24 = 0;
LABEL_22:

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)jsonDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_values)
  {
    v4 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    values = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains *)self values];
    v6 = [values countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(values);
          }

          jsonDictionary = [*(*(&v14 + 1) + 8 * i) jsonDictionary];
          [v4 addObject:jsonDictionary];
        }

        v7 = [values countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"values"];
  }

  v11 = [v3 copy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  if (self->_values)
  {
    v6 = MEMORY[0x1E69939F0];
    blockCopy = block;
    v8 = [v6 alloc];
    v9 = [v8 initWithFieldType:*MEMORY[0x1E69939A8] repeatedSubMessageValue:self->_values];
    (*(block + 2))(blockCopy, v9);
  }
}

- (NSArray)values
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_values copyItems:1];

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
        goto LABEL_36;
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
            goto LABEL_35;
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
        goto LABEL_35;
      }

LABEL_21:
      if ((v21 >> 3) == 1)
      {
        v23 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v24 = [CCToolKitToolTypedValue alloc];
        v39 = 0;
        v25 = [(CCItemMessage *)v24 initWithData:v23 error:&v39];
        v8 = v39;
        if (!v8 && v25)
        {
          [v9 addObject:v25];
        }
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_32;
        }

        v26 = objc_opt_class();
        v23 = NSStringFromClass(v26);
        v27 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
      }

LABEL_32:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }

      goto LABEL_36;
    }
  }

  v9 = 0;
LABEL_35:
  v8 = 0;
LABEL_36:
  v28 = [v9 copy];
  values = self->_values;
  self->_values = v28;

  if (v8)
  {
    CCSetError();
    v30 = 0;
    v31 = dataCopy;
  }

  else
  {
    v32 = MEMORY[0x1E6993AA8];
    v31 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = *&v5[*v32];
      v36 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  return v30;
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationContains)initWithValues:(id)values error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v7 = objc_opt_new();
  if (valuesCopy)
  {
    objc_opt_class();
    v24 = 0;
    v8 = CCValidateArrayValues();
    v9 = 0;
    if (!v8)
    {
      CCSetError();
      selfCopy = 0;
      goto LABEL_14;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = valuesCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          data = [*(*(&v20 + 1) + 8 * v14) data];
          CCPBDataWriterWriteDataField();

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = 0;
  }

  immutableData = [v7 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end