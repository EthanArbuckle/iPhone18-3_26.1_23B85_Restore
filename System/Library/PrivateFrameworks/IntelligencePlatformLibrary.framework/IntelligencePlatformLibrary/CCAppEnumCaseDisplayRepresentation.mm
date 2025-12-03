@interface CCAppEnumCaseDisplayRepresentation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppEnumCaseDisplayRepresentation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppEnumCaseDisplayRepresentation)initWithTitle:(id)title subtitle:(id)subtitle synonyms:(id)synonyms error:(id *)error;
- (NSArray)synonyms;
- (NSString)subtitle;
- (NSString)title;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppEnumCaseDisplayRepresentation

- (CCAppEnumCaseDisplayRepresentation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"synonyms"];
    v12 = [[CCAppEnumCaseDisplayRepresentation alloc] initWithTitle:v9 subtitle:v10 synonyms:v11 error:error];
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_title)
  {
    title = [(CCAppEnumCaseDisplayRepresentation *)self title];
    [v3 setObject:title forKeyedSubscript:@"title"];
  }

  if (self->_subtitle)
  {
    subtitle = [(CCAppEnumCaseDisplayRepresentation *)self subtitle];
    [v3 setObject:subtitle forKeyedSubscript:@"subtitle"];
  }

  if (self->_synonyms)
  {
    synonyms = [(CCAppEnumCaseDisplayRepresentation *)self synonyms];
    [v3 setObject:synonyms forKeyedSubscript:@"synonyms"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_title)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42618 stringValue:self->_title];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_subtitle)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42619 stringValue:self->_subtitle];
    blockCopy[2](blockCopy, v6);
  }

  v7 = blockCopy;
  if (self->_synonyms)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:42620 repeatedStringValue:self->_synonyms];
    blockCopy[2](blockCopy, v8);

    v7 = blockCopy;
  }
}

- (NSArray)synonyms
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_synonyms copyItems:1];

  return v2;
}

- (NSString)subtitle
{
  v2 = [(NSString *)self->_subtitle copy];

  return v2;
}

- (NSString)title
{
  v2 = [(NSString *)self->_title copy];

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
        goto LABEL_41;
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) != 3)
      {
        if (v22 == 2)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v24 = 24;
        }

        else
        {
          if (v22 != 1)
          {
            if (CCPBReaderSkipValueWithTag())
            {
              v8 = 0;
              goto LABEL_35;
            }

            v27 = objc_opt_class();
            v25 = NSStringFromClass(v27);
            v28 = *&v5[*v10];
            v8 = CCSkipFieldErrorForMessage();
LABEL_34:

LABEL_35:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_41;
          }

          v23 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v24 = 16;
        }

        v25 = *(&self->super.super.isa + v24);
        *(&self->super.super.isa + v24) = v23;
        goto LABEL_34;
      }

      break;
    }

    v26 = CCPBReaderReadStringNoCopy();
    v25 = v26;
    if (v9)
    {
      if (!v26)
      {
LABEL_30:
        v8 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    [v9 addObject:{v25, errorCopy}];
    goto LABEL_30;
  }

  v9 = 0;
LABEL_40:
  v8 = 0;
LABEL_41:
  v29 = [v9 copy];
  synonyms = self->_synonyms;
  self->_synonyms = v29;

  if (v8)
  {
    CCSetError();
    v31 = 0;
    v32 = dataCopy;
  }

  else
  {
    v33 = MEMORY[0x1E6993AA8];
    v32 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = *&v5[*v33];
      v37 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }
  }

  return v31;
}

- (CCAppEnumCaseDisplayRepresentation)initWithTitle:(id)title subtitle:(id)subtitle synonyms:(id)synonyms error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  synonymsCopy = synonyms;
  v13 = objc_opt_new();
  if (titleCopy)
  {
    objc_opt_class();
    v36 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_14;
    }

    CCPBDataWriterWriteStringField();
    if (!subtitleCopy)
    {
LABEL_4:
      v16 = v15;
      if (synonymsCopy)
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
    if (!subtitleCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v35 = v15;
  v25 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v25)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v16;
    goto LABEL_21;
  }

  CCPBDataWriterWriteStringField();
  if (!synonymsCopy)
  {
    goto LABEL_18;
  }

LABEL_5:
  objc_opt_class();
  v34 = v16;
  v17 = CCValidateArrayValues();
  v15 = v16;

  if (v17)
  {
    errorCopy = error;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = synonymsCopy;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v30 + 1) + 8 * v22);
          CCPBDataWriterWriteStringField();
          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v20);
    }

    error = errorCopy;
    goto LABEL_19;
  }

LABEL_14:
  CCSetError();
  selfCopy = 0;
LABEL_21:

  v27 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end