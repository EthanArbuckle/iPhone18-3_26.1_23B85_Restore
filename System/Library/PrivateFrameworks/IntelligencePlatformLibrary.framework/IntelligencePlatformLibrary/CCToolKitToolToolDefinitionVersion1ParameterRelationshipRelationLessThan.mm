@interface CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan)initWithValues:(id)values orEqual:(id)equal error:(id *)error;
- (NSArray)values;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v35 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"values"];
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      v34 = v8;
      v11 = CCValidateIsInstanceOfExpectedClass();
      v12 = v8;

      if ((v11 & 1) == 0)
      {
        CCSetError();
        v25 = 0;
        goto LABEL_21;
      }

      selfCopy = self;
      v13 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = v10;
      v14 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = [CCToolKitToolTypedValue alloc];
            v29 = 0;
            v20 = [(CCToolKitToolTypedValue *)v19 initWithJSONDictionary:v18 error:&v29];
            v21 = v29;
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
              v24 = v21;
              CCSetError();

              v25 = 0;
              self = selfCopy;
              goto LABEL_21;
            }

            [v13 addObject:v20];
          }

          v15 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
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

    v23 = [dictionaryCopy objectForKeyedSubscript:@"orEqual"];
    v25 = [[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan alloc] initWithValues:v13 orEqual:v23 error:error];

    v10 = v13;
LABEL_21:

    v8 = v12;
    goto LABEL_22;
  }

  CCSetError();
  v25 = 0;
LABEL_22:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)jsonDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_values)
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    values = [(CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan *)self values];
    v6 = [values countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(values);
          }

          jsonDictionary = [*(*(&v15 + 1) + 8 * i) jsonDictionary];
          [v4 addObject:jsonDictionary];
        }

        v7 = [values countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"values"];
  }

  if (self->_hasOrEqual)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan orEqual](self, "orEqual")}];
    [v3 setObject:v11 forKeyedSubscript:@"orEqual"];
  }

  v12 = [v3 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v9 = blockCopy;
  if (self->_values)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] repeatedSubMessageValue:self->_values];
    v9[2](v9, v7);
  }

  if (self->_hasOrEqual)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 BOOLValue:self->_orEqual];
    v9[2](v9, v8);
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
        goto LABEL_52;
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
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_51;
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
        goto LABEL_51;
      }

LABEL_21:
      if ((v21 >> 3) == 1)
      {
        v31 = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v32 = [CCToolKitToolTypedValue alloc];
        v48 = 0;
        v33 = [(CCItemMessage *)v32 initWithData:v31 error:&v48];
        v8 = v48;
        if (!v8 && v33)
        {
          [v9 addObject:v33];
        }
      }

      else
      {
        if ((v21 >> 3) == 2)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v26 = *v6;
            v27 = *&v5[v26];
            v28 = v27 + 1;
            if (v27 == -1 || v28 > *&v5[*v7])
            {
              break;
            }

            v29 = *(*&v5[*v11] + v27);
            *&v5[v26] = v28;
            v25 |= (v29 & 0x7F) << v23;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_39;
            }

            v23 += 7;
            v20 = v24++ >= 9;
            if (v20)
            {
              v30 = 0;
              goto LABEL_45;
            }
          }

          *&v5[*v10] = 1;
LABEL_39:
          if (*&v5[*v10])
          {
            v34 = 1;
          }

          else
          {
            v34 = v25 == 0;
          }

          v30 = !v34;
LABEL_45:
          v8 = 0;
          self->_orEqual = v30;
          self->_hasOrEqual = 1;
LABEL_48:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          goto LABEL_52;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_48;
        }

        v35 = objc_opt_class();
        v31 = NSStringFromClass(v35);
        v36 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
      }

      break;
    }

    goto LABEL_48;
  }

  v9 = 0;
LABEL_51:
  v8 = 0;
LABEL_52:
  v37 = [v9 copy];
  values = self->_values;
  self->_values = v37;

  if (v8)
  {
    CCSetError();
    v39 = 0;
    v40 = dataCopy;
  }

  else
  {
    v41 = MEMORY[0x1E6993AA8];
    v40 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = *&v5[*v41];
      v45 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }
  }

  return v39;
}

- (CCToolKitToolToolDefinitionVersion1ParameterRelationshipRelationLessThan)initWithValues:(id)values orEqual:(id)equal error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  equalCopy = equal;
  v10 = objc_opt_new();
  if (!valuesCopy)
  {
    v12 = 0;
    if (!equalCopy)
    {
      goto LABEL_15;
    }

LABEL_13:
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v20 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v20;
      goto LABEL_18;
    }

    [equalCopy BOOLValue];
    CCPBDataWriterWriteBOOLField();
    v12 = v20;
    goto LABEL_15;
  }

  objc_opt_class();
  v30 = 0;
  v11 = CCValidateArrayValues();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_18;
  }

  errorCopy = error;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = valuesCopy;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        data = [*(*(&v26 + 1) + 8 * v17) data];
        CCPBDataWriterWriteDataField();

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v15);
  }

  error = errorCopy;
  if (equalCopy)
  {
    goto LABEL_13;
  }

LABEL_15:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end