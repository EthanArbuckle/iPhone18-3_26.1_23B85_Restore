@interface CCPhotosPetRelationshipContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCPhotosPetRelationshipContent)initWithIsUsersPet:(id)pet type:(unsigned int)type error:(id *)error;
- (CCPhotosPetRelationshipContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCPhotosPetRelationshipContent

- (CCPhotosPetRelationshipContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"isUsersPet"];
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

    v13 = [[CCPhotosPetRelationshipContent alloc] initWithIsUsersPet:v9 type:unsignedIntegerValue error:error];
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
  if (self->_hasIsUsersPet)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCPhotosPetRelationshipContent isUsersPet](self, "isUsersPet")}];
    [v3 setObject:v4 forKeyedSubscript:@"isUsersPet"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCPhotosPetRelationshipContent type](self, "type")}];
  [v3 setObject:v5 forKeyedSubscript:@"type"];

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_hasIsUsersPet)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:59689 BOOLValue:self->_isUsersPet];
    blockCopy[2](blockCopy, v5);
  }

  v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:59690 enumValue:self->_type];
  blockCopy[2](blockCopy, v6);
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
    goto LABEL_55;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  selfCopy = self;
  do
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (!v13)
    {
      break;
    }

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
          goto LABEL_56;
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
      goto LABEL_56;
    }

LABEL_21:
    if ((v21 >> 3) == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v32 = *v8;
        v33 = *&v7[v32];
        if (v33 == -1 || v33 >= *&v7[*v9])
        {
          break;
        }

        v34 = *(*&v7[*v12] + v33);
        *&v7[v32] = v33 + 1;
        v31 |= (v34 & 0x7F) << v29;
        if ((v34 & 0x80) == 0)
        {
          goto LABEL_44;
        }

        v29 += 7;
        v20 = v30++ >= 9;
        if (v20)
        {
          v35 = 0;
          goto LABEL_50;
        }
      }

      *&v7[*v10] = 1;
LABEL_44:
      v36 = *&v7[*v10] || v31 == 0;
      v35 = !v36;
LABEL_50:
      v11 = 0;
      self->_isUsersPet = v35;
      self->_hasIsUsersPet = 1;
    }

    else if ((v21 >> 3) == 2)
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
          goto LABEL_40;
        }

        v23 += 7;
        v20 = v24++ >= 9;
        if (v20)
        {
          LODWORD(v25) = 0;
          goto LABEL_42;
        }
      }

      *&v7[*v10] = 1;
LABEL_40:
      if (*&v7[*v10])
      {
        LODWORD(v25) = 0;
      }

LABEL_42:
      v11 = 0;
      self->_type = v25;
    }

    else if (CCPBReaderSkipValueWithTag())
    {
      v11 = 0;
    }

    else
    {
      v37 = objc_opt_class();
      NSStringFromClass(v37);
      errorCopy = error;
      v40 = v39 = dataCopy;
      v41 = *&v7[*v10];
      v11 = CCSkipFieldErrorForMessage();

      dataCopy = v39;
      error = errorCopy;
      self = selfCopy;
    }
  }

  while (*&v7[*v8] < *&v7[*v9]);
  if (v11)
  {
    CCSetError();
  }

  else
  {
LABEL_55:
    if (!*&v7[*v10])
    {
      v45 = 1;
      goto LABEL_59;
    }

LABEL_56:
    v42 = objc_opt_class();
    v11 = NSStringFromClass(v42);
    v43 = *&v7[*v10];
    v44 = CCInvalidBufferErrorForMessage();
    CCSetError();
  }

  v45 = 0;
LABEL_59:

  return v45;
}

- (CCPhotosPetRelationshipContent)initWithIsUsersPet:(id)pet type:(unsigned int)type error:(id *)error
{
  petCopy = pet;
  v9 = objc_opt_new();
  if (!petCopy)
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

  [petCopy BOOLValue];
  CCPBDataWriterWriteBOOLField();
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

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 5848) > 2u)
  {
    return 0;
  }

  else
  {
    return off_1E73E78B0[(identifier + 5848)];
  }
}

@end