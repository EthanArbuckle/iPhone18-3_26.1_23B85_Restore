@interface CCAppIntentsExtractedEntityRestaurantReservation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityRestaurantReservation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppIntentsExtractedEntityRestaurantReservation)initWithProvider:(id)provider reservationID:(id)d customerNames:(id)names restaurantPartySize:(id)size startLocationName:(id)name startLocationAddress:(id)address startLocationTelephone:(id)telephone startDate:(id)self0 startDateTimeZone:(id)self1 restaurantMealType:(id)self2 eventStatus:(id)self3 error:(id *)self4;
- (NSArray)customerNames;
- (NSString)eventStatus;
- (NSString)provider;
- (NSString)reservationID;
- (NSString)restaurantMealType;
- (NSString)startDate;
- (NSString)startDateTimeZone;
- (NSString)startLocationAddress;
- (NSString)startLocationName;
- (NSString)startLocationTelephone;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityRestaurantReservation

- (CCAppIntentsExtractedEntityRestaurantReservation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v22 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"reservationID"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"customerNames"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"restaurantPartySize"];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"startLocationName"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"startLocationAddress"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"startLocationTelephone"];
    [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    v16 = v21 = self;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"startDateTimeZone"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"restaurantMealType"];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"eventStatus"];
    v14 = [[CCAppIntentsExtractedEntityRestaurantReservation alloc] initWithProvider:v22 reservationID:v19 customerNames:v9 restaurantPartySize:v10 startLocationName:v20 startLocationAddress:v18 startLocationTelephone:v17 startDate:v16 startDateTimeZone:v11 restaurantMealType:v12 eventStatus:v13 error:error];

    self = v21;
  }

  else
  {
    CCSetError();
    v14 = 0;
  }

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_provider)
  {
    provider = [(CCAppIntentsExtractedEntityRestaurantReservation *)self provider];
    [v3 setObject:provider forKeyedSubscript:@"provider"];
  }

  if (self->_reservationID)
  {
    reservationID = [(CCAppIntentsExtractedEntityRestaurantReservation *)self reservationID];
    [v3 setObject:reservationID forKeyedSubscript:@"reservationID"];
  }

  if (self->_customerNames)
  {
    customerNames = [(CCAppIntentsExtractedEntityRestaurantReservation *)self customerNames];
    [v3 setObject:customerNames forKeyedSubscript:@"customerNames"];
  }

  if (self->_hasRestaurantPartySize)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCAppIntentsExtractedEntityRestaurantReservation restaurantPartySize](self, "restaurantPartySize")}];
    [v3 setObject:v7 forKeyedSubscript:@"restaurantPartySize"];
  }

  if (self->_startLocationName)
  {
    startLocationName = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startLocationName];
    [v3 setObject:startLocationName forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    startLocationAddress = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startLocationAddress];
    [v3 setObject:startLocationAddress forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_startLocationTelephone)
  {
    startLocationTelephone = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startLocationTelephone];
    [v3 setObject:startLocationTelephone forKeyedSubscript:@"startLocationTelephone"];
  }

  if (self->_startDate)
  {
    startDate = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startDate];
    [v3 setObject:startDate forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    startDateTimeZone = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startDateTimeZone];
    [v3 setObject:startDateTimeZone forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_restaurantMealType)
  {
    restaurantMealType = [(CCAppIntentsExtractedEntityRestaurantReservation *)self restaurantMealType];
    [v3 setObject:restaurantMealType forKeyedSubscript:@"restaurantMealType"];
  }

  if (self->_eventStatus)
  {
    eventStatus = [(CCAppIntentsExtractedEntityRestaurantReservation *)self eventStatus];
    [v3 setObject:eventStatus forKeyedSubscript:@"eventStatus"];
  }

  v15 = [v3 copy];

  return v15;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_provider)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27382 stringValue:self->_provider];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_reservationID)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27383 stringValue:self->_reservationID];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_customerNames)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27384 repeatedStringValue:self->_customerNames];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_hasRestaurantPartySize)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27385 uint32Value:self->_restaurantPartySize];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_startLocationName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27386 stringValue:self->_startLocationName];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_startLocationAddress)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27387 stringValue:self->_startLocationAddress];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_startLocationTelephone)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27388 stringValue:self->_startLocationTelephone];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_startDate)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27389 stringValue:self->_startDate];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_startDateTimeZone)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27390 stringValue:self->_startDateTimeZone];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_restaurantMealType)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27391 stringValue:self->_restaurantMealType];
    blockCopy[2](blockCopy, v14);
  }

  v15 = blockCopy;
  if (self->_eventStatus)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27392 stringValue:self->_eventStatus];
    blockCopy[2](blockCopy, v16);

    v15 = blockCopy;
  }
}

