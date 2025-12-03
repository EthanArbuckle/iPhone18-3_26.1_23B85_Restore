@interface CCAppIntentsIndexedEnumContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppEnumTypeDisplayRepresentation)typeDisplayRepresentation;
- (CCAppIntentsIndexedEnumContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppIntentsIndexedEnumContent)initWithTypeIdentifier:(id)identifier typeDisplayRepresentation:(id)representation cases:(id)cases error:(id *)error;
- (NSArray)cases;
- (NSString)typeIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsIndexedEnumContent

- (CCAppIntentsIndexedEnumContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v40[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"typeIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"typeDisplayRepresentation"];
    if (v10)
    {
      v40[0] = 0;
      v11 = [[CCAppEnumTypeDisplayRepresentation alloc] initWithJSONDictionary:v10 error:v40];
      v12 = v40[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();

        v28 = 0;
        goto LABEL_26;
      }

      v10 = v11;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cases"];
    if (v14)
    {
      v13 = v14;
      objc_opt_class();
      v39 = v8;
      v15 = CCValidateIsInstanceOfExpectedClass();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v28 = 0;
        v8 = v16;
        goto LABEL_26;
      }

      v31 = v16;
      errorCopy = error;
      v33 = v9;
      v17 = objc_opt_new();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = v13;
      v18 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v36;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v13);
            }

            v22 = *(*(&v35 + 1) + 8 * i);
            v23 = [CCAppEnumCase alloc];
            v34 = 0;
            v24 = [(CCAppEnumCase *)v23 initWithJSONDictionary:v22 error:&v34];
            v25 = v34;
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
              v27 = v25;
              CCSetError();

              v28 = 0;
              v8 = v31;
              v9 = v33;
              goto LABEL_26;
            }

            [v17 addObject:v24];
          }

          v19 = [v13 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v19);
      }

      v8 = v31;
      error = errorCopy;
      v9 = v33;
    }

    else
    {
      v17 = 0;
    }

    v28 = [[CCAppIntentsIndexedEnumContent alloc] initWithTypeIdentifier:v9 typeDisplayRepresentation:v10 cases:v17 error:error];
    v13 = v17;
LABEL_26:

    goto LABEL_27;
  }

  CCSetError();
  v28 = 0;
LABEL_27:

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)jsonDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_typeIdentifier)
  {
    typeIdentifier = [(CCAppIntentsIndexedEnumContent *)self typeIdentifier];
    [v3 setObject:typeIdentifier forKeyedSubscript:@"typeIdentifier"];
  }

  if (self->_typeDisplayRepresentation)
  {
    typeDisplayRepresentation = [(CCAppIntentsIndexedEnumContent *)self typeDisplayRepresentation];
    jsonDictionary = [typeDisplayRepresentation jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"typeDisplayRepresentation"];
  }

  if (self->_cases)
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    cases = [(CCAppIntentsIndexedEnumContent *)self cases];
    v9 = [cases countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(cases);
          }

          jsonDictionary2 = [*(*(&v17 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:jsonDictionary2];
        }

        v10 = [cases countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"cases"];
  }

  v14 = [v3 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_typeIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42612 stringValue:self->_typeIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_typeDisplayRepresentation)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42613 subMessageValue:self->_typeDisplayRepresentation];
    blockCopy[2](blockCopy, v6);
  }

  v7 = blockCopy;
  if (self->_cases)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42614 repeatedSubMessageValue:self->_cases];
    blockCopy[2](blockCopy, v8);

    v7 = blockCopy;
  }
}

- (NSArray)cases
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_cases copyItems:1];

  return v2;
}

- (CCAppEnumTypeDisplayRepresentation)typeDisplayRepresentation
{
  v2 = [(CCAppEnumTypeDisplayRepresentation *)self->_typeDisplayRepresentation copy];

  return v2;
}

- (NSString)typeIdentifier
{
  v2 = [(NSString *)self->_typeIdentifier copy];

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
        goto LABEL_40;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        if (v17 == -1 || v17 >= *&v5[*v7])
        {
          break;
        }

        v18 = *(*&v5[*v11] + v17);
        *&v5[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_39;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v21 = *&v5[*v10];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_39;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) == 3)
      {
        typeIdentifier = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v28 = [CCAppEnumCase alloc];
        v44 = 0;
        v29 = [(CCItemMessage *)v28 initWithData:typeIdentifier error:&v44];
        v8 = v44;
        if (!v8 && v29)
        {
          [v9 addObject:v29];
        }
      }

      else if (v22 == 2)
      {
        v25 = [CCAppEnumTypeDisplayRepresentation alloc];
        typeIdentifier = CCPBReaderReadDataNoCopy();
        v45 = 0;
        v26 = [(CCItemMessage *)v25 initWithData:typeIdentifier error:&v45];
        v8 = v45;
        typeDisplayRepresentation = self->_typeDisplayRepresentation;
        self->_typeDisplayRepresentation = v26;
      }

      else if (v22 == 1)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v8 = 0;
        typeIdentifier = self->_typeIdentifier;
        self->_typeIdentifier = v23;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_36;
        }

        v30 = objc_opt_class();
        typeIdentifier = NSStringFromClass(v30);
        v31 = *&v5[*v10];
        v8 = CCSkipFieldErrorForMessage();
      }

LABEL_36:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }

      goto LABEL_40;
    }
  }

  v9 = 0;
LABEL_39:
  v8 = 0;
LABEL_40:
  v32 = [v9 copy];
  cases = self->_cases;
  self->_cases = v32;

  if (v8)
  {
    CCSetError();
    v34 = 0;
    v35 = dataCopy;
  }

  else
  {
    v36 = MEMORY[0x1E6993AA8];
    v35 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = *&v5[*v36];
      v40 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  return v34;
}

- (CCAppIntentsIndexedEnumContent)initWithTypeIdentifier:(id)identifier typeDisplayRepresentation:(id)representation cases:(id)cases error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  representationCopy = representation;
  casesCopy = cases;
  v13 = objc_opt_new();
  if (identifierCopy)
  {
    objc_opt_class();
    v38 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_14;
    }

    CCPBDataWriterWriteStringField();
    if (!representationCopy)
    {
LABEL_4:
      v16 = v15;
      if (casesCopy)
      {
        goto LABEL_5;
      }

LABEL_18:
      v15 = v16;
LABEL_19:
      immutableData = [v13 immutableData];
      self = [(CCItemMessage *)self initWithData:immutableData error:error];

      selfCopy = self;
      goto LABEL_21;
    }
  }

  else
  {
    v15 = 0;
    if (!representationCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v37 = v15;
  v25 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v25)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v16;
    goto LABEL_21;
  }

  data = [representationCopy data];
  CCPBDataWriterWriteDataField();

  if (!casesCopy)
  {
    goto LABEL_18;
  }

LABEL_5:
  objc_opt_class();
  v36 = v16;
  v17 = CCValidateArrayValues();
  v15 = v16;

  if (v17)
  {
    errorCopy = error;
    selfCopy2 = self;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = casesCopy;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        v22 = 0;
        do
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          data2 = [*(*(&v32 + 1) + 8 * v22) data];
          CCPBDataWriterWriteDataField();

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v20);
    }

    error = errorCopy;
    self = selfCopy2;
    goto LABEL_19;
  }

LABEL_14:
  CCSetError();
  selfCopy = 0;
LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 22925) > 0xBu)
  {
    return 0;
  }

  else
  {
    return off_1E73E6D88[(identifier + 22925)];
  }
}

@end