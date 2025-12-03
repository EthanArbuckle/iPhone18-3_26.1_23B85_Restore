@interface CCContactDate
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCContactDate)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCContactDate)initWithLabel:(id)label year:(id)year month:(id)month day:(id)day error:(id *)error;
- (NSString)label;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCContactDate

- (CCContactDate)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"year"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"month"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"day"];
    v13 = [[CCContactDate alloc] initWithLabel:v9 year:v10 month:v11 day:v12 error:error];
  }

  else
  {
    CCSetError();
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_label)
  {
    label = [(CCContactDate *)self label];
    [v3 setObject:label forKeyedSubscript:@"label"];
  }

  if (self->_hasYear)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCContactDate year](self, "year")}];
    [v3 setObject:v5 forKeyedSubscript:@"year"];
  }

  if (self->_hasMonth)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCContactDate month](self, "month")}];
    [v3 setObject:v6 forKeyedSubscript:@"month"];
  }

  if (self->_hasDay)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCContactDate day](self, "day")}];
    [v3 setObject:v7 forKeyedSubscript:@"day"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  typeCopy = type;
  blockCopy = block;
  if (self->_label)
  {
    switch(typeCopy)
    {
      case 19701:
        v6 = 19713;
        break;
      case 19705:
        v6 = 19769;
        break;
      case 19702:
        v6 = 19740;
        break;
      default:
        goto LABEL_9;
    }

    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_label];
    blockCopy[2](blockCopy, v7);
  }

LABEL_9:
  if (!self->_hasYear)
  {
    goto LABEL_17;
  }

  switch(typeCopy)
  {
    case 19701:
      v8 = 19734;
      break;
    case 19705:
      v8 = 19773;
      break;
    case 19702:
      v8 = 19737;
      break;
    default:
      goto LABEL_17;
  }

  v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v8 uint32Value:self->_year];
  blockCopy[2](blockCopy, v9);

LABEL_17:
  if (!self->_hasMonth)
  {
    goto LABEL_25;
  }

  switch(typeCopy)
  {
    case 19701:
      v10 = 19735;
      break;
    case 19705:
      v10 = 19774;
      break;
    case 19702:
      v10 = 19738;
      break;
    default:
      goto LABEL_25;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v10 uint32Value:self->_month];
  blockCopy[2](blockCopy, v11);

LABEL_25:
  if (!self->_hasDay)
  {
    goto LABEL_33;
  }

  switch(typeCopy)
  {
    case 19701:
      v12 = 19736;
      break;
    case 19705:
      v12 = 19775;
      break;
    case 19702:
      v12 = 19739;
      break;
    default:
      goto LABEL_33;
  }

  v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v12 uint32Value:self->_day];
  blockCopy[2](blockCopy, v13);

LABEL_33:
}

- (NSString)label
{
  v2 = [(NSString *)self->_label copy];

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
    goto LABEL_67;
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
            goto LABEL_68;
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
        goto LABEL_68;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 2)
      {
        if (v23 == 3)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v41 = *v8;
            v42 = *&v7[v41];
            if (v42 == -1 || v42 >= *&v7[*v9])
            {
              break;
            }

            v43 = *(*&v7[*v12] + v42);
            *&v7[v41] = v42 + 1;
            v40 |= (v43 & 0x7F) << v38;
            if ((v43 & 0x80) == 0)
            {
              goto LABEL_59;
            }

            v38 += 7;
            v20 = v39++ >= 9;
            if (v20)
            {
              LODWORD(v40) = 0;
              goto LABEL_61;
            }
          }

          *&v7[*v10] = 1;
LABEL_59:
          if (*&v7[*v10])
          {
            LODWORD(v40) = 0;
          }

LABEL_61:
          v11 = 0;
          self->_month = v40;
          v44 = 17;
          goto LABEL_62;
        }

        if (v23 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v33 = *v8;
            v34 = *&v7[v33];
            if (v34 == -1 || v34 >= *&v7[*v9])
            {
              break;
            }

            v35 = *(*&v7[*v12] + v34);
            *&v7[v33] = v34 + 1;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_55;
            }

            v30 += 7;
            v20 = v31++ >= 9;
            if (v20)
            {
              LODWORD(v32) = 0;
              goto LABEL_57;
            }
          }

          *&v7[*v10] = 1;
