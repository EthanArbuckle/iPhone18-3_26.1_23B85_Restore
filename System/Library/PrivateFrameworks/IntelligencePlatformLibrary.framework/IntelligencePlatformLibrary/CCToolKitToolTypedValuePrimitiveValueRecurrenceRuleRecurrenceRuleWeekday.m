@interface CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday)initWithRecurrenceRuleWeekdayWeekday:(unsigned int)a3 RecurrenceRuleWeekdayEvery:(id)a4 RecurrenceRuleWeekdayNth:(id)a5 error:(id *)a6;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"RecurrenceRuleWeekdayWeekday"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"RecurrenceRuleWeekdayEvery"];
    v14 = [v6 objectForKeyedSubscript:@"RecurrenceRuleWeekdayNth"];
    v12 = [[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday alloc] initWithRecurrenceRuleWeekdayWeekday:v11 RecurrenceRuleWeekdayEvery:v13 RecurrenceRuleWeekdayNth:v14 error:a4];
  }

  else
  {
    CCSetError();
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday RecurrenceRuleWeekdayWeekday](self, "RecurrenceRuleWeekdayWeekday")}];
  [v3 setObject:v4 forKeyedSubscript:@"RecurrenceRuleWeekdayWeekday"];

  if (self->_hasRecurrenceRuleWeekdayEvery)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday RecurrenceRuleWeekdayEvery](self, "RecurrenceRuleWeekdayEvery")}];
    [v3 setObject:v5 forKeyedSubscript:@"RecurrenceRuleWeekdayEvery"];
  }

  if (self->_hasRecurrenceRuleWeekdayNth)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday RecurrenceRuleWeekdayNth](self, "RecurrenceRuleWeekdayNth")}];
    [v3 setObject:v6 forKeyedSubscript:@"RecurrenceRuleWeekdayNth"];
  }

  v7 = [v3 copy];

  return v7;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v10 = a3;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_RecurrenceRuleWeekdayWeekday];
  v10[2](v10, v7);

  if (self->_hasRecurrenceRuleWeekdayEvery)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 BOOLValue:self->_RecurrenceRuleWeekdayEvery];
    v10[2](v10, v8);
  }

  if (self->_hasRecurrenceRuleWeekdayNth)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int64Value:self->_RecurrenceRuleWeekdayNth];
    v10[2](v10, v9);
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
    goto LABEL_68;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  v59 = self;
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
            goto LABEL_69;
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
        goto LABEL_69;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) == 1)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        while (1)
        {
          v43 = *v8;
          v44 = *&v7[v43];
          v45 = v44 + 1;
          if (v44 == -1 || v45 > *&v7[*v9])
          {
            break;
          }

          v46 = *(*&v7[*v12] + v44);
          *&v7[v43] = v45;
          v42 |= (v46 & 0x7F) << v40;
          if ((v46 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          v40 += 7;
          v21 = v41++ >= 9;
          if (v21)
          {
            LODWORD(v42) = 0;
            goto LABEL_58;
          }
        }

        *&v7[*v10] = 1;
LABEL_56:
        if (*&v7[*v10])
        {
          LODWORD(v42) = 0;
        }

LABEL_58:
        v11 = 0;
        self->_RecurrenceRuleWeekdayWeekday = v42;
      }

      else
      {
        if (v24 == 2)
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
              v39 = 0;
              goto LABEL_54;
            }
          }

          *&v7[*v10] = 1;
LABEL_48:
          if (*&v7[*v10])
          {
            v47 = 1;
          }

          else
          {
            v47 = v34 == 0;
          }

          v39 = !v47;
LABEL_54:
          v11 = 0;
          self->_RecurrenceRuleWeekdayEvery = v39;
          v48 = 17;
          goto LABEL_63;
        }

        if (v24 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v28 = *v8;
            v29 = *&v7[v28];
            v30 = v29 + 1;
            if (v29 == -1 || v30 > *&v7[*v9])
            {
              break;
            }

            v31 = *(*&v7[*v12] + v29);
            *&v7[v28] = v30;
            v27 |= (v31 & 0x7F) << v25;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_60;
            }

            v25 += 7;
            v21 = v26++ >= 9;
            if (v21)
            {
              v27 = 0;
              goto LABEL_62;
            }
          }

          *&v7[*v10] = 1;
LABEL_60:
          if (*&v7[*v10])
          {
            v27 = 0;
          }

LABEL_62:
          v11 = 0;
          self->_RecurrenceRuleWeekdayNth = v27;
          v48 = 18;
LABEL_63:
          *(&self->super.super.isa + v48) = 1;
          goto LABEL_65;
        }

        if (CCPBReaderSkipValueWithTag())
        {
          v11 = 0;
        }

        else
        {
          v49 = objc_opt_class();
          NSStringFromClass(v49);
          v50 = a4;
          v52 = v51 = v6;
          v53 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          v6 = v51;
          a4 = v50;
          self = v59;
        }
      }

LABEL_65:
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
    goto LABEL_70;
  }

LABEL_68:
  if (!*&v7[*v10])
  {
    v57 = 1;
    goto LABEL_72;
  }

LABEL_69:
  v54 = objc_opt_class();
  v11 = NSStringFromClass(v54);
  v55 = *&v7[*v10];
  v56 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_70:
  v57 = 0;
LABEL_72:

  return v57;
}

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday)initWithRecurrenceRuleWeekdayWeekday:(unsigned int)a3 RecurrenceRuleWeekdayEvery:(id)a4 RecurrenceRuleWeekdayNth:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  if (a3)
  {
    v13 = CCValidateEnumField();
    v14 = 0;
    if (!v13)
    {
      goto LABEL_13;
    }

    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v16 = v14;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v19 = 0;
      v14 = v16;
      goto LABEL_15;
    }

    [v10 BOOLValue];
    CCPBDataWriterWriteBOOLField();
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v16 = v14;
  if (v11)
  {
LABEL_10:
    objc_opt_class();
    v17 = CCValidateIsInstanceOfExpectedClass();
    v14 = v16;

    if (v17)
    {
      [v11 longLongValue];
      CCPBDataWriterWriteInt64Field();
      goto LABEL_12;
    }

LABEL_13:
    CCSetError();
    v19 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v14 = v16;
LABEL_12:
  v18 = [v12 immutableData];
  self = [(CCItemMessage *)self initWithData:v18 error:a6];

  v19 = self;
LABEL_15:

  return v19;
}

@end