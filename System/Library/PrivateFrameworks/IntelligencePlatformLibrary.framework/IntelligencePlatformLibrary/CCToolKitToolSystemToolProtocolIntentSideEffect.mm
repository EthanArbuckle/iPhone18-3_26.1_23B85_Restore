@interface CCToolKitToolSystemToolProtocolIntentSideEffect
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolSystemToolProtocolIntentSideEffect)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolSystemToolProtocolIntentSideEffect)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolSystemToolProtocolIntentSideEffect

- (CCToolKitToolSystemToolProtocolIntentSideEffect)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"unk"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"noSideEffect"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"stateChange"];
    if (v9)
    {
      v12 = v9;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v15 = v9;
    if (v10)
    {
      v15 = v10;

      v13 = 2;
    }

    if (v11)
    {
      v16 = v11;

      v13 = 3;
      v15 = v16;
    }

    v14 = [[CCToolKitToolSystemToolProtocolIntentSideEffect alloc] initWithKind:v15 kindType:v13 error:error];
  }

  else
  {
    CCSetError();
    v14 = 0;
  }

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocolIntentSideEffect unk](self, "unk")}];
    [v3 setObject:v5 forKeyedSubscript:@"unk"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocolIntentSideEffect noSideEffect](self, "noSideEffect")}];
    [v3 setObject:v6 forKeyedSubscript:@"noSideEffect"];

    kindType = self->_kindType;
  }

  if (kindType == 3 && self->_hasStateChange)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[CCToolKitToolSystemToolProtocolIntentSideEffect stateChange](self, "stateChange")}];
    [v3 setObject:v7 forKeyedSubscript:@"stateChange"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_unk];
  blockCopy[2](blockCopy, v7);

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_noSideEffect];
  blockCopy[2](blockCopy, v8);

  if (self->_hasStateChange)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int32Value:self->_stateChange];
    blockCopy[2](blockCopy, v9);
  }
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
    goto LABEL_65;
  }

  v10 = 0;
  v11 = &OBJC_IVAR___CCToolKitToolTypeInstance__kindType;
  v12 = &OBJC_IVAR___CCToolKitToolTypeInstance__kindType;
  v13 = &OBJC_IVAR___CCToolKitToolTypeInstance__kindType;
  v14 = MEMORY[0x1E6993AA0];
  v56 = dataCopy;
  while (2)
  {
    if (*&v6[*v9])
    {
      v15 = 0;
    }

    else
    {
      v15 = v10 == 0;
    }

    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = *v7;
        v20 = *&v6[v19];
        v21 = v20 + 1;
        if (v20 == -1 || v21 > *&v6[*v8])
        {
          break;
        }

        v22 = *(*&v6[*v14] + v20);
        *&v6[v19] = v21;
        v18 |= (v22 & 0x7F) << v16;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v16 += 7;
        v23 = v17++ >= 9;
        if (v23)
        {
          v24 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_66;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v25 = *&v6[*v9];
      if (v25)
      {
        v24 = 0;
      }

      else
      {
        v24 = v18;
      }

      if (v25)
      {
        goto LABEL_66;
      }

LABEL_21:
      v26 = v24 >> 3;
      if ((v24 >> 3) == 1)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (1)
        {
          v44 = *v7;
          v45 = *&v6[v44];
          v46 = v45 + 1;
          if (v45 == -1 || v46 > *&v6[*v8])
          {
            break;
          }

          v47 = *(*&v6[*v14] + v45);
          *&v6[v44] = v46;
          v43 |= (v47 & 0x7F) << v41;
          if ((v47 & 0x80) == 0)
          {
            goto LABEL_52;
          }

          v41 += 7;
          v23 = v42++ >= 9;
          if (v23)
          {
            LODWORD(v43) = 0;
            goto LABEL_54;
          }
        }

        *&v6[*v9] = 1;
LABEL_52:
        if (*&v6[*v9])
        {
          LODWORD(v43) = 0;
        }

LABEL_54:
        v10 = 0;
        self->_unk = v43;
        *(&self->super.super.isa + v11[202]) = 1;
        *(&self->super.super.isa + v12[203]) = 0;
      }

      else
      {
        if (v26 != 2)
        {
          if (v26 == 3)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            while (1)
            {
              v30 = *v7;
              v31 = *&v6[v30];
              v32 = v31 + 1;
              if (v31 == -1 || v32 > *&v6[*v8])
              {
                break;
              }

              v33 = *(*&v6[*v14] + v31);
              *&v6[v30] = v32;
              v29 |= (v33 & 0x7F) << v27;
              if ((v33 & 0x80) == 0)
              {
                goto LABEL_57;
              }

              v27 += 7;
              v23 = v28++ >= 9;
              if (v23)
              {
                LODWORD(v29) = 0;
                goto LABEL_59;
              }
            }

            *&v6[*v9] = 1;
LABEL_57:
            if (*&v6[*v9])
            {
              LODWORD(v29) = 0;
            }

LABEL_59:
            v10 = 0;
            *(&self->super.super.isa + v13[204]) = v29;
            self->_hasStateChange = 1;
            self->_unk = 0;
            *(&self->super.super.isa + v12[203]) = 0;
            *(&self->super.super.isa + v11[202]) = 3;
          }

          else
          {
            if (CCPBReaderSkipValueWithTag())
            {
              v10 = 0;
            }

            else
            {
              v48 = objc_opt_class();
              v49 = NSStringFromClass(v48);
              v50 = *&v6[*v9];
              v10 = CCSkipFieldErrorForMessage();

              dataCopy = v56;
            }

            v11 = &OBJC_IVAR___CCToolKitToolTypeInstance__kindType;
            v12 = &OBJC_IVAR___CCToolKitToolTypeInstance__kindType;
            v13 = &OBJC_IVAR___CCToolKitToolTypeInstance__kindType;
          }

LABEL_62:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          v37 = *v7;
          v38 = *&v6[v37];
          v39 = v38 + 1;
          if (v38 == -1 || v39 > *&v6[*v8])
          {
            break;
          }

          v40 = *(*&v6[*v14] + v38);
          *&v6[v37] = v39;
          v36 |= (v40 & 0x7F) << v34;
          if ((v40 & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v34 += 7;
          v23 = v35++ >= 9;
          if (v23)
          {
            LODWORD(v36) = 0;
            goto LABEL_50;
          }
        }

        *&v6[*v9] = 1;
LABEL_48:
        if (*&v6[*v9])
        {
          LODWORD(v36) = 0;
        }

LABEL_50:
        v10 = 0;
        *(&self->super.super.isa + v12[203]) = v36;
        self->_unk = 0;
        *(&self->super.super.isa + v11[202]) = 2;
      }

      *(&self->super.super.isa + v13[204]) = 0;
      goto LABEL_62;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_67;
  }

LABEL_65:
  if (!*&v6[*v9])
  {
    v54 = 1;
    goto LABEL_69;
  }

LABEL_66:
  v51 = objc_opt_class();
  v10 = NSStringFromClass(v51);
  v52 = *&v6[*v9];
  v53 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_67:
  v54 = 0;
LABEL_69:

  return v54;
}

