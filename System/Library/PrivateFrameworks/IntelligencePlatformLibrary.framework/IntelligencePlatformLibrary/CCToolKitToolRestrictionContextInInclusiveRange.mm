@interface CCToolKitToolRestrictionContextInInclusiveRange
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolRestrictionContextInInclusiveRange)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolRestrictionContextInInclusiveRange)initWithLowerBound:(id)bound upperBound:(id)upperBound error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolRestrictionContextInInclusiveRange

- (CCToolKitToolRestrictionContextInInclusiveRange)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"lowerBound"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"upperBound"];
    v11 = [[CCToolKitToolRestrictionContextInInclusiveRange alloc] initWithLowerBound:v9 upperBound:v10 error:error];
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
  if (self->_hasLowerBound)
  {
    v4 = MEMORY[0x1E696AD98];
    [(CCToolKitToolRestrictionContextInInclusiveRange *)self lowerBound];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"lowerBound"];
  }

  if (self->_hasUpperBound)
  {
    v6 = MEMORY[0x1E696AD98];
    [(CCToolKitToolRestrictionContextInInclusiveRange *)self upperBound];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"upperBound"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasLowerBound)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] doubleValue:self->_lowerBound];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_hasUpperBound)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 doubleValue:self->_upperBound];
    blockCopy[2](blockCopy, v7);
  }
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
    goto LABEL_41;
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
          v22 = *v9;
          if (*&v6[v22])
          {
            goto LABEL_42;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *v9;
      v23 = *&v6[v22];
      if (v23)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v23)
      {
        goto LABEL_42;
      }

LABEL_21:
      if ((v21 >> 3) == 2)
      {
        v27 = *v7;
        v28 = *&v6[v27];
        if (v28 <= 0xFFFFFFFFFFFFFFF7 && v28 + 8 <= *&v6[*v8])
        {
          v29 = *(*&v6[*v11] + v28);
          *&v6[v27] = v28 + 8;
        }

        else
        {
          *&v6[v22] = 1;
          v29 = 0.0;
        }

        v10 = 0;
        self->_upperBound = v29;
        v34 = 17;
      }

      else
      {
        if ((v21 >> 3) != 1)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v10 = 0;
          }

          else
          {
            v30 = objc_opt_class();
            NSStringFromClass(v30);
            v32 = v31 = dataCopy;
            v33 = *&v6[*v9];
            v10 = CCSkipFieldErrorForMessage();

            dataCopy = v31;
          }

LABEL_38:
          if (*&v6[*v7] < *&v6[*v8])
          {
            continue;
          }

          break;
        }

        v24 = *v7;
        v25 = *&v6[v24];
        if (v25 <= 0xFFFFFFFFFFFFFFF7 && v25 + 8 <= *&v6[*v8])
        {
          v26 = *(*&v6[*v11] + v25);
          *&v6[v24] = v25 + 8;
        }

        else
        {
          *&v6[v22] = 1;
          v26 = 0.0;
        }

        v10 = 0;
        self->_lowerBound = v26;
        v34 = 16;
      }

      *(&self->super.super.isa + v34) = 1;
      goto LABEL_38;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_43;
  }

LABEL_41:
  if (!*&v6[*v9])
  {
    v38 = 1;
    goto LABEL_45;
  }

LABEL_42:
  v35 = objc_opt_class();
  v10 = NSStringFromClass(v35);
  v36 = *&v6[*v9];
  v37 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_43:
  v38 = 0;
LABEL_45:

  return v38;
}

- (CCToolKitToolRestrictionContextInInclusiveRange)initWithLowerBound:(id)bound upperBound:(id)upperBound error:(id *)error
{
  boundCopy = bound;
  upperBoundCopy = upperBound;
  v10 = objc_opt_new();
  if (!boundCopy)
  {
    v12 = 0;
    if (!upperBoundCopy)
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

    [upperBoundCopy doubleValue];
    CCPBDataWriterWriteDoubleField();
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

  [boundCopy doubleValue];
  CCPBDataWriterWriteDoubleField();
  if (upperBoundCopy)
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