@interface CCMediaLinkedIdentifier
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCMediaLinkedIdentifier)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCMediaLinkedIdentifier)initWithSourceItemIdentifier:(id)identifier type:(unsigned int)type error:(id *)error;
- (NSString)sourceItemIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCMediaLinkedIdentifier

- (CCMediaLinkedIdentifier)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"sourceItemIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v11 = v10;
    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v13 = [[CCMediaLinkedIdentifier alloc] initWithSourceItemIdentifier:v9 type:unsignedIntegerValue error:error];
  }

  else
  {
    CCSetError();
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_sourceItemIdentifier)
  {
    sourceItemIdentifier = [(CCMediaLinkedIdentifier *)self sourceItemIdentifier];
    [v3 setObject:sourceItemIdentifier forKeyedSubscript:@"sourceItemIdentifier"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCMediaLinkedIdentifier type](self, "type")}];
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_sourceItemIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18567 stringValue:self->_sourceItemIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:18568 enumValue:self->_type];
  blockCopy[2](blockCopy, v6);
}

- (NSString)sourceItemIdentifier
{
  v2 = [(NSString *)self->_sourceItemIdentifier copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_41;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  selfCopy = self;
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        if (v18 == -1 || v18 >= *&v7[*v9])
        {
          break;
        }

        v19 = *(*&v7[*v12] + v18);
        *&v7[v17] = v18 + 1;
        v16 |= (v19 & 0x7F) << v14;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v20 = v15++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_42;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v22 = *&v7[*v10];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v16;
      }

      if (v22)
      {
        goto LABEL_42;
      }

LABEL_21:
      if ((v21 >> 3) == 1)
      {
        v29 = CCPBReaderReadStringNoCopy();
        sourceItemIdentifier = self->_sourceItemIdentifier;
        self->_sourceItemIdentifier = v29;
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
            v26 = *v8;
            v27 = *&v7[v26];
            if (v27 == -1 || v27 >= *&v7[*v9])
            {
              break;
            }

            v28 = *(*&v7[*v12] + v27);
            *&v7[v26] = v27 + 1;
            v25 |= (v28 & 0x7F) << v23;
            if ((v28 & 0x80) == 0)
            {
              goto LABEL_34;
            }

            v23 += 7;
            v20 = v24++ >= 9;
            if (v20)
            {
              LODWORD(v25) = 0;
              goto LABEL_36;
            }
          }

          *&v7[*v10] = 1;
LABEL_34:
          if (*&v7[*v10])
          {
            LODWORD(v25) = 0;
          }

LABEL_36:
          v11 = 0;
          self->_type = v25;
LABEL_38:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v31 = objc_opt_class();
          NSStringFromClass(v31);
          v32 = dataCopy;
          v34 = v33 = error;
          v35 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          error = v33;
          dataCopy = v32;
          self = selfCopy;
          goto LABEL_38;
        }
      }

      v11 = 0;
      goto LABEL_38;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_43;
  }

LABEL_41:
  if (!*&v7[*v10])
  {
    v39 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v36 = objc_opt_class();
  v11 = NSStringFromClass(v36);
  v37 = *&v7[*v10];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_43:
  v39 = 0;
LABEL_45:

  return v39;
}

- (CCMediaLinkedIdentifier)initWithSourceItemIdentifier:(id)identifier type:(unsigned int)type error:(id *)error
{
  identifierCopy = identifier;
  v9 = objc_opt_new();
  if (!identifierCopy)
  {
    v11 = 0;
    if (!type)
    {
      goto LABEL_8;
    }

LABEL_6:
    v17 = v11;
    v12 = CCValidateEnumField();
    v13 = v11;

    if (!v12)
    {
      CCSetError();
      selfCopy = 0;
      v11 = v13;
      goto LABEL_11;
    }

    CCPBDataWriterWriteUint32Field();
    v11 = v13;
    goto LABEL_8;
  }

  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!IsInstanceOfExpectedClass)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteStringField();
  if (type)
  {
    goto LABEL_6;
  }

LABEL_8:
  immutableData = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

@end