- (CCToolKitToolSystemToolProtocolIntentSideEffect)initWithKind:(id)kind kindType:(unsigned int)type error:(id *)error
{
  kindCopy = kind;
  v9 = objc_opt_new();
  if (kindCopy && type == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      [kindCopy unsignedIntegerValue];
      v12 = CCValidateEnumField();
      v13 = v11;

      if (v12)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (!kindCopy || type != 2)
    {
      v13 = 0;
      if (kindCopy && type == 3)
      {
        objc_opt_class();
        v17 = CCValidateIsInstanceOfExpectedClass();
        v13 = 0;
        if (!v17)
        {
          CCSetError();
          selfCopy = 0;
          v11 = v13;
          goto LABEL_17;
        }

        [kindCopy intValue];
        CCPBDataWriterWriteInt32Field();
      }

      goto LABEL_16;
    }

    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      [kindCopy unsignedIntegerValue];
      v15 = CCValidateEnumField();
      v13 = v11;

      if (v15)
      {
LABEL_10:
        CCPBDataWriterWriteUint32Field();
      }

LABEL_16:
      immutableData = [v9 immutableData];
      self = [(CCItemMessage *)self initWithData:immutableData error:error];

      v11 = v13;
      selfCopy = self;
      goto LABEL_17;
    }
  }

  CCSetError();
  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

@end