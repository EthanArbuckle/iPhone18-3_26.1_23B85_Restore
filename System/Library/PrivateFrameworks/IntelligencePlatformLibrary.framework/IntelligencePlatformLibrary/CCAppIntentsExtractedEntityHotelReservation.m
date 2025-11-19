@interface CCAppIntentsExtractedEntityHotelReservation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityHotelReservation)initWithHotelReservationForName:(id)a3 provider:(id)a4 hotelReservationId:(id)a5 customerNames:(id)a6 roomNumbers:(id)a7 numberOfRooms:(id)a8 hotelReservationForAddress:(id)a9 hotelCheckinDate:(id)a10 hotelCheckinTime:(id)a11 hotelCheckoutDate:(id)a12 hotelCheckoutTime:(id)a13 hotelTimeZone:(id)a14 duration:(id)a15 hotelReservationForTelephone:(id)a16 cost:(id)a17 costCode:(id)a18 eventStatus:(id)a19 error:(id *)a20;
- (CCAppIntentsExtractedEntityHotelReservation)initWithJSONDictionary:(id)a3 error:(id *)a4;
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
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityHotelReservation

- (CCAppIntentsExtractedEntityHotelReservation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v29 = [v6 objectForKeyedSubscript:@"hotelReservationForName"];
    v28 = [v6 objectForKeyedSubscript:@"provider"];
    v27 = [v6 objectForKeyedSubscript:@"hotelReservationId"];
    v21 = [v6 objectForKeyedSubscript:@"customerNames"];
    v20 = [v6 objectForKeyedSubscript:@"roomNumbers"];
    v19 = [v6 objectForKeyedSubscript:@"numberOfRooms"];
    v26 = [v6 objectForKeyedSubscript:@"hotelReservationForAddress"];
    v25 = [v6 objectForKeyedSubscript:@"hotelCheckinDate"];
    v24 = [v6 objectForKeyedSubscript:@"hotelCheckinTime"];
    v17 = [v6 objectForKeyedSubscript:@"hotelCheckoutDate"];
    v16 = [v6 objectForKeyedSubscript:@"hotelCheckoutTime"];
    v18 = [v6 objectForKeyedSubscript:@"hotelTimeZone"];
    v15 = [v6 objectForKeyedSubscript:@"duration"];
    [v6 objectForKeyedSubscript:@"hotelReservationForTelephone"];
    v9 = v23 = v8;
    v10 = [v6 objectForKeyedSubscript:@"cost"];
    [v6 objectForKeyedSubscript:@"costCode"];
    v11 = v22 = self;
    v12 = [v6 objectForKeyedSubscript:@"eventStatus"];
    v13 = [[CCAppIntentsExtractedEntityHotelReservation alloc] initWithHotelReservationForName:v29 provider:v28 hotelReservationId:v27 customerNames:v21 roomNumbers:v20 numberOfRooms:v19 hotelReservationForAddress:v26 hotelCheckinDate:v25 hotelCheckinTime:v24 hotelCheckoutDate:v17 hotelCheckoutTime:v16 hotelTimeZone:v18 duration:v15 hotelReservationForTelephone:v9 cost:v10 costCode:v11 eventStatus:v12 error:a4];

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
    v4 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelReservationForName];
    [v3 setObject:v4 forKeyedSubscript:@"hotelReservationForName"];
  }

  if (self->_provider)
  {
    v5 = [(CCAppIntentsExtractedEntityHotelReservation *)self provider];
    [v3 setObject:v5 forKeyedSubscript:@"provider"];
  }

  if (self->_hotelReservationId)
  {
    v6 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelReservationId];
    [v3 setObject:v6 forKeyedSubscript:@"hotelReservationId"];
  }

  if (self->_customerNames)
  {
    v7 = [(CCAppIntentsExtractedEntityHotelReservation *)self customerNames];
    [v3 setObject:v7 forKeyedSubscript:@"customerNames"];
  }

  if (self->_roomNumbers)
  {
    v8 = [(CCAppIntentsExtractedEntityHotelReservation *)self roomNumbers];
    [v3 setObject:v8 forKeyedSubscript:@"roomNumbers"];
  }

  if (self->_hasNumberOfRooms)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCAppIntentsExtractedEntityHotelReservation numberOfRooms](self, "numberOfRooms")}];
    [v3 setObject:v9 forKeyedSubscript:@"numberOfRooms"];
  }

  if (self->_hotelReservationForAddress)
  {
    v10 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelReservationForAddress];
    [v3 setObject:v10 forKeyedSubscript:@"hotelReservationForAddress"];
  }

  if (self->_hotelCheckinDate)
  {
    v11 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelCheckinDate];
    [v3 setObject:v11 forKeyedSubscript:@"hotelCheckinDate"];
  }

  if (self->_hotelCheckinTime)
  {
    v12 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelCheckinTime];
    [v3 setObject:v12 forKeyedSubscript:@"hotelCheckinTime"];
  }

  if (self->_hotelCheckoutDate)
  {
    v13 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelCheckoutDate];
    [v3 setObject:v13 forKeyedSubscript:@"hotelCheckoutDate"];
  }

  if (self->_hotelCheckoutTime)
  {
    v14 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelCheckoutTime];
    [v3 setObject:v14 forKeyedSubscript:@"hotelCheckoutTime"];
  }

  if (self->_hotelTimeZone)
  {
    v15 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelTimeZone];
    [v3 setObject:v15 forKeyedSubscript:@"hotelTimeZone"];
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
    v18 = [(CCAppIntentsExtractedEntityHotelReservation *)self hotelReservationForTelephone];
    [v3 setObject:v18 forKeyedSubscript:@"hotelReservationForTelephone"];
  }

  if (self->_cost)
  {
    v19 = [(CCAppIntentsExtractedEntityHotelReservation *)self cost];
    [v3 setObject:v19 forKeyedSubscript:@"cost"];
  }

  if (self->_costCode)
  {
    v20 = [(CCAppIntentsExtractedEntityHotelReservation *)self costCode];
    [v3 setObject:v20 forKeyedSubscript:@"costCode"];
  }

  if (self->_eventStatus)
  {
    v21 = [(CCAppIntentsExtractedEntityHotelReservation *)self eventStatus];
    [v3 setObject:v21 forKeyedSubscript:@"eventStatus"];
  }

  v22 = [v3 copy];

  return v22;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v23 = a3;
  if (self->_hotelReservationForName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27364 stringValue:self->_hotelReservationForName];
    v23[2](v23, v5);
  }

  if (self->_provider)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27365 stringValue:self->_provider];
    v23[2](v23, v6);
  }

  if (self->_hotelReservationId)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27366 stringValue:self->_hotelReservationId];
    v23[2](v23, v7);
  }

  if (self->_customerNames)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27367 repeatedStringValue:self->_customerNames];
    v23[2](v23, v8);
  }

  if (self->_roomNumbers)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27368 repeatedStringValue:self->_roomNumbers];
    v23[2](v23, v9);
  }

  if (self->_hasNumberOfRooms)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27369 uint32Value:self->_numberOfRooms];
    v23[2](v23, v10);
  }

  if (self->_hotelReservationForAddress)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27370 stringValue:self->_hotelReservationForAddress];
    v23[2](v23, v11);
  }

  if (self->_hotelCheckinDate)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27371 stringValue:self->_hotelCheckinDate];
    v23[2](v23, v12);
  }

  if (self->_hotelCheckinTime)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27372 stringValue:self->_hotelCheckinTime];
    v23[2](v23, v13);
  }

  if (self->_hotelCheckoutDate)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27373 stringValue:self->_hotelCheckoutDate];
    v23[2](v23, v14);
  }

  if (self->_hotelCheckoutTime)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27374 stringValue:self->_hotelCheckoutTime];
    v23[2](v23, v15);
  }

  if (self->_hotelTimeZone)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27375 stringValue:self->_hotelTimeZone];
    v23[2](v23, v16);
  }

  if (self->_hasDuration)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27376 doubleValue:self->_duration];
    v23[2](v23, v17);
  }

  if (self->_hotelReservationForTelephone)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27377 stringValue:self->_hotelReservationForTelephone];
    v23[2](v23, v18);
  }

  if (self->_cost)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27378 stringValue:self->_cost];
    v23[2](v23, v19);
  }

  if (self->_costCode)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27379 stringValue:self->_costCode];
    v23[2](v23, v20);
  }

  v21 = v23;
  if (self->_eventStatus)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27380 stringValue:self->_eventStatus];
    v23[2](v23, v22);

    v21 = v23;
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

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
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
            v57 = a4;
            v34 = v33 = v6;
            v35 = *&v7[*v11];
            v10 = CCSkipFieldErrorForMessage();

            v6 = v33;
            a4 = v57;
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
    v54 = v53 = v6;
    CCSetError();

    v6 = v53;
  }

  v55 = 0;
LABEL_75:

  return v55;
}

- (CCAppIntentsExtractedEntityHotelReservation)initWithHotelReservationForName:(id)a3 provider:(id)a4 hotelReservationId:(id)a5 customerNames:(id)a6 roomNumbers:(id)a7 numberOfRooms:(id)a8 hotelReservationForAddress:(id)a9 hotelCheckinDate:(id)a10 hotelCheckinTime:(id)a11 hotelCheckoutDate:(id)a12 hotelCheckoutTime:(id)a13 hotelTimeZone:(id)a14 duration:(id)a15 hotelReservationForTelephone:(id)a16 cost:(id)a17 costCode:(id)a18 eventStatus:(id)a19 error:(id *)a20
{
  v108 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v92 = a8;
  v91 = a9;
  v90 = a10;
  v89 = a11;
  v88 = a12;
  v87 = a13;
  v86 = a14;
  v85 = a15;
  v84 = a16;
  v83 = a17;
  v82 = a18;
  v81 = a19;
  v30 = objc_opt_new();
  v31 = 0x1E696A000uLL;
  if (!v25)
  {
    v33 = 0;
LABEL_5:
    v79 = v25;
    if (v26)
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
      if (!v27)
      {
LABEL_8:
        v33 = v35;
        if (v28)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v35 = v33;
      if (!v27)
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
    if (v28)
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
      v37 = v28;
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
      if (!v29)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_23:
    v35 = v33;
    if (!v29)
    {
LABEL_18:
      v33 = v35;
LABEL_33:
      if (v92)
      {
        objc_opt_class();
        v54 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v54)
        {
          goto LABEL_76;
        }

        [v92 unsignedIntValue];
        CCPBDataWriterWriteUint32Field();
      }

      else
      {
        v35 = v33;
      }

      if (v91)
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

      if (v90)
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

      if (v89)
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

      if (v88)
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

      if (v87)
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

      if (v86)
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

      if (v85)
      {
        objc_opt_class();
        v67 = CCValidateIsInstanceOfExpectedClass();
        v33 = v35;

        if (!v67)
        {
          goto LABEL_81;
        }

        [v85 doubleValue];
        CCPBDataWriterWriteDoubleField();
      }

      else
      {
        v33 = v35;
      }

      if (v84)
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

      if (!v83)
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
        if (!v82)
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
          if (!v81)
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
            v25 = v79;
            v78 = [v30 immutableData];
            v44 = [(CCItemMessage *)self initWithData:v78 error:a20];

            v43 = v44;
            goto LABEL_83;
          }

          goto LABEL_81;
        }

LABEL_76:
        CCSetError();
        v43 = 0;
        v33 = v35;
LABEL_82:
        v44 = self;
        v25 = v79;
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
    v48 = v29;
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
  v44 = self;
LABEL_83:

  v76 = *MEMORY[0x1E69E9840];
  return v43;
}

@end