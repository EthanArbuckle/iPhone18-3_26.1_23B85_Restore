@interface CCSignificantLocationSubPremise
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSignificantLocationSubPremise)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCSignificantLocationSubPremise)initWithType:(unsigned int)type value:(id)value error:(id *)error;
- (NSString)value;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSignificantLocationSubPremise

- (CCSignificantLocationSubPremise)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    v12 = [[CCSignificantLocationSubPremise alloc] initWithType:unsignedIntegerValue value:v13 error:error];
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSignificantLocationSubPremise type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  if (self->_value)
  {
    value = [(CCSignificantLocationSubPremise *)self value];
    [v3 setObject:value forKeyedSubscript:@"value"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15775 enumValue:self->_type];
  blockCopy[2](blockCopy, v5);

  if (self->_value)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15776 stringValue:self->_value];
    blockCopy[2](blockCopy, v6);
  }
}

- (NSString)value
{
  v2 = [(NSString *)self->_value copy];

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
    goto LABEL_41;
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
            goto LABEL_42;
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
        goto LABEL_42;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v29 = CCPBReaderReadStringNoCopy();
        value = self->_value;
        self->_value = v29;
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

          *&v7[*v10] = 1;
LABEL_34:
          if (*&v7[*v10])
          {
            LODWORD(v25) = 0;
          }

LABEL_36:
          v11 = 0;
          self->_type = v25;
LABEL_38:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v31 = objc_opt_class();
          NSStringFromClass(v31);
          v32 = dataCopy;
          v34 = v33 = error;
          v35 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          error = v33;
          dataCopy = v32;
          self = selfCopy;
          goto LABEL_38;
        }
      }

      v11 = 0;
      goto LABEL_38;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_43;
  }

LABEL_41:
  if (!*&v7[*v10])
  {
    v39 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v36 = objc_opt_class();
  v11 = NSStringFromClass(v36);
  v37 = *&v7[*v10];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_43:
  v39 = 0;
LABEL_45:

  return v39;
}

- (CCSignificantLocationSubPremise)initWithType:(unsigned int)type value:(id)value error:(id *)error
{
  valueCopy = value;
  v9 = objc_opt_new();
  if (!type)
  {
    v11 = 0;
    if (!valueCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    objc_opt_class();
    v17 = v11;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v13 = v11;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      v11 = v13;
      goto LABEL_11;
    }

    CCPBDataWriterWriteStringField();
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
  if (valueCopy)
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