LABEL_55:
          if (*&v7[*v10])
          {
            LODWORD(v32) = 0;
          }

LABEL_57:
          v11 = 0;
          self->_day = v32;
          v44 = 18;
          goto LABEL_62;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v36 = CCPBReaderReadStringNoCopy();
          label = self->_label;
          self->_label = v36;

          v11 = 0;
          goto LABEL_64;
        }

        if (v23 == 2)
        {
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
              goto LABEL_51;
            }

            v24 += 7;
            v20 = v25++ >= 9;
            if (v20)
            {
              LODWORD(v26) = 0;
              goto LABEL_53;
            }
          }

          *&v7[*v10] = 1;
LABEL_51:
          if (*&v7[*v10])
          {
            LODWORD(v26) = 0;
          }

LABEL_53:
          v11 = 0;
          self->_year = v26;
          v44 = 16;
LABEL_62:
          *(&self->super.super.isa + v44) = 1;
          goto LABEL_64;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v11 = 0;
      }

      else
      {
        v45 = objc_opt_class();
        NSStringFromClass(v45);
        errorCopy = error;
        v48 = v47 = dataCopy;
        v49 = *&v7[*v10];
        v11 = CCSkipFieldErrorForMessage();

        dataCopy = v47;
        error = errorCopy;
        self = selfCopy;
      }

LABEL_64:
      if (*&v7[*v8] < *&v7[*v9])
      {
        continue;
      }
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_69;
  }

LABEL_67:
  if (!*&v7[*v10])
  {
    v53 = 1;
    goto LABEL_71;
  }

LABEL_68:
  v50 = objc_opt_class();
  v11 = NSStringFromClass(v50);
  v51 = *&v7[*v10];
  v52 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_69:
  v53 = 0;
LABEL_71:

  return v53;
}

- (CCContactDate)initWithLabel:(id)label year:(id)year month:(id)month day:(id)day error:(id *)error
{
  labelCopy = label;
  yearCopy = year;
  monthCopy = month;
  dayCopy = day;
  v16 = objc_opt_new();
  if (labelCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v18 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_16;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v18 = 0;
  }

  v19 = 0x1E696A000uLL;
  if (yearCopy)
  {
    objc_opt_class();
    v20 = CCValidateIsInstanceOfExpectedClass();
    v21 = v18;

    if (!v20)
    {
      goto LABEL_17;
    }

    [yearCopy unsignedIntValue];
    CCPBDataWriterWriteUint32Field();
    v19 = 0x1E696A000;
    if (!monthCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v21 = v18;
    if (!monthCopy)
    {
LABEL_8:
      v18 = v21;
      if (!dayCopy)
      {
        goto LABEL_15;
      }

LABEL_13:
      v24 = *(v19 + 3480);
      objc_opt_class();
      v29 = v18;
      v25 = CCValidateIsInstanceOfExpectedClass();
      v21 = v18;

      if (v25)
      {
        [dayCopy unsignedIntValue];
        CCPBDataWriterWriteUint32Field();
        v18 = v21;
        goto LABEL_15;
      }

LABEL_17:
      CCSetError();
      selfCopy = 0;
      v18 = v21;
      goto LABEL_18;
    }
  }

  v22 = *(v19 + 3480);
  objc_opt_class();
  v23 = CCValidateIsInstanceOfExpectedClass();
  v18 = v21;

  if (!v23)
  {
LABEL_16:
    CCSetError();
    selfCopy = 0;
    goto LABEL_18;
  }

  [monthCopy unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
  v19 = 0x1E696A000uLL;
  if (dayCopy)
  {
    goto LABEL_13;
  }

LABEL_15:
  immutableData = [v16 immutableData];
  self = [(CCItemMessage *)self initWithData:immutableData error:error];

  selfCopy = self;
LABEL_18:

  return selfCopy;
}

@end