@interface CCAppIntentsExtractedEntityRentalCarReservation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityRentalCarReservation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppIntentsExtractedEntityRentalCarReservation)initWithReservationID:(id)d eventName:(id)name provider:(id)provider customerNames:(id)names startLocationName:(id)locationName startLocationAddress:(id)address startLocationTelephone:(id)telephone startDate:(id)self0 startDateTimeZone:(id)self1 endLocationName:(id)self2 endLocationAddress:(id)self3 endLocationTelephone:(id)self4 endDate:(id)self5 endDateTimeZone:(id)self6 reservationForName:(id)self7 duration:(id)self8 cost:(id)self9 costCode:(id)code eventStatus:(id)status error:(id *)error;
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
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityRentalCarReservation

- (CCAppIntentsExtractedEntityRentalCarReservation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v31 = [dictionaryCopy objectForKeyedSubscript:@"reservationID"];
    v30 = [dictionaryCopy objectForKeyedSubscript:@"eventName"];
    v29 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"customerNames"];
    v22 = [dictionaryCopy objectForKeyedSubscript:@"startLocationName"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"startLocationAddress"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"startLocationTelephone"];
    v27 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    v26 = [dictionaryCopy objectForKeyedSubscript:@"startDateTimeZone"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"endLocationName"];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"endLocationAddress"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"endLocationTelephone"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    [dictionaryCopy objectForKeyedSubscript:@"endDateTimeZone"];
    v16 = v24 = v8;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"reservationForName"];
    [dictionaryCopy objectForKeyedSubscript:@"duration"];
    v9 = v25 = self;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"cost"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"costCode"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"eventStatus"];
    v13 = [[CCAppIntentsExtractedEntityRentalCarReservation alloc] initWithReservationID:v31 eventName:v30 provider:v29 customerNames:v23 startLocationName:v22 startLocationAddress:v21 startLocationTelephone:v28 startDate:v27 startDateTimeZone:v26 endLocationName:v19 endLocationAddress:v20 endLocationTelephone:v18 endDate:v17 endDateTimeZone:v16 reservationForName:v15 duration:v9 cost:v10 costCode:v11 eventStatus:v12 error:error];

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
    reservationID = [(CCAppIntentsExtractedEntityRentalCarReservation *)self reservationID];
    [v3 setObject:reservationID forKeyedSubscript:@"reservationID"];
  }

  if (self->_eventName)
  {
    eventName = [(CCAppIntentsExtractedEntityRentalCarReservation *)self eventName];
    [v3 setObject:eventName forKeyedSubscript:@"eventName"];
  }

  if (self->_provider)
  {
    provider = [(CCAppIntentsExtractedEntityRentalCarReservation *)self provider];
    [v3 setObject:provider forKeyedSubscript:@"provider"];
  }

  if (self->_customerNames)
  {
    customerNames = [(CCAppIntentsExtractedEntityRentalCarReservation *)self customerNames];
    [v3 setObject:customerNames forKeyedSubscript:@"customerNames"];
  }

  if (self->_startLocationName)
  {
    startLocationName = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startLocationName];
    [v3 setObject:startLocationName forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    startLocationAddress = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startLocationAddress];
    [v3 setObject:startLocationAddress forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_startLocationTelephone)
  {
    startLocationTelephone = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startLocationTelephone];
    [v3 setObject:startLocationTelephone forKeyedSubscript:@"startLocationTelephone"];
  }

  if (self->_startDate)
  {
    startDate = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startDate];
    [v3 setObject:startDate forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    startDateTimeZone = [(CCAppIntentsExtractedEntityRentalCarReservation *)self startDateTimeZone];
    [v3 setObject:startDateTimeZone forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_endLocationName)
  {
    endLocationName = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endLocationName];
    [v3 setObject:endLocationName forKeyedSubscript:@"endLocationName"];
  }

  if (self->_endLocationAddress)
  {
    endLocationAddress = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endLocationAddress];
    [v3 setObject:endLocationAddress forKeyedSubscript:@"endLocationAddress"];
  }

  if (self->_endLocationTelephone)
  {
    endLocationTelephone = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endLocationTelephone];
    [v3 setObject:endLocationTelephone forKeyedSubscript:@"endLocationTelephone"];
  }

  if (self->_endDate)
  {
    endDate = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endDate];
    [v3 setObject:endDate forKeyedSubscript:@"endDate"];
  }

  if (self->_endDateTimeZone)
  {
    endDateTimeZone = [(CCAppIntentsExtractedEntityRentalCarReservation *)self endDateTimeZone];
    [v3 setObject:endDateTimeZone forKeyedSubscript:@"endDateTimeZone"];
  }

  if (self->_reservationForName)
  {
    reservationForName = [(CCAppIntentsExtractedEntityRentalCarReservation *)self reservationForName];
    [v3 setObject:reservationForName forKeyedSubscript:@"reservationForName"];
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
    cost = [(CCAppIntentsExtractedEntityRentalCarReservation *)self cost];
    [v3 setObject:cost forKeyedSubscript:@"cost"];
  }

  if (self->_costCode)
  {
    costCode = [(CCAppIntentsExtractedEntityRentalCarReservation *)self costCode];
    [v3 setObject:costCode forKeyedSubscript:@"costCode"];
  }

  if (self->_eventStatus)
  {
    eventStatus = [(CCAppIntentsExtractedEntityRentalCarReservation *)self eventStatus];
    [v3 setObject:eventStatus forKeyedSubscript:@"eventStatus"];
  }

  v24 = [v3 copy];

  return v24;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_reservationID)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27394 stringValue:self->_reservationID];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_eventName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27395 stringValue:self->_eventName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_provider)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27396 stringValue:self->_provider];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_customerNames)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27397 repeatedStringValue:self->_customerNames];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_startLocationName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27398 stringValue:self->_startLocationName];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_startLocationAddress)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27399 stringValue:self->_startLocationAddress];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_startLocationTelephone)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27400 stringValue:self->_startLocationTelephone];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_startDate)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27401 stringValue:self->_startDate];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_startDateTimeZone)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27402 stringValue:self->_startDateTimeZone];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_endLocationName)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27403 stringValue:self->_endLocationName];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_endLocationAddress)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27404 stringValue:self->_endLocationAddress];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_endLocationTelephone)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27405 stringValue:self->_endLocationTelephone];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_endDate)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27406 stringValue:self->_endDate];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_endDateTimeZone)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27407 stringValue:self->_endDateTimeZone];
    blockCopy[2](blockCopy, v18);
  }

  if (self->_reservationForName)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27408 stringValue:self->_reservationForName];
    blockCopy[2](blockCopy, v19);
  }

  if (self->_hasDuration)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27409 doubleValue:self->_duration];
    blockCopy[2](blockCopy, v20);
  }

  if (self->_cost)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27410 stringValue:self->_cost];
    blockCopy[2](blockCopy, v21);
  }

  if (self->_costCode)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27411 stringValue:self->_costCode];
    blockCopy[2](blockCopy, v22);
  }

  v23 = blockCopy;
  if (self->_eventStatus)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27412 stringValue:self->_eventStatus];
    blockCopy[2](blockCopy, v24);

    v23 = blockCopy;
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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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
            errorCopy = error;
            v34 = v33 = dataCopy;
            v35 = *&v7[*v11];
            v10 = CCSkipFieldErrorForMessage();

            dataCopy = v33;
            error = errorCopy;
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
    v43 = v42 = dataCopy;
    CCSetError();

    dataCopy = v42;
  }

  v44 = 0;
