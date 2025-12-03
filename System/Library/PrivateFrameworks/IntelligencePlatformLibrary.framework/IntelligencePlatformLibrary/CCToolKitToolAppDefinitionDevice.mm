@interface CCToolKitToolAppDefinitionDevice
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolAppDefinitionDevice)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolAppDefinitionDevice)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error;
- (NSString)remote;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolAppDefinitionDevice

- (CCToolKitToolAppDefinitionDevice)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"local"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"remote"];
    if (v9)
    {
      v11 = v9;
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    v14 = v9;
    if (v10)
    {
      v14 = v10;

      v12 = 2;
    }

    v13 = [[CCToolKitToolAppDefinitionDevice alloc] initWithKind:v14 kindType:v12 error:error];
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
  kindType = self->_kindType;
  if (kindType == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolAppDefinitionDevice local](self, "local")}];
    [v3 setObject:v5 forKeyedSubscript:@"local"];

    kindType = self->_kindType;
  }

  if (kindType == 2 && self->_remote)
  {
    remote = [(CCToolKitToolAppDefinitionDevice *)self remote];
    [v3 setObject:remote forKeyedSubscript:@"remote"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_local];
  blockCopy[2](blockCopy, v7);

  if (self->_remote)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_remote];
    blockCopy[2](blockCopy, v8);
  }
}

- (NSString)remote
{
  v2 = [(NSString *)self->_remote copy];

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
    goto LABEL_41;
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
            goto LABEL_42;
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
        goto LABEL_42;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v30 = CCPBReaderReadStringNoCopy();
        remote = self->_remote;
        self->_remote = v30;

        v10 = 0;
        self->_local = 0;
        self->_kindType = 2;
        goto LABEL_38;
      }

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
        self->_local = v25;
        self->_kindType = 1;
        v36 = self->_remote;
        self->_remote = 0;
      }

      else if ((CCPBReaderSkipValueWithTag() & 1) == 0)
      {
        v32 = objc_opt_class();
        NSStringFromClass(v32);
        v34 = v33 = dataCopy;
        v35 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

        dataCopy = v33;
        goto LABEL_38;
      }

      v10 = 0;
LABEL_38:
      if (*&v6[*v7] < *&v6[*v8])
      {
        continue;
      }
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_43;
  }

LABEL_41:
  if (!*&v6[*v9])
  {
    v40 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v37 = objc_opt_class();
  v10 = NSStringFromClass(v37);
  v38 = *&v6[*v9];
  v39 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_43:
  v40 = 0;
LABEL_45:

  return v40;
}

- (CCToolKitToolAppDefinitionDevice)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error
{
  kindCopy = kind;
  v9 = objc_opt_new();
  if (kindCopy && type == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      goto LABEL_13;
    }

    [kindCopy unsignedIntegerValue];
    v12 = CCValidateEnumField();
    v13 = v11;

    if (v12)
    {
      CCPBDataWriterWriteUint32Field();
    }
  }

  else
  {
    v13 = 0;
    if (kindCopy && type == 2)
    {
      objc_opt_class();
      v14 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (!v14)
      {
        CCSetError();
        selfCopy = 0;
        v11 = v13;
        goto LABEL_13;
      }

      CCPBDataWriterWriteStringField();
    }
  }

  immutableData = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  v11 = v13;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

@end