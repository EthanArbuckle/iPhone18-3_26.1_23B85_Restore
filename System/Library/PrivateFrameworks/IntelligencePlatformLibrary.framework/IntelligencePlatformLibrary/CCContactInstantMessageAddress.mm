@interface CCContactInstantMessageAddress
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCContactInstantMessageAddress)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCContactInstantMessageAddress)initWithLabel:(id)label username:(id)username serviceName:(id)name error:(id *)error;
- (NSString)label;
- (NSString)serviceName;
- (NSString)username;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCContactInstantMessageAddress

- (CCContactInstantMessageAddress)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"username"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"serviceName"];
    v12 = [[CCContactInstantMessageAddress alloc] initWithLabel:v9 username:v10 serviceName:v11 error:error];
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
  if (self->_label)
  {
    label = [(CCContactInstantMessageAddress *)self label];
    [v3 setObject:label forKeyedSubscript:@"label"];
  }

  if (self->_username)
  {
    username = [(CCContactInstantMessageAddress *)self username];
    [v3 setObject:username forKeyedSubscript:@"username"];
  }

  if (self->_serviceName)
  {
    serviceName = [(CCContactInstantMessageAddress *)self serviceName];
    [v3 setObject:serviceName forKeyedSubscript:@"serviceName"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_label)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19744 stringValue:self->_label];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_username)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19745 stringValue:self->_username];
    blockCopy[2](blockCopy, v6);
  }

  v7 = blockCopy;
  if (self->_serviceName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19746 stringValue:self->_serviceName];
    blockCopy[2](blockCopy, v8);

    v7 = blockCopy;
  }
}

- (NSString)serviceName
{
  v2 = [(NSString *)self->_serviceName copy];

  return v2;
}

- (NSString)username
{
  v2 = [(NSString *)self->_username copy];

  return v2;
}

- (NSString)label
{
  v2 = [(NSString *)self->_label copy];

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
        if (v17 == -1 || v17 >= *&v6[*v8])
        {
          break;
        }

        v18 = *(*&v6[*v11] + v17);
        *&v6[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_37;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v21 = *&v6[*v9];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_37;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) == 3)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v24 = 32;
      }

      else if (v22 == 2)
      {
        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v24 = 24;
      }

      else
      {
        if (v22 != 1)
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

          v26 = objc_opt_class();
          v25 = NSStringFromClass(v26);
          v27 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
LABEL_28:

          goto LABEL_29;
        }

        v23 = CCPBReaderReadStringNoCopy();
        v10 = 0;
        v24 = 16;
      }

      v25 = *(&self->super.super.isa + v24);
      *(&self->super.super.isa + v24) = v23;
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
    v31 = 1;
    goto LABEL_40;
  }

LABEL_37:
  v28 = objc_opt_class();
  v10 = NSStringFromClass(v28);
  v29 = *&v6[*v9];
  v30 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_38:
  v31 = 0;
LABEL_40:

  return v31;
}

- (CCContactInstantMessageAddress)initWithLabel:(id)label username:(id)username serviceName:(id)name error:(id *)error
{
  labelCopy = label;
  usernameCopy = username;
  nameCopy = name;
  v13 = objc_opt_new();
  if (labelCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    CCPBDataWriterWriteStringField();
    if (!usernameCopy)
    {
LABEL_4:
      v16 = v15;
      if (nameCopy)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = v16;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    if (!usernameCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v19 = CCValidateIsInstanceOfExpectedClass();
  v16 = v15;

  if (!v19)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v16;
    goto LABEL_14;
  }

  CCPBDataWriterWriteStringField();
  if (!nameCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    CCPBDataWriterWriteStringField();
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