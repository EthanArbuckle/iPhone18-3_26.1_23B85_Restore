@interface CCToolKitToolSystemToolProtocolConditionallyEnabled
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolSystemToolProtocolConditionallyEnabled)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolSystemToolProtocolConditionallyEnabled)initWithPersistState:(id)state error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolSystemToolProtocolConditionallyEnabled

- (CCToolKitToolSystemToolProtocolConditionallyEnabled)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"persistState"];
    v10 = [[CCToolKitToolSystemToolProtocolConditionallyEnabled alloc] initWithPersistState:v9 error:error];
  }

  else
  {
    CCSetError();
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasPersistState)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolSystemToolProtocolConditionallyEnabled persistState](self, "persistState")}];
    [v3 setObject:v4 forKeyedSubscript:@"persistState"];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  if (self->_hasPersistState)
  {
    v7 = MEMORY[0x1E69939F0];
    blockCopy = block;
    v9 = [v7 alloc];
    v10 = [v9 initWithFieldType:*MEMORY[0x1E69939A8] BOOLValue:self->_persistState];
    (*(block + 2))(blockCopy, v10);
  }
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  v8 = MEMORY[0x1E6993AA8];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_43;
  }

  v9 = 0;
  v10 = &OBJC_IVAR___CCToolKitToolTypeInstance__kindType;
  v11 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v5[*v8])
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 0;
    }

    if (!v12)
    {
      break;
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
      v20 = v14++ >= 9;
      if (v20)
      {
        v21 = 0;
        if (*&v5[*v8])
        {
          goto LABEL_44;
        }

        goto LABEL_21;
      }
    }

    *&v5[*v8] = 1;
LABEL_17:
    v22 = *&v5[*v8];
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
      goto LABEL_44;
    }

LABEL_21:
    if ((v21 >> 3) == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = *v6;
        v27 = *&v5[v26];
        v28 = v27 + 1;
        if (v27 == -1 || v28 > *&v5[*v7])
        {
          break;
        }

        v29 = *(*&v5[*v11] + v27);
        *&v5[v26] = v28;
        v25 |= (v29 & 0x7F) << v23;
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_32;
        }

        v23 += 7;
        v20 = v24++ >= 9;
        if (v20)
        {
          v30 = 0;
          goto LABEL_38;
        }
      }

      *&v5[*v8] = 1;
LABEL_32:
      v31 = *&v5[*v8] || v25 == 0;
      v30 = !v31;
LABEL_38:
      v9 = 0;
      *(&self->super.super.isa + v10[193]) = v30;
      self->_hasPersistState = 1;
    }

    else if (CCPBReaderSkipValueWithTag())
    {
      v9 = 0;
    }

    else
    {
      v32 = objc_opt_class();
      NSStringFromClass(v32);
      v34 = v33 = v10;
      v35 = *&v5[*v8];
      v9 = CCSkipFieldErrorForMessage();

      v10 = v33;
    }
  }

  while (*&v5[*v6] < *&v5[*v7]);
  if (v9)
  {
    CCSetError();
  }

  else
  {
LABEL_43:
    if (!*&v5[*v8])
    {
      v39 = 1;
      goto LABEL_47;
    }

LABEL_44:
    v36 = objc_opt_class();
    v9 = NSStringFromClass(v36);
    v37 = *&v5[*v8];
    v38 = CCInvalidBufferErrorForMessage();
    CCSetError();
  }

  v39 = 0;
LABEL_47:

  return v39;
}

- (CCToolKitToolSystemToolProtocolConditionallyEnabled)initWithPersistState:(id)state error:(id *)error
{
  stateCopy = state;
  v7 = objc_opt_new();
  if (stateCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v9 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      goto LABEL_7;
    }

    [stateCopy BOOLValue];
    CCPBDataWriterWriteBOOLField();
  }

  else
  {
    v9 = 0;
  }

  immutableData = [v7 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

@end