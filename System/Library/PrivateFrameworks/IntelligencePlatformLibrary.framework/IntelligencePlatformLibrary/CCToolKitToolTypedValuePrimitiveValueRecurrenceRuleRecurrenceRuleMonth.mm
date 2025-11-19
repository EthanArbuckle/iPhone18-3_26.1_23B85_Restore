@interface CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth)initWithIndex:(id)a3 isLeap:(id)a4 error:(id *)a5;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"index"];
    v10 = [v6 objectForKeyedSubscript:@"isLeap"];
    v11 = [[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth alloc] initWithIndex:v9 isLeap:v10 error:a4];
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

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v8 = a3;
  v5 = MEMORY[0x1E69939A8];
  if (self->_hasIndex)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] int64Value:self->_index];
    v8[2](v8, v6);
  }

  if (self->_hasIsLeap)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v5 BOOLValue:self->_isLeap];
    v8[2](v8, v7);
  }
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_56;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v51 = self;
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
            v42 = a4;
            v44 = v43 = v6;
            v45 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            v6 = v43;
            a4 = v42;
            self = v51;
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

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth)initWithIndex:(id)a3 isLeap:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if (!v8)
  {
    v12 = 0;
    if (!v9)
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
      v16 = 0;
      v12 = v14;
      goto LABEL_11;
    }

    [v9 BOOLValue];
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
    v16 = 0;
    goto LABEL_11;
  }

  [v8 longLongValue];
  CCPBDataWriterWriteInt64Field();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_8:
  v15 = [v10 immutableData];
  self = [(CCItemMessage *)self initWithData:v15 error:a5];

  v16 = self;
LABEL_11:

  return v16;
}

@end