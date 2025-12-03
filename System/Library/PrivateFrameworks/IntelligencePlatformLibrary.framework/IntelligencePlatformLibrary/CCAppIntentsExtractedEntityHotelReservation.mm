@interface CCAppIntentsExtractedEntityHotelReservation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityHotelReservation)initWithHotelReservationForName:(id)name provider:(id)provider hotelReservationId:(id)id customerNames:(id)names roomNumbers:(id)numbers numberOfRooms:(id)rooms hotelReservationForAddress:(id)address hotelCheckinDate:(id)self0 hotelCheckinTime:(id)self1 hotelCheckoutDate:(id)self2 hotelCheckoutTime:(id)self3 hotelTimeZone:(id)self4 duration:(id)self5 hotelReservationForTelephone:(id)self6 cost:(id)self7 costCode:(id)self8 eventStatus:(id)self9 error:(id *)error;
- (CCAppIntentsExtractedEntityHotelReservation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSArray)customerNames;
- (NSArray)roomNumbers;
- (NSString)cost;
- (NSString)costCode;
- (NSString)eventStatus;
- (NSString)hotelCheckinDate;
- (NSString)hotelCheckinTime;
- (NSString)hotelCheckoutDate;
- (NSString)hotelCheckoutTime;
- (NSString)hotelReservationForAddress;
- (NSString)hotelReservationForName;
- (NSString)hotelReservationForTelephone;
- (NSString)hotelReservationId;
- (NSString)hotelTimeZone;
- (NSString)provider;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityHotelReservation

