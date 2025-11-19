@interface CCAppIntentsExtractedEntityTicketedTransportation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityTicketedTransportation)initWithCustomerNames:(id)a3 eventName:(id)a4 startLocationName:(id)a5 startLocationAddress:(id)a6 startDate:(id)a7 startDateTimeZone:(id)a8 seatNumbers:(id)a9 endLocationName:(id)a10 endLocationAddress:(id)a11 endDate:(id)a12 endDateTimeZone:(id)a13 duration:(id)a14 eventSubType:(id)a15 error:(id *)a16;
- (CCAppIntentsExtractedEntityTicketedTransportation)initWithJSONDictionary:(id)a3 error:(id *)a4;
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
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityTicketedTransportation

- (CCAppIntentsExtractedEntityTicketedTransportation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v24 = [v6 objectForKeyedSubscript:@"customerNames"];
    v23 = [v6 objectForKeyedSubscript:@"eventName"];
    v18 = [v6 objectForKeyedSubscript:@"startLocationName"];
    v21 = [v6 objectForKeyedSubscript:@"startLocationAddress"];
    v20 = [v6 objectForKeyedSubscript:@"startDate"];
    v19 = [v6 objectForKeyedSubscript:@"startDateTimeZone"];
    v17 = [v6 objectForKeyedSubscript:@"seatNumbers"];
    [v6 objectForKeyedSubscript:@"endLocationName"];
    v16 = v22 = self;
    v15 = [v6 objectForKeyedSubscript:@"endLocationAddress"];
    v9 = [v6 objectForKeyedSubscript:@"endDate"];
    v10 = [v6 objectForKeyedSubscript:@"endDateTimeZone"];
    v11 = [v6 objectForKeyedSubscript:@"duration"];
    v12 = [v6 objectForKeyedSubscript:@"eventSubType"];
    v13 = [[CCAppIntentsExtractedEntityTicketedTransportation alloc] initWithCustomerNames:v24 eventName:v23 startLocationName:v18 startLocationAddress:v21 startDate:v20 startDateTimeZone:v19 seatNumbers:v17 endLocationName:v16 endLocationAddress:v15 endDate:v9 endDateTimeZone:v10 duration:v11 eventSubType:v12 error:a4];

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
    v4 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self customerNames];
    [v3 setObject:v4 forKeyedSubscript:@"customerNames"];
  }

  if (self->_eventName)
  {
    v5 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self eventName];
    [v3 setObject:v5 forKeyedSubscript:@"eventName"];
  }

  if (self->_startLocationName)
  {
    v6 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self startLocationName];
    [v3 setObject:v6 forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    v7 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self startLocationAddress];
    [v3 setObject:v7 forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_startDate)
  {
    v8 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self startDate];
    [v3 setObject:v8 forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    v9 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self startDateTimeZone];
    [v3 setObject:v9 forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_seatNumbers)
  {
    v10 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self seatNumbers];
    [v3 setObject:v10 forKeyedSubscript:@"seatNumbers"];
  }

  if (self->_endLocationName)
  {
    v11 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self endLocationName];
    [v3 setObject:v11 forKeyedSubscript:@"endLocationName"];
  }

  if (self->_endLocationAddress)
  {
    v12 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self endLocationAddress];
    [v3 setObject:v12 forKeyedSubscript:@"endLocationAddress"];
  }

  if (self->_endDate)
  {
    v13 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self endDate];
    [v3 setObject:v13 forKeyedSubscript:@"endDate"];
  }

  if (self->_endDateTimeZone)
  {
    v14 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self endDateTimeZone];
    [v3 setObject:v14 forKeyedSubscript:@"endDateTimeZone"];
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
    v17 = [(CCAppIntentsExtractedEntityTicketedTransportation *)self eventSubType];
    [v3 setObject:v17 forKeyedSubscript:@"eventSubType"];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v19 = a3;
  if (self->_customerNames)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27414 repeatedStringValue:self->_customerNames];
    v19[2](v19, v5);
  }

  if (self->_eventName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27415 stringValue:self->_eventName];
    v19[2](v19, v6);
  }

  if (self->_startLocationName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27416 stringValue:self->_startLocationName];
    v19[2](v19, v7);
  }

  if (self->_startLocationAddress)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27417 stringValue:self->_startLocationAddress];
    v19[2](v19, v8);
  }

  if (self->_startDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27418 stringValue:self->_startDate];
    v19[2](v19, v9);
  }

  if (self->_startDateTimeZone)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27419 stringValue:self->_startDateTimeZone];
    v19[2](v19, v10);
  }

  if (self->_seatNumbers)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27420 repeatedStringValue:self->_seatNumbers];
    v19[2](v19, v11);
  }

  if (self->_endLocationName)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27421 stringValue:self->_endLocationName];
    v19[2](v19, v12);
  }

  if (self->_endLocationAddress)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27422 stringValue:self->_endLocationAddress];
    v19[2](v19, v13);
  }

  if (self->_endDate)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27423 stringValue:self->_endDate];
    v19[2](v19, v14);
  }

  if (self->_endDateTimeZone)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27424 stringValue:self->_endDateTimeZone];
    v19[2](v19, v15);
  }

  if (self->_hasDuration)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27425 doubleValue:self->_duration];
    v19[2](v19, v16);
  }

  v17 = v19;
  if (self->_eventSubType)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27426 stringValue:self->_eventSubType];
    v19[2](v19, v18);

    v17 = v19;
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
            v49 = a4;
            v34 = v33 = v6;
            v35 = *&v7[*v11];
            v10 = CCSkipFieldErrorForMessage();

            v6 = v33;
            a4 = v49;
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
    v46 = v45 = v6;
    CCSetError();

    v6 = v45;
  }

  v47 = 0;
LABEL_61:

  return v47;
}

- (CCAppIntentsExtractedEntityTicketedTransportation)initWithCustomerNames:(id)a3 eventName:(id)a4 startLocationName:(id)a5 startLocationAddress:(id)a6 startDate:(id)a7 startDateTimeZone:(id)a8 seatNumbers:(id)a9 endLocationName:(id)a10 endLocationAddress:(id)a11 endDate:(id)a12 endDateTimeZone:(id)a13 duration:(id)a14 eventSubType:(id)a15 error:(id *)a16
{
  v103 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v85 = a8;
  v84 = a9;
  v83 = a10;
  v82 = a11;
  v81 = a12;
  v80 = a13;
  v79 = a14;
  v78 = a15;
  v26 = objc_opt_new();
  v27 = 0x1E696A000uLL;
  if (!v21)
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
    v75 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v33 = v21;
    v34 = v21;
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

    v21 = v33;
    v25 = v32;
    v24 = v31;
    v23 = v30;
    v22 = v75;
    v27 = 0x1E696A000;
LABEL_12:
    v76 = v21;
    if (v22)
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
      if (!v23)
      {
LABEL_15:
        v29 = v42;
        if (v24)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v42 = v29;
      if (!v23)
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
    if (v24)
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
      if (!v25)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_23:
    v42 = v29;
    if (!v25)
    {
LABEL_18:
      v29 = v42;
LABEL_26:
      if (v85)
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

      if (v84)
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
        v55 = v84;
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

      if (v83)
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

      if (v82)
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

      if (v81)
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

      if (!v80)
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
        if (!v79)
        {
          v42 = v29;
          goto LABEL_62;
        }

        objc_opt_class();
        v69 = CCValidateIsInstanceOfExpectedClass();
        v42 = v29;

        if (v69)
        {
          [v79 doubleValue];
          CCPBDataWriterWriteDoubleField();
LABEL_62:
          if (!v78)
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
            v21 = v76;
            v74 = [v26 immutableData];
            v46 = [(CCItemMessage *)self initWithData:v74 error:a16];

            v45 = v46;
            goto LABEL_67;
          }

          goto LABEL_65;
        }

LABEL_60:
        CCSetError();
        v45 = 0;
        v29 = v42;
LABEL_66:
        v46 = self;
        v21 = v76;
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
  v46 = self;
LABEL_67:

  v72 = *MEMORY[0x1E69E9840];
  return v45;
}

@end