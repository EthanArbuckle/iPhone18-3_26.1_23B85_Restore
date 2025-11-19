@interface CCAppIntentsExtractedEntityRentalCarReservation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityRentalCarReservation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityRentalCarReservation)initWithReservationID:(id)a3 eventName:(id)a4 provider:(id)a5 customerNames:(id)a6 startLocationName:(id)a7 startLocationAddress:(id)a8 startLocationTelephone:(id)a9 startDate:(id)a10 startDateTimeZone:(id)a11 endLocationName:(id)a12 endLocationAddress:(id)a13 endLocationTelephone:(id)a14 endDate:(id)a15 endDateTimeZone:(id)a16 reservationForName:(id)a17 duration:(id)a18 cost:(id)a19 costCode:(id)a20 eventStatus:(id)a21 error:(id *)a22;
- (NSArray)customerNames;
- (NSString)cost;
- (NSString)costCode;
- (NSString)endDate;
- (NSString)endDateTimeZone;
- (NSString)endLocationAddress;
- (NSString)endLocationName;
- (NSString)endLocationTelephone;
- (NSString)eventName;
- (NSString)eventStatus;
- (NSString)provider;
- (NSString)reservationForName;
- (NSString)reservationID;
- (NSString)startDate;
- (NSString)startDateTimeZone;
- (NSString)startLocationAddress;
- (NSString)startLocationName;
- (NSString)startLocationTelephone;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityRentalCarReservation

- (CCAppIntentsExtractedEntityRentalCarReservation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v31 = [v6 objectForKeyedSubscript:@"reservationID"];
    v30 = [v6 objectForKeyedSubscript:@"eventName"];
    v29 = [v6 objectForKeyedSubscript:@"provider"];
    v23 = [v6 objectForKeyedSubscript:@"customerNames"];
    v22 = [v6 objectForKeyedSubscript:@"startLocationName"];
    v21 = [v6 objectForKeyedSubscript:@"startLocationAddress"];
    v28 = [v6 objectForKeyedSubscript:@"startLocationTelephone"];
    v27 = [v6 objectForKeyedSubscript:@"startDate"];
    v26 = [v6 objectForKeyedSubscript:@"startDateTimeZone"];
    v19 = [v6 objectForKeyedSubscript:@"endLocationName"];
    v20 = [v6 objectForKeyedSubscript:@"endLocationAddress"];
    v18 = [v6 objectForKeyedSubscript:@"endLocationTelephone"];
    v17 = [v6 objectForKeyedSubscript:@"endDate"];
    [v6 objectForKeyedSubscript:@"endDateTimeZone"];
    v16 = v24 = v8;
    v15 = [v6 objectForKeyedSubscript:@"reservationForName"];
    [v6 objectForKeyedSubscript:@"duration"];
    v9 = v25 = self;
    v10 = [v6 objectForKeyedSubscript:@"cost"];
    v11 = [v6 objectForKeyedSubscript:@"costCode"];
    v12 = [v6 objectForKeyedSubscript:@"eventStatus"];
    v13 = [[CCAppIntentsExtractedEntityRentalCarReservation alloc] initWithReservationID:v31 eventName:v30 provider:v29 customerNames:v23 startLocationName:v22 startLocationAddress:v21 startLocationTelephone:v28 startDate:v27 startDateTimeZone:v26 endLocationName:v19 endLocationAddress:v20 endLocationTelephone:v18 endDate:v17 endDateTimeZone:v16 reservationForName:v15 duration:v9 cost:v10 costCode:v11 eventStatus:v12 error:a4];

    self = v25;
    v8 = v24;
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
  if (self->_reservationID)
  {
    v4 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self reservationID];
    [v3 setObject:v4 forKeyedSubscript:@"reservationID"];
  }

  if (self->_eventName)
  {
    v5 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self eventName];
    [v3 setObject:v5 forKeyedSubscript:@"eventName"];
  }

  if (self->_provider)
  {
    v6 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self provider];
    [v3 setObject:v6 forKeyedSubscript:@"provider"];
  }

  if (self->_customerNames)
  {
    v7 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self customerNames];
    [v3 setObject:v7 forKeyedSubscript:@"customerNames"];
  }

  if (self->_startLocationName)
  {
    v8 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startLocationName];
    [v3 setObject:v8 forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    v9 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startLocationAddress];
    [v3 setObject:v9 forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_startLocationTelephone)
  {
    v10 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startLocationTelephone];
    [v3 setObject:v10 forKeyedSubscript:@"startLocationTelephone"];
  }

  if (self->_startDate)
  {
    v11 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startDate];
    [v3 setObject:v11 forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    v12 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startDateTimeZone];
    [v3 setObject:v12 forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_endLocationName)
  {
    v13 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endLocationName];
    [v3 setObject:v13 forKeyedSubscript:@"endLocationName"];
  }

  if (self->_endLocationAddress)
  {
    v14 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endLocationAddress];
    [v3 setObject:v14 forKeyedSubscript:@"endLocationAddress"];
  }

  if (self->_endLocationTelephone)
  {
    v15 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endLocationTelephone];
    [v3 setObject:v15 forKeyedSubscript:@"endLocationTelephone"];
  }

  if (self->_endDate)
  {
    v16 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endDate];
    [v3 setObject:v16 forKeyedSubscript:@"endDate"];
  }

  if (self->_endDateTimeZone)
  {
    v17 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endDateTimeZone];
    [v3 setObject:v17 forKeyedSubscript:@"endDateTimeZone"];
  }

  if (self->_reservationForName)
  {
    v18 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self reservationForName];
    [v3 setObject:v18 forKeyedSubscript:@"reservationForName"];
  }

  if (self->_hasDuration)
  {
    v19 = MEMORY[0x1E696AD98];
    [(CCAppIntentsExtractedEntityRentalCarReservation *)self duration];
    v20 = [v19 numberWithDouble:?];
    [v3 setObject:v20 forKeyedSubscript:@"duration"];
  }

  if (self->_cost)
  {
    v21 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self cost];
    [v3 setObject:v21 forKeyedSubscript:@"cost"];
  }

  if (self->_costCode)
  {
    v22 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self costCode];
    [v3 setObject:v22 forKeyedSubscript:@"costCode"];
  }

  if (self->_eventStatus)
  {
    v23 = [(CCAppIntentsExtractedEntityRentalCarReservation *)self eventStatus];
    [v3 setObject:v23 forKeyedSubscript:@"eventStatus"];
  }

  v24 = [v3 copy];

  return v24;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v25 = a3;
  if (self->_reservationID)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27394 stringValue:self->_reservationID];
    v25[2](v25, v5);
  }

  if (self->_eventName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27395 stringValue:self->_eventName];
    v25[2](v25, v6);
  }

  if (self->_provider)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27396 stringValue:self->_provider];
    v25[2](v25, v7);
  }

  if (self->_customerNames)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27397 repeatedStringValue:self->_customerNames];
    v25[2](v25, v8);
  }

  if (self->_startLocationName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27398 stringValue:self->_startLocationName];
    v25[2](v25, v9);
  }

  if (self->_startLocationAddress)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27399 stringValue:self->_startLocationAddress];
    v25[2](v25, v10);
  }

  if (self->_startLocationTelephone)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27400 stringValue:self->_startLocationTelephone];
    v25[2](v25, v11);
  }

  if (self->_startDate)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27401 stringValue:self->_startDate];
    v25[2](v25, v12);
  }

  if (self->_startDateTimeZone)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27402 stringValue:self->_startDateTimeZone];
    v25[2](v25, v13);
  }

  if (self->_endLocationName)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27403 stringValue:self->_endLocationName];
    v25[2](v25, v14);
  }

  if (self->_endLocationAddress)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27404 stringValue:self->_endLocationAddress];
    v25[2](v25, v15);
  }

  if (self->_endLocationTelephone)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27405 stringValue:self->_endLocationTelephone];
    v25[2](v25, v16);
  }

  if (self->_endDate)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27406 stringValue:self->_endDate];
    v25[2](v25, v17);
  }

  if (self->_endDateTimeZone)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27407 stringValue:self->_endDateTimeZone];
    v25[2](v25, v18);
  }

  if (self->_reservationForName)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27408 stringValue:self->_reservationForName];
    v25[2](v25, v19);
  }

  if (self->_hasDuration)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27409 doubleValue:self->_duration];
    v25[2](v25, v20);
  }

  if (self->_cost)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27410 stringValue:self->_cost];
    v25[2](v25, v21);
  }

  if (self->_costCode)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27411 stringValue:self->_costCode];
    v25[2](v25, v22);
  }

  v23 = v25;
  if (self->_eventStatus)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27412 stringValue:self->_eventStatus];
    v25[2](v25, v24);

    v23 = v25;
  }
}