- (CCAppIntentsExtractedEntityHotelReservation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v29 = [dictionaryCopy objectForKeyedSubscript:@"hotelReservationForName"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    v27 = [dictionaryCopy objectForKeyedSubscript:@"hotelReservationId"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"customerNames"];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"roomNumbers"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"numberOfRooms"];
    v26 = [dictionaryCopy objectForKeyedSubscript:@"hotelReservationForAddress"];
    v25 = [dictionaryCopy objectForKeyedSubscript:@"hotelCheckinDate"];
    v24 = [dictionaryCopy objectForKeyedSubscript:@"hotelCheckinTime"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"hotelCheckoutDate"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"hotelCheckoutTime"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"hotelTimeZone"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
    [dictionaryCopy objectForKeyedSubscript:@"hotelReservationForTelephone"];
    v9 = v23 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"cost"];
    [dictionaryCopy objectForKeyedSubscript:@"costCode"];
    v11 = v22 = self;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"eventStatus"];
    v13 = [[CCAppIntentsExtractedEntityHotelReservation alloc] initWithHotelReservationForName:v29 provider:v28 hotelReservationId:v27 customerNames:v21 roomNumbers:v20 numberOfRooms:v19 hotelReservationForAddress:v26 hotelCheckinDate:v25 hotelCheckinTime:v24 hotelCheckoutDate:v17 hotelCheckoutTime:v16 hotelTimeZone:v18 duration:v15 hotelReservationForTelephone:v9 cost:v10 costCode:v11 eventStatus:v12 error:error];

    self = v22;
    v8 = v23;
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
  if (self->_hotelReservationForName)
  {
    hotelReservationForName = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelReservationForName];
    [v3 setObject:hotelReservationForName forKeyedSubscript:@"hotelReservationForName"];
  }

  if (self->_provider)
  {
    provider = [(CCAppIntentsExtractedEntityHotelReservation *)self provider];
    [v3 setObject:provider forKeyedSubscript:@"provider"];
  }

  if (self->_hotelReservationId)
  {
    hotelReservationId = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelReservationId];
    [v3 setObject:hotelReservationId forKeyedSubscript:@"hotelReservationId"];
  }

  if (self->_customerNames)
  {
    customerNames = [(CCAppIntentsExtractedEntityHotelReservation *)self customerNames];
    [v3 setObject:customerNames forKeyedSubscript:@"customerNames"];
  }

  if (self->_roomNumbers)
  {
    roomNumbers = [(CCAppIntentsExtractedEntityHotelReservation *)self roomNumbers];
    [v3 setObject:roomNumbers forKeyedSubscript:@"roomNumbers"];
  }

  if (self->_hasNumberOfRooms)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCAppIntentsExtractedEntityHotelReservation numberOfRooms](self, "numberOfRooms")}];
    [v3 setObject:v9 forKeyedSubscript:@"numberOfRooms"];
  }

  if (self->_hotelReservationForAddress)
  {
    hotelReservationForAddress = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelReservationForAddress];
    [v3 setObject:hotelReservationForAddress forKeyedSubscript:@"hotelReservationForAddress"];
  }

  if (self->_hotelCheckinDate)
  {
    hotelCheckinDate = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelCheckinDate];
    [v3 setObject:hotelCheckinDate forKeyedSubscript:@"hotelCheckinDate"];
  }

  if (self->_hotelCheckinTime)
  {
    hotelCheckinTime = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelCheckinTime];
    [v3 setObject:hotelCheckinTime forKeyedSubscript:@"hotelCheckinTime"];
  }

  if (self->_hotelCheckoutDate)
  {
    hotelCheckoutDate = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelCheckoutDate];
    [v3 setObject:hotelCheckoutDate forKeyedSubscript:@"hotelCheckoutDate"];
  }

  if (self->_hotelCheckoutTime)
  {
    hotelCheckoutTime = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelCheckoutTime];
    [v3 setObject:hotelCheckoutTime forKeyedSubscript:@"hotelCheckoutTime"];
  }

  if (self->_hotelTimeZone)
  {
    hotelTimeZone = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelTimeZone];
    [v3 setObject:hotelTimeZone forKeyedSubscript:@"hotelTimeZone"];
  }

  if (self->_hasDuration)
  {
    v16 = MEMORY[0x1E696AD98];
    [(CCAppIntentsExtractedEntityHotelReservation *)self duration];
    v17 = [v16 numberWithDouble:?];
    [v3 setObject:v17 forKeyedSubscript:@"duration"];
  }

  if (self->_hotelReservationForTelephone)
  {
    hotelReservationForTelephone = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelReservationForTelephone];
    [v3 setObject:hotelReservationForTelephone forKeyedSubscript:@"hotelReservationForTelephone"];
  }

  if (self->_cost)
  {
    cost = [(CCAppIntentsExtractedEntityHotelReservation *)self cost];
    [v3 setObject:cost forKeyedSubscript:@"cost"];
  }

  if (self->_costCode)
  {
    costCode = [(CCAppIntentsExtractedEntityHotelReservation *)self costCode];
    [v3 setObject:costCode forKeyedSubscript:@"costCode"];
  }

  if (self->_eventStatus)
  {
    eventStatus = [(CCAppIntentsExtractedEntityHotelReservation *)self eventStatus];
    [v3 setObject:eventStatus forKeyedSubscript:@"eventStatus"];
  }

  v22 = [v3 copy];

  return v22;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_hotelReservationForName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27364 stringValue:self->_hotelReservationForName];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_provider)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27365 stringValue:self->_provider];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_hotelReservationId)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27366 stringValue:self->_hotelReservationId];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_customerNames)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27367 repeatedStringValue:self->_customerNames];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_roomNumbers)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27368 repeatedStringValue:self->_roomNumbers];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_hasNumberOfRooms)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27369 uint32Value:self->_numberOfRooms];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_hotelReservationForAddress)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27370 stringValue:self->_hotelReservationForAddress];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_hotelCheckinDate)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27371 stringValue:self->_hotelCheckinDate];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_hotelCheckinTime)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27372 stringValue:self->_hotelCheckinTime];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_hotelCheckoutDate)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27373 stringValue:self->_hotelCheckoutDate];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_hotelCheckoutTime)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27374 stringValue:self->_hotelCheckoutTime];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_hotelTimeZone)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27375 stringValue:self->_hotelTimeZone];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_hasDuration)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27376 doubleValue:self->_duration];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_hotelReservationForTelephone)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27377 stringValue:self->_hotelReservationForTelephone];
    blockCopy[2](blockCopy, v18);
  }

  if (self->_cost)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27378 stringValue:self->_cost];
    blockCopy[2](blockCopy, v19);
  }

  if (self->_costCode)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27379 stringValue:self->_costCode];
    blockCopy[2](blockCopy, v20);
  }

  v21 = blockCopy;
  if (self->_eventStatus)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27380 stringValue:self->_eventStatus];
    blockCopy[2](blockCopy, v22);

    v21 = blockCopy;
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

- (NSString)hotelReservationForTelephone
{
  v2 = [(NSString *)self->_hotelReservationForTelephone copy];

  return v2;
}

- (NSString)hotelTimeZone
{
  v2 = [(NSString *)self->_hotelTimeZone copy];

  return v2;
}

- (NSString)hotelCheckoutTime
{
  v2 = [(NSString *)self->_hotelCheckoutTime copy];

  return v2;
}

- (NSString)hotelCheckoutDate
{
  v2 = [(NSString *)self->_hotelCheckoutDate copy];

  return v2;
}

- (NSString)hotelCheckinTime
{
  v2 = [(NSString *)self->_hotelCheckinTime copy];

  return v2;
}

- (NSString)hotelCheckinDate
{
  v2 = [(NSString *)self->_hotelCheckinDate copy];

  return v2;
}

- (NSString)hotelReservationForAddress
{
  v2 = [(NSString *)self->_hotelReservationForAddress copy];

  return v2;
}

- (NSArray)roomNumbers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_roomNumbers copyItems:1];

  return v2;
}

- (NSArray)customerNames
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_customerNames copyItems:1];

  return v2;
}

- (NSString)hotelReservationId
{
  v2 = [(NSString *)self->_hotelReservationId copy];

  return v2;
}

- (NSString)provider
{
  v2 = [(NSString *)self->_provider copy];

  return v2;
}

- (NSString)hotelReservationForName
{
  v2 = [(NSString *)self->_hotelReservationForName copy];

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
    v58 = 0;
    v59 = 0;
LABEL_69:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v58 = 0;
    v59 = 0;
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
        v21 = v15++ >= 9;
        if (v21)
        {
          v22 = 0;
          v23 = *v11;
          if (*&v7[v23])
          {
            goto LABEL_69;
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
        goto LABEL_69;
      }

LABEL_21:
      switch((v22 >> 3))
      {
        case 1u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 24;
          goto LABEL_58;
        case 2u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 32;
          goto LABEL_58;
        case 3u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 40;
          goto LABEL_58;
        case 4u:
          v27 = CCPBReaderReadStringNoCopy();
          if (!v59)
          {
            v59 = objc_opt_new();
          }

          if (!v27)
          {
            goto LABEL_41;
          }

          v28 = v59;
          goto LABEL_40;
        case 5u:
          v27 = CCPBReaderReadStringNoCopy();
          if (!v58)
          {
            v58 = objc_opt_new();
          }

          if (!v27)
          {
            goto LABEL_41;
          }

          v28 = v58;
LABEL_40:
          [v28 addObject:v27];
LABEL_41:

          goto LABEL_42;
        case 6u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          break;
        case 7u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 64;
          goto LABEL_58;
        case 8u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 72;
          goto LABEL_58;
        case 9u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 80;
          goto LABEL_58;
        case 0xAu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 88;
          goto LABEL_58;
        case 0xBu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 96;
          goto LABEL_58;
        case 0xCu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 104;
          goto LABEL_58;
        case 0xDu:
          v29 = *v8;
          v30 = *&v7[v29];
          if (v30 <= 0xFFFFFFFFFFFFFFF7 && v30 + 8 <= *&v7[*v9])
          {
            v31 = *(*&v7[*v12] + v30);
            *&v7[v29] = v30 + 8;
          }

          else
          {
            *&v7[v23] = 1;
            v31 = 0.0;
          }

          v10 = 0;
          self->_duration = v31;
          v44 = 17;
          goto LABEL_67;
        case 0xEu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 120;
          goto LABEL_58;
        case 0xFu:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 128;
          goto LABEL_58;
        case 0x10u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 136;
          goto LABEL_58;
        case 0x11u:
          v25 = CCPBReaderReadStringNoCopy();
          v26 = 144;
LABEL_58:
          v43 = *(&self->super.super.isa + v26);
          *(&self->super.super.isa + v26) = v25;

          v10 = 0;
          continue;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_42:
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

          continue;
      }

      while (1)
      {
        v39 = *v8;
        v40 = *&v7[v39];
        v41 = v40 + 1;
        if (v40 == -1 || v41 > *&v7[*v9])
        {
          break;
        }

        v42 = *(*&v7[*v12] + v40);
        *&v7[v39] = v41;
        v38 |= (v42 & 0x7F) << v36;
        if ((v42 & 0x80) == 0)
        {
          goto LABEL_62;
        }

        v36 += 7;
        v21 = v37++ >= 9;
        if (v21)
        {
          LODWORD(v38) = 0;
          goto LABEL_64;
        }
      }

      *&v7[*v11] = 1;
LABEL_62:
      if (*&v7[*v11])
      {
        LODWORD(v38) = 0;
      }

LABEL_64:
      v10 = 0;
      self->_numberOfRooms = v38;
      v44 = 16;
LABEL_67:
      *(&self->super.super.isa + v44) = 1;
    }

    while (*&v7[*v8] < *&v7[*v9]);
  }

  v45 = [v59 copy];
  customerNames = self->_customerNames;
  self->_customerNames = v45;

  v47 = [v58 copy];
  roomNumbers = self->_roomNumbers;
  self->_roomNumbers = v47;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    v49 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v55 = 1;
      goto LABEL_75;
    }

    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    v52 = *&v7[*v49];
    CCInvalidBufferErrorForMessage();
    v54 = v53 = dataCopy;
    CCSetError();

    dataCopy = v53;
  }

  v55 = 0;
LABEL_75:

  return v55;
}

- (CCAppIntentsExtractedEntityHotelReservation)initWithHotelReservationForName:(id)name provider:(id)provider hotelReservationId:(id)id customerNames:(id)names roomNumbers:(id)numbers numberOfRooms:(id)rooms hotelReservationForAddress:(id)address hotelCheckinDate:(id)self0 hotelCheckinTime:(id)self1 hotelCheckoutDate:(id)self2 hotelCheckoutTime:(id)self3 hotelTimeZone:(id)self4 duration:(id)self5 hotelReservationForTelephone:(id)self6 cost:(id)self7 costCode:(id)self8 eventStatus:(id)self9 error:(id *)error
{
  v108 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  providerCopy = provider;
  idCopy = id;
  namesCopy = names;
  numbersCopy = numbers;
  roomsCopy = rooms;
  addressCopy = address;
  dateCopy = date;
  timeCopy = time;
  checkoutDateCopy = checkoutDate;
  checkoutTimeCopy = checkoutTime;
  zoneCopy = zone;
  durationCopy = duration;
  telephoneCopy = telephone;
  costCopy = cost;
  codeCopy = code;
  statusCopy = status;
  v30 = objc_opt_new();
  v31 = 0x1E696A000uLL;
  if (!nameCopy)
  {
    v33 = 0;
LABEL_5:
    v79 = nameCopy;
    if (providerCopy)
    {
      objc_opt_class();
      v104 = v33;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v35 = v33;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_76;
      }

      CCPBDataWriterWriteStringField();
      if (!idCopy)
      {
LABEL_8:
        v33 = v35;
        if (namesCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v35 = v33;
      if (!idCopy)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    v103 = v35;
    v45 = CCValidateIsInstanceOfExpectedClass();
    v33 = v35;

    if (!v45)
    {
      goto LABEL_81;
    }

    CCPBDataWriterWriteStringField();
    if (namesCopy)
    {
LABEL_9:
      objc_opt_class();
      v102 = v33;
      v36 = CCValidateArrayValues();
      v35 = v33;

      if (!v36)
      {
        goto LABEL_76;
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v37 = namesCopy;
      v38 = [v37 countByEnumeratingWithState:&v98 objects:v107 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v99;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v99 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v98 + 1) + 8 * i);
            CCPBDataWriterWriteStringField();
          }

          v39 = [v37 countByEnumeratingWithState:&v98 objects:v107 count:16];
        }

        while (v39);
      }

      v31 = 0x1E696A000;
      if (!numbersCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_23:
    v35 = v33;
    if (!numbersCopy)
    {
LABEL_18:
      v33 = v35;
LABEL_33:
      if (roomsCopy)
      {
        objc_opt_class();
        v54 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v54)
        {
          goto LABEL_76;
        }

        [roomsCopy unsignedIntValue];
        CCPBDataWriterWriteUint32Field();
      }

      else
      {
        v35 = v33;
      }

      if (addressCopy)
      {
        v55 = *(v31 + 3776);
        objc_opt_class();
        v56 = CCValidateIsInstanceOfExpectedClass();
        v33 = v35;

        if (!v56)
        {
          goto LABEL_81;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v33 = v35;
      }

      if (dateCopy)
      {
        v57 = *(v31 + 3776);
        objc_opt_class();
        v58 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v58)
        {
          goto LABEL_76;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v33;
      }

      if (timeCopy)
      {
        v59 = *(v31 + 3776);
        objc_opt_class();
        v60 = CCValidateIsInstanceOfExpectedClass();
        v33 = v35;

        if (!v60)
        {
          goto LABEL_81;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v33 = v35;
      }

      if (checkoutDateCopy)
      {
        v61 = *(v31 + 3776);
        objc_opt_class();
        v62 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v62)
        {
          goto LABEL_76;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v33;
      }

      if (checkoutTimeCopy)
      {
        v63 = *(v31 + 3776);
        objc_opt_class();
        v64 = CCValidateIsInstanceOfExpectedClass();
        v33 = v35;

        if (!v64)
        {
          goto LABEL_81;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v33 = v35;
      }

      if (zoneCopy)
      {
        v65 = *(v31 + 3776);
        objc_opt_class();
        v66 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v66)
        {
          goto LABEL_76;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v33;
      }

      if (durationCopy)
      {
        objc_opt_class();
        v67 = CCValidateIsInstanceOfExpectedClass();
        v33 = v35;

        if (!v67)
        {
          goto LABEL_81;
        }

        [durationCopy doubleValue];
        CCPBDataWriterWriteDoubleField();
      }

      else
      {
        v33 = v35;
      }

      if (telephoneCopy)
      {
        v68 = *(v31 + 3776);
        objc_opt_class();
        v69 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v69)
        {
          goto LABEL_76;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v33;
      }

      if (!costCopy)
      {
        v33 = v35;
        goto LABEL_73;
      }

      v70 = *(v31 + 3776);
      objc_opt_class();
      v71 = CCValidateIsInstanceOfExpectedClass();
      v33 = v35;

      if (v71)
      {
        CCPBDataWriterWriteStringField();
LABEL_73:
        if (!codeCopy)
        {
          v35 = v33;
          goto LABEL_78;
        }

        v72 = *(v31 + 3776);
        objc_opt_class();
        v73 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (v73)
        {
          CCPBDataWriterWriteStringField();
LABEL_78:
          if (!statusCopy)
          {
            v33 = v35;
            goto LABEL_85;
          }

          v74 = *(v31 + 3776);
          objc_opt_class();
          v75 = CCValidateIsInstanceOfExpectedClass();
          v33 = v35;

          if (v75)
          {
            CCPBDataWriterWriteStringField();
LABEL_85:
            nameCopy = v79;
            immutableData = [v30 immutableData];
            selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:error];

            v43 = selfCopy2;
            goto LABEL_83;
          }

          goto LABEL_81;
        }

LABEL_76:
        CCSetError();
        v43 = 0;
        v33 = v35;
LABEL_82:
        selfCopy2 = self;
        nameCopy = v79;
        goto LABEL_83;
      }

LABEL_81:
      CCSetError();
      v43 = 0;
      goto LABEL_82;
    }

LABEL_24:
    v46 = *(v31 + 3776);
    objc_opt_class();
    v97 = v35;
    v47 = CCValidateArrayValues();
    v33 = v35;

    if (!v47)
    {
      goto LABEL_81;
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v48 = numbersCopy;
    v49 = [v48 countByEnumeratingWithState:&v93 objects:v106 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v94;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v94 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v93 + 1) + 8 * j);
          CCPBDataWriterWriteStringField();
        }

        v50 = [v48 countByEnumeratingWithState:&v93 objects:v106 count:16];
      }

      while (v50);
    }

    v31 = 0x1E696A000uLL;
    goto LABEL_33;
  }

  objc_opt_class();
  v105 = 0;
  v32 = CCValidateIsInstanceOfExpectedClass();
  v33 = 0;
  if (v32)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v43 = 0;
  selfCopy2 = self;
LABEL_83:

  v76 = *MEMORY[0x1E69E9840];
  return v43;
}

@end