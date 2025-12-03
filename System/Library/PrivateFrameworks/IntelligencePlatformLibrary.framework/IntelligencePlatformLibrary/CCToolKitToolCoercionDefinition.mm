@interface CCToolKitToolCoercionDefinition
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolCoercionDefinition)initWithDirection:(unsigned int)direction typeInstance:(id)instance error:(id *)error;
- (CCToolKitToolCoercionDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypeInstance)typeInstance;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolCoercionDefinition

- (CCToolKitToolCoercionDefinition)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v19[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"direction"];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"typeInstance"];
    if (v13)
    {
      v14 = v13;
      v19[0] = 0;
      v15 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v13 error:v19];
      v16 = v19[0];
      v17 = v16;
      if (!v15 || v16)
      {
        CCSetError();

        v12 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 0;
    }

    v12 = [[CCToolKitToolCoercionDefinition alloc] initWithDirection:unsignedIntegerValue typeInstance:v15 error:error];
    v14 = v15;
LABEL_13:

    goto LABEL_14;
  }

  CCSetError();
  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolCoercionDefinition direction](self, "direction")}];
  [v3 setObject:v4 forKeyedSubscript:@"direction"];

  if (self->_typeInstance)
  {
    typeInstance = [(CCToolKitToolCoercionDefinition *)self typeInstance];
    jsonDictionary = [typeInstance jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"typeInstance"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_direction];
  blockCopy[2](blockCopy, v7);

  if (self->_typeInstance)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_typeInstance];
    blockCopy[2](blockCopy, v8);
  }
}

- (CCToolKitToolTypeInstance)typeInstance
{
  v2 = [(CCToolKitToolTypeInstance *)self->_typeInstance copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_42;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_43;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
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
        goto LABEL_43;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v30 = [CCToolKitToolTypeInstance alloc];
        v31 = CCPBReaderReadDataNoCopy();
        v42 = 0;
        v32 = [(CCItemMessage *)v30 initWithData:v31 error:&v42];
        v10 = v42;
        typeInstance = self->_typeInstance;
        self->_typeInstance = v32;
      }

      else
      {
        if ((v21 >> 3) == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v26 = *v7;
            v27 = *&v6[v26];
            v28 = v27 + 1;
            if (v27 == -1 || v28 > *&v6[*v8])
            {
              break;
            }

            v29 = *(*&v6[*v11] + v27);
            *&v6[v26] = v28;
            v25 |= (v29 & 0x7F) << v23;
            if ((v29 & 0x80) == 0)
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

          *&v6[*v9] = 1;
LABEL_34:
          if (*&v6[*v9])
          {
            LODWORD(v25) = 0;
          }

LABEL_36:
          v10 = 0;
          self->_direction = v25;
LABEL_39:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
          goto LABEL_39;
        }

        v34 = objc_opt_class();
        v31 = NSStringFromClass(v34);
        v35 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();
      }

      goto LABEL_39;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_44;
  }

LABEL_42:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v40 = 1;
    goto LABEL_46;
  }

LABEL_43:
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v38 = *&v6[*v9];
  v39 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_44:
  v40 = 0;
LABEL_46:

  return v40;
}

- (CCToolKitToolCoercionDefinition)initWithDirection:(unsigned int)direction typeInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  v9 = objc_opt_new();
  if (!direction)
  {
    v11 = 0;
    if (!instanceCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v18 = v11;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v13 = v11;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      v11 = v13;
      goto LABEL_11;
    }

    data = [instanceCopy data];
    CCPBDataWriterWriteDataField();

    v11 = v13;
    goto LABEL_8;
  }

  v10 = CCValidateEnumField();
  v11 = 0;
  if (!v10)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteUint32Field();
  if (instanceCopy)
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