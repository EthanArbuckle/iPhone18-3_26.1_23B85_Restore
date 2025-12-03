@interface CCHomeServiceArea
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCHomeServiceArea)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCHomeServiceArea)initWithName:(id)name areaIdentifier:(id)identifier associatedMapIdentifier:(id)mapIdentifier error:(id *)error;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCHomeServiceArea

- (CCHomeServiceArea)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"areaIdentifier"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"associatedMapIdentifier"];
    v12 = [[CCHomeServiceArea alloc] initWithName:v9 areaIdentifier:v10 associatedMapIdentifier:v11 error:error];
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
  if (self->_name)
  {
    name = [(CCHomeServiceArea *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_hasAreaIdentifier)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCHomeServiceArea areaIdentifier](self, "areaIdentifier")}];
    [v3 setObject:v5 forKeyedSubscript:@"areaIdentifier"];
  }

  if (self->_hasAssociatedMapIdentifier)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCHomeServiceArea associatedMapIdentifier](self, "associatedMapIdentifier")}];
    [v3 setObject:v6 forKeyedSubscript:@"associatedMapIdentifier"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_name)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:17037 stringValue:self->_name];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_hasAreaIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:17038 uint32Value:self->_areaIdentifier];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_hasAssociatedMapIdentifier)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:17039 uint32Value:self->_associatedMapIdentifier];
    blockCopy[2](blockCopy, v7);
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
    goto LABEL_54;
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
            goto LABEL_55;
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
        goto LABEL_55;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 1)
      {
        v36 = CCPBReaderReadStringNoCopy();
        name = self->_name;
        self->_name = v36;

        v11 = 0;
        goto LABEL_51;
      }

      if (v23 == 2)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v33 = *v8;
          v34 = *&v7[v33];
          if (v34 == -1 || v34 >= *&v7[*v9])
          {
            break;
          }

          v35 = *(*&v7[*v12] + v34);
          *&v7[v33] = v34 + 1;
          v32 |= (v35 & 0x7F) << v30;
          if ((v35 & 0x80) == 0)
          {
            goto LABEL_42;
          }

          v30 += 7;
          v20 = v31++ >= 9;
          if (v20)
          {
            LODWORD(v32) = 0;
            goto LABEL_44;
          }
        }

        *&v7[*v10] = 1;
LABEL_42:
        if (*&v7[*v10])
        {
          LODWORD(v32) = 0;
        }

LABEL_44:
        v11 = 0;
        self->_areaIdentifier = v32;
        v38 = 16;
      }

      else
      {
        if (v23 != 3)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v11 = 0;
          }

          else
          {
            v39 = objc_opt_class();
            NSStringFromClass(v39);
            errorCopy = error;
            v42 = v41 = dataCopy;
            v43 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            dataCopy = v41;
            error = errorCopy;
            self = selfCopy;
          }

LABEL_51:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v27 = *v8;
          v28 = *&v7[v27];
          if (v28 == -1 || v28 >= *&v7[*v9])
          {
            break;
          }

          v29 = *(*&v7[*v12] + v28);
          *&v7[v27] = v28 + 1;
          v26 |= (v29 & 0x7F) << v24;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_46;
          }

          v24 += 7;
          v20 = v25++ >= 9;
          if (v20)
          {
            LODWORD(v26) = 0;
            goto LABEL_48;
          }
        }

        *&v7[*v10] = 1;
LABEL_46:
        if (*&v7[*v10])
        {
          LODWORD(v26) = 0;
        }

LABEL_48:
        v11 = 0;
        self->_associatedMapIdentifier = v26;
        v38 = 17;
      }

      *(&self->super.super.isa + v38) = 1;
      goto LABEL_51;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_56;
  }

LABEL_54:
  if (!*&v7[*v10])
  {
    v47 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v44 = objc_opt_class();
  v11 = NSStringFromClass(v44);
  v45 = *&v7[*v10];
  v46 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_56:
  v47 = 0;
LABEL_58:

  return v47;
}

- (CCHomeServiceArea)initWithName:(id)name areaIdentifier:(id)identifier associatedMapIdentifier:(id)mapIdentifier error:(id *)error
{
  nameCopy = name;
  identifierCopy = identifier;
  mapIdentifierCopy = mapIdentifier;
  v13 = objc_opt_new();
  if (nameCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_13;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v15 = 0;
  }

  if (identifierCopy)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v17 = v15;

    if (!v16)
    {
      CCSetError();
      selfCopy = 0;
      v15 = v17;
      goto LABEL_15;
    }

    [identifierCopy unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    if (!mapIdentifierCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v17 = v15;
  if (mapIdentifierCopy)
  {
LABEL_10:
    objc_opt_class();
    v18 = CCValidateIsInstanceOfExpectedClass();
    v15 = v17;

    if (v18)
    {
      [mapIdentifierCopy unsignedIntValue];
      CCPBDataWriterWriteUint32Field();
      goto LABEL_12;
    }

LABEL_13:
    CCSetError();
    selfCopy = 0;
    goto LABEL_15;
  }

LABEL_8:
  v15 = v17;
LABEL_12:
  immutableData = [v13 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end