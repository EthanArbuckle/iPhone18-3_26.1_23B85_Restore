@interface CCHomeServiceAreaMap
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCHomeServiceAreaMap)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCHomeServiceAreaMap)initWithName:(id)name mapIdentifier:(id)identifier error:(id *)error;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCHomeServiceAreaMap

- (CCHomeServiceAreaMap)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"mapIdentifier"];
    v11 = [[CCHomeServiceAreaMap alloc] initWithName:v9 mapIdentifier:v10 error:error];
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
    name = [(CCHomeServiceAreaMap *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_hasMapIdentifier)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCHomeServiceAreaMap mapIdentifier](self, "mapIdentifier")}];
    [v3 setObject:v5 forKeyedSubscript:@"mapIdentifier"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_name)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:17041 stringValue:self->_name];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_hasMapIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:17042 uint32Value:self->_mapIdentifier];
    blockCopy[2](blockCopy, v6);
  }
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

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
        name = self->_name;
        self->_name = v29;
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
          self->_mapIdentifier = v25;
          self->_hasMapIdentifier = 1;
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
          errorCopy = error;
          v34 = v33 = dataCopy;
          v35 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          dataCopy = v33;
          error = errorCopy;
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

- (CCHomeServiceAreaMap)initWithName:(id)name mapIdentifier:(id)identifier error:(id *)error
{
  nameCopy = name;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  if (!nameCopy)
  {
    v12 = 0;
    if (!identifierCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v18 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v14;
      goto LABEL_11;
    }

    [identifierCopy unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    v12 = v14;
    goto LABEL_8;
  }

  objc_opt_class();
  v11 = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteStringField();
  if (identifierCopy)
  {
    goto LABEL_6;
  }

LABEL_8:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

@end