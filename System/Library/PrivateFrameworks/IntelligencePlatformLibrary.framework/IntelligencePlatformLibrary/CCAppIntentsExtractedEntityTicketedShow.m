@interface CCAppIntentsExtractedEntityTicketedShow
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityTicketedShow)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityTicketedShow)initWithReservationID:(id)a3 eventName:(id)a4 provider:(id)a5 customerNames:(id)a6 startLocationName:(id)a7 startLocationAddress:(id)a8 seatNumbers:(id)a9 startDate:(id)a10 startDateTimeZone:(id)a11 endDate:(id)a12 endDateTimeZone:(id)a13 duration:(id)a14 ticketType:(id)a15 link:(id)a16 cost:(id)a17 costCode:(id)a18 eventSubType:(id)a19 error:(id *)a20;
- (NSArray)customerNames;
- (NSArray)seatNumbers;
- (NSString)cost;
- (NSString)costCode;
- (NSString)endDate;
- (NSString)endDateTimeZone;
- (NSString)eventName;
- (NSString)eventSubType;
- (NSString)link;
- (NSString)provider;
- (NSString)reservationID;
- (NSString)startDate;
- (NSString)startDateTimeZone;
- (NSString)startLocationAddress;
- (NSString)startLocationName;
- (NSString)ticketType;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityTicketedShow

- (CCAppIntentsExtractedEntityTicketedShow)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v29 = [v6 objectForKeyedSubscript:@"reservationID"];
    v28 = [v6 objectForKeyedSubscript:@"eventName"];
    v27 = [v6 objectForKeyedSubscript:@"provider"];
    v21 = [v6 objectForKeyedSubscript:@"customerNames"];
    v20 = [v6 objectForKeyedSubscript:@"startLocationName"];
    v19 = [v6 objectForKeyedSubscript:@"startLocationAddress"];
    v26 = [v6 objectForKeyedSubscript:@"seatNumbers"];
    v25 = [v6 objectForKeyedSubscript:@"startDate"];
    v24 = [v6 objectForKeyedSubscript:@"startDateTimeZone"];
    v17 = [v6 objectForKeyedSubscript:@"endDate"];
    v16 = [v6 objectForKeyedSubscript:@"endDateTimeZone"];
    v18 = [v6 objectForKeyedSubscript:@"duration"];
    v15 = [v6 objectForKeyedSubscript:@"ticketType"];
    [v6 objectForKeyedSubscript:@"link"];
    v9 = v23 = v8;
    v10 = [v6 objectForKeyedSubscript:@"cost"];
    [v6 objectForKeyedSubscript:@"costCode"];
    v11 = v22 = self;
    v12 = [v6 objectForKeyedSubscript:@"eventSubType"];
    v13 = [[CCAppIntentsExtractedEntityTicketedShow alloc] initWithReservationID:v29 eventName:v28 provider:v27 customerNames:v21 startLocationName:v20 startLocationAddress:v19 seatNumbers:v26 startDate:v25 startDateTimeZone:v24 endDate:v17 endDateTimeZone:v16 duration:v18 ticketType:v15 link:v9 cost:v10 costCode:v11 eventSubType:v12 error:a4];

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
  if (self->_reservationID)
  {
    v4 = [(CCAppIntentsExtractedEntityTicketedShow *)self reservationID];
    [v3 setObject:v4 forKeyedSubscript:@"reservationID"];
  }

  if (self->_eventName)
  {
    v5 = [(CCAppIntentsExtractedEntityTicketedShow *)self eventName];
    [v3 setObject:v5 forKeyedSubscript:@"eventName"];
  }

  if (self->_provider)
  {
    v6 = [(CCAppIntentsExtractedEntityTicketedShow *)self provider];
    [v3 setObject:v6 forKeyedSubscript:@"provider"];
  }

  if (self->_customerNames)
  {
    v7 = [(CCAppIntentsExtractedEntityTicketedShow *)self customerNames];
    [v3 setObject:v7 forKeyedSubscript:@"customerNames"];
  }

  if (self->_startLocationName)
  {
    v8 = [(CCAppIntentsExtractedEntityTicketedShow *)self startLocationName];
    [v3 setObject:v8 forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    v9 = [(CCAppIntentsExtractedEntityTicketedShow *)self startLocationAddress];
    [v3 setObject:v9 forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_seatNumbers)
  {
    v10 = [(CCAppIntentsExtractedEntityTicketedShow *)self seatNumbers];
    [v3 setObject:v10 forKeyedSubscript:@"seatNumbers"];
  }

  if (self->_startDate)
  {
    v11 = [(CCAppIntentsExtractedEntityTicketedShow *)self startDate];
    [v3 setObject:v11 forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    v12 = [(CCAppIntentsExtractedEntityTicketedShow *)self startDateTimeZone];
    [v3 setObject:v12 forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_endDate)
  {
    v13 = [(CCAppIntentsExtractedEntityTicketedShow *)self endDate];
    [v3 setObject:v13 forKeyedSubscript:@"endDate"];
  }

  if (self->_endDateTimeZone)
  {
    v14 = [(CCAppIntentsExtractedEntityTicketedShow *)self endDateTimeZone];
    [v3 setObject:v14 forKeyedSubscript:@"endDateTimeZone"];
  }

  if (self->_hasDuration)
  {
    v15 = MEMORY[0x1E696AD98];
    [(CCAppIntentsExtractedEntityTicketedShow *)self duration];
    v16 = [v15 numberWithDouble:?];
    [v3 setObject:v16 forKeyedSubscript:@"duration"];
  }

  if (self->_ticketType)
  {
    v17 = [(CCAppIntentsExtractedEntityTicketedShow *)self ticketType];
    [v3 setObject:v17 forKeyedSubscript:@"ticketType"];
  }

  if (self->_link)
  {
    v18 = [(CCAppIntentsExtractedEntityTicketedShow *)self link];
    [v3 setObject:v18 forKeyedSubscript:@"link"];
  }

  if (self->_cost)
  {
    v19 = [(CCAppIntentsExtractedEntityTicketedShow *)self cost];
    [v3 setObject:v19 forKeyedSubscript:@"cost"];
  }

  if (self->_costCode)
  {
    v20 = [(CCAppIntentsExtractedEntityTicketedShow *)self costCode];
    [v3 setObject:v20 forKeyedSubscript:@"costCode"];
  }

  if (self->_eventSubType)
  {
    v21 = [(CCAppIntentsExtractedEntityTicketedShow *)self eventSubType];
    [v3 setObject:v21 forKeyedSubscript:@"eventSubType"];
  }

  v22 = [v3 copy];

  return v22;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v23 = a3;
  if (self->_reservationID)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27428 stringValue:self->_reservationID];
    v23[2](v23, v5);
  }

  if (self->_eventName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27429 stringValue:self->_eventName];
    v23[2](v23, v6);
  }

  if (self->_provider)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27430 stringValue:self->_provider];
    v23[2](v23, v7);
  }

  if (self->_customerNames)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27431 repeatedStringValue:self->_customerNames];
    v23[2](v23, v8);
  }

  if (self->_startLocationName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27432 stringValue:self->_startLocationName];
    v23[2](v23, v9);
  }

  if (self->_startLocationAddress)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27433 stringValue:self->_startLocationAddress];
    v23[2](v23, v10);
  }

  if (self->_seatNumbers)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27434 repeatedStringValue:self->_seatNumbers];
    v23[2](v23, v11);
  }

  if (self->_startDate)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27435 stringValue:self->_startDate];
    v23[2](v23, v12);
  }

  if (self->_startDateTimeZone)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27436 stringValue:self->_startDateTimeZone];
    v23[2](v23, v13);
  }

  if (self->_endDate)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27437 stringValue:self->_endDate];
    v23[2](v23, v14);
  }

  if (self->_endDateTimeZone)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27438 stringValue:self->_endDateTimeZone];
    v23[2](v23, v15);
  }

  if (self->_hasDuration)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27439 doubleValue:self->_duration];
    v23[2](v23, v16);
  }

  if (self->_ticketType)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27440 stringValue:self->_ticketType];
    v23[2](v23, v17);
  }

  if (self->_link)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27441 stringValue:self->_link];
    v23[2](v23, v18);
  }

  if (self->_cost)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27442 stringValue:self->_cost];
    v23[2](v23, v19);
  }

  if (self->_costCode)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27443 stringValue:self->_costCode];
    v23[2](v23, v20);
  }

  v21 = v23;
  if (self->_eventSubType)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27444 stringValue:self->_eventSubType];
    v23[2](v23, v22);

    v21 = v23;
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

- (NSString)link
{
  v2 = [(NSString *)self->_link copy];

  return v2;
}

