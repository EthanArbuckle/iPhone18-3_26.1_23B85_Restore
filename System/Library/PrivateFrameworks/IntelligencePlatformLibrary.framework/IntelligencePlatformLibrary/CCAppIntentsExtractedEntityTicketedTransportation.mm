@interface CCAppIntentsExtractedEntityTicketedTransportation
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityTicketedTransportation)initWithCustomerNames:(id)names eventName:(id)name startLocationName:(id)locationName startLocationAddress:(id)address startDate:(id)date startDateTimeZone:(id)zone seatNumbers:(id)numbers endLocationName:(id)self0 endLocationAddress:(id)self1 endDate:(id)self2 endDateTimeZone:(id)self3 duration:(id)self4 eventSubType:(id)self5 error:(id *)self6;
- (CCAppIntentsExtractedEntityTicketedTransportation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSArray)customerNames;
- (NSArray)seatNumbers;
- (NSString)endDate;
- (NSString)endDateTimeZone;
- (NSString)endLocationAddress;
- (NSString)endLocationName;
- (NSString)eventName;
- (NSString)eventSubType;
- (NSString)startDate;
- (NSString)startDateTimeZone;
- (NSString)startLocationAddress;
- (NSString)startLocationName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityTicketedTransportation

- (CCAppIntentsExtractedEntityTicketedTransportation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v24 = [dictionaryCopy objectForKeyedSubscript:@"customerNames"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"eventName"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"startLocationName"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"startLocationAddress"];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"startDateTimeZone"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"seatNumbers"];
    [dictionaryCopy objectForKeyedSubscript:@"endLocationName"];
    v16 = v22 = self;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"endLocationAddress"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"endDateTimeZone"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"eventSubType"];
    v13 = [[CCAppIntentsExtractedEntityTicketedTransportation alloc] initWithCustomerNames:v24 eventName:v23 startLocationName:v18 startLocationAddress:v21 startDate:v20 startDateTimeZone:v19 seatNumbers:v17 endLocationName:v16 endLocationAddress:v15 endDate:v9 endDateTimeZone:v10 duration:v11 eventSubType:v12 error:error];

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
  if (self->_customerNames)
  {
    customerNames = [(CCAppIntentsExtractedEntityTicketedTransportation *)self customerNames];
    [v3 setObject:customerNames forKeyedSubscript:@"customerNames"];
  }

  if (self->_eventName)
  {
    eventName = [(CCAppIntentsExtractedEntityTicketedTransportation *)self eventName];
    [v3 setObject:eventName forKeyedSubscript:@"eventName"];
  }

  if (self->_startLocationName)
  {
    startLocationName = [(CCAppIntentsExtractedEntityTicketedTransportation *)self startLocationName];
    [v3 setObject:startLocationName forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    startLocationAddress = [(CCAppIntentsExtractedEntityTicketedTransportation *)self startLocationAddress];
    [v3 setObject:startLocationAddress forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_startDate)
  {
    startDate = [(CCAppIntentsExtractedEntityTicketedTransportation *)self startDate];
    [v3 setObject:startDate forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    startDateTimeZone = [(CCAppIntentsExtractedEntityTicketedTransportation *)self startDateTimeZone];
    [v3 setObject:startDateTimeZone forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_seatNumbers)
  {
    seatNumbers = [(CCAppIntentsExtractedEntityTicketedTransportation *)self seatNumbers];
    [v3 setObject:seatNumbers forKeyedSubscript:@"seatNumbers"];
  }

  if (self->_endLocationName)
  {
    endLocationName = [(CCAppIntentsExtractedEntityTicketedTransportation *)self endLocationName];
    [v3 setObject:endLocationName forKeyedSubscript:@"endLocationName"];
  }

  if (self->_endLocationAddress)
  {
    endLocationAddress = [(CCAppIntentsExtractedEntityTicketedTransportation *)self endLocationAddress];
    [v3 setObject:endLocationAddress forKeyedSubscript:@"endLocationAddress"];
  }

  if (self->_endDate)
  {
    endDate = [(CCAppIntentsExtractedEntityTicketedTransportation *)self endDate];
    [v3 setObject:endDate forKeyedSubscript:@"endDate"];
  }

  if (self->_endDateTimeZone)
  {
    endDateTimeZone = [(CCAppIntentsExtractedEntityTicketedTransportation *)self endDateTimeZone];
    [v3 setObject:endDateTimeZone forKeyedSubscript:@"endDateTimeZone"];
  }

  if (self->_hasDuration)
  {
    v15 = MEMORY[0x1E696AD98];
    [(CCAppIntentsExtractedEntityTicketedTransportation *)self duration];
    v16 = [v15 numberWithDouble:?];
    [v3 setObject:v16 forKeyedSubscript:@"duration"];
  }

  if (self->_eventSubType)
  {
    eventSubType = [(CCAppIntentsExtractedEntityTicketedTransportation *)self eventSubType];
    [v3 setObject:eventSubType forKeyedSubscript:@"eventSubType"];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_customerNames)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27414 repeatedStringValue:self->_customerNames];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_eventName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27415 stringValue:self->_eventName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_startLocationName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27416 stringValue:self->_startLocationName];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_startLocationAddress)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27417 stringValue:self->_startLocationAddress];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_startDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27418 stringValue:self->_startDate];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_startDateTimeZone)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27419 stringValue:self->_startDateTimeZone];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_seatNumbers)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27420 repeatedStringValue:self->_seatNumbers];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_endLocationName)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27421 stringValue:self->_endLocationName];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_endLocationAddress)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27422 stringValue:self->_endLocationAddress];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_endDate)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27423 stringValue:self->_endDate];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_endDateTimeZone)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27424 stringValue:self->_endDateTimeZone];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_hasDuration)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27425 doubleValue:self->_duration];
    blockCopy[2](blockCopy, v16);
  }

  v17 = blockCopy;
  if (self->_eventSubType)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27426 stringValue:self->_eventSubType];
    blockCopy[2](blockCopy, v18);

    v17 = blockCopy;
  }
}

