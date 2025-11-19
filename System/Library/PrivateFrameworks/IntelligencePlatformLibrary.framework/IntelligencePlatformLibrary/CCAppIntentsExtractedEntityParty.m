@interface CCAppIntentsExtractedEntityParty
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityParty)initWithEventName:(id)a3 startLocationName:(id)a4 startAddress:(id)a5 startDate:(id)a6 startDateTimeZone:(id)a7 endDate:(id)a8 endDateTimeZone:(id)a9 link:(id)a10 eventSubType:(id)a11 error:(id *)a12;
- (CCAppIntentsExtractedEntityParty)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSString)endDate;
- (NSString)endDateTimeZone;
- (NSString)eventName;
- (NSString)eventSubType;
- (NSString)link;
- (NSString)startAddress;
- (NSString)startDate;
- (NSString)startDateTimeZone;
- (NSString)startLocationName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityParty

- (CCAppIntentsExtractedEntityParty)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v18 = [v6 objectForKeyedSubscript:@"eventName"];
    v9 = [v6 objectForKeyedSubscript:@"startLocationName"];
    v19 = [v6 objectForKeyedSubscript:@"startAddress"];
    v10 = [v6 objectForKeyedSubscript:@"startDate"];
    v11 = [v6 objectForKeyedSubscript:@"startDateTimeZone"];
    v12 = [v6 objectForKeyedSubscript:@"endDate"];
    [v6 objectForKeyedSubscript:@"endDateTimeZone"];
    v17 = v20 = self;
    v13 = [v6 objectForKeyedSubscript:@"link"];
    v14 = [v6 objectForKeyedSubscript:@"eventSubType"];
    v15 = [[CCAppIntentsExtractedEntityParty alloc] initWithEventName:v18 startLocationName:v9 startAddress:v19 startDate:v10 startDateTimeZone:v11 endDate:v12 endDateTimeZone:v17 link:v13 eventSubType:v14 error:a4];

    self = v20;
  }

  else
  {
    CCSetError();
    v15 = 0;
  }

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_eventName)
  {
    v4 = [(CCAppIntentsExtractedEntityParty *)self eventName];
    [v3 setObject:v4 forKeyedSubscript:@"eventName"];
  }

  if (self->_startLocationName)
  {
    v5 = [(CCAppIntentsExtractedEntityParty *)self startLocationName];
    [v3 setObject:v5 forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startAddress)
  {
    v6 = [(CCAppIntentsExtractedEntityParty *)self startAddress];
    [v3 setObject:v6 forKeyedSubscript:@"startAddress"];
  }

  if (self->_startDate)
  {
    v7 = [(CCAppIntentsExtractedEntityParty *)self startDate];
    [v3 setObject:v7 forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    v8 = [(CCAppIntentsExtractedEntityParty *)self startDateTimeZone];
    [v3 setObject:v8 forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_endDate)
  {
    v9 = [(CCAppIntentsExtractedEntityParty *)self endDate];
    [v3 setObject:v9 forKeyedSubscript:@"endDate"];
  }

  if (self->_endDateTimeZone)
  {
    v10 = [(CCAppIntentsExtractedEntityParty *)self endDateTimeZone];
    [v3 setObject:v10 forKeyedSubscript:@"endDateTimeZone"];
  }

  if (self->_link)
  {
    v11 = [(CCAppIntentsExtractedEntityParty *)self link];
    [v3 setObject:v11 forKeyedSubscript:@"link"];
  }

  if (self->_eventSubType)
  {
    v12 = [(CCAppIntentsExtractedEntityParty *)self eventSubType];
    [v3 setObject:v12 forKeyedSubscript:@"eventSubType"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v15 = a3;
  if (self->_eventName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27459 stringValue:self->_eventName];
    v15[2](v15, v5);
  }

  if (self->_startLocationName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27460 stringValue:self->_startLocationName];
    v15[2](v15, v6);
  }

  if (self->_startAddress)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27461 stringValue:self->_startAddress];
    v15[2](v15, v7);
  }

  if (self->_startDate)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27462 stringValue:self->_startDate];
    v15[2](v15, v8);
  }

  if (self->_startDateTimeZone)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27463 stringValue:self->_startDateTimeZone];
    v15[2](v15, v9);
  }

  if (self->_endDate)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27464 stringValue:self->_endDate];
    v15[2](v15, v10);
  }

  if (self->_endDateTimeZone)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27465 stringValue:self->_endDateTimeZone];
    v15[2](v15, v11);
  }

  if (self->_link)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27466 stringValue:self->_link];
    v15[2](v15, v12);
  }

  v13 = v15;
  if (self->_eventSubType)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27467 stringValue:self->_eventSubType];
    v15[2](v15, v14);

    v13 = v15;
  }
}

- (NSString)eventSubType
{
  v2 = [(NSString *)self->_eventSubType copy];

  return v2;
}

- (NSString)link
{
  v2 = [(NSString *)self->_link copy];

  return v2;
}

- (NSString)endDateTimeZone
{
  v2 = [(NSString *)self->_endDateTimeZone copy];

  return v2;
}

- (NSString)endDate
{
  v2 = [(NSString *)self->_endDate copy];

  return v2;
}

- (NSString)startDateTimeZone
{
  v2 = [(NSString *)self->_startDateTimeZone copy];

  return v2;
}