- (NSString)ticketType
{
  v2 = [(NSString *)self->_ticketType copy];

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

- (NSArray)seatNumbers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_seatNumbers copyItems:1];

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
    v50 = 0;
    v51 = 0;
    goto LABEL_59;
  }

  v10 = 0;
  v50 = 0;
  v51 = 0;
  v11 = MEMORY[0x1E6993AA8];
  v12 = MEMORY[0x1E6993AA0];
LABEL_3:
  if (*&v7[*v11])
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 == 0;
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
        v23 = *v11;
        if (*&v7[v23])
        {
          goto LABEL_59;
        }

LABEL_21:
        switch((v22 >> 3))
        {
          case 1u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 24;
            goto LABEL_53;
          case 2u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 32;
            goto LABEL_53;
          case 3u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 40;
            goto LABEL_53;
          case 4u:
            v30 = CCPBReaderReadStringNoCopy();
            if (!v51)
            {
              v51 = objc_opt_new();
            }

            if (!v30)
            {
              goto LABEL_48;
            }

            v31 = v51;
            goto LABEL_47;
          case 5u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 56;
            goto LABEL_53;
          case 6u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 64;
            goto LABEL_53;
          case 7u:
            v30 = CCPBReaderReadStringNoCopy();
            if (!v50)
            {
              v50 = objc_opt_new();
            }

            if (!v30)
            {
              goto LABEL_48;
            }

            v31 = v50;
LABEL_47:
            [v31 addObject:v30];
LABEL_48:

            goto LABEL_49;
          case 8u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 80;
            goto LABEL_53;
          case 9u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 88;
            goto LABEL_53;
          case 0xAu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 96;
            goto LABEL_53;
          case 0xBu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 104;
            goto LABEL_53;
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
            goto LABEL_54;
          case 0xDu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 120;
            goto LABEL_53;
          case 0xEu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 128;
            goto LABEL_53;
          case 0xFu:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 136;
            goto LABEL_53;
          case 0x10u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 144;
            goto LABEL_53;
          case 0x11u:
            v25 = CCPBReaderReadStringNoCopy();
            v26 = 152;
LABEL_53:
            v36 = *(&self->super.super.isa + v26);
            *(&self->super.super.isa + v26) = v25;

            v10 = 0;
            goto LABEL_54;
          default:
            if (CCPBReaderSkipValueWithTag())
            {
LABEL_49:
              v10 = 0;
            }

            else
            {
              v32 = objc_opt_class();
              NSStringFromClass(v32);
              v49 = a4;
              v34 = v33 = v6;
              v35 = *&v7[*v11];
              v10 = CCSkipFieldErrorForMessage();

              v6 = v33;
              a4 = v49;
            }

LABEL_54:
            if (*&v7[*v8] >= *&v7[*v9])
            {
              goto LABEL_60;
            }

            goto LABEL_3;
        }
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

    if (!v24)
    {
      goto LABEL_21;
    }

LABEL_59:
    v10 = 0;
  }

LABEL_60:
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
      goto LABEL_65;
    }

    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = *&v7[*v41];
    CCInvalidBufferErrorForMessage();
    v46 = v45 = v6;
    CCSetError();

    v6 = v45;
  }

  v47 = 0;
LABEL_65:

  return v47;
}