- (NSString)eventStatus
{
  v2 = [(NSString *)self->_eventStatus copy];

  return v2;
}

- (NSString)restaurantMealType
{
  v2 = [(NSString *)self->_restaurantMealType copy];

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

- (NSString)reservationID
{
  v2 = [(NSString *)self->_reservationID copy];

  return v2;
}

- (NSString)provider
{
  v2 = [(NSString *)self->_provider copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] < *&v7[*MEMORY[0x1E6993AB0]])
  {
    v10 = 0;
    v51 = 0;
    v11 = MEMORY[0x1E6993AA8];
    v12 = MEMORY[0x1E6993AA0];
    while (2)
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
        goto LABEL_68;
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
          if (*&v7[*v11])
          {
            goto LABEL_67;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v11] = 1;
LABEL_17:
      v23 = *&v7[*v11];
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
        goto LABEL_67;
      }

LABEL_21:
      v24 = v22 >> 3;
      if ((v22 >> 3) <= 5)
      {
        if (v24 <= 2)
        {
          if (v24 == 1)
          {
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 24;
            goto LABEL_56;
          }

          if (v24 == 2)
          {
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 32;
            goto LABEL_56;
          }
        }

        else
        {
          switch(v24)
          {
            case 3:
              v34 = CCPBReaderReadStringNoCopy();
              if (!v51)
              {
                v51 = objc_opt_new();
              }

              if (v34)
              {
                [v51 addObject:v34];
              }

              goto LABEL_57;
            case 4:
              v27 = 0;
              v28 = 0;
              v29 = 0;
              while (1)
              {
                v30 = *v8;
                v31 = *&v7[v30];
                v32 = v31 + 1;
                if (v31 == -1 || v32 > *&v7[*v9])
                {
                  break;
                }

                v33 = *(*&v7[*v12] + v31);
                *&v7[v30] = v32;
                v29 |= (v33 & 0x7F) << v27;
                if ((v33 & 0x80) == 0)
                {
                  goto LABEL_63;
                }

                v27 += 7;
                v21 = v28++ >= 9;
                if (v21)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_65;
                }
              }

              *&v7[*v11] = 1;
LABEL_63:
              if (*&v7[*v11])
              {
                LODWORD(v29) = 0;
              }

LABEL_65:
              v10 = 0;
              self->_restaurantPartySize = v29;
              self->_hasRestaurantPartySize = 1;
              goto LABEL_58;
            case 5:
              v25 = CCPBReaderReadStringNoCopy();
              v26 = 48;
              goto LABEL_56;
          }
        }
      }

      else if (v24 > 8)
      {
        switch(v24)
        {
          case 9:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 80;
            goto LABEL_56;
          case 0xA:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 88;
            goto LABEL_56;
          case 0xB:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 96;
            goto LABEL_56;
        }
      }

      else
      {
        switch(v24)
        {
          case 6:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 56;
            goto LABEL_56;
          case 7:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 64;
            goto LABEL_56;
          case 8:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 72;
LABEL_56:
            v35 = *(&self->super.super.isa + v26);
            *(&self->super.super.isa + v26) = v25;

LABEL_57:
            v10 = 0;
            goto LABEL_58;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        goto LABEL_57;
      }

      v36 = objc_opt_class();
      NSStringFromClass(v36);
      errorCopy = error;
      v38 = v37 = dataCopy;
      v39 = *&v7[*v11];
      v10 = CCSkipFieldErrorForMessage();

      dataCopy = v37;
      error = errorCopy;
LABEL_58:
      if (*&v7[*v8] < *&v7[*v9])
      {
        continue;
      }

      goto LABEL_68;
    }
  }

  v51 = 0;
LABEL_67:
  v10 = 0;
LABEL_68:
  v40 = [v51 copy];
  customerNames = self->_customerNames;
  self->_customerNames = v40;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    v42 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v48 = 1;
      goto LABEL_73;
    }

    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = *&v7[*v42];
    CCInvalidBufferErrorForMessage();
    v47 = v46 = dataCopy;
    CCSetError();

    dataCopy = v46;
  }

  v48 = 0;
LABEL_73:

  return v48;
}

