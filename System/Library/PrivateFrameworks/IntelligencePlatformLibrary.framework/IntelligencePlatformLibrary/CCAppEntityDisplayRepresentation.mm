@interface CCAppEntityDisplayRepresentation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppEntityDisplayRepresentation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppEntityDisplayRepresentation)initWithTitle:(id)title subtitle:(id)subtitle synonyms:(id)synonyms error:(id *)error;
- (NSArray)synonyms;
- (NSString)subtitle;
- (NSString)title;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppEntityDisplayRepresentation

- (CCAppEntityDisplayRepresentation)initWithJSONDictionary:(id)dictionary error:(id *)error
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
    v12 = [[CCAppEntityDisplayRepresentation alloc] initWithTitle:v9 subtitle:v10 synonyms:v11 error:error];
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
    title = [(CCAppEntityDisplayRepresentation *)self title];
    [v3 setObject:title forKeyedSubscript:@"title"];
  }

  if (self->_subtitle)
  {
    subtitle = [(CCAppEntityDisplayRepresentation *)self subtitle];
    [v3 setObject:subtitle forKeyedSubscript:@"subtitle"];
  }

  if (self->_synonyms)
  {
    synonyms = [(CCAppEntityDisplayRepresentation *)self synonyms];
    [v3 setObject:synonyms forKeyedSubscript:@"synonyms"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  typeCopy = type;
  blockCopy = block;
  if (self->_title)
  {
    if (typeCopy == 47343)
    {
      v6 = 47347;
    }

    else
    {
      if (typeCopy != 39427)
      {
        goto LABEL_7;
      }

      v6 = 39428;
    }

    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_title];
    blockCopy[2](blockCopy, v7);
  }

LABEL_7:
  if (!self->_subtitle)
  {
    goto LABEL_13;
  }

  if (typeCopy == 47343)
  {
    v8 = 47348;
  }

  else
  {
    if (typeCopy != 39427)
    {
      goto LABEL_13;
    }

    v8 = 39429;
  }

  v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v8 stringValue:self->_subtitle];
  blockCopy[2](blockCopy, v9);

LABEL_13:
  if (!self->_synonyms)
  {
    goto LABEL_19;
  }

  if (typeCopy == 47343)
  {
    v10 = 47349;
  }

  else
  {
    if (typeCopy != 39427)
    {
      goto LABEL_19;
    }

    v10 = 39430;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 repeatedStringValue:self->_synonyms];
  blockCopy[2](blockCopy, v11);

LABEL_19:
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) != 3)
      {
        if (v23 == 2)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v25 = 24;
        }

        else
        {
          if (v23 != 1)
          {
            if (CCPBReaderSkipValueWithTag())
            {
              v8 = 0;
              goto LABEL_35;
            }

            v28 = objc_opt_class();
            v26 = NSStringFromClass(v28);
            v29 = *&v5[*v10];
            v8 = CCSkipFieldErrorForMessage();
LABEL_34:

LABEL_35:
            if (*&v5[*v6] < *&v5[*v7])
            {
              continue;
            }

            goto LABEL_41;
          }

          v24 = CCPBReaderReadStringNoCopy();
          v8 = 0;
          v25 = 16;
        }

        v26 = *(&self->super.super.isa + v25);
        *(&self->super.super.isa + v25) = v24;
        goto LABEL_34;
      }

      break;
    }

    v27 = CCPBReaderReadStringNoCopy();
    v26 = v27;
    if (v9)
    {
      if (!v27)
      {
LABEL_30:
        v8 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v9 = objc_opt_new();
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    [v9 addObject:{v26, errorCopy}];
    goto LABEL_30;
  }

  v9 = 0;
LABEL_40:
  v8 = 0;
LABEL_41:
  v30 = [v9 copy];
  synonyms = self->_synonyms;
  self->_synonyms = v30;

  if (v8)
  {
    CCSetError();
    v32 = 0;
    v33 = dataCopy;
  }

  else
  {
    v34 = MEMORY[0x1E6993AA8];
    v33 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = *&v5[*v34];
      v38 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }
  }

  return v32;
}

- (CCAppEntityDisplayRepresentation)initWithTitle:(id)title subtitle:(id)subtitle synonyms:(id)synonyms error:(id *)error
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