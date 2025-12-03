@interface CCToolKitToolTypedValuePrimitiveValueDateInterval
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTimestamp)end;
- (CCToolKitToolTimestamp)start;
- (CCToolKitToolTypedValuePrimitiveValueDateInterval)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueDateInterval)initWithStart:(id)start end:(id)end duration:(id)duration error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueDateInterval

- (CCToolKitToolTypedValuePrimitiveValueDateInterval)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v19[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"start"];
    if (v9)
    {
      v19[0] = 0;
      v10 = [[CCToolKitToolTimestamp alloc] initWithJSONDictionary:v9 error:v19];
      v11 = v19[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        goto LABEL_15;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"end"];
    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v12 = v13;
    v18 = 0;
    v14 = [[CCToolKitToolTimestamp alloc] initWithJSONDictionary:v13 error:&v18];
    v15 = v18;
    v10 = v15;
    if (v14 && !v15)
    {

LABEL_13:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
      v16 = [[CCToolKitToolTypedValuePrimitiveValueDateInterval alloc] initWithStart:v9 end:v14 duration:v10 error:error];
      v12 = v14;
LABEL_16:

      goto LABEL_17;
    }

    CCSetError();

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  CCSetError();
  v16 = 0;
LABEL_17:

  return v16;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_start)
  {
    start = [(CCToolKitToolTypedValuePrimitiveValueDateInterval *)self start];
    jsonDictionary = [start jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"start"];
  }

  if (self->_end)
  {
    v6 = [(CCToolKitToolTypedValuePrimitiveValueDateInterval *)self end];
    jsonDictionary2 = [v6 jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"end"];
  }

  if (self->_hasDuration)
  {
    v8 = MEMORY[0x1E696AD98];
    [(CCToolKitToolTypedValuePrimitiveValueDateInterval *)self duration];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"duration"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v10 = blockCopy;
  if (self->_start)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_start];
    v10[2](v10, v7);
  }

  if (self->_end)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 subMessageValue:self->_end];
    v10[2](v10, v8);
  }

  if (self->_hasDuration)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 doubleValue:self->_duration];
    v10[2](v10, v9);
  }
}

- (CCToolKitToolTimestamp)end
{
  v2 = [(CCToolKitToolTimestamp *)self->_end copy];

  return v2;
}

- (CCToolKitToolTimestamp)start
{
  v2 = [(CCToolKitToolTimestamp *)self->_start copy];

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
    goto LABEL_39;
  }

  v9 = 0;
  v10 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v5[*v8])
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 0;
    }

    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = *v6;
        v16 = *&v5[v15];
        v17 = v16 + 1;
        if (v16 == -1 || v17 > *&v5[*v7])
        {
          break;
        }

        v18 = *(*&v5[*v10] + v16);
        *&v5[v15] = v17;
        v14 |= (v18 & 0x7F) << v12;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v12 += 7;
        if (v13++ >= 9)
        {
          v20 = 0;
          v21 = *v8;
          if (*&v5[v21])
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v8] = 1;
LABEL_17:
      v21 = *v8;
      v22 = *&v5[v21];
      if (v22)
      {
        v20 = 0;
      }

      else
      {
        v20 = v14;
      }

      if (v22)
      {
        goto LABEL_40;
      }

LABEL_21:
      v23 = v20 >> 3;
      if ((v20 >> 3) == 3)
      {
        v30 = *v6;
        v31 = *&v5[v30];
        if (v31 <= 0xFFFFFFFFFFFFFFF7 && v31 + 8 <= *&v5[*v7])
        {
          v32 = *(*&v5[*v10] + v31);
          *&v5[v30] = v31 + 8;
        }

        else
        {
          *&v5[v21] = 1;
          v32 = 0.0;
        }

        v9 = 0;
        self->_duration = v32;
        self->_hasDuration = 1;
      }

      else
      {
        if (v23 == 2)
        {
          v28 = [CCToolKitToolTimestamp alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v42 = 0;
          v26 = [(CCItemMessage *)v28 initWithData:v25 error:&v42];
          v9 = v42;
          v27 = 32;
          goto LABEL_26;
        }

        if (v23 == 1)
        {
          v24 = [CCToolKitToolTimestamp alloc];
          v25 = CCPBReaderReadDataNoCopy();
          v43 = 0;
          v26 = [(CCItemMessage *)v24 initWithData:v25 error:&v43];
          v9 = v43;
          v27 = 24;
LABEL_26:
          v29 = *(&self->super.super.isa + v27);
          *(&self->super.super.isa + v27) = v26;

LABEL_27:
          goto LABEL_36;
        }

        if ((CCPBReaderSkipValueWithTag() & 1) == 0)
        {
          v33 = objc_opt_class();
          v25 = NSStringFromClass(v33);
          v34 = *&v5[*v8];
          v9 = CCSkipFieldErrorForMessage();
          goto LABEL_27;
        }

        v9 = 0;
      }

LABEL_36:
      if (*&v5[*v6] < *&v5[*v7])
      {
        continue;
      }
    }

    break;
  }

  if (v9)
  {
    CCSetError();
    goto LABEL_41;
  }

LABEL_39:
  if (!*&v5[*v8])
  {
    v9 = 0;
    v39 = 1;
    goto LABEL_43;
  }

LABEL_40:
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = *&v5[*v8];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v9 = 0;
LABEL_41:
  v39 = 0;
LABEL_43:

  return v39;
}

- (CCToolKitToolTypedValuePrimitiveValueDateInterval)initWithStart:(id)start end:(id)end duration:(id)duration error:(id *)error
{
  startCopy = start;
  endCopy = end;
  durationCopy = duration;
  v13 = objc_opt_new();
  if (startCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    data = [startCopy data];
    CCPBDataWriterWriteDataField();

    if (!endCopy)
    {
LABEL_4:
      v17 = v15;
      if (durationCopy)
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
    if (!endCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v20 = CCValidateIsInstanceOfExpectedClass();
  v17 = v15;

  if (!v20)
  {
    CCSetError();
    selfCopy = 0;
    v15 = v17;
    goto LABEL_14;
  }

  data2 = [endCopy data];
  CCPBDataWriterWriteDataField();

  if (!durationCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v15 = v17;

  if (v18)
  {
    [durationCopy doubleValue];
    CCPBDataWriterWriteDoubleField();
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