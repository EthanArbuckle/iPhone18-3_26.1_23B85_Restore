@interface CCToolKitToolSystemToolProtocolShowInAppStringSearchResults
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolSystemToolProtocolShowInAppStringSearchResults)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolSystemToolProtocolShowInAppStringSearchResults)initWithValues:(id)values error:(id *)error;
- (NSArray)values;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolSystemToolProtocolShowInAppStringSearchResults

- (CCToolKitToolSystemToolProtocolShowInAppStringSearchResults)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"values"];
    v10 = [[CCToolKitToolSystemToolProtocolShowInAppStringSearchResults alloc] initWithValues:v9 error:error];
  }

  else
  {
    CCSetError();
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_values)
  {
    values = [(CCToolKitToolSystemToolProtocolShowInAppStringSearchResults *)self values];
    [v3 setObject:values forKeyedSubscript:@"values"];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  if (self->_values)
  {
    v6 = MEMORY[0x1E69939F0];
    blockCopy = block;
    v8 = [v6 alloc];
    v9 = [v8 initWithFieldType:*MEMORY[0x1E69939A8] repeatedStringValue:self->_values];
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
  errorCopy = error;
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
      if ((v21 >> 3) != 1)
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_30;
        }

        v25 = objc_opt_class();
        v24 = NSStringFromClass(v25);
        v26 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
LABEL_29:

LABEL_30:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        goto LABEL_36;
      }

      break;
    }

    v23 = CCPBReaderReadStringNoCopy();
    v24 = v23;
    if (v9)
    {
      if (!v23)
      {
LABEL_25:
        v8 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!v24)
      {
        goto LABEL_25;
      }
    }

    [v9 addObject:{v24, errorCopy}];
    goto LABEL_25;
  }

  v9 = 0;
LABEL_35:
  v8 = 0;
LABEL_36:
  v27 = [v9 copy];
  values = self->_values;
  self->_values = v27;

  if (v8)
  {
    CCSetError();
    v29 = 0;
    v30 = dataCopy;
  }

  else
  {
    v31 = MEMORY[0x1E6993AA8];
    v30 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = *&v5[*v31];
      v35 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  return v29;
}

- (CCToolKitToolSystemToolProtocolShowInAppStringSearchResults)initWithValues:(id)values error:(id *)error
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

          v15 = *(*(&v20 + 1) + 8 * v14);
          CCPBDataWriterWriteStringField();
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