- (NSString)eventStatus
{
  v2 = [(NSString *)self->_eventStatus copy];

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

- (NSString)reservationForName
{
  v2 = [(NSString *)self->_reservationForName copy];

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

- (NSString)endLocationTelephone
{
  v2 = [(NSString *)self->_endLocationTelephone copy];

  return v2;
}

- (NSString)endLocationAddress
{
  v2 = [(NSString *)self->_endLocationAddress copy];

  return v2;
}

- (NSString)endLocationName
{
  v2 = [(NSString *)self->_endLocationName copy];

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

- (NSArray)customerNames
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_customerNames copyItems:1];

  return v2;
}

- (NSString)provider
{
  v2 = [(NSString *)self->_provider copy];

  return v2;
}

- (NSString)eventName
{
  v2 = [(NSString *)self->_eventName copy];

  return v2;
}

- (NSString)reservationID
{
  v2 = [(NSString *)self->_reservationID copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    v47 = 0;
LABEL_57:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v47 = 0;
    v11 = MEMORY[0x1E6993AA8];
    v12 = MEMORY[0x1E6993AA0];
    do
    {
      if (*&v7[*v11])
      {
        v13 = 0;
      }

      else
      {
        v13 = v10 == 0;
      }

      if (!v13)
      {
        break;
      }

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
          v23 = *v11;
          if (*&v7[v23])
          {
            goto LABEL_57;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v11] = 1;
LABEL_17:
      v23 = *v11;
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
        goto LABEL_57;
      }

LABEL_21:
      switch((v22 >> 3))
      {
        case 1u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 24;
          goto LABEL_47;
        case 2u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 32;
          goto LABEL_47;
        case 3u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 40;
          goto LABEL_47;
        case 4u:
          v30 = CCPBReaderReadStringNoCopy();
          if (!v47)
          {
            v47 = objc_opt_new();
          }

          if (v30)
          {
            [v47 addObject:v30];
          }

          goto LABEL_51;
        case 5u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 56;
          goto LABEL_47;
        case 6u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 64;
          goto LABEL_47;
        case 7u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 72;
          goto LABEL_47;
        case 8u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 80;
          goto LABEL_47;
        case 9u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 88;
          goto LABEL_47;
        case 0xAu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 96;
          goto LABEL_47;
        case 0xBu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 104;
          goto LABEL_47;
        case 0xCu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 112;
          goto LABEL_47;
        case 0xDu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 120;
          goto LABEL_47;
        case 0xEu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 128;
          goto LABEL_47;
        case 0xFu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 136;
          goto LABEL_47;
        case 0x10u:
          v27 = *v8;
          v28 = *&v7[v27];
          if (v28 <= 0xFFFFFFFFFFFFFFF7 && v28 + 8 <= *&v7[*v9])
          {
            v29 = *(*&v7[*v12] + v28);
            *&v7[v27] = v28 + 8;
          }

          else
          {
            *&v7[v23] = 1;
            v29 = 0.0;
          }

          v10 = 0;
          self->_duration = v29;
          self->_hasDuration = 1;
          break;
        case 0x11u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 152;
          goto LABEL_47;
        case 0x12u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 160;
          goto LABEL_47;
        case 0x13u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 168;
LABEL_47:
          v31 = *(&self->super.super.isa + v26);
          *(&self->super.super.isa + v26) = v25;

          v10 = 0;
          break;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_51:
            v10 = 0;
          }

          else
          {
            v32 = objc_opt_class();
            NSStringFromClass(v32);
            v46 = a4;
            v34 = v33 = v6;
            v35 = *&v7[*v11];
            v10 = CCSkipFieldErrorForMessage();

            v6 = v33;
            a4 = v46;
          }

          break;
      }
    }

    while (*&v7[*v8] < *&v7[*v9]);
  }

  v36 = [v47 copy];
  customerNames = self->_customerNames;
  self->_customerNames = v36;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    v38 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v44 = 1;
      goto LABEL_63;
    }

    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = *&v7[*v38];
    CCInvalidBufferErrorForMessage();
    v43 = v42 = v6;
    CCSetError();

    v6 = v42;
  }

  v44 = 0;