- (CCAppIntentsExtractedEntityRestaurantReservation)initWithProvider:(id)provider reservationID:(id)d customerNames:(id)names restaurantPartySize:(id)size startLocationName:(id)name startLocationAddress:(id)address startLocationTelephone:(id)telephone startDate:(id)self0 startDateTimeZone:(id)self1 restaurantMealType:(id)self2 eventStatus:(id)self3 error:(id *)self4
{
  v75 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  dCopy = d;
  namesCopy = names;
  sizeCopy = size;
  nameCopy = name;
  addressCopy = address;
  telephoneCopy = telephone;
  dateCopy = date;
  zoneCopy = zone;
  typeCopy = type;
  statusCopy = status;
  v23 = objc_opt_new();
  v24 = 0x1E696A000uLL;
  if (providerCopy)
  {
    objc_opt_class();
    v73 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v26 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_50;
    }

    CCPBDataWriterWriteStringField();
    if (!dCopy)
    {
LABEL_4:
      v27 = v26;
      if (namesCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v26 = 0;
    if (!dCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v72 = v26;
  v36 = CCValidateIsInstanceOfExpectedClass();
  v27 = v26;

  if (!v36)
  {
    goto LABEL_45;
  }

  CCPBDataWriterWriteStringField();
  if (namesCopy)
  {
LABEL_5:
    objc_opt_class();
    v71 = v27;
    v28 = CCValidateArrayValues();
    v26 = v27;

    if (!v28)
    {
      goto LABEL_50;
    }

    v29 = providerCopy;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v30 = namesCopy;
    v31 = [v30 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v68;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v68 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v67 + 1) + 8 * i);
          CCPBDataWriterWriteStringField();
        }

        v32 = [v30 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v32);
    }

    providerCopy = v29;
    v24 = 0x1E696A000;
    if (!sizeCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_18:
  v26 = v27;
  if (!sizeCopy)
  {
LABEL_14:
    v27 = v26;
    goto LABEL_21;
  }

LABEL_19:
  objc_opt_class();
  v37 = CCValidateIsInstanceOfExpectedClass();
  v27 = v26;

  if (!v37)
  {
    goto LABEL_45;
  }

  [sizeCopy unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
LABEL_21:
  if (nameCopy)
  {
    v38 = *(v24 + 3776);
    objc_opt_class();
    v39 = CCValidateIsInstanceOfExpectedClass();
    v26 = v27;

    if (!v39)
    {
      goto LABEL_50;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v26 = v27;
  }

  if (addressCopy)
  {
    v40 = *(v24 + 3776);
    objc_opt_class();
    v41 = CCValidateIsInstanceOfExpectedClass();
    v27 = v26;

    if (!v41)
    {
      goto LABEL_45;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v27 = v26;
  }

  if (telephoneCopy)
  {
    v42 = *(v24 + 3776);
    objc_opt_class();
    v43 = CCValidateIsInstanceOfExpectedClass();
    v26 = v27;

    if (!v43)
    {
      goto LABEL_50;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v26 = v27;
  }

  if (!dateCopy)
  {
    v46 = v26;
    goto LABEL_37;
  }

  v44 = *(v24 + 3776);
  objc_opt_class();
  v45 = CCValidateIsInstanceOfExpectedClass();
  v46 = v26;

  if (v45)
  {
    CCPBDataWriterWriteStringField();
LABEL_37:
    if (!zoneCopy)
    {
      v26 = v46;
      goto LABEL_42;
    }

    v47 = *(v24 + 3776);
    objc_opt_class();
    v48 = CCValidateIsInstanceOfExpectedClass();
    v26 = v46;

    if (v48)
    {
      CCPBDataWriterWriteStringField();
LABEL_42:
      if (!typeCopy)
      {
        v27 = v26;
        goto LABEL_47;
      }

      v52 = *(v24 + 3776);
      objc_opt_class();
      v53 = CCValidateIsInstanceOfExpectedClass();
      v27 = v26;

      if (v53)
      {
        CCPBDataWriterWriteStringField();
LABEL_47:
        if (!statusCopy)
        {
          v26 = v27;
          goto LABEL_54;
        }

        v54 = *(v24 + 3776);
        objc_opt_class();
        v55 = CCValidateIsInstanceOfExpectedClass();
        v26 = v27;

        if (v55)
        {
          CCPBDataWriterWriteStringField();
LABEL_54:
          v50 = dateCopy;
          immutableData = [v23 immutableData];
          selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:error];

          v49 = selfCopy2;
          goto LABEL_52;
        }

        goto LABEL_50;
      }

LABEL_45:
      CCSetError();
      v49 = 0;
      v26 = v27;
LABEL_51:
      selfCopy2 = self;
      v50 = dateCopy;
      goto LABEL_52;
    }

LABEL_50:
    CCSetError();
    v49 = 0;
    goto LABEL_51;
  }

  CCSetError();
  v49 = 0;
  v26 = v46;
  v50 = dateCopy;
  selfCopy2 = self;
LABEL_52:

  v56 = *MEMORY[0x1E69E9840];
  return v49;
}

@end