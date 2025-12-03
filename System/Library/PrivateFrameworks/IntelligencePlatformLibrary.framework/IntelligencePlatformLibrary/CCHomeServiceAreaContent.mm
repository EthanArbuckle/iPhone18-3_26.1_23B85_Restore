@interface CCHomeServiceAreaContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCHomeServiceArea)area;
- (CCHomeServiceAreaContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCHomeServiceAreaContent)initWithMatterDeviceIdentifier:(id)identifier serviceArea:(id)area serviceAreaType:(unsigned int)type error:(id *)error;
- (CCHomeServiceAreaMap)map;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCHomeServiceAreaContent

- (CCHomeServiceAreaContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v21[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"matterDeviceIdentifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"area"];
    if (v10)
    {
      v21[0] = 0;
      v11 = [[CCHomeServiceArea alloc] initWithJSONDictionary:v10 error:v21];
      v12 = v21[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        goto LABEL_15;
      }

      v10 = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"map"];
    if (!v13)
    {
LABEL_10:
      if (v10)
      {
        v16 = v10;
        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      v11 = v10;
      if (v13)
      {
        v11 = v13;

        v17 = 2;
      }

      v18 = [[CCHomeServiceAreaContent alloc] initWithMatterDeviceIdentifier:v9 serviceArea:v11 serviceAreaType:v17 error:error];
      goto LABEL_20;
    }

    v20 = 0;
    v14 = [[CCHomeServiceAreaMap alloc] initWithJSONDictionary:v13 error:&v20];
    v15 = v20;
    v11 = v15;
    if (v14 && !v15)
    {

      v13 = v14;
      goto LABEL_10;
    }

    CCSetError();

LABEL_15:
    v18 = 0;
LABEL_20:

    goto LABEL_21;
  }

  CCSetError();
  v18 = 0;
LABEL_21:

  return v18;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasMatterDeviceIdentifier)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CCHomeServiceAreaContent matterDeviceIdentifier](self, "matterDeviceIdentifier")}];
    [v3 setObject:v4 forKeyedSubscript:@"matterDeviceIdentifier"];
  }

  serviceAreaType = self->_serviceAreaType;
  if (serviceAreaType == 1)
  {
    if (!self->_area)
    {
      goto LABEL_9;
    }

    area = [(CCHomeServiceAreaContent *)self area];
    jsonDictionary = [area jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"area"];

    serviceAreaType = self->_serviceAreaType;
  }

  if (serviceAreaType == 2 && self->_map)
  {
    v8 = [(CCHomeServiceAreaContent *)self map];
    jsonDictionary2 = [v8 jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"map"];
  }

LABEL_9:
  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_hasMatterDeviceIdentifier)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:17035 uint64Value:self->_matterDeviceIdentifier];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_area)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:17036 subMessageValue:self->_area];
    blockCopy[2](blockCopy, v6);
  }

  v7 = blockCopy;
  if (self->_map)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:17040 subMessageValue:self->_map];
    blockCopy[2](blockCopy, v8);

    v7 = blockCopy;
  }
}

- (CCHomeServiceAreaMap)map
{
  v2 = [(CCHomeServiceAreaMap *)self->_map copy];

  return v2;
}

- (CCHomeServiceArea)area
{
  v2 = [(CCHomeServiceArea *)self->_area copy];

  return v2;
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
    goto LABEL_45;
  }

  v9 = 0;
  v10 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v5[*v8])
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 0;
    }

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *v6;
      v16 = *&v5[v15];
      if (v16 == -1 || v16 >= *&v5[*v7])
      {
        break;
      }

      v17 = *(*&v5[*v10] + v16);
      *&v5[v15] = v16 + 1;
      v14 |= (v17 & 0x7F) << v12;
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v12 += 7;
      v18 = v13++ >= 9;
      if (v18)
      {
        v19 = 0;
        if (*&v5[*v8])
        {
          goto LABEL_46;
        }

        goto LABEL_21;
      }
    }

    *&v5[*v8] = 1;