LABEL_63:

  return v44;
}

- (CCAppIntentsExtractedEntityRentalCarReservation)initWithReservationID:(id)a3 eventName:(id)a4 provider:(id)a5 customerNames:(id)a6 startLocationName:(id)a7 startLocationAddress:(id)a8 startLocationTelephone:(id)a9 startDate:(id)a10 startDateTimeZone:(id)a11 endLocationName:(id)a12 endLocationAddress:(id)a13 endLocationTelephone:(id)a14 endDate:(id)a15 endDateTimeZone:(id)a16 reservationForName:(id)a17 duration:(id)a18 cost:(id)a19 costCode:(id)a20 eventStatus:(id)a21 error:(id *)a22
{
  v105 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v95 = a8;
  v94 = a9;
  v93 = a10;
  v92 = a11;
  v91 = a12;
  v90 = a13;
  v89 = a14;
  v88 = a15;
  v87 = a16;
  v86 = a17;
  v85 = a18;
  v84 = a19;
  v83 = a20;
  v82 = a21;
  v32 = objc_opt_new();
  v33 = 0x1E696A000uLL;
  if (!v27)
  {
    v35 = 0;
LABEL_5:
    v80 = v27;
    if (v28)
    {
      objc_opt_class();
      v102 = v35;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v37 = v35;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_77;
      }

      CCPBDataWriterWriteStringField();
      if (!v29)
      {
LABEL_8:
        v35 = v37;
        if (v30)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v37 = v35;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v101 = v37;
    v47 = CCValidateIsInstanceOfExpectedClass();
    v35 = v37;

    if (!v47)
    {
      goto LABEL_82;
    }

    CCPBDataWriterWriteStringField();
    if (v30)
    {
LABEL_9:
      objc_opt_class();
      v100 = v35;
      v38 = CCValidateArrayValues();
      v37 = v35;

      if (!v38)
      {
        goto LABEL_77;
      }

      v98 = 0u;
      v99 = 0u;
      v97 = 0u;
      v96 = 0u;
      v39 = v30;
      v40 = [v39 countByEnumeratingWithState:&v96 objects:v104 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v97;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v97 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v96 + 1) + 8 * i);
            CCPBDataWriterWriteStringField();
          }

          v41 = [v39 countByEnumeratingWithState:&v96 objects:v104 count:16];
        }

        while (v41);
      }

      v33 = 0x1E696A000;
      if (!v31)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_23:
    v37 = v35;
    if (!v31)
    {
LABEL_18:
      v35 = v37;
LABEL_26:
      if (v95)
      {
        v50 = *(v33 + 3776);
        objc_opt_class();
        v51 = CCValidateIsInstanceOfExpectedClass();
        v37 = v35;

        if (!v51)
        {
          goto LABEL_77;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v37 = v35;
      }

      if (v94)
      {
        v52 = *(v33 + 3776);
        objc_opt_class();
        v53 = CCValidateIsInstanceOfExpectedClass();
        v35 = v37;

        if (!v53)
        {
          goto LABEL_82;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v37;
      }

      if (v93)
      {
        v54 = *(v33 + 3776);
        objc_opt_class();
        v55 = CCValidateIsInstanceOfExpectedClass();
        v37 = v35;

        if (!v55)
        {
          goto LABEL_77;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v37 = v35;
      }

      if (v92)
      {
        v56 = *(v33 + 3776);
        objc_opt_class();
        v57 = CCValidateIsInstanceOfExpectedClass();
        v35 = v37;

        if (!v57)
        {
          goto LABEL_82;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v37;
      }

      if (v91)
      {
        v58 = *(v33 + 3776);
        objc_opt_class();
        v59 = CCValidateIsInstanceOfExpectedClass();
        v37 = v35;

        if (!v59)
        {
          goto LABEL_77;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v37 = v35;
      }

      if (v90)
      {
        v60 = *(v33 + 3776);
        objc_opt_class();
        v61 = CCValidateIsInstanceOfExpectedClass();
        v35 = v37;

        if (!v61)
        {
          goto LABEL_82;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v37;
      }

      if (v89)
      {
        v62 = *(v33 + 3776);
        objc_opt_class();
        v63 = CCValidateIsInstanceOfExpectedClass();
        v37 = v35;

        if (!v63)
        {
          goto LABEL_77;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v37 = v35;
      }

      if (v88)
      {
        v64 = *(v33 + 3776);
        objc_opt_class();
        v65 = CCValidateIsInstanceOfExpectedClass();
        v35 = v37;

        if (!v65)
        {
          goto LABEL_82;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v37;
      }

      if (v87)
      {
        v66 = *(v33 + 3776);
        objc_opt_class();
        v67 = CCValidateIsInstanceOfExpectedClass();
        v37 = v35;

        if (!v67)
        {
          goto LABEL_77;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v37 = v35;
      }

      if (v86)
      {
        v68 = *(v33 + 3776);
        objc_opt_class();
        v69 = CCValidateIsInstanceOfExpectedClass();
        v35 = v37;

        if (!v69)
        {
          goto LABEL_82;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v37;
      }

      if (v85)
      {
        objc_opt_class();
        v70 = CCValidateIsInstanceOfExpectedClass();
        v37 = v35;

        if (!v70)
        {
          goto LABEL_77;
        }

        [v85 doubleValue];
        CCPBDataWriterWriteDoubleField();
      }

      else
      {
        v37 = v35;
      }

      if (!v84)
      {
        v35 = v37;
        goto LABEL_74;
      }

      v71 = *(v33 + 3776);
      objc_opt_class();
      v72 = CCValidateIsInstanceOfExpectedClass();
      v35 = v37;

      if (v72)
      {
        CCPBDataWriterWriteStringField();
LABEL_74:
        if (!v83)
        {
          v37 = v35;
          goto LABEL_79;
        }

        v73 = *(v33 + 3776);
        objc_opt_class();
        v74 = CCValidateIsInstanceOfExpectedClass();
        v37 = v35;

        if (v74)
        {
          CCPBDataWriterWriteStringField();
LABEL_79:
          if (!v82)
          {
            v35 = v37;
            goto LABEL_86;
          }

          v75 = *(v33 + 3776);
          objc_opt_class();
          v76 = CCValidateIsInstanceOfExpectedClass();
          v35 = v37;

          if (v76)
          {
            CCPBDataWriterWriteStringField();
LABEL_86:
            v27 = v80;
            v79 = [v32 immutableData];
            v46 = [(CCItemMessage *)self initWithData:v79 error:a22];

            v45 = v46;
            goto LABEL_84;
          }

          goto LABEL_82;
        }

LABEL_77:
        CCSetError();
        v45 = 0;
        v35 = v37;
LABEL_83:
        v46 = self;
        v27 = v80;
        goto LABEL_84;
      }

LABEL_82:
      CCSetError();
      v45 = 0;
      goto LABEL_83;
    }

LABEL_24:
    v48 = *(v33 + 3776);
    objc_opt_class();
    v49 = CCValidateIsInstanceOfExpectedClass();
    v35 = v37;

    if (!v49)
    {
      goto LABEL_82;
    }

    CCPBDataWriterWriteStringField();
    goto LABEL_26;
  }

  objc_opt_class();
  v103 = 0;
  v34 = CCValidateIsInstanceOfExpectedClass();
  v35 = 0;
  if (v34)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v45 = 0;
  v46 = self;
LABEL_84:

  v77 = *MEMORY[0x1E69E9840];
  return v45;
}

@end