@interface CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)initWithIdentifier:(unsigned int)a3 timeZoneIdentifier:(id)a4 localeIdentifier:(id)a5 firstWeekday:(id)a6 minimumDaysInFirstWeek:(id)a7 error:(id *)a8;
- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSString)localeIdentifier;
- (NSString)timeZoneIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar

- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"identifier"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"timeZoneIdentifier"];
    v14 = [v6 objectForKeyedSubscript:@"localeIdentifier"];
    v15 = [v6 objectForKeyedSubscript:@"firstWeekday"];
    v16 = [v6 objectForKeyedSubscript:@"minimumDaysInFirstWeek"];
    v12 = [[CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar alloc] initWithIdentifier:v11 timeZoneIdentifier:v13 localeIdentifier:v14 firstWeekday:v15 minimumDaysInFirstWeek:v16 error:a4];
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar identifier](self, "identifier")}];
  [v3 setObject:v4 forKeyedSubscript:@"identifier"];

  if (self->_timeZoneIdentifier)
  {
    v5 = [(CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar *)self timeZoneIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"timeZoneIdentifier"];
  }

  if (self->_localeIdentifier)
  {
    v6 = [(CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar *)self localeIdentifier];
    [v3 setObject:v6 forKeyedSubscript:@"localeIdentifier"];
  }

  if (self->_hasFirstWeekday)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar firstWeekday](self, "firstWeekday")}];
    [v3 setObject:v7 forKeyedSubscript:@"firstWeekday"];
  }

  if (self->_hasMinimumDaysInFirstWeek)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar minimumDaysInFirstWeek](self, "minimumDaysInFirstWeek")}];
    [v3 setObject:v8 forKeyedSubscript:@"minimumDaysInFirstWeek"];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v12 = a3;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_identifier];
  v12[2](v12, v7);

  if (self->_timeZoneIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_timeZoneIdentifier];
    v12[2](v12, v8);
  }

  if (self->_localeIdentifier)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_localeIdentifier];
    v12[2](v12, v9);
  }

  if (self->_hasFirstWeekday)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int64Value:self->_firstWeekday];
    v12[2](v12, v10);
  }

  if (self->_hasMinimumDaysInFirstWeek)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int64Value:self->_minimumDaysInFirstWeek];
    v12[2](v12, v11);
  }
}

- (NSString)localeIdentifier
{
  v2 = [(NSString *)self->_localeIdentifier copy];

  return v2;
}

- (NSString)timeZoneIdentifier
{
  v2 = [(NSString *)self->_timeZoneIdentifier copy];

  return v2;
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
    goto LABEL_70;
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
            goto LABEL_71;
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
        goto LABEL_71;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) <= 2)
      {
        if (v24 == 1)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          while (1)
          {
            v45 = *v8;
            v46 = *&v7[v45];
            v47 = v46 + 1;
            if (v46 == -1 || v47 > *&v7[*v9])
            {
              break;
            }

            v48 = *(*&v7[*v12] + v46);
            *&v7[v45] = v47;
            v44 |= (v48 & 0x7F) << v42;
            if ((v48 & 0x80) == 0)
            {
              goto LABEL_59;
            }

            v42 += 7;
            v21 = v43++ >= 9;
            if (v21)
            {
              LODWORD(v44) = 0;
              goto LABEL_61;
            }
          }

          *&v7[*v10] = 1;
LABEL_59:
          if (*&v7[*v10])
          {
            LODWORD(v44) = 0;
          }

LABEL_61:
          v11 = 0;
          self->_identifier = v44;
LABEL_67:
          if (*&v7[*v8] < *&v7[*v9])
          {
            continue;
          }

          break;
        }

        if (v24 != 2)
        {
LABEL_52:
          if ((CCPBReaderSkipValueWithTag() & 1) == 0)
          {
            v49 = objc_opt_class();
            NSStringFromClass(v49);
            v60 = self;
            v50 = a4;
            v52 = v51 = v6;
            v53 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            v6 = v51;
            a4 = v50;
            self = v60;
            goto LABEL_67;
          }

LABEL_37:
          v11 = 0;
          goto LABEL_67;
        }

        v32 = CCPBReaderReadStringNoCopy();
        v33 = 24;
      }

      else
      {
        if (v24 != 3)
        {
          if (v24 == 4)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            while (1)
            {
              v38 = *v8;
              v39 = *&v7[v38];
              v40 = v39 + 1;
              if (v39 == -1 || v40 > *&v7[*v9])
              {
                break;
              }

              v41 = *(*&v7[*v12] + v39);
              *&v7[v38] = v40;
              v37 |= (v41 & 0x7F) << v35;
              if ((v41 & 0x80) == 0)
              {
                goto LABEL_55;
              }

              v35 += 7;
              v21 = v36++ >= 9;
              if (v21)
              {
                v37 = 0;
                goto LABEL_57;
              }
            }

            *&v7[*v10] = 1;
LABEL_55:
            if (*&v7[*v10])
            {
              v37 = 0;
            }

LABEL_57:
            v11 = 0;
            self->_firstWeekday = v37;
            v54 = 16;
            goto LABEL_66;
          }

          if (v24 == 5)
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
                goto LABEL_63;
              }

              v25 += 7;
              v21 = v26++ >= 9;
              if (v21)
              {
                v27 = 0;
                goto LABEL_65;
              }
            }

            *&v7[*v10] = 1;