- (NSString)eventSubType
{
  v2 = [(NSString *)self->_eventSubType copy];

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

- (NSArray)seatNumbers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_seatNumbers copyItems:1];

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

- (NSArray)customerNames
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_customerNames copyItems:1];

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
    v50 = 0;
    v51 = 0;
LABEL_55:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v50 = 0;
    v51 = 0;
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
            goto LABEL_55;
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
        goto LABEL_55;
      }

LABEL_21:
      switch((v22 >> 3))
      {
        case 1u:
          v25 = CCPBReaderReadStringNoCopy();
          if (!v51)
          {
            v51 = objc_opt_new();
          }

          if (!v25)
          {
            goto LABEL_44;
          }

          v26 = v51;
          goto LABEL_43;
        case 2u:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 32;
          goto LABEL_49;
        case 3u:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 40;
          goto LABEL_49;
        case 4u:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 48;
          goto LABEL_49;
        case 5u:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 56;
          goto LABEL_49;
        case 6u:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 64;
          goto LABEL_49;
        case 7u:
          v25 = CCPBReaderReadStringNoCopy();
          if (!v50)
          {
            v50 = objc_opt_new();
          }

          if (v25)
          {
            v26 = v50;
LABEL_43:
            [v26 addObject:v25];
          }

LABEL_44:

          goto LABEL_45;
        case 8u:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 80;
          goto LABEL_49;
        case 9u:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 88;
          goto LABEL_49;
        case 0xAu:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 96;
          goto LABEL_49;
        case 0xBu:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 104;
          goto LABEL_49;
        case 0xCu:
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
        case 0xDu:
          v30 = CCPBReaderReadStringNoCopy();
          v31 = 120;
LABEL_49:
          v36 = *(&self->super.super.isa + v31);
          *(&self->super.super.isa + v31) = v30;

          v10 = 0;
          break;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_45:
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

  v37 = [v51 copy];
  customerNames = self->_customerNames;
  self->_customerNames = v37;

  v39 = [v50 copy];
  seatNumbers = self->_seatNumbers;
  self->_seatNumbers = v39;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    v41 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v47 = 1;
      goto LABEL_61;
    }

    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = *&v7[*v41];
    CCInvalidBufferErrorForMessage();
    v46 = v45 = dataCopy;
    CCSetError();

    dataCopy = v45;
  }

  v47 = 0;