- (NSString)startDate
{
  v2 = [(NSString *)self->_startDate copy];

  return v2;
}

- (NSString)startAddress
{
  v2 = [(NSString *)self->_startAddress copy];

  return v2;
}

- (NSString)startLocationName
{
  v2 = [(NSString *)self->_startLocationName copy];

  return v2;
}

- (NSString)eventName
{
  v2 = [(NSString *)self->_eventName copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_51;
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
          if (*&v6[*v9])
          {
            goto LABEL_52;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_52;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 32;
            goto LABEL_42;
          }

          if (v23 == 4)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 40;
            goto LABEL_42;
          }
        }

        else
        {
          if (v23 == 1)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 16;
            goto LABEL_42;
          }

          if (v23 == 2)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 24;
            goto LABEL_42;
          }
        }
      }

      else if (v23 <= 6)
      {
        if (v23 == 5)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 48;
          goto LABEL_42;
        }

        if (v23 == 6)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 56;
          goto LABEL_42;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 64;
            goto LABEL_42;
          case 8:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 72;
            goto LABEL_42;
          case 9:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 80;
LABEL_42:
            v26 = *(&self->super.super.isa + v25);
            *(&self->super.super.isa + v25) = v24;
            goto LABEL_43;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
LABEL_44:
        if (*&v6[*v7] < *&v6[*v8])
        {
          continue;
        }

        break;
      }

      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      v28 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_43:

      goto LABEL_44;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_53;
  }

LABEL_51:
  if (!*&v6[*v9])
  {
    v32 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v29 = objc_opt_class();
  v10 = NSStringFromClass(v29);
  v30 = *&v6[*v9];
  v31 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_53:
  v32 = 0;
LABEL_55:

  return v32;
}

- (CCAppIntentsExtractedEntityParty)initWithEventName:(id)a3 startLocationName:(id)a4 startAddress:(id)a5 startDate:(id)a6 startDateTimeZone:(id)a7 endDate:(id)a8 endDateTimeZone:(id)a9 link:(id)a10 eventSubType:(id)a11 error:(id *)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v45 = a8;
  v44 = a9;
  v43 = a10;
  v42 = a11;
  v22 = objc_opt_new();
  v23 = 0x1E696A000uLL;
  if (v17)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_33;
    }

    CCPBDataWriterWriteStringField();
    if (!v18)
    {
LABEL_4:
      v26 = v25;
      if (v19)
      {
        goto LABEL_5;
      }

LABEL_13:
      v25 = v26;
      if (!v20)
      {
        goto LABEL_7;
      }

LABEL_14:
      objc_opt_class();
      v31 = CCValidateIsInstanceOfExpectedClass();
      v26 = v25;

      if (!v31)
      {
        goto LABEL_28;
      }

      CCPBDataWriterWriteStringField();
      v23 = 0x1E696A000;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_16:
      v25 = v26;
      goto LABEL_17;
    }
  }

  else
  {
    v25 = 0;
    if (!v18)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v30 = CCValidateIsInstanceOfExpectedClass();
  v26 = v25;

  if (!v30)
  {
    goto LABEL_28;
  }

  CCPBDataWriterWriteStringField();
  v23 = 0x1E696A000uLL;
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_5:
  objc_opt_class();
  v27 = CCValidateIsInstanceOfExpectedClass();
  v25 = v26;

  if (!v27)
  {
    goto LABEL_33;
  }

  CCPBDataWriterWriteStringField();
  v23 = 0x1E696A000uLL;
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_7:
  v26 = v25;
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_8:
  v28 = *(v23 + 3776);
  objc_opt_class();
  v29 = CCValidateIsInstanceOfExpectedClass();
  v25 = v26;

  if (!v29)
  {
    goto LABEL_33;
  }

  CCPBDataWriterWriteStringField();
LABEL_17:
  if (v45)
  {
    objc_opt_class();
    v32 = CCValidateIsInstanceOfExpectedClass();
    v26 = v25;

    if (!v32)
    {
      goto LABEL_28;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v26 = v25;
  }

  if (!v44)
  {
    v25 = v26;
    goto LABEL_25;
  }

  objc_opt_class();
  v33 = CCValidateIsInstanceOfExpectedClass();
  v25 = v26;

  if (!v33)
  {
LABEL_33:
    CCSetError();
    v35 = 0;
    goto LABEL_34;
  }

  CCPBDataWriterWriteStringField();
LABEL_25:
  if (!v43)
  {
    v26 = v25;
    goto LABEL_30;
  }

  objc_opt_class();
  v34 = CCValidateIsInstanceOfExpectedClass();
  v26 = v25;

  if (v34)
  {
    CCPBDataWriterWriteStringField();
LABEL_30:
    if (!v42)
    {
      v25 = v26;
      goto LABEL_37;
    }

    objc_opt_class();
    v36 = CCValidateIsInstanceOfExpectedClass();
    v25 = v26;

    if (v36)
    {
      CCPBDataWriterWriteStringField();
LABEL_37:
      v39 = self;
      v40 = [v22 immutableData];
      v37 = [(CCItemMessage *)v39 initWithData:v40 error:a12];

      v35 = v37;
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_28:
  CCSetError();
  v35 = 0;
  v25 = v26;
LABEL_34:
  v37 = self;
LABEL_35:

  return v35;
}

@end