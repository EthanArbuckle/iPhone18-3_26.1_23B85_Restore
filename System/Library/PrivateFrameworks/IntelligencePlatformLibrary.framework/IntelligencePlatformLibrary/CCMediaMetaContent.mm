@interface CCMediaMetaContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCMediaMetaContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCMediaMetaContent)initWithSourceItemIdentifier:(id)identifier linkedIdentifiers:(id)identifiers error:(id *)error;
- (NSArray)linkedIdentifiers;
- (NSString)sourceItemIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCMediaMetaContent

- (CCMediaMetaContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v36 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"sourceItemIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"linkedIdentifiers"];
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      v35 = v8;
      v12 = CCValidateIsInstanceOfExpectedClass();
      v13 = v8;

      if ((v12 & 1) == 0)
      {
        CCSetError();
        v25 = 0;
        goto LABEL_21;
      }

      v28 = v9;
      selfCopy = self;
      v14 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v11;
      v15 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v11);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            v20 = [CCMediaLinkedIdentifier alloc];
            v30 = 0;
            v21 = [(CCMediaLinkedIdentifier *)v20 initWithJSONDictionary:v19 error:&v30];
            v22 = v30;
            if (v21)
            {
              v23 = v22 == 0;
            }

            else
            {
              v23 = 0;
            }

            if (!v23)
            {
              v24 = v22;
              CCSetError();

              v25 = 0;
              v9 = v28;
              self = selfCopy;
              goto LABEL_21;
            }

            [v14 addObject:v21];
          }

          v16 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v16);
      }

      v9 = v28;
      self = selfCopy;
    }

    else
    {
      v14 = 0;
      v13 = v8;
    }

    v25 = [[CCMediaMetaContent alloc] initWithSourceItemIdentifier:v9 linkedIdentifiers:v14 error:error];
    v11 = v14;
LABEL_21:

    v8 = v13;
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
  if (self->_sourceItemIdentifier)
  {
    sourceItemIdentifier = [(CCMediaMetaContent *)self sourceItemIdentifier];
    [v3 setObject:sourceItemIdentifier forKeyedSubscript:@"sourceItemIdentifier"];
  }

  if (self->_linkedIdentifiers)
  {
    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    linkedIdentifiers = [(CCMediaMetaContent *)self linkedIdentifiers];
    v7 = [linkedIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(linkedIdentifiers);
          }

          jsonDictionary = [*(*(&v15 + 1) + 8 * i) jsonDictionary];
          [v5 addObject:jsonDictionary];
        }

        v8 = [linkedIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"linkedIdentifiers"];
  }

  v12 = [v3 copy];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_sourceItemIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18553 stringValue:self->_sourceItemIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_linkedIdentifiers)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18554 repeatedSubMessageValue:self->_linkedIdentifiers];
    blockCopy[2](blockCopy, v6);
  }
}

- (NSArray)linkedIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_linkedIdentifiers copyItems:1];

  return v2;
}

- (NSString)sourceItemIdentifier
{
  v2 = [(NSString *)self->_sourceItemIdentifier copy];

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
            goto LABEL_37;
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
        goto LABEL_37;
      }

LABEL_21:
      if ((v20 >> 3) == 2)
      {
        sourceItemIdentifier = CCPBReaderReadDataNoCopy();
        if (!v9)
        {
          v9 = objc_opt_new();
        }

        v24 = [CCMediaLinkedIdentifier alloc];
        v39 = 0;
        v25 = [(CCItemMessage *)v24 initWithData:sourceItemIdentifier error:&v39];
        v8 = v39;
        if (!v8 && v25)
        {
          [v9 addObject:v25];
        }
      }

      else if ((v20 >> 3) == 1)
      {
        v22 = CCPBReaderReadStringNoCopy();
        v8 = 0;
        sourceItemIdentifier = self->_sourceItemIdentifier;
        self->_sourceItemIdentifier = v22;
      }

      else
      {
        if (CCPBReaderSkipValueWithTag())
        {
          v8 = 0;
          goto LABEL_34;
        }

        v26 = objc_opt_class();
        sourceItemIdentifier = NSStringFromClass(v26);
        v27 = *&v5[*v10];
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
  v28 = [v9 copy];
  linkedIdentifiers = self->_linkedIdentifiers;
  self->_linkedIdentifiers = v28;

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

- (CCMediaMetaContent)initWithSourceItemIdentifier:(id)identifier linkedIdentifiers:(id)identifiers error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v10 = objc_opt_new();
  if (!identifierCopy)
  {
    v12 = 0;
    if (!identifiersCopy)
    {
      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    v30 = v12;
    v13 = CCValidateArrayValues();
    v14 = v12;

    if (!v13)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v14;
      goto LABEL_18;
    }

    v25 = v14;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = identifiersCopy;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          data = [*(*(&v26 + 1) + 8 * v19) data];
          CCPBDataWriterWriteDataField();

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v17);
    }

    v12 = v25;
    goto LABEL_15;
  }

  objc_opt_class();
  v31 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_18;
  }

  CCPBDataWriterWriteStringField();
  if (identifiersCopy)
  {
    goto LABEL_6;
  }

LABEL_15:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_18:

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  v3 = @"MediaMetaContent_linkedIdentifiers_type";
  if (identifier != 18568)
  {
    v3 = 0;
  }

  if (identifier == 18567)
  {
    v4 = @"MediaMetaContent_linkedIdentifiers_sourceItemIdentifier";
  }

  else
  {
    v4 = v3;
  }

  v5 = @"MediaMetaContent_linkedIdentifiers";
  if (identifier != 18554)
  {
    v5 = 0;
  }

  if (identifier == 18553)
  {
    v6 = @"MediaMetaContent_sourceItemIdentifier";
  }

  else
  {
    v6 = v5;
  }

  if (identifier <= 18566)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

@end