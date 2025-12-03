@interface CCToolKitToolQuery
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolQuery)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolQuery)initWithPredicate:(id)predicate sort:(unsigned int)sort limit:(id)limit error:(id *)error;
- (CCToolKitToolQueryAnyPredicate)predicate;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolQuery

- (CCToolKitToolQuery)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v17[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"predicate"];
    if (v9)
    {
      v17[0] = 0;
      v10 = [[CCToolKitToolQueryAnyPredicate alloc] initWithJSONDictionary:v9 error:v17];
      v11 = v17[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v15 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"sort"];
    v12 = v13;
    if (v13)
    {
      unsignedIntegerValue = [v13 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"limit"];
    v15 = [[CCToolKitToolQuery alloc] initWithPredicate:v9 sort:unsignedIntegerValue limit:v10 error:error];
    goto LABEL_12;
  }

  CCSetError();
  v15 = 0;
LABEL_13:

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_predicate)
  {
    predicate = [(CCToolKitToolQuery *)self predicate];
    jsonDictionary = [predicate jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"predicate"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolQuery sort](self, "sort")}];
  [v3 setObject:v6 forKeyedSubscript:@"sort"];

  if (self->_hasLimit)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolQuery limit](self, "limit")}];
    [v3 setObject:v7 forKeyedSubscript:@"limit"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_predicate)
  {
    v5 = objc_alloc(MEMORY[0x1E69939F0]);
    v6 = *MEMORY[0x1E69939A8];
    v7 = [v5 initWithFieldType:v6 subMessageValue:self->_predicate];
    blockCopy[2](blockCopy, v7);
  }

  else
  {
    v6 = *MEMORY[0x1E69939A8];
  }

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_sort];
  blockCopy[2](blockCopy, v8);

  if (self->_hasLimit)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int64Value:self->_limit];
    blockCopy[2](blockCopy, v9);
  }
}

- (CCToolKitToolQueryAnyPredicate)predicate
{
  v2 = [(CCToolKitToolQueryAnyPredicate *)self->_predicate copy];

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
    goto LABEL_54;
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
        v19 = v13++ >= 9;
        if (v19)
        {
          v20 = 0;
          if (*&v5[*v8])
          {
            goto LABEL_55;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v8] = 1;
LABEL_17:
      v21 = *&v5[*v8];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v14;
      }

      if (v21)
      {
        goto LABEL_55;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) == 1)
      {
        v37 = [CCToolKitToolQueryAnyPredicate alloc];
        v38 = CCPBReaderReadDataNoCopy();
        v50 = 0;
        v39 = [(CCItemMessage *)v37 initWithData:v38 error:&v50];
        v9 = v50;
        predicate = self->_predicate;
        self->_predicate = v39;
      }

      else
      {
        if (v22 == 2)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v33 = *v6;
            v34 = *&v5[v33];
            v35 = v34 + 1;
            if (v34 == -1 || v35 > *&v5[*v7])
            {
              break;
            }

            v36 = *(*&v5[*v10] + v34);
            *&v5[v33] = v35;
            v32 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              goto LABEL_42;
            }

            v30 += 7;
            v19 = v31++ >= 9;
            if (v19)
            {
              LODWORD(v32) = 0;
              goto LABEL_44;
            }
          }

          *&v5[*v8] = 1;
LABEL_42:
          if (*&v5[*v8])
          {
            LODWORD(v32) = 0;
          }

LABEL_44:
          v9 = 0;
          self->_sort = v32;
LABEL_51:
          if (*&v5[*v6] < *&v5[*v7])
          {
            continue;
          }

          break;
        }

        if (v22 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v26 = *v6;
            v27 = *&v5[v26];
            v28 = v27 + 1;
            if (v27 == -1 || v28 > *&v5[*v7])
            {
              break;
            }

            v29 = *(*&v5[*v10] + v27);
            *&v5[v26] = v28;
            v25 |= (v29 & 0x7F) << v23;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_46;
            }

            v23 += 7;
            v19 = v24++ >= 9;
            if (v19)
            {
              v25 = 0;
              goto LABEL_48;
            }
          }

          *&v5[*v8] = 1;
LABEL_46:
          if (*&v5[*v8])
          {
            v25 = 0;
          }

LABEL_48:
          v9 = 0;
          self->_limit = v25;
          self->_hasLimit = 1;
          goto LABEL_51;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          v9 = 0;
          goto LABEL_51;
        }

        v41 = objc_opt_class();
        v38 = NSStringFromClass(v41);
        v42 = *&v5[*v8];
        v9 = CCSkipFieldErrorForMessage();
      }

      goto LABEL_51;
    }

    break;
  }

  if (v9)
  {
    CCSetError();
    goto LABEL_56;
  }

LABEL_54:
  if (!*&v5[*v8])
  {
    v9 = 0;
    v47 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  v45 = *&v5[*v8];
  v46 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v9 = 0;
LABEL_56:
  v47 = 0;
LABEL_58:

  return v47;
}

- (CCToolKitToolQuery)initWithPredicate:(id)predicate sort:(unsigned int)sort limit:(id)limit error:(id *)error
{
  predicateCopy = predicate;
  limitCopy = limit;
  v12 = objc_opt_new();
  if (predicateCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v14 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    data = [predicateCopy data];
    CCPBDataWriterWriteDataField();

    if (!sort)
    {
LABEL_4:
      v16 = v14;
      if (limitCopy)
      {
        goto LABEL_5;
      }

LABEL_11:
      v14 = v16;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    if (!sort)
    {
      goto LABEL_4;
    }
  }

  v19 = CCValidateEnumField();
  v16 = v14;

  if (!v19)
  {
    CCSetError();
    selfCopy = 0;
    v14 = v16;
    goto LABEL_14;
  }

  CCPBDataWriterWriteUint32Field();
  if (!limitCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v14 = v16;

  if (v17)
  {
    [limitCopy longLongValue];
    CCPBDataWriterWriteInt64Field();
LABEL_12:
    immutableData = [v12 immutableData];
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