@interface CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth)initWithIndex:(id)index isLeap:(id)leap error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"index"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"isLeap"];
    v11 = [[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth alloc] initWithIndex:v9 isLeap:v10 error:error];
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
  if (self->_hasIndex)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth index](self, "index")}];
    [v3 setObject:v4 forKeyedSubscript:@"index"];
  }

  if (self->_hasIsLeap)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth isLeap](self, "isLeap")}];
    [v3 setObject:v5 forKeyedSubscript:@"isLeap"];
  }

  v6 = [v3 copy];

  return v6;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasIndex)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] int64Value:self->_index];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_hasIsLeap)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 BOOLValue:self->_isLeap];
    blockCopy[2](blockCopy, v7);
  }
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
    goto LABEL_56;
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
            goto LABEL_57;
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
        goto LABEL_57;
      }

LABEL_21:
      if ((v22 >> 3) == 1)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        while (1)
        {
          v35 = *v8;
          v36 = *&v7[v35];
          v37 = v36 + 1;
          if (v36 == -1 || v37 > *&v7[*v9])
          {
            break;
          }

          v38 = *(*&v7[*v12] + v36);
          *&v7[v35] = v37;
          v34 |= (v38 & 0x7F) << v32;
          if ((v38 & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v32 += 7;
          v21 = v33++ >= 9;
          if (v21)
          {
            v34 = 0;
            goto LABEL_50;
          }
        }

        *&v7[*v10] = 1;
LABEL_48:
        if (*&v7[*v10])
        {
          v34 = 0;
        }

LABEL_50:
        v11 = 0;
        self->_index = v34;
        v40 = 17;
      }

      else
      {
        if ((v22 >> 3) != 2)
        {
          if (CCPBReaderSkipValueWithTag())
          {
            v11 = 0;
          }

          else
          {
            v41 = objc_opt_class();
            NSStringFromClass(v41);
            errorCopy = error;
            v44 = v43 = dataCopy;
            v45 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            dataCopy = v43;
            error = errorCopy;
            self = selfCopy;
          }

LABEL_53:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

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
            goto LABEL_40;
          }

          v24 += 7;
          v21 = v25++ >= 9;
          if (v21)
          {
            v31 = 0;
            goto LABEL_46;
          }
        }

        *&v7[*v10] = 1;
LABEL_40:
        if (*&v7[*v10])
        {
          v39 = 1;
        }

        else
        {
          v39 = v26 == 0;
        }

        v31 = !v39;
LABEL_46:
        v11 = 0;
        self->_isLeap = v31;
        v40 = 18;
      }

      *(&self->super.super.isa + v40) = 1;
      goto LABEL_53;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_58;
  }

LABEL_56:
  if (!*&v7[*v10])
  {
    v49 = 1;
    goto LABEL_60;
  }

LABEL_57:
  v46 = objc_opt_class();
  v11 = NSStringFromClass(v46);
  v47 = *&v7[*v10];
  v48 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_58:
  v49 = 0;
LABEL_60:

  return v49;
}

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth)initWithIndex:(id)index isLeap:(id)leap error:(id *)error
{
  indexCopy = index;
  leapCopy = leap;
  v10 = objc_opt_new();
  if (!indexCopy)
  {
    v12 = 0;
    if (!leapCopy)
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

    [leapCopy BOOLValue];
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

  [indexCopy longLongValue];
  CCPBDataWriterWriteInt64Field();
  if (leapCopy)
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