LABEL_63:
            if (*&v7[*v10])
            {
              v27 = 0;
            }

LABEL_65:
            v11 = 0;
            self->_minimumDaysInFirstWeek = v27;
            v54 = 17;
LABEL_66:
            *(&self->super.super.isa + v54) = 1;
            goto LABEL_67;
          }

          goto LABEL_52;
        }

        v32 = CCPBReaderReadStringNoCopy();
        v33 = 32;
      }

      v34 = *(&self->super.super.isa + v33);
      *(&self->super.super.isa + v33) = v32;

      goto LABEL_37;
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_72;
  }

LABEL_70:
  if (!*&v7[*v10])
  {
    v58 = 1;
    goto LABEL_74;
  }

LABEL_71:
  v55 = objc_opt_class();
  v11 = NSStringFromClass(v55);
  v56 = *&v7[*v10];
  v57 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_72:
  v58 = 0;
LABEL_74:

  return v58;
}

- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)initWithIdentifier:(unsigned int)a3 timeZoneIdentifier:(id)a4 localeIdentifier:(id)a5 firstWeekday:(id)a6 minimumDaysInFirstWeek:(id)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_opt_new();
  v38 = v14;
  if (a3)
  {
    v19 = CCValidateEnumField();
    v20 = 0;
    if (!v19)
    {
      goto LABEL_23;
    }

    v37 = a8;
    v21 = v16;
    v22 = v17;
    v23 = self;
    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    v37 = a8;
    v21 = v16;
    v22 = v17;
    v23 = self;
    v20 = 0;
  }

  if (v14)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = v20;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v32 = 0;
      v20 = v25;
      goto LABEL_18;
    }

    CCPBDataWriterWriteStringField();
    if (!v15)
    {
LABEL_8:
      v26 = v15;
      v20 = v25;
LABEL_12:
      self = v23;
      v28 = 0x1E696A000uLL;
      v17 = v22;
      v16 = v21;
      if (v21)
      {
        objc_opt_class();
        v29 = CCValidateIsInstanceOfExpectedClass();
        v30 = v20;

        v15 = v26;
        v31 = v37;
        if (!v29)
        {
          CCSetError();
          v32 = 0;
          v20 = v30;
          goto LABEL_25;
        }

        [v16 longLongValue];
        CCPBDataWriterWriteInt64Field();
        v28 = 0x1E696A000;
        if (!v17)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v30 = v20;
        v15 = v26;
        v31 = v37;
        if (!v17)
        {
LABEL_15:
          v20 = v30;
LABEL_22:
          v35 = [v18 immutableData];
          self = [(CCItemMessage *)self initWithData:v35 error:v31];

          v32 = self;
          goto LABEL_25;
        }
      }

      v33 = *(v28 + 3480);
      objc_opt_class();
      v34 = CCValidateIsInstanceOfExpectedClass();
      v20 = v30;

      if (v34)
      {
        [v17 longLongValue];
        CCPBDataWriterWriteInt64Field();
        goto LABEL_22;
      }

LABEL_23:
      CCSetError();
      v32 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v25 = v20;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v27 = CCValidateIsInstanceOfExpectedClass();
  v20 = v25;

  if (v27)
  {
    v26 = v15;
    CCPBDataWriterWriteStringField();
    goto LABEL_12;
  }

  CCSetError();
  v32 = 0;
LABEL_18:
  self = v23;
  v17 = v22;
  v16 = v21;
LABEL_25:

  return v32;
}

@end