LABEL_63:

  return v44;
}

- (CCAppIntentsExtractedEntityRentalCarReservation)initWithReservationID:(id)d eventName:(id)name provider:(id)provider customerNames:(id)names startLocationName:(id)locationName startLocationAddress:(id)address startLocationTelephone:(id)telephone startDate:(id)self0 startDateTimeZone:(id)self1 endLocationName:(id)self2 endLocationAddress:(id)self3 endLocationTelephone:(id)self4 endDate:(id)self5 endDateTimeZone:(id)self6 reservationForName:(id)self7 duration:(id)self8 cost:(id)self9 costCode:(id)code eventStatus:(id)status error:(id *)error
{
  v105 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  providerCopy = provider;
  namesCopy = names;
  locationNameCopy = locationName;
  addressCopy = address;
  telephoneCopy = telephone;
  dateCopy = date;
  zoneCopy = zone;
  endLocationNameCopy = endLocationName;
  locationAddressCopy = locationAddress;
  locationTelephoneCopy = locationTelephone;
  endDateCopy = endDate;
  timeZoneCopy = timeZone;
  forNameCopy = forName;
  durationCopy = duration;
  costCopy = cost;
  codeCopy = code;
  statusCopy = status;
  v32 = objc_opt_new();
  v33 = 0x1E696A000uLL;
  if (!dCopy)
  {
    v35 = 0;
LABEL_5:
    v80 = dCopy;
    if (nameCopy)
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
      if (!providerCopy)
      {
LABEL_8:
        v35 = v37;
        if (namesCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v37 = v35;
      if (!providerCopy)
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
    if (namesCopy)
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
      v39 = namesCopy;
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
      if (!locationNameCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_23:
    v37 = v35;
    if (!locationNameCopy)
    {
LABEL_18:
      v35 = v37;
LABEL_26:
      if (addressCopy)
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

      if (telephoneCopy)
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

      if (dateCopy)
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

      if (zoneCopy)
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

      if (endLocationNameCopy)
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

      if (locationAddressCopy)
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

      if (locationTelephoneCopy)
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

      if (endDateCopy)
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

      if (timeZoneCopy)
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

      if (forNameCopy)
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

      if (durationCopy)
      {
        objc_opt_class();
        v70 = CCValidateIsInstanceOfExpectedClass();
        v37 = v35;

        if (!v70)
        {
          goto LABEL_77;
        }

        [durationCopy doubleValue];
        CCPBDataWriterWriteDoubleField();
      }

      else
      {
        v37 = v35;
      }

      if (!costCopy)
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
        if (!codeCopy)
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
          if (!statusCopy)
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
            dCopy = v80;
            immutableData = [v32 immutableData];
            selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:error];

            v45 = selfCopy2;
            goto LABEL_84;
          }

          goto LABEL_82;
        }

LABEL_77:
        CCSetError();
        v45 = 0;
        v35 = v37;
LABEL_83:
        selfCopy2 = self;
        dCopy = v80;
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
  selfCopy2 = self;
LABEL_84:

  v77 = *MEMORY[0x1E69E9840];
  return v45;
}

@end