LABEL_17:
    v20 = *&v5[*v8];
    if (v20)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    if (v20)
    {
      goto LABEL_46;
    }

LABEL_21:
    v21 = v19 >> 3;
    if ((v19 >> 3) == 3)
    {
      v33 = [CCHomeServiceAreaMap alloc];
      v34 = CCPBReaderReadDataNoCopy();
      v48 = 0;
      v35 = [(CCItemMessage *)v33 initWithData:v34 error:&v48];
      v9 = v48;
      map = self->_map;
      self->_map = v35;

      if (!v9)
      {
        area = self->_area;
        self->_area = 0;

        self->_serviceAreaType = 2;
      }
    }

    else if (v21 == 2)
    {
      v28 = [CCHomeServiceArea alloc];
      v29 = CCPBReaderReadDataNoCopy();
      v49 = 0;
      v30 = [(CCItemMessage *)v28 initWithData:v29 error:&v49];
      v9 = v49;
      v31 = self->_area;
      self->_area = v30;

      if (!v9)
      {
        self->_serviceAreaType = 1;
        v32 = self->_map;
        self->_map = 0;
      }
    }

    else if (v21 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = *v6;
        v26 = *&v5[v25];
        if (v26 == -1 || v26 >= *&v5[*v7])
        {
          break;
        }

        v27 = *(*&v5[*v10] + v26);
        *&v5[v25] = v26 + 1;
        v24 |= (v27 & 0x7F) << v22;
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        v22 += 7;
        v18 = v23++ >= 9;
        if (v18)
        {
          v24 = 0;
          goto LABEL_40;
        }
      }

      *&v5[*v8] = 1;
LABEL_38:
      if (*&v5[*v8])
      {
        v24 = 0;
      }

LABEL_40:
      v9 = 0;
      self->_matterDeviceIdentifier = v24;
      self->_hasMatterDeviceIdentifier = 1;
    }

    else if (CCPBReaderSkipValueWithTag())
    {
      v9 = 0;
    }

    else
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = *&v5[*v8];
      v9 = CCSkipFieldErrorForMessage();
    }
  }

  while (*&v5[*v6] < *&v5[*v7]);
  if (v9)
  {
    CCSetError();
  }

  else
  {
LABEL_45:
    if (!*&v5[*v8])
    {
      v9 = 0;
      v45 = 1;
      goto LABEL_49;
    }

LABEL_46:
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = *&v5[*v8];
    v44 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v9 = 0;
  }

  v45 = 0;
LABEL_49:

  return v45;
}

- (CCHomeServiceAreaContent)initWithMatterDeviceIdentifier:(id)identifier serviceArea:(id)area serviceAreaType:(unsigned int)type error:(id *)error
{
  identifierCopy = identifier;
  areaCopy = area;
  v12 = objc_opt_new();
  if (identifierCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy = 0;
      goto LABEL_16;
    }

    [identifierCopy unsignedLongLongValue];
    CCPBDataWriterWriteUint64Field();
    if (!areaCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    if (!areaCopy)
    {
      goto LABEL_9;
    }
  }

  if (type == 1)
  {
    objc_opt_class();
    v15 = CCValidateIsInstanceOfExpectedClass();
    v16 = v14;

    if (v15)
    {
      goto LABEL_12;
    }

LABEL_15:
    CCSetError();
    selfCopy = 0;
    v14 = v16;
    goto LABEL_16;
  }

LABEL_9:
  if (!areaCopy || type != 2)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v16 = v14;

  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  data = [areaCopy data];
  CCPBDataWriterWriteDataField();

  v14 = v16;
LABEL_13:
  immutableData = [v12 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_16:

  return selfCopy;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier - 17034) > 8)
  {
    return 0;
  }

  else
  {
    return off_1E73E7D40[(identifier - 17034)];
  }
}

@end