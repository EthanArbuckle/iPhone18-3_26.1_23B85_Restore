@interface CCAppIntentsExtractedEntityAppointment
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityAppointment)initWithEventName:(id)a3 startLocationName:(id)a4 startLocationAddress:(id)a5 startLocationTelephone:(id)a6 startDate:(id)a7 startDateTimeZone:(id)a8 endDate:(id)a9 endDateTimeZone:(id)a10 duration:(id)a11 cost:(id)a12 costCode:(id)a13 eventSubType:(id)a14 error:(id *)a15;
- (CCAppIntentsExtractedEntityAppointment)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (NSString)cost;
- (NSString)costCode;
- (NSString)endDate;
- (NSString)endDateTimeZone;
- (NSString)eventName;
- (NSString)eventSubType;
- (NSString)startDate;
- (NSString)startDateTimeZone;
- (NSString)startLocationAddress;
- (NSString)startLocationName;
- (NSString)startLocationTelephone;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityAppointment

- (CCAppIntentsExtractedEntityAppointment)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v23 = [v6 objectForKeyedSubscript:@"eventName"];
    v21 = [v6 objectForKeyedSubscript:@"startLocationName"];
    v18 = [v6 objectForKeyedSubscript:@"startLocationAddress"];
    v9 = [v6 objectForKeyedSubscript:@"startLocationTelephone"];
    v20 = [v6 objectForKeyedSubscript:@"startDate"];
    v19 = [v6 objectForKeyedSubscript:@"startDateTimeZone"];
    v17 = [v6 objectForKeyedSubscript:@"endDate"];
    [v6 objectForKeyedSubscript:@"endDateTimeZone"];
    v16 = v22 = self;
    v15 = [v6 objectForKeyedSubscript:@"duration"];
    v10 = [v6 objectForKeyedSubscript:@"cost"];
    v11 = [v6 objectForKeyedSubscript:@"costCode"];
    v12 = [v6 objectForKeyedSubscript:@"eventSubType"];
    v13 = [[CCAppIntentsExtractedEntityAppointment alloc] initWithEventName:v23 startLocationName:v21 startLocationAddress:v18 startLocationTelephone:v9 startDate:v20 startDateTimeZone:v19 endDate:v17 endDateTimeZone:v16 duration:v15 cost:v10 costCode:v11 eventSubType:v12 error:a4];

    self = v22;
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
  if (self->_eventName)
  {
    v4 = [(CCAppIntentsExtractedEntityAppointment *)self eventName];
    [v3 setObject:v4 forKeyedSubscript:@"eventName"];
  }

  if (self->_startLocationName)
  {
    v5 = [(CCAppIntentsExtractedEntityAppointment *)self startLocationName];
    [v3 setObject:v5 forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    v6 = [(CCAppIntentsExtractedEntityAppointment *)self startLocationAddress];
    [v3 setObject:v6 forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_startLocationTelephone)
  {
    v7 = [(CCAppIntentsExtractedEntityAppointment *)self startLocationTelephone];
    [v3 setObject:v7 forKeyedSubscript:@"startLocationTelephone"];
  }

  if (self->_startDate)
  {
    v8 = [(CCAppIntentsExtractedEntityAppointment *)self startDate];
    [v3 setObject:v8 forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    v9 = [(CCAppIntentsExtractedEntityAppointment *)self startDateTimeZone];
    [v3 setObject:v9 forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_endDate)
  {
    v10 = [(CCAppIntentsExtractedEntityAppointment *)self endDate];
    [v3 setObject:v10 forKeyedSubscript:@"endDate"];
  }

  if (self->_endDateTimeZone)
  {
    v11 = [(CCAppIntentsExtractedEntityAppointment *)self endDateTimeZone];
    [v3 setObject:v11 forKeyedSubscript:@"endDateTimeZone"];
  }

  if (self->_hasDuration)
  {
    v12 = MEMORY[0x1E696AD98];
    [(CCAppIntentsExtractedEntityAppointment *)self duration];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"duration"];
  }

  if (self->_cost)
  {
    v14 = [(CCAppIntentsExtractedEntityAppointment *)self cost];
    [v3 setObject:v14 forKeyedSubscript:@"cost"];
  }

  if (self->_costCode)
  {
    v15 = [(CCAppIntentsExtractedEntityAppointment *)self costCode];
    [v3 setObject:v15 forKeyedSubscript:@"costCode"];
  }

  if (self->_eventSubType)
  {
    v16 = [(CCAppIntentsExtractedEntityAppointment *)self eventSubType];
    [v3 setObject:v16 forKeyedSubscript:@"eventSubType"];
  }

  v17 = [v3 copy];

  return v17;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v18 = a3;
  if (self->_eventName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27446 stringValue:self->_eventName];
    v18[2](v18, v5);
  }

  if (self->_startLocationName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27447 stringValue:self->_startLocationName];
    v18[2](v18, v6);
  }

  if (self->_startLocationAddress)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27448 stringValue:self->_startLocationAddress];
    v18[2](v18, v7);
  }

  if (self->_startLocationTelephone)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27449 stringValue:self->_startLocationTelephone];
    v18[2](v18, v8);
  }

  if (self->_startDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27450 stringValue:self->_startDate];
    v18[2](v18, v9);
  }

  if (self->_startDateTimeZone)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27451 stringValue:self->_startDateTimeZone];
    v18[2](v18, v10);
  }

  if (self->_endDate)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27452 stringValue:self->_endDate];
    v18[2](v18, v11);
  }

  if (self->_endDateTimeZone)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27453 stringValue:self->_endDateTimeZone];
    v18[2](v18, v12);
  }

  if (self->_hasDuration)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27454 doubleValue:self->_duration];
    v18[2](v18, v13);
  }

  if (self->_cost)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27455 stringValue:self->_cost];
    v18[2](v18, v14);
  }

  if (self->_costCode)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27456 stringValue:self->_costCode];
    v18[2](v18, v15);
  }

  v16 = v18;
  if (self->_eventSubType)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27457 stringValue:self->_eventSubType];
    v18[2](v18, v17);

    v16 = v18;
  }
}

