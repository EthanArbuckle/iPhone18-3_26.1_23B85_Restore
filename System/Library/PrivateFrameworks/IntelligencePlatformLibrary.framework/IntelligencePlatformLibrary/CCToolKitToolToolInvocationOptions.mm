@interface CCToolKitToolToolInvocationOptions
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolToolInvocationOptions)initWithInteractionMode:(unsigned int)mode locale:(id)locale requestIdentifier:(id)identifier interfaceIdiom:(unsigned int)idiom shortcutOutput:(id)output error:(id *)error;
- (CCToolKitToolToolInvocationOptions)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSString)locale;
- (NSString)requestIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolToolInvocationOptions

- (CCToolKitToolToolInvocationOptions)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"interactionMode"];
    v10 = v9;
    if (v9)
    {
      [dictionaryCopy objectForKeyedSubscript:{@"locale", objc_msgSend(v9, "unsignedIntegerValue")}];
    }

    else
    {
      [dictionaryCopy objectForKeyedSubscript:{@"locale", 0}];
    }
    v12 = ;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"requestIdentifier"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"interfaceIdiom"];
    v15 = v14;
    if (v14)
    {
      unsignedIntegerValue = [v14 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"shortcutOutput"];
    v11 = [[CCToolKitToolToolInvocationOptions alloc] initWithInteractionMode:v19 locale:v12 requestIdentifier:v13 interfaceIdiom:unsignedIntegerValue shortcutOutput:v17 error:error];
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolToolInvocationOptions interactionMode](self, "interactionMode")}];
  [v3 setObject:v4 forKeyedSubscript:@"interactionMode"];

  if (self->_locale)
  {
    locale = [(CCToolKitToolToolInvocationOptions *)self locale];
    [v3 setObject:locale forKeyedSubscript:@"locale"];
  }

  if (self->_requestIdentifier)
  {
    requestIdentifier = [(CCToolKitToolToolInvocationOptions *)self requestIdentifier];
    [v3 setObject:requestIdentifier forKeyedSubscript:@"requestIdentifier"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolToolInvocationOptions interfaceIdiom](self, "interfaceIdiom")}];
  [v3 setObject:v7 forKeyedSubscript:@"interfaceIdiom"];

  if (self->_hasShortcutOutput)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolToolInvocationOptions shortcutOutput](self, "shortcutOutput")}];
    [v3 setObject:v8 forKeyedSubscript:@"shortcutOutput"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_interactionMode];
  blockCopy[2](blockCopy, v7);

  if (self->_locale)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_locale];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_requestIdentifier)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_requestIdentifier];
    blockCopy[2](blockCopy, v9);
  }

  v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_interfaceIdiom];
  blockCopy[2](blockCopy, v10);

  if (self->_hasShortcutOutput)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 BOOLValue:self->_shortcutOutput];
    blockCopy[2](blockCopy, v11);
  }
}

- (NSString)requestIdentifier
{
  v2 = [(NSString *)self->_requestIdentifier copy];

  return v2;
}

- (NSString)locale
{
  v2 = [(NSString *)self->_locale copy];

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
    goto LABEL_74;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
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
        v19 = v18 + 1;
        if (v18 == -1 || v19 > *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v12] + v18);
        *&v7[v17] = v19;
        v16 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v21 = v15++ >= 9;
        if (v21)
        {
          v22 = 0;
          if (*&v7[*v10])
          {
            goto LABEL_75;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *&v7[*v10];
      if (v23)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v23)
      {
        goto LABEL_75;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) <= 2)
      {
        if (v24 == 1)
        {
          v43 = 0;
          v44 = 0;
          v38 = 0;
          while (1)
          {
            v45 = *v8;
            v46 = *&v7[v45];
            v47 = v46 + 1;
            if (v46 == -1 || v47 > *&v7[*v9])
            {
              break;
            }

            v48 = *(*&v7[*v12] + v46);
            *&v7[v45] = v47;
            v38 |= (v48 & 0x7F) << v43;
            if ((v48 & 0x80) == 0)
            {
              goto LABEL_59;
            }

            v43 += 7;
            v21 = v44++ >= 9;
            if (v21)
            {
              LODWORD(v38) = 0;
              goto LABEL_61;
            }
          }

          *&v7[*v10] = 1;
LABEL_59:
          if (*&v7[*v10])
          {
            LODWORD(v38) = 0;
          }

LABEL_61:
          v11 = 0;
          v54 = 20;
          goto LABEL_62;
        }

        if (v24 != 2)
        {
LABEL_52:
          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v49 = objc_opt_class();
            NSStringFromClass(v49);
            selfCopy = self;
            errorCopy = error;
            v52 = v51 = dataCopy;
            v53 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            dataCopy = v51;
            error = errorCopy;
            self = selfCopy;
            goto LABEL_71;
          }

LABEL_37:
          v11 = 0;
          goto LABEL_71;
        }

        v33 = CCPBReaderReadStringNoCopy();
        v34 = 32;
      }

      else
      {
        if (v24 != 3)
        {
          if (v24 != 4)
          {
            if (v24 == 5)
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              while (1)
              {
                v28 = *v8;
                v29 = *&v7[v28];
                v30 = v29 + 1;
                if (v29 == -1 || v30 > *&v7[*v9])
                {
                  break;
                }

                v31 = *(*&v7[*v12] + v29);
                *&v7[v28] = v30;
                v27 |= (v31 & 0x7F) << v25;
                if ((v31 & 0x80) == 0)
                {
                  goto LABEL_64;
                }

                v25 += 7;
                v21 = v26++ >= 9;
                if (v21)
                {
                  v32 = 0;
                  goto LABEL_70;
                }
              }

              *&v7[*v10] = 1;
LABEL_64:
              if (*&v7[*v10])
              {
                v55 = 1;
              }

              else
              {
                v55 = v27 == 0;
              }

              v32 = !v55;
LABEL_70:
              v11 = 0;
              self->_shortcutOutput = v32;
              self->_hasShortcutOutput = 1;
LABEL_71:
              if (*&v7[*v8] < *&v7[*v9])
              {
                continue;
              }

              break;
            }

            goto LABEL_52;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v39 = *v8;
            v40 = *&v7[v39];
            v41 = v40 + 1;
            if (v40 == -1 || v41 > *&v7[*v9])
            {
              break;
            }

            v42 = *(*&v7[*v12] + v40);
            *&v7[v39] = v41;
            v38 |= (v42 & 0x7F) << v36;
            if ((v42 & 0x80) == 0)
            {
              goto LABEL_55;
            }

            v36 += 7;
            v21 = v37++ >= 9;
            if (v21)
            {
              LODWORD(v38) = 0;
              goto LABEL_57;
            }
          }

          *&v7[*v10] = 1;
LABEL_55:
          if (*&v7[*v10])
          {
            LODWORD(v38) = 0;
          }

LABEL_57:
          v11 = 0;
          v54 = 24;
LABEL_62:
          *(&self->super.super.isa + v54) = v38;
          goto LABEL_71;
        }

        v33 = CCPBReaderReadStringNoCopy();
        v34 = 40;
      }

      v35 = *(&self->super.super.isa + v34);
      *(&self->super.super.isa + v34) = v33;

      goto LABEL_37;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_76;
  }

LABEL_74:
  if (!*&v7[*v10])
  {
    v59 = 1;
    goto LABEL_78;
  }

LABEL_75:
  v56 = objc_opt_class();
  v11 = NSStringFromClass(v56);
  v57 = *&v7[*v10];
  v58 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_76:
  v59 = 0;
LABEL_78:

  return v59;
}

- (CCToolKitToolToolInvocationOptions)initWithInteractionMode:(unsigned int)mode locale:(id)locale requestIdentifier:(id)identifier interfaceIdiom:(unsigned int)idiom shortcutOutput:(id)output error:(id *)error
{
  localeCopy = locale;
  identifierCopy = identifier;
  outputCopy = output;
  v17 = objc_opt_new();
  if (mode)
  {
    v18 = CCValidateEnumField();
    v19 = 0;
    if (!v18)
    {
      goto LABEL_23;
    }

    idiomCopy2 = idiom;
    v20 = outputCopy;
    selfCopy2 = self;
    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    idiomCopy2 = idiom;
    v20 = outputCopy;
    selfCopy2 = self;
    v19 = 0;
  }

  if (localeCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v23 = v19;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy3 = 0;
      v19 = v23;
      goto LABEL_18;
    }

    CCPBDataWriterWriteStringField();
    if (!identifierCopy)
    {
LABEL_8:
      v19 = v23;
LABEL_12:
      self = selfCopy2;
      outputCopy = v20;
      if (idiomCopy2)
      {
        v25 = CCValidateEnumField();
        v26 = v19;

        if (!v25)
        {
          CCSetError();
          selfCopy3 = 0;
          v19 = v26;
          goto LABEL_25;
        }

        CCPBDataWriterWriteUint32Field();
        if (!v20)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v26 = v19;
        if (!v20)
        {
LABEL_15:
          v19 = v26;
LABEL_22:
          immutableData = [v17 immutableData];
          self = [(CCItemMessage *)self initWithData:immutableData error:error];

          selfCopy3 = self;
          goto LABEL_25;
        }
      }

      objc_opt_class();
      v28 = CCValidateIsInstanceOfExpectedClass();
      v19 = v26;

      if (v28)
      {
        [outputCopy BOOLValue];
        CCPBDataWriterWriteBOOLField();
        goto LABEL_22;
      }

LABEL_23:
      CCSetError();
      selfCopy3 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v23 = v19;
    if (!identifierCopy)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v24 = CCValidateIsInstanceOfExpectedClass();
  v19 = v23;

  if (v24)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_12;
  }

  CCSetError();
  selfCopy3 = 0;
LABEL_18:
  self = selfCopy2;
  outputCopy = v20;
LABEL_25:

  return selfCopy3;
}

@end