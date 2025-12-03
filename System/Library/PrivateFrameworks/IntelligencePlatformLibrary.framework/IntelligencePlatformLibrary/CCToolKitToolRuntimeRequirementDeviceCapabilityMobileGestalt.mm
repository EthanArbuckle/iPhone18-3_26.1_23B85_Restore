@interface CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt)initWithKey:(id)key value:(id)value error:(id *)error;
- (NSString)key;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt

- (CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    v11 = [[CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt alloc] initWithKey:v9 value:v10 error:error];
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
  if (self->_key)
  {
    v4 = [(CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt *)self key];
    [v3 setObject:v4 forKeyedSubscript:@"key"];
  }

  if (self->_hasValue)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt value](self, "value")}];
    [v3 setObject:v5 forKeyedSubscript:@"value"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v9 = blockCopy;
  if (self->_key)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] stringValue:self->_key];
    v9[2](v9, v7);
  }

  if (self->_hasValue)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 BOOLValue:self->_value];
    v9[2](v9, v8);
  }
}

- (NSString)key
{
  v2 = [(NSString *)self->_key copy];

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
    goto LABEL_45;
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
            goto LABEL_46;
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
        goto LABEL_46;
      }

LABEL_21:
      if ((v22 >> 3) == 1)
      {
        v32 = CCPBReaderReadStringNoCopy();
        key = self->_key;
        self->_key = v32;
      }

      else
      {
        if ((v22 >> 3) == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v27 = *v8;
            v28 = *&v7[v27];
            v29 = v28 + 1;
            if (v28 == -1 || v29 > *&v7[*v9])
            {
              break;
            }

            v30 = *(*&v7[*v12] + v28);
            *&v7[v27] = v29;
            v26 |= (v30 & 0x7F) << v24;
            if ((v30 & 0x80) == 0)
            {
              goto LABEL_34;
            }

            v24 += 7;
            v21 = v25++ >= 9;
            if (v21)
            {
              v31 = 0;
              goto LABEL_40;
            }
          }

          *&v7[*v10] = 1;
LABEL_34:
          if (*&v7[*v10])
          {
            v34 = 1;
          }

          else
          {
            v34 = v26 == 0;
          }

          v31 = !v34;
LABEL_40:
          v11 = 0;
          self->_value = v31;
          self->_hasValue = 1;
LABEL_42:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v35 = objc_opt_class();
          NSStringFromClass(v35);
          errorCopy = error;
          v38 = v37 = dataCopy;
          v39 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          dataCopy = v37;
          error = errorCopy;
          self = selfCopy;
          goto LABEL_42;
        }
      }

      v11 = 0;
      goto LABEL_42;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_47;
  }

LABEL_45:
  if (!*&v7[*v10])
  {
    v43 = 1;
    goto LABEL_49;
  }

LABEL_46:
  v40 = objc_opt_class();
  v11 = NSStringFromClass(v40);
  v41 = *&v7[*v10];
  v42 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_47:
  v43 = 0;
LABEL_49:

  return v43;
}

- (CCToolKitToolRuntimeRequirementDeviceCapabilityMobileGestalt)initWithKey:(id)key value:(id)value error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  v10 = objc_opt_new();
  if (!keyCopy)
  {
    v12 = 0;
    if (!valueCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v18 = v12;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = v12;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      v12 = v14;
      goto LABEL_11;
    }

    [valueCopy BOOLValue];
    CCPBDataWriterWriteBOOLField();
    v12 = v14;
    goto LABEL_8;
  }

  objc_opt_class();
  v11 = CCValidateIsInstanceOfExpectedClass();
  v12 = 0;
  if (!v11)
  {
    CCSetError();
    selfCopy = 0;
    goto LABEL_11;
  }

  CCPBDataWriterWriteStringField();
  if (valueCopy)
  {
    goto LABEL_6;
  }

LABEL_8:
  immutableData = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

@end