@interface CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)initWithIdentifier:(unsigned int)identifier timeZoneIdentifier:(id)zoneIdentifier localeIdentifier:(id)localeIdentifier firstWeekday:(id)weekday minimumDaysInFirstWeek:(id)week error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSString)localeIdentifier;
- (NSString)timeZoneIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar

- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"timeZoneIdentifier"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"localeIdentifier"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"firstWeekday"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"minimumDaysInFirstWeek"];
    v12 = [[CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar alloc] initWithIdentifier:unsignedIntegerValue timeZoneIdentifier:v13 localeIdentifier:v14 firstWeekday:v15 minimumDaysInFirstWeek:v16 error:error];
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
    timeZoneIdentifier = [(CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar *)self timeZoneIdentifier];
    [v3 setObject:timeZoneIdentifier forKeyedSubscript:@"timeZoneIdentifier"];
  }

  if (self->_localeIdentifier)
  {
    localeIdentifier = [(CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar *)self localeIdentifier];
    [v3 setObject:localeIdentifier forKeyedSubscript:@"localeIdentifier"];
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

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_identifier];
  blockCopy[2](blockCopy, v7);

  if (self->_timeZoneIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_timeZoneIdentifier];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_localeIdentifier)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_localeIdentifier];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_hasFirstWeekday)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int64Value:self->_firstWeekday];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_hasMinimumDaysInFirstWeek)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int64Value:self->_minimumDaysInFirstWeek];
    blockCopy[2](blockCopy, v11);
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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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
            selfCopy = self;
            errorCopy = error;
            v52 = v51 = dataCopy;
            v53 = *&v7[*v10];
            v11 = CCSkipFieldErrorForMessage();

            dataCopy = v51;
            error = errorCopy;
            self = selfCopy;
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

- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)initWithIdentifier:(unsigned int)identifier timeZoneIdentifier:(id)zoneIdentifier localeIdentifier:(id)localeIdentifier firstWeekday:(id)weekday minimumDaysInFirstWeek:(id)week error:(id *)error
{
  zoneIdentifierCopy = zoneIdentifier;
  localeIdentifierCopy = localeIdentifier;
  weekdayCopy = weekday;
  weekCopy = week;
  v18 = objc_opt_new();
  v38 = zoneIdentifierCopy;
  if (identifier)
  {
    v19 = CCValidateEnumField();
    v20 = 0;
    if (!v19)
    {
      goto LABEL_23;
    }

    errorCopy2 = error;
    v21 = weekdayCopy;
    v22 = weekCopy;
    selfCopy2 = self;
    CCPBDataWriterWriteUint32Field();
  }

  else
  {
    errorCopy2 = error;
    v21 = weekdayCopy;
    v22 = weekCopy;
    selfCopy2 = self;
    v20 = 0;
  }

  if (zoneIdentifierCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = v20;

    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      selfCopy3 = 0;
      v20 = v25;
      goto LABEL_18;
    }

    CCPBDataWriterWriteStringField();
    if (!localeIdentifierCopy)
    {
LABEL_8:
      v26 = localeIdentifierCopy;
      v20 = v25;
LABEL_12:
      self = selfCopy2;
      v28 = 0x1E696A000uLL;
      weekCopy = v22;
      weekdayCopy = v21;
      if (v21)
      {
        objc_opt_class();
        v29 = CCValidateIsInstanceOfExpectedClass();
        v30 = v20;

        localeIdentifierCopy = v26;
        v31 = errorCopy2;
        if (!v29)
        {
          CCSetError();
          selfCopy3 = 0;
          v20 = v30;
          goto LABEL_25;
        }

        [weekdayCopy longLongValue];
        CCPBDataWriterWriteInt64Field();
        v28 = 0x1E696A000;
        if (!weekCopy)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v30 = v20;
        localeIdentifierCopy = v26;
        v31 = errorCopy2;
        if (!weekCopy)
        {
LABEL_15:
          v20 = v30;
LABEL_22:
          immutableData = [v18 immutableData];
          self = [(CCItemMessage *)self initWithData:immutableData error:v31];

          selfCopy3 = self;
          goto LABEL_25;
        }
      }

      v33 = *(v28 + 3480);
      objc_opt_class();
      v34 = CCValidateIsInstanceOfExpectedClass();
      v20 = v30;

      if (v34)
      {
        [weekCopy longLongValue];
        CCPBDataWriterWriteInt64Field();
        goto LABEL_22;
      }

LABEL_23:
      CCSetError();
      selfCopy3 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v25 = v20;
    if (!localeIdentifierCopy)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v27 = CCValidateIsInstanceOfExpectedClass();
  v20 = v25;

  if (v27)
  {
    v26 = localeIdentifierCopy;
    CCPBDataWriterWriteStringField();
    goto LABEL_12;
  }

  CCSetError();
  selfCopy3 = 0;
LABEL_18:
  self = selfCopy2;
  weekCopy = v22;
  weekdayCopy = v21;
LABEL_25:

  return selfCopy3;
}

@end