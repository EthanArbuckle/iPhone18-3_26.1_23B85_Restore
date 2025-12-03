@interface CCSerializedSetDevice
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCSerializedSetDevice)initWithDeviceUUID:(id)d idsDeviceIdentifier:(id)identifier platformString:(id)string options:(id)options error:(id *)error;
- (CCSerializedSetDevice)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSString)idsDeviceIdentifier;
- (NSString)platformString;
- (NSUUID)deviceUUID;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCSerializedSetDevice

- (CCSerializedSetDevice)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceUUID"];
    if (v9)
    {
      objc_opt_class();
      v18 = v8;
      v10 = CCValidateIsInstanceOfExpectedClass();
      v11 = v8;

      if ((v10 & 1) == 0)
      {
        CCSetError();
        v13 = 0;
        goto LABEL_9;
      }

      v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];

      v9 = v12;
    }

    else
    {
      v11 = v8;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"idsDeviceIdentifier", v18}];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"platformString"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"options"];
    v13 = [[CCSerializedSetDevice alloc] initWithDeviceUUID:v9 idsDeviceIdentifier:v14 platformString:v15 options:v16 error:error];

LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  CCSetError();
  v13 = 0;
LABEL_10:

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_raw_deviceUUID)
  {
    deviceUUID = [(CCSerializedSetDevice *)self deviceUUID];
    uUIDString = [deviceUUID UUIDString];
    [v3 setObject:uUIDString forKeyedSubscript:@"deviceUUID"];
  }

  if (self->_idsDeviceIdentifier)
  {
    idsDeviceIdentifier = [(CCSerializedSetDevice *)self idsDeviceIdentifier];
    [v3 setObject:idsDeviceIdentifier forKeyedSubscript:@"idsDeviceIdentifier"];
  }

  if (self->_platformString)
  {
    platformString = [(CCSerializedSetDevice *)self platformString];
    [v3 setObject:platformString forKeyedSubscript:@"platformString"];
  }

  if (self->_hasOptions)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCSerializedSetDevice options](self, "options")}];
    [v3 setObject:v8 forKeyedSubscript:@"options"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v11 = blockCopy;
  if (self->_raw_deviceUUID)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] bytesValue:self->_raw_deviceUUID];
    v11[2](v11, v7);
  }

  if (self->_idsDeviceIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_idsDeviceIdentifier];
    v11[2](v11, v8);
  }

  if (self->_platformString)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_platformString];
    v11[2](v11, v9);
  }

  if (self->_hasOptions)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 uint32Value:self->_options];
    v11[2](v11, v10);
  }
}

- (NSString)platformString
{
  v2 = [(NSString *)self->_platformString copy];

  return v2;
}

- (NSString)idsDeviceIdentifier
{
  v2 = [(NSString *)self->_idsDeviceIdentifier copy];

  return v2;
}

- (NSUUID)deviceUUID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[NSData bytes](self->_raw_deviceUUID, "bytes")}];

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
    goto LABEL_47;
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
        v19 = v14++ >= 9;
        if (v19)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_48;
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
        goto LABEL_48;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) > 2)
      {
        if (v22 == 3)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 40;
          goto LABEL_38;
        }

        if (v22 == 4)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v28 = *v7;
            v29 = *&v6[v28];
            if (v29 == -1 || v29 >= *&v6[*v8])
            {
              break;
            }

            v30 = *(*&v6[*v11] + v29);
            *&v6[v28] = v29 + 1;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              goto LABEL_41;
            }

            v25 += 7;
            v19 = v26++ >= 9;
            if (v19)
            {
              LODWORD(v27) = 0;
              goto LABEL_43;
            }
          }

          *&v6[*v9] = 1;
LABEL_41:
          if (*&v6[*v9])
          {
            LODWORD(v27) = 0;
          }

LABEL_43:
          v10 = 0;
          self->_options = v27;
          self->_hasOptions = 1;
LABEL_44:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }
      }

      else
      {
        if (v22 == 1)
        {
          v23 = CCPBReaderReadData();
          v24 = 16;
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 32;
LABEL_38:
          v35 = *(&self->super.super.isa + v24);
          *(&self->super.super.isa + v24) = v23;

LABEL_39:
          v10 = 0;
          goto LABEL_44;
        }
      }

      if ((CCPBReaderSkipValueWithTag() & 1) == 0)
      {
        v31 = objc_opt_class();
        NSStringFromClass(v31);
        v33 = v32 = dataCopy;
        v34 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

        dataCopy = v32;
        goto LABEL_44;
      }

      goto LABEL_39;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_49;
  }

LABEL_47:
  if (!*&v6[*v9])
  {
    v39 = 1;
    goto LABEL_51;
  }

LABEL_48:
  v36 = objc_opt_class();
  v10 = NSStringFromClass(v36);
  v37 = *&v6[*v9];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_49:
  v39 = 0;
LABEL_51:

  return v39;
}

- (CCSerializedSetDevice)initWithDeviceUUID:(id)d idsDeviceIdentifier:(id)identifier platformString:(id)string options:(id)options error:(id *)error
{
  dCopy = d;
  identifierCopy = identifier;
  stringCopy = string;
  optionsCopy = options;
  v16 = objc_opt_new();
  if (!dCopy)
  {
    v18 = 0;
LABEL_5:
    selfCopy = self;
    if (identifierCopy)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v21 = v18;

      if (!IsInstanceOfExpectedClass)
      {
LABEL_17:
        CCSetError();
        selfCopy2 = 0;
        v18 = v21;
LABEL_19:
        self = selfCopy;
        goto LABEL_20;
      }

      CCPBDataWriterWriteStringField();
      if (!stringCopy)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = v18;
      if (!stringCopy)
      {
LABEL_8:
        v18 = v21;
        if (!optionsCopy)
        {
          goto LABEL_16;
        }

LABEL_14:
        objc_opt_class();
        v24 = CCValidateIsInstanceOfExpectedClass();
        v21 = v18;

        if (v24)
        {
          [optionsCopy unsignedIntValue];
          CCPBDataWriterWriteUint32Field();
          v18 = v21;
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    objc_opt_class();
    v23 = CCValidateIsInstanceOfExpectedClass();
    v18 = v21;

    if (!v23)
    {
      CCSetError();
      selfCopy2 = 0;
      goto LABEL_19;
    }

    CCPBDataWriterWriteStringField();
    if (!optionsCopy)
    {
LABEL_16:
      immutableData = [v16 immutableData];
      self = [(CCItemMessage *)selfCopy initWithData:immutableData error:error];

      selfCopy2 = self;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v18 = 0;
  if (v17)
  {
    v19 = BMDataFromNSUUID();
    CCPBDataWriterWriteDataField();

    goto LABEL_5;
  }

  CCSetError();
  selfCopy2 = 0;
LABEL_20:

  return selfCopy2;
}

@end