@interface CCToolKitToolSystemToolProtocolConditionallyEnabled
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemToolProtocolConditionallyEnabled)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemToolProtocolConditionallyEnabled)initWithPersistState:(id)a3 error:(id *)a4;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolSystemToolProtocolConditionallyEnabled

- (CCToolKitToolSystemToolProtocolConditionallyEnabled)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"persistState"];
    v10 = [[CCToolKitToolSystemToolProtocolConditionallyEnabled alloc] initWithPersistState:v9 error:a4];
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

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  if (self->_hasPersistState)
  {
    v7 = MEMORY[0x1E69939F0];
    v8 = a3;
    v9 = [v7 alloc];
    v10 = [v9 initWithFieldType:*MEMORY[0x1E69939A8] BOOLValue:self->_persistState];
    (*(a3 + 2))(v8, v10);
  }
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v41 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v41];
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

- (CCToolKitToolSystemToolProtocolConditionallyEnabled)initWithPersistState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  if (v6)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v9 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v11 = 0;
      goto LABEL_7;
    }

    [v6 BOOLValue];
    CCPBDataWriterWriteBOOLField();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 immutableData];
  self = [(CCItemMessage *)self initWithData:v10 error:a4];

  v11 = self;
LABEL_7:

  return v11;
}

@end