LABEL_61:

  return v47;
}

- (CCAppIntentsExtractedEntityTicketedTransportation)initWithCustomerNames:(id)names eventName:(id)name startLocationName:(id)locationName startLocationAddress:(id)address startDate:(id)date startDateTimeZone:(id)zone seatNumbers:(id)numbers endLocationName:(id)self0 endLocationAddress:(id)self1 endDate:(id)self2 endDateTimeZone:(id)self3 duration:(id)self4 eventSubType:(id)self5 error:(id *)self6
{
  v103 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  nameCopy = name;
  locationNameCopy = locationName;
  addressCopy = address;
  dateCopy = date;
  zoneCopy = zone;
  numbersCopy = numbers;
  endLocationNameCopy = endLocationName;
  locationAddressCopy = locationAddress;
  endDateCopy = endDate;
  timeZoneCopy = timeZone;
  durationCopy = duration;
  typeCopy = type;
  v26 = objc_opt_new();
  v27 = 0x1E696A000uLL;
  if (!namesCopy)
  {
    v29 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  v100 = 0;
  v28 = CCValidateArrayValues();
  v29 = 0;
  if (v28)
  {
    v75 = nameCopy;
    v30 = locationNameCopy;
    v31 = addressCopy;
    v32 = dateCopy;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v33 = namesCopy;
    v34 = namesCopy;
    v35 = [v34 countByEnumeratingWithState:&v96 objects:v102 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v97;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v97 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v96 + 1) + 8 * i);
          CCPBDataWriterWriteStringField();
        }

        v36 = [v34 countByEnumeratingWithState:&v96 objects:v102 count:16];
      }

      while (v36);
    }

    namesCopy = v33;
    dateCopy = v32;
    addressCopy = v31;
    locationNameCopy = v30;
    nameCopy = v75;
    v27 = 0x1E696A000;
LABEL_12:
    v76 = namesCopy;
    if (nameCopy)
    {
      v40 = *(v27 + 3776);
      objc_opt_class();
      v95 = v29;
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v42 = v29;

      if (!IsInstanceOfExpectedClass)
      {
        goto LABEL_60;
      }

      CCPBDataWriterWriteStringField();
      if (!locationNameCopy)
      {
LABEL_15:
        v29 = v42;
        if (addressCopy)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v42 = v29;
      if (!locationNameCopy)
      {
        goto LABEL_15;
      }
    }

    v47 = *(v27 + 3776);
    objc_opt_class();
    v94 = v42;
    v48 = CCValidateIsInstanceOfExpectedClass();
    v29 = v42;

    if (!v48)
    {
      goto LABEL_65;
    }

    CCPBDataWriterWriteStringField();
    if (addressCopy)
    {
LABEL_16:
      v43 = *(v27 + 3776);
      objc_opt_class();
      v93 = v29;
      v44 = CCValidateIsInstanceOfExpectedClass();
      v42 = v29;

      if (!v44)
      {
        goto LABEL_60;
      }

      CCPBDataWriterWriteStringField();
      if (!dateCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_23:
    v42 = v29;
    if (!dateCopy)
    {
LABEL_18:
      v29 = v42;
LABEL_26:
      if (zoneCopy)
      {
        v51 = *(v27 + 3776);
        objc_opt_class();
        v91 = v29;
        v52 = CCValidateIsInstanceOfExpectedClass();
        v42 = v29;

        if (!v52)
        {
          goto LABEL_60;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v42 = v29;
      }

      if (numbersCopy)
      {
        v53 = *(v27 + 3776);
        objc_opt_class();
        v90 = v42;
        v54 = CCValidateArrayValues();
        v29 = v42;

        if (!v54)
        {
          goto LABEL_65;
        }

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v55 = numbersCopy;
        v56 = [v55 countByEnumeratingWithState:&v86 objects:v101 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v87;
          do
          {
            for (j = 0; j != v57; ++j)
            {
              if (*v87 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v60 = *(*(&v86 + 1) + 8 * j);
              CCPBDataWriterWriteStringField();
            }

            v57 = [v55 countByEnumeratingWithState:&v86 objects:v101 count:16];
          }

          while (v57);
        }

        v27 = 0x1E696A000;
      }

      else
      {
        v29 = v42;
      }

      if (endLocationNameCopy)
      {
        v61 = *(v27 + 3776);
        objc_opt_class();
        v62 = CCValidateIsInstanceOfExpectedClass();
        v42 = v29;

        if (!v62)
        {
          goto LABEL_60;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v42 = v29;
      }

      if (locationAddressCopy)
      {
        v63 = *(v27 + 3776);
        objc_opt_class();
        v64 = CCValidateIsInstanceOfExpectedClass();
        v29 = v42;

        if (!v64)
        {
          goto LABEL_65;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v29 = v42;
      }

      if (endDateCopy)
      {
        v65 = *(v27 + 3776);
        objc_opt_class();
        v66 = CCValidateIsInstanceOfExpectedClass();
        v42 = v29;

        if (!v66)
        {
          goto LABEL_60;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v42 = v29;
      }

      if (!timeZoneCopy)
      {
        v29 = v42;
        goto LABEL_57;
      }

      v67 = *(v27 + 3776);
      objc_opt_class();
      v68 = CCValidateIsInstanceOfExpectedClass();
      v29 = v42;

      if (v68)
      {
        CCPBDataWriterWriteStringField();
LABEL_57:
        if (!durationCopy)
        {
          v42 = v29;
          goto LABEL_62;
        }

        objc_opt_class();
        v69 = CCValidateIsInstanceOfExpectedClass();
        v42 = v29;

        if (v69)
        {
          [durationCopy doubleValue];
          CCPBDataWriterWriteDoubleField();
LABEL_62:
          if (!typeCopy)
          {
            v29 = v42;
            goto LABEL_69;
          }

          v70 = *(v27 + 3776);
          objc_opt_class();
          v71 = CCValidateIsInstanceOfExpectedClass();
          v29 = v42;

          if (v71)
          {
            CCPBDataWriterWriteStringField();
LABEL_69:
            namesCopy = v76;
            immutableData = [v26 immutableData];
            selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:error];

            v45 = selfCopy2;
            goto LABEL_67;
          }

          goto LABEL_65;
        }

LABEL_60:
        CCSetError();
        v45 = 0;
        v29 = v42;
LABEL_66:
        selfCopy2 = self;
        namesCopy = v76;
        goto LABEL_67;
      }

LABEL_65:
      CCSetError();
      v45 = 0;
      goto LABEL_66;
    }

LABEL_24:
    v49 = *(v27 + 3776);
    objc_opt_class();
    v92 = v42;
    v50 = CCValidateIsInstanceOfExpectedClass();
    v29 = v42;

    if (!v50)
    {
      goto LABEL_65;
    }

    CCPBDataWriterWriteStringField();
    goto LABEL_26;
  }

  CCSetError();
  v45 = 0;
  selfCopy2 = self;
LABEL_67:

  v72 = *MEMORY[0x1E69E9840];
  return v45;
}

@end