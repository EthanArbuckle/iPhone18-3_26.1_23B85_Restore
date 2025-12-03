@interface CCToolKitToolTypedValueDeferredValue
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypeIdentifier)type;
- (CCToolKitToolTypeInstance)expectedTypeInstance;
- (CCToolKitToolTypedValueDeferredValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValueDeferredValue)initWithType:(id)type expectedTypeInstance:(id)instance storage:(id)storage error:(id *)error;
- (CCToolKitToolTypedValueDeferredValueStorage)storage;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValueDeferredValue

- (CCToolKitToolTypedValueDeferredValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v23[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    if (v9)
    {
      v23[0] = 0;
      v10 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v9 error:v23];
      v11 = v23[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        goto LABEL_20;
      }

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"expectedTypeInstance"];
    if (v12)
    {
      v22 = 0;
      v13 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v12 error:&v22];
      v14 = v22;
      v10 = v14;
      if (!v13 || v14)
      {
        CCSetError();

        goto LABEL_20;
      }

      v12 = v13;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"storage"];
    if (!v15)
    {
      v16 = 0;
      goto LABEL_18;
    }

    v10 = v15;
    v21 = 0;
    v16 = [[CCToolKitToolTypedValueDeferredValueStorage alloc] initWithJSONDictionary:v15 error:&v21];
    v17 = v21;
    v18 = v17;
    if (v16 && !v17)
    {

LABEL_18:
      v19 = [[CCToolKitToolTypedValueDeferredValue alloc] initWithType:v9 expectedTypeInstance:v12 storage:v16 error:error];
      v10 = v16;
LABEL_21:

      goto LABEL_22;
    }

    CCSetError();

LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  CCSetError();
  v19 = 0;
LABEL_22:

  return v19;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_type)
  {
    type = [(CCToolKitToolTypedValueDeferredValue *)self type];
    jsonDictionary = [type jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"type"];
  }

  if (self->_expectedTypeInstance)
  {
    expectedTypeInstance = [(CCToolKitToolTypedValueDeferredValue *)self expectedTypeInstance];
    jsonDictionary2 = [expectedTypeInstance jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"expectedTypeInstance"];
  }

  if (self->_storage)
  {
    storage = [(CCToolKitToolTypedValueDeferredValue *)self storage];
    jsonDictionary3 = [storage jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"storage"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_type)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_type];
    v11[2](v11, v7);
  }

  if (self->_expectedTypeInstance)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_expectedTypeInstance];
    v11[2](v11, v8);
  }

  v9 = v11;
  if (self->_storage)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_storage];
    v11[2](v11, v10);

    v9 = v11;
  }
}

- (CCToolKitToolTypedValueDeferredValueStorage)storage
{
  v2 = [(CCToolKitToolTypedValueDeferredValueStorage *)self->_storage copy];

  return v2;
}

- (CCToolKitToolTypeInstance)expectedTypeInstance
{
  v2 = [(CCToolKitToolTypeInstance *)self->_expectedTypeInstance copy];

  return v2;
}

- (CCToolKitToolTypeIdentifier)type
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_type copy];

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
    goto LABEL_36;
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
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_37;
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
        goto LABEL_37;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) == 3)
      {
        v29 = [CCToolKitToolTypedValueDeferredValueStorage alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v39 = 0;
        v26 = [(CCItemMessage *)v29 initWithData:v25 error:&v39];
        v10 = v39;
        v27 = 32;
      }

      else if (v23 == 2)
      {
        v28 = [CCToolKitToolTypeInstance alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v40 = 0;
        v26 = [(CCItemMessage *)v28 initWithData:v25 error:&v40];
        v10 = v40;
        v27 = 24;
      }

      else
      {
        if (v23 != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
LABEL_29:
            if (*&v6[*v7] < *&v6[*v8])
            {
              continue;
            }

            break;
          }

          v31 = objc_opt_class();
          v25 = NSStringFromClass(v31);
          v32 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_28:

          goto LABEL_29;
        }

        v24 = [CCToolKitToolTypeIdentifier alloc];
        v25 = CCPBReaderReadDataNoCopy();
        v41 = 0;
        v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v41];
        v10 = v41;
        v27 = 16;
      }

      v30 = *(&self->super.super.isa + v27);
      *(&self->super.super.isa + v27) = v26;

      goto LABEL_28;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_38;
  }

LABEL_36:
  if (!*&v6[*v9])
  {
    v10 = 0;
    v37 = 1;
    goto LABEL_40;
  }

LABEL_37:
  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = *&v6[*v9];
  v36 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v10 = 0;
LABEL_38:
  v37 = 0;
LABEL_40:

  return v37;
}

- (CCToolKitToolTypedValueDeferredValue)initWithType:(id)type expectedTypeInstance:(id)instance storage:(id)storage error:(id *)error
{
  typeCopy = type;
  instanceCopy = instance;
  storageCopy = storage;
  v13 = objc_opt_new();
  if (typeCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    data = [typeCopy data];
    CCPBDataWriterWriteDataField();

    if (!instanceCopy)
    {
LABEL_4:
      v17 = v15;
      if (storageCopy)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = v17;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    if (!instanceCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v21 = CCValidateIsInstanceOfExpectedClass();
  v17 = v15;

  if (!v21)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v17;
    goto LABEL_14;
  }

  data2 = [instanceCopy data];
  CCPBDataWriterWriteDataField();

  if (!storageCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v15 = v17;

  if (v18)
  {
    data3 = [storageCopy data];
    CCPBDataWriterWriteDataField();

LABEL_12:
    immutableData = [v13 immutableData];
    self = [(CCItemMessage *)self initWithData:immutableData error:error];

    selfCopy = self;
    goto LABEL_14;
  }

LABEL_7:
  CCSetError();
  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

@end