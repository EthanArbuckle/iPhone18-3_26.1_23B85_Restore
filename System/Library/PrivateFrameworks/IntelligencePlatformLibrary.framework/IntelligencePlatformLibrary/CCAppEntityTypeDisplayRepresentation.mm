@interface CCAppEntityTypeDisplayRepresentation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppEntityTypeDisplayRepresentation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppEntityTypeDisplayRepresentation)initWithName:(id)name synonyms:(id)synonyms error:(id *)error;
- (NSArray)synonyms;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppEntityTypeDisplayRepresentation

- (CCAppEntityTypeDisplayRepresentation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"synonyms"];
    v11 = [[CCAppEntityTypeDisplayRepresentation alloc] initWithName:v9 synonyms:v10 error:error];
  }

  else
  {
    CCSetError();
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_name)
  {
    name = [(CCAppEntityTypeDisplayRepresentation *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_synonyms)
  {
    synonyms = [(CCAppEntityTypeDisplayRepresentation *)self synonyms];
    [v3 setObject:synonyms forKeyedSubscript:@"synonyms"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  typeCopy = type;
  blockCopy = block;
  if (self->_name)
  {
    if (typeCopy == 47344)
    {
      v6 = 47352;
    }

    else
    {
      if (typeCopy != 39431)
      {
        goto LABEL_7;
      }

      v6 = 39432;
    }

    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_name];
    blockCopy[2](blockCopy, v7);
  }

LABEL_7:
  if (!self->_synonyms)
  {
    goto LABEL_13;
  }

  if (typeCopy == 47344)
  {
    v8 = 47353;
  }

  else
  {
    if (typeCopy != 39431)
    {
      goto LABEL_13;
    }

    v8 = 39433;
  }

  v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v8 repeatedStringValue:self->_synonyms];
  blockCopy[2](blockCopy, v9);

LABEL_13:
}

- (NSArray)synonyms
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_synonyms copyItems:1];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

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
      if ((v21 >> 3) != 2)
      {
        if ((v21 >> 3) == 1)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          name = self->_name;
          self->_name = v23;
        }

        else
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v8 = 0;
            goto LABEL_32;
          }

          v26 = objc_opt_class();
          name = NSStringFromClass(v26);
          v27 = *&v5[*v10];
          v8 = CCSkipFieldErrorForMessage();
        }

LABEL_31:

LABEL_32:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        goto LABEL_38;
      }

      break;
    }

    v25 = CCPBReaderReadStringNoCopy();
    name = v25;
    if (v9)
    {
      if (!v25)
      {
LABEL_27:
        v8 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!name)
      {
        goto LABEL_27;
      }
    }

    [v9 addObject:{name, errorCopy}];
    goto LABEL_27;
  }

  v9 = 0;
LABEL_37:
  v8 = 0;
LABEL_38:
  v28 = [v9 copy];
  synonyms = self->_synonyms;
  self->_synonyms = v28;

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

- (CCAppEntityTypeDisplayRepresentation)initWithName:(id)name synonyms:(id)synonyms error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  synonymsCopy = synonyms;
  v10 = objc_opt_new();
  if (!nameCopy)
  {
    v12 = 0;
    if (!synonymsCopy)
    {
      goto LABEL_15;
    }

LABEL_6:
    objc_opt_class();
    v29 = v12;
    v13 = CCValidateArrayValues();
    v14 = v12;

    if (!v13)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v14;
      goto LABEL_18;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = synonymsCopy;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          CCPBDataWriterWriteStringField();
          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v17);
    }

    v12 = v14;
    goto LABEL_15;
  }

  objc_opt_class();
  v30 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_18;
  }

  CCPBDataWriterWriteStringField();
  if (synonymsCopy)
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

@end