- (NSString)eventSubType
{
  v2 = [(NSString *)self->_eventSubType copy];

  return v2;
}

- (NSString)costCode
{
  v2 = [(NSString *)self->_costCode copy];

  return v2;
}

- (NSString)cost
{
  v2 = [(NSString *)self->_cost copy];

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

- (NSString)startLocationTelephone
{
  v2 = [(NSString *)self->_startLocationTelephone copy];

  return v2;
}

- (NSString)startLocationAddress
{
  v2 = [(NSString *)self->_startLocationAddress copy];

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
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_60;
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
        if (v15++ >= 9)
        {
          v22 = 0;
          v23 = *v10;
          if (*&v7[v23])
          {
            goto LABEL_61;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *v10;
      v24 = *&v7[v23];
      if (v24)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v24)
      {
        goto LABEL_61;
      }

LABEL_21:
      v25 = v22 >> 3;
      if ((v22 >> 3) > 6)
      {
        if (v25 > 9)
        {
          switch(v25)
          {
            case 0xA:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 96;
              goto LABEL_50;
            case 0xB:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 104;
              goto LABEL_50;
            case 0xC:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 112;
              goto LABEL_50;
          }
        }

        else
        {
          switch(v25)
          {
            case 7:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 72;
              goto LABEL_50;
            case 8:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 80;
              goto LABEL_50;
            case 9:
              v28 = *v8;
              v29 = *&v7[v28];
              if (v29 <= 0xFFFFFFFFFFFFFFF7 && v29 + 8 <= *&v7[*v9])
              {
                v30 = *(*&v7[*v12] + v29);
                *&v7[v28] = v29 + 8;
              }

              else
              {
                *&v7[v23] = 1;
                v30 = 0.0;
              }

              v11 = 0;
              self->_duration = v30;
              self->_hasDuration = 1;
              goto LABEL_52;
          }
        }
      }

      else if (v25 > 3)
      {
        switch(v25)
        {
          case 4:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 48;
            goto LABEL_50;
          case 5:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 56;
            goto LABEL_50;
          case 6:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 64;
            goto LABEL_50;
        }
      }

      else
      {
        switch(v25)
        {
          case 1:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 24;
            goto LABEL_50;
          case 2:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 32;
            goto LABEL_50;
          case 3:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 40;
LABEL_50:
            v31 = *(&self->super.super.isa + v27);
            *(&self->super.super.isa + v27) = v26;

LABEL_51:
            v11 = 0;
            goto LABEL_52;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        goto LABEL_51;
      }

      v32 = objc_opt_class();
      NSStringFromClass(v32);
      v41 = v6;
      v34 = v33 = a4;
      v35 = *&v7[*v10];
      v11 = CCSkipFieldErrorForMessage();

      a4 = v33;
      v6 = v41;
LABEL_52:
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
    goto LABEL_62;
  }

LABEL_60:
  if (!*&v7[*v10])
  {
    v39 = 1;
    goto LABEL_64;
  }

LABEL_61:
  v36 = objc_opt_class();
  v11 = NSStringFromClass(v36);
  v37 = *&v7[*v10];
  v38 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_62:
  v39 = 0;
LABEL_64:

  return v39;
}

- (CCAppIntentsExtractedEntityAppointment)initWithEventName:(id)a3 startLocationName:(id)a4 startLocationAddress:(id)a5 startLocationTelephone:(id)a6 startDate:(id)a7 startDateTimeZone:(id)a8 endDate:(id)a9 endDateTimeZone:(id)a10 duration:(id)a11 cost:(id)a12 costCode:(id)a13 eventSubType:(id)a14 error:(id *)a15
{
  v20 = a3;
  v72 = a4;
  v71 = a5;
  v65 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v70 = a11;
  v25 = a12;
  v67 = a13;
  v66 = a14;
  v26 = objc_opt_new();
  v27 = 0x1E696A000uLL;
  v69 = v25;
  if (!v20)
  {
    v29 = 0;
    if (!v72)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v29 = 0;
  if (IsInstanceOfExpectedClass)
  {
    CCPBDataWriterWriteStringField();
    v27 = 0x1E696A000;
    if (!v72)
    {
LABEL_4:
      v30 = v29;
      goto LABEL_8;
    }

LABEL_6:
    v31 = v20;
    v32 = *(v27 + 3776);
    objc_opt_class();
    v33 = CCValidateIsInstanceOfExpectedClass();
    v30 = v29;

    if (!v33)
    {
      CCSetError();
      v45 = 0;
      v29 = v30;
      v20 = v31;
      v34 = v22;
      v37 = v21;
      goto LABEL_36;
    }

    CCPBDataWriterWriteStringField();
    v20 = v31;
    v27 = 0x1E696A000uLL;
LABEL_8:
    v64 = v20;
    v34 = v22;
    if (!v71)
    {
      v29 = v30;
      v37 = v21;
      v38 = v65;
      if (!v65)
      {
LABEL_11:
        v39 = v29;
        if (v37)
        {
          goto LABEL_12;
        }

        goto LABEL_23;
      }

LABEL_21:
      v46 = *(v27 + 3776);
      objc_opt_class();
      v47 = CCValidateIsInstanceOfExpectedClass();
      v39 = v29;

      if (!v47)
      {
        goto LABEL_51;
      }

      CCPBDataWriterWriteStringField();
      v27 = 0x1E696A000uLL;
      if (v37)
      {
LABEL_12:
        v40 = *(v27 + 3776);
        objc_opt_class();
        v41 = CCValidateIsInstanceOfExpectedClass();
        v29 = v39;

        if (!v41)
        {
          goto LABEL_44;
        }

        CCPBDataWriterWriteStringField();
        v27 = 0x1E696A000uLL;
        if (!v34)
        {
LABEL_14:
          v39 = v29;
          if (v23)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }

LABEL_24:
        v48 = *(v27 + 3776);
        objc_opt_class();
        v49 = CCValidateIsInstanceOfExpectedClass();
        v39 = v29;

        if (!v49)
        {
          goto LABEL_51;
        }

        CCPBDataWriterWriteStringField();
        v27 = 0x1E696A000uLL;
        if (v23)
        {
LABEL_15:
          v42 = *(v27 + 3776);
          objc_opt_class();
          v43 = CCValidateIsInstanceOfExpectedClass();
          v29 = v39;

          if (!v43)
          {
            goto LABEL_44;
          }

          CCPBDataWriterWriteStringField();
          v44 = self;
          v27 = 0x1E696A000;
          if (!v24)
          {
            goto LABEL_29;
          }

LABEL_27:
          v50 = *(v27 + 3776);
          objc_opt_class();
          v51 = CCValidateIsInstanceOfExpectedClass();
          v52 = v29;

          if (!v51)
          {
            CCSetError();
            v29 = v52;
            goto LABEL_39;
          }

          CCPBDataWriterWriteStringField();
          v27 = 0x1E696A000;
          v29 = v52;
LABEL_29:
          if (!v70)
          {
LABEL_32:
            if (!v69)
            {
              v39 = v29;
              goto LABEL_41;
            }

            v56 = *(v27 + 3776);
            objc_opt_class();
            v57 = CCValidateIsInstanceOfExpectedClass();
            v39 = v29;

            if (v57)
            {
              CCPBDataWriterWriteStringField();
              v27 = 0x1E696A000;
LABEL_41:
              if (!v67)
              {
                v29 = v39;
                goto LABEL_46;
              }

              v58 = *(v27 + 3776);
              objc_opt_class();
              v59 = CCValidateIsInstanceOfExpectedClass();
              v29 = v39;

              if (v59)
              {
                CCPBDataWriterWriteStringField();
                v27 = 0x1E696A000;
LABEL_46:
                if (!v66)
                {
LABEL_49:
                  v62 = [v26 immutableData];
                  v44 = [(CCItemMessage *)self initWithData:v62 error:a15];

                  v45 = v44;
                  goto LABEL_50;
                }

                v60 = *(v27 + 3776);
                objc_opt_class();
                v61 = CCValidateIsInstanceOfExpectedClass();
                v39 = v29;

                if (v61)
                {
                  CCPBDataWriterWriteStringField();
                  v29 = v39;
                  goto LABEL_49;
                }

                goto LABEL_51;
              }

LABEL_44:
              CCSetError();
              v45 = 0;
LABEL_52:
              v20 = v64;
              goto LABEL_53;
            }

LABEL_51:
            CCSetError();
            v45 = 0;
            v29 = v39;
            goto LABEL_52;
          }

          objc_opt_class();
          v53 = CCValidateIsInstanceOfExpectedClass();
          v54 = v29;
          v55 = v29;
          v29 = v54;

          if (v53)
          {
            [v70 doubleValue];
            CCPBDataWriterWriteDoubleField();
            v27 = 0x1E696A000uLL;
            goto LABEL_32;
          }

          CCSetError();
LABEL_39:
          v45 = 0;
LABEL_50:
          v20 = v64;
          goto LABEL_54;
        }

LABEL_26:
        v29 = v39;
        v44 = self;
        if (!v24)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_23:
      v29 = v39;
      if (!v34)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    v35 = *(v27 + 3776);
    objc_opt_class();
    v36 = CCValidateIsInstanceOfExpectedClass();
    v29 = v30;

    v37 = v21;
    if (v36)
    {
      CCPBDataWriterWriteStringField();
      v38 = v65;
      v27 = 0x1E696A000uLL;
      if (!v65)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    CCSetError();
    v45 = 0;
    v20 = v64;
LABEL_36:
    v38 = v65;
LABEL_53:
    v44 = self;
    goto LABEL_54;
  }

  CCSetError();
  v45 = 0;
  v44 = self;
  v34 = v22;
  v37 = v21;
  v38 = v65;
LABEL_54:

  return v45;
}

@end