- (CCAppIntentsExtractedEntityTicketedShow)initWithReservationID:(id)a3 eventName:(id)a4 provider:(id)a5 customerNames:(id)a6 startLocationName:(id)a7 startLocationAddress:(id)a8 seatNumbers:(id)a9 startDate:(id)a10 startDateTimeZone:(id)a11 endDate:(id)a12 endDateTimeZone:(id)a13 duration:(id)a14 ticketType:(id)a15 link:(id)a16 cost:(id)a17 costCode:(id)a18 eventSubType:(id)a19 error:(id *)a20
{
  v111 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v93 = a8;
  v92 = a9;
  v91 = a10;
  v90 = a11;
  v89 = a12;
  v88 = a13;
  v87 = a14;
  v86 = a15;
  v85 = a16;
  v84 = a17;
  v83 = a18;
  v82 = a19;
  v30 = objc_opt_new();
  v31 = 0x1E696A000uLL;
  if (!v25)
  {
    v33 = 0;
LABEL_5:
    v80 = v25;
    if (v26)
    {
      objc_opt_class();
      v107 = v33;
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
    v106 = v35;
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
      v105 = v33;
      v36 = CCValidateArrayValues();
      v35 = v33;

      if (!v36)
      {
        goto LABEL_76;
      }

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v37 = v28;
      v38 = [v37 countByEnumeratingWithState:&v101 objects:v110 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v102;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v102 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v101 + 1) + 8 * i);
            CCPBDataWriterWriteStringField();
          }

          v39 = [v37 countByEnumeratingWithState:&v101 objects:v110 count:16];
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
LABEL_26:
      if (v93)
      {
        v48 = *(v31 + 3776);
        objc_opt_class();
        v99 = v33;
        v49 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v49)
        {
          goto LABEL_76;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v33;
      }

      if (v92)
      {
        v50 = *(v31 + 3776);
        objc_opt_class();
        v98 = v35;
        v51 = CCValidateArrayValues();
        v33 = v35;

        if (!v51)
        {
          goto LABEL_81;
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v52 = v92;
        v53 = [v52 countByEnumeratingWithState:&v94 objects:v109 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v95;
          do
          {
            for (j = 0; j != v54; ++j)
            {
              if (*v95 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v57 = *(*(&v94 + 1) + 8 * j);
              CCPBDataWriterWriteStringField();
            }

            v54 = [v52 countByEnumeratingWithState:&v94 objects:v109 count:16];
          }

          while (v54);
        }

        v31 = 0x1E696A000;
      }

      else
      {
        v33 = v35;
      }

      if (v91)
      {
        v58 = *(v31 + 3776);
        objc_opt_class();
        v59 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v59)
        {
          goto LABEL_76;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v33;
      }

      if (v90)
      {
        v60 = *(v31 + 3776);
        objc_opt_class();
        v61 = CCValidateIsInstanceOfExpectedClass();
        v33 = v35;

        if (!v61)
        {
          goto LABEL_81;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v33 = v35;
      }

      if (v89)
      {
        v62 = *(v31 + 3776);
        objc_opt_class();
        v63 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v63)
        {
          goto LABEL_76;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v33;
      }

      if (v88)
      {
        v64 = *(v31 + 3776);
        objc_opt_class();
        v65 = CCValidateIsInstanceOfExpectedClass();
        v33 = v35;

        if (!v65)
        {
          goto LABEL_81;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v33 = v35;
      }

      if (v87)
      {
        objc_opt_class();
        v66 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v66)
        {
          goto LABEL_76;
        }

        [v87 doubleValue];
        CCPBDataWriterWriteDoubleField();
      }

      else
      {
        v35 = v33;
      }

      if (v86)
      {
        v67 = *(v31 + 3776);
        objc_opt_class();
        v68 = CCValidateIsInstanceOfExpectedClass();
        v33 = v35;

        if (!v68)
        {
          goto LABEL_81;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v33 = v35;
      }

      if (v85)
      {
        v69 = *(v31 + 3776);
        objc_opt_class();
        v70 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (!v70)
        {
          goto LABEL_76;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v35 = v33;
      }

      if (!v84)
      {
        v33 = v35;
        goto LABEL_73;
      }

      v71 = *(v31 + 3776);
      objc_opt_class();
      v72 = CCValidateIsInstanceOfExpectedClass();
      v33 = v35;

      if (v72)
      {
        CCPBDataWriterWriteStringField();
LABEL_73:
        if (!v83)
        {
          v35 = v33;
          goto LABEL_78;
        }

        v73 = *(v31 + 3776);
        objc_opt_class();
        v74 = CCValidateIsInstanceOfExpectedClass();
        v35 = v33;

        if (v74)
        {
          CCPBDataWriterWriteStringField();
LABEL_78:
          if (!v82)
          {
            v33 = v35;
            goto LABEL_85;
          }

          v75 = *(v31 + 3776);
          objc_opt_class();
          v76 = CCValidateIsInstanceOfExpectedClass();
          v33 = v35;

          if (v76)
          {
            CCPBDataWriterWriteStringField();
LABEL_85:
            v25 = v80;
            v79 = [v30 immutableData];
            v44 = [(CCItemMessage *)self initWithData:v79 error:a20];

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
        v25 = v80;
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
    v100 = v35;
    v47 = CCValidateIsInstanceOfExpectedClass();
    v33 = v35;

    if (!v47)
    {
      goto LABEL_81;
    }

    CCPBDataWriterWriteStringField();
    goto LABEL_26;
  }

  objc_opt_class();
  v108 = 0;
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

  v77 = *MEMORY[0x1E69E9840];
  return v43;
}

@end