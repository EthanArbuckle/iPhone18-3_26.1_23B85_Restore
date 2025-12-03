@interface CCToolKitToolDisplayRepresentationDisplayValue
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolDisplayRepresentationDisplayValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolDisplayRepresentationDisplayValue)initWithType:(unsigned int)type kind:(id)kind kindType:(unsigned int)kindType error:(id *)error;
- (CCToolKitToolDisplayRepresentationDisplayValueStatic)staticType;
- (CCToolKitToolDisplayRepresentationStorage)lazy;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolDisplayRepresentationDisplayValue

- (CCToolKitToolDisplayRepresentationDisplayValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v23[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"lazy"];
    if (v13)
    {
      v23[0] = 0;
      v14 = [[CCToolKitToolDisplayRepresentationStorage alloc] initWithJSONDictionary:v13 error:v23];
      v15 = v23[0];
      v16 = v15;
      if (!v14 || v15)
      {
        CCSetError();
        goto LABEL_18;
      }

      v13 = v14;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"staticType"];
    if (!v16)
    {
LABEL_14:
      if (v13)
      {
        v19 = v13;
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      v14 = v13;
      if (v16)
      {
        v14 = v16;

        v20 = 3;
      }

      v12 = [[CCToolKitToolDisplayRepresentationDisplayValue alloc] initWithType:unsignedIntegerValue kind:v14 kindType:v20 error:error];
      goto LABEL_23;
    }

    v22 = 0;
    v17 = [[CCToolKitToolDisplayRepresentationDisplayValueStatic alloc] initWithJSONDictionary:v16 error:&v22];
    v18 = v22;
    v14 = v18;
    if (v17 && !v18)
    {

      v16 = v17;
      goto LABEL_14;
    }

    CCSetError();

LABEL_18:
    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  CCSetError();
  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolDisplayRepresentationDisplayValue type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  kindType = self->_kindType;
  if (kindType == 2)
  {
    if (!self->_lazy)
    {
      goto LABEL_7;
    }

    lazy = [(CCToolKitToolDisplayRepresentationDisplayValue *)self lazy];
    jsonDictionary = [lazy jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"lazy"];

    kindType = self->_kindType;
  }

  if (kindType == 3 && self->_staticType)
  {
    staticType = [(CCToolKitToolDisplayRepresentationDisplayValue *)self staticType];
    jsonDictionary2 = [staticType jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"staticType"];
  }

LABEL_7:
  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_type];
  blockCopy[2](blockCopy, v7);

  if (self->_lazy)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_lazy];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_staticType)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_staticType];
    blockCopy[2](blockCopy, v9);
  }
}

- (CCToolKitToolDisplayRepresentationDisplayValueStatic)staticType
{
  v2 = [(CCToolKitToolDisplayRepresentationDisplayValueStatic *)self->_staticType copy];

  return v2;
}

- (CCToolKitToolDisplayRepresentationStorage)lazy
{
  v2 = [(CCToolKitToolDisplayRepresentationStorage *)self->_lazy copy];

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
    goto LABEL_45;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
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
          goto LABEL_46;
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
      goto LABEL_46;
    }

LABEL_21:
    v23 = v21 >> 3;
    if ((v21 >> 3) == 3)
    {
      v36 = [CCToolKitToolDisplayRepresentationDisplayValueStatic alloc];
      v37 = CCPBReaderReadDataNoCopy();
      v50 = 0;
      v38 = [(CCItemMessage *)v36 initWithData:v37 error:&v50];
      v10 = v50;
      staticType = self->_staticType;
      self->_staticType = v38;

      if (!v10)
      {
        lazy = self->_lazy;
        self->_lazy = 0;

        self->_kindType = 3;
      }
    }

    else if (v23 == 2)
    {
      v31 = [CCToolKitToolDisplayRepresentationStorage alloc];
      v32 = CCPBReaderReadDataNoCopy();
      v51 = 0;
      v33 = [(CCToolKitToolDisplayRepresentationStorage *)v31 initWithData:v32 error:&v51];
      v10 = v51;
      v34 = self->_lazy;
      self->_lazy = v33;

      if (!v10)
      {
        self->_kindType = 2;
        v35 = self->_staticType;
        self->_staticType = 0;
      }
    }

    else if (v23 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v27 = *v7;
        v28 = *&v6[v27];
        v29 = v28 + 1;
        if (v28 == -1 || v29 > *&v6[*v8])
        {
          break;
        }

        v30 = *(*&v6[*v11] + v28);
        *&v6[v27] = v29;
        v26 |= (v30 & 0x7F) << v24;
        if ((v30 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        v24 += 7;
        v20 = v25++ >= 9;
        if (v20)
        {
          LODWORD(v26) = 0;
          goto LABEL_40;
        }
      }

      *&v6[*v9] = 1;
LABEL_38:
      if (*&v6[*v9])
      {
        LODWORD(v26) = 0;
      }

LABEL_40:
      v10 = 0;
      self->_type = v26;
    }

    else if (CCPBReaderSkipValueWithTag())
    {
      v10 = 0;
    }

    else
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
    }
  }

  while (*&v6[*v7] < *&v6[*v8]);
  if (v10)
  {
    CCSetError();
  }

  else
  {
LABEL_45:
    if (!*&v6[*v9])
    {
      v10 = 0;
      v48 = 1;
      goto LABEL_49;
    }

LABEL_46:
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = *&v6[*v9];
    v47 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v10 = 0;
  }

  v48 = 0;
LABEL_49:

  return v48;
}

- (CCToolKitToolDisplayRepresentationDisplayValue)initWithType:(unsigned int)type kind:(id)kind kindType:(unsigned int)kindType error:(id *)error
{
  kindCopy = kind;
  v11 = objc_opt_new();
  if (type)
  {
    v12 = CCValidateEnumField();
    v13 = 0;
    if (!v12)
    {
      CCSetError();
      selfCopy = 0;
      goto LABEL_16;
    }

    CCPBDataWriterWriteUint32Field();
    if (!kindCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (!kindCopy)
    {
      goto LABEL_9;
    }
  }

  if (kindType == 2)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = v13;

    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_12;
    }

LABEL_15:
    CCSetError();
    selfCopy = 0;
    v13 = v15;
    goto LABEL_16;
  }

LABEL_9:
  if (!kindCopy || kindType != 3)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v16 = CCValidateIsInstanceOfExpectedClass();
  v15 = v13;

  if ((v16 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  data = [kindCopy data];
  CCPBDataWriterWriteDataField();

  v13 = v15;
LABEL_13:
  immutableData = [v11 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_16:

  return selfCopy;
}

@end