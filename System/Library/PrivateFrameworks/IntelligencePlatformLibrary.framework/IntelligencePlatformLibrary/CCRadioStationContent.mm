@interface CCRadioStationContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier;
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCRadioStationContent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCRadioStationContent)initWithName:(id)name callSign:(id)sign frequency:(id)frequency channel:(id)channel signalType:(unsigned int)type error:(id *)error;
- (NSString)callSign;
- (NSString)channel;
- (NSString)frequency;
- (NSString)name;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCRadioStationContent

- (CCRadioStationContent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"callSign"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"frequency"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"channel"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"signalType"];
    v14 = v13;
    if (v13)
    {
      unsignedIntegerValue = [v13 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v16 = [[CCRadioStationContent alloc] initWithName:v9 callSign:v10 frequency:v11 channel:v12 signalType:unsignedIntegerValue error:error];
  }

  else
  {
    CCSetError();
    v16 = 0;
  }

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_name)
  {
    name = [(CCRadioStationContent *)self name];
    [v3 setObject:name forKeyedSubscript:@"name"];
  }

  if (self->_callSign)
  {
    callSign = [(CCRadioStationContent *)self callSign];
    [v3 setObject:callSign forKeyedSubscript:@"callSign"];
  }

  if (self->_frequency)
  {
    frequency = [(CCRadioStationContent *)self frequency];
    [v3 setObject:frequency forKeyedSubscript:@"frequency"];
  }

  if (self->_channel)
  {
    channel = [(CCRadioStationContent *)self channel];
    [v3 setObject:channel forKeyedSubscript:@"channel"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCRadioStationContent signalType](self, "signalType")}];
  [v3 setObject:v8 forKeyedSubscript:@"signalType"];

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_name)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:49069 stringValue:self->_name];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_callSign)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:49070 stringValue:self->_callSign];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_frequency)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:49071 stringValue:self->_frequency];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_channel)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:49072 stringValue:self->_channel];
    blockCopy[2](blockCopy, v8);
  }

  v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:49073 enumValue:self->_signalType];
  blockCopy[2](blockCopy, v9);
}

- (NSString)channel
{
  v2 = [(NSString *)self->_channel copy];

  return v2;
}

- (NSString)frequency
{
  v2 = [(NSString *)self->_frequency copy];

  return v2;
}

- (NSString)callSign
{
  v2 = [(NSString *)self->_callSign copy];

  return v2;
}

- (NSString)name
{
  v2 = [(NSString *)self->_name copy];

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
    goto LABEL_50;
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
            goto LABEL_51;
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
        goto LABEL_51;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 2)
      {
        if (v23 == 1)
        {
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 24;
        }

        else
        {
          if (v23 != 2)
          {
LABEL_42:
            if ((CCPBReaderSkipValueWithTag() & 1) == 0)
            {
              v33 = objc_opt_class();
              NSStringFromClass(v33);
              v42 = dataCopy;
              v35 = v34 = error;
              v36 = *&v7[*v10];
              v11 = CCSkipFieldErrorForMessage();

              error = v34;
              dataCopy = v42;
              goto LABEL_40;
            }

LABEL_39:
            v11 = 0;
            goto LABEL_40;
          }

          v30 = CCPBReaderReadStringNoCopy();
          v31 = 32;
        }
      }

      else
      {
        switch(v23)
        {
          case 3:
            v30 = CCPBReaderReadStringNoCopy();
            v31 = 40;
            break;
          case 4:
            v30 = CCPBReaderReadStringNoCopy();
            v31 = 48;
            break;
          case 5:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              v27 = *v8;
              v28 = *&v7[v27];
              if (v28 == -1 || v28 >= *&v7[*v9])
              {
                break;
              }

              v29 = *(*&v7[*v12] + v28);
              *&v7[v27] = v28 + 1;
              v26 |= (v29 & 0x7F) << v24;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_45;
              }

              v24 += 7;
              v20 = v25++ >= 9;
              if (v20)
              {
                LODWORD(v26) = 0;
                goto LABEL_47;
              }
            }

            *&v7[*v10] = 1;
LABEL_45:
            if (*&v7[*v10])
            {
              LODWORD(v26) = 0;
            }

LABEL_47:
            v11 = 0;
            self->_signalType = v26;
LABEL_40:
            if (*&v7[*v8] < *&v7[*v9])
            {
              continue;
            }

            goto LABEL_48;
          default:
            goto LABEL_42;
        }
      }

      v32 = *(&self->super.super.isa + v31);
      *(&self->super.super.isa + v31) = v30;

      goto LABEL_39;
    }

    break;
  }

LABEL_48:
  if (v11)
  {
    CCSetError();
    goto LABEL_52;
  }

LABEL_50:
  if (!*&v7[*v10])
  {
    v40 = 1;
    goto LABEL_54;
  }

LABEL_51:
  v37 = objc_opt_class();
  v11 = NSStringFromClass(v37);
  v38 = *&v7[*v10];
  v39 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_52:
  v40 = 0;
LABEL_54:

  return v40;
}

- (CCRadioStationContent)initWithName:(id)name callSign:(id)sign frequency:(id)frequency channel:(id)channel signalType:(unsigned int)type error:(id *)error
{
  nameCopy = name;
  signCopy = sign;
  frequencyCopy = frequency;
  channelCopy = channel;
  v17 = objc_opt_new();
  if (!nameCopy)
  {
    v19 = 0;
LABEL_5:
    selfCopy = self;
    if (signCopy)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v21 = v19;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_11;
      }

      CCPBDataWriterWriteStringField();
      if (!frequencyCopy)
      {
LABEL_8:
        v19 = v21;
        if (channelCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v21 = v19;
      if (!frequencyCopy)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v24 = CCValidateIsInstanceOfExpectedClass();
    v19 = v21;

    if (!v24)
    {
LABEL_20:
      CCSetError();
      v23 = 0;
      goto LABEL_21;
    }

    CCPBDataWriterWriteStringField();
    if (channelCopy)
    {
LABEL_9:
      objc_opt_class();
      v22 = CCValidateIsInstanceOfExpectedClass();
      v21 = v19;

      if (v22)
      {
        CCPBDataWriterWriteStringField();
LABEL_17:
        if (!type)
        {
          v19 = v21;
          goto LABEL_23;
        }

        v25 = CCValidateEnumField();
        v19 = v21;

        if (v25)
        {
          CCPBDataWriterWriteUint32Field();
LABEL_23:
          immutableData = [v17 immutableData];
          v27 = [(CCItemMessage *)selfCopy initWithData:immutableData error:error];

          self = v27;
          v23 = v27;
          goto LABEL_24;
        }

        goto LABEL_20;
      }

LABEL_11:
      CCSetError();
      v23 = 0;
      v19 = v21;
LABEL_21:
      self = selfCopy;
      goto LABEL_24;
    }

LABEL_16:
    v21 = v19;
    goto LABEL_17;
  }

  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v19 = 0;
  if (v18)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v23 = 0;
LABEL_24:

  return v23;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)identifier
{
  if ((identifier + 16470) > 7u)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E7958 + (identifier + 16470));
  }
}

@end