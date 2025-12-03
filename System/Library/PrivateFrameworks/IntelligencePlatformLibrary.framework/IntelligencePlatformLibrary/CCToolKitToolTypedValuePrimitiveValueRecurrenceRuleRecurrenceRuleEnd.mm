@interface CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTimestamp)date;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd)initWithOccurences:(id)occurences date:(id)date never:(id)never error:(id *)error;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v17[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"occurences"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"date"];
    if (v10)
    {
      v11 = v10;
      v17[0] = 0;
      v12 = [[CCToolKitToolTimestamp alloc] initWithJSONDictionary:v10 error:v17];
      v13 = v17[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();

        v15 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"never"];
    v15 = [[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd alloc] initWithOccurences:v9 date:v12 never:v14 error:error];
    v11 = v12;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v15 = 0;
LABEL_11:

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_hasOccurences)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd occurences](self, "occurences")}];
    [v3 setObject:v4 forKeyedSubscript:@"occurences"];
  }

  if (self->_date)
  {
    date = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd *)self date];
    jsonDictionary = [date jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"date"];
  }

  if (self->_hasNever)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd never](self, "never")}];
    [v3 setObject:v7 forKeyedSubscript:@"never"];
  }

  v8 = [v3 copy];

  return v8;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasOccurences)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] int64Value:self->_occurences];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_date)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 subMessageValue:self->_date];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_hasNever)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 BOOLValue:self->_never];
    blockCopy[2](blockCopy, v8);
  }
}

- (CCToolKitToolTimestamp)date
{
  v2 = [(CCToolKitToolTimestamp *)self->_date copy];

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
    goto LABEL_59;
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
            goto LABEL_60;
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
        goto LABEL_60;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) != 1)
      {
        if (v22 == 2)
        {
          v31 = [CCToolKitToolTimestamp alloc];
          v32 = CCPBReaderReadDataNoCopy();
          v53 = 0;
          v33 = [(CCItemMessage *)v31 initWithData:v32 error:&v53];
          v9 = v53;
          date = self->_date;
          self->_date = v33;
        }

        else
        {
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
                v30 = 0;
                goto LABEL_52;
              }
            }

            *&v5[*v8] = 1;
LABEL_46:
            if (*&v5[*v8])
            {
              v43 = 1;
            }

            else
            {
              v43 = v25 == 0;
            }

            v30 = !v43;
LABEL_52:
            v9 = 0;
            self->_never = v30;
            v42 = 18;
LABEL_53:
            *(&self->super.super.isa + v42) = 1;
            goto LABEL_56;
          }

          if (CCPBReaderSkipValueWithTag())
          {
            v9 = 0;
            goto LABEL_56;
          }

          v44 = objc_opt_class();
          v32 = NSStringFromClass(v44);
          v45 = *&v5[*v8];
          v9 = CCSkipFieldErrorForMessage();
        }

LABEL_56:
        if (*&v5[*v6] < *&v5[*v7])
        {
          continue;
        }

        break;
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      while (1)
      {
        v38 = *v6;
        v39 = *&v5[v38];
        v40 = v39 + 1;
        if (v39 == -1 || v40 > *&v5[*v7])
        {
          break;
        }

        v41 = *(*&v5[*v10] + v39);
        *&v5[v38] = v40;
        v37 |= (v41 & 0x7F) << v35;
        if ((v41 & 0x80) == 0)
        {
          goto LABEL_42;
        }

        v35 += 7;
        v19 = v36++ >= 9;
        if (v19)
        {
          v37 = 0;
          goto LABEL_44;
        }
      }

      *&v5[*v8] = 1;
LABEL_42:
      if (*&v5[*v8])
      {
        v37 = 0;
      }

LABEL_44:
      v9 = 0;
      self->_occurences = v37;
      v42 = 17;
      goto LABEL_53;
    }

    break;
  }

  if (v9)
  {
    CCSetError();
    goto LABEL_61;
  }

LABEL_59:
  if (!*&v5[*v8])
  {
    v9 = 0;
    v50 = 1;
    goto LABEL_63;
  }

LABEL_60:
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  v48 = *&v5[*v8];
  v49 = CCInvalidBufferErrorForMessage();
  CCSetError();

  v9 = 0;
LABEL_61:
  v50 = 0;
LABEL_63:

  return v50;
}

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd)initWithOccurences:(id)occurences date:(id)date never:(id)never error:(id *)error
{
  occurencesCopy = occurences;
  dateCopy = date;
  neverCopy = never;
  v13 = objc_opt_new();
  if (occurencesCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v15 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_7;
    }

    [occurencesCopy longLongValue];
    CCPBDataWriterWriteInt64Field();
    if (!dateCopy)
    {
LABEL_4:
      v16 = v15;
      if (neverCopy)
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
    if (!dateCopy)
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

  data = [dateCopy data];
  CCPBDataWriterWriteDataField();

  if (!neverCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_opt_class();
  v17 = CCValidateIsInstanceOfExpectedClass();
  v15 = v16;

  if (v17)
  {
    [neverCopy BOOLValue];
    CCPBDataWriterWriteBOOLField();
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