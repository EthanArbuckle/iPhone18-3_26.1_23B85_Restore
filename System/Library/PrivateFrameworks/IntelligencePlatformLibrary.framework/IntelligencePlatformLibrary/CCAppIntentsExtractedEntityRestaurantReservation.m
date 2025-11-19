@interface CCAppIntentsExtractedEntityRestaurantReservation
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityRestaurantReservation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityRestaurantReservation)initWithProvider:(id)a3 reservationID:(id)a4 customerNames:(id)a5 restaurantPartySize:(id)a6 startLocationName:(id)a7 startLocationAddress:(id)a8 startLocationTelephone:(id)a9 startDate:(id)a10 startDateTimeZone:(id)a11 restaurantMealType:(id)a12 eventStatus:(id)a13 error:(id *)a14;
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
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityRestaurantReservation

- (CCAppIntentsExtractedEntityRestaurantReservation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v22 = [v6 objectForKeyedSubscript:@"provider"];
    v19 = [v6 objectForKeyedSubscript:@"reservationID"];
    v9 = [v6 objectForKeyedSubscript:@"customerNames"];
    v10 = [v6 objectForKeyedSubscript:@"restaurantPartySize"];
    v20 = [v6 objectForKeyedSubscript:@"startLocationName"];
    v18 = [v6 objectForKeyedSubscript:@"startLocationAddress"];
    v17 = [v6 objectForKeyedSubscript:@"startLocationTelephone"];
    [v6 objectForKeyedSubscript:@"startDate"];
    v16 = v21 = self;
    v11 = [v6 objectForKeyedSubscript:@"startDateTimeZone"];
    v12 = [v6 objectForKeyedSubscript:@"restaurantMealType"];
    v13 = [v6 objectForKeyedSubscript:@"eventStatus"];
    v14 = [[CCAppIntentsExtractedEntityRestaurantReservation alloc] initWithProvider:v22 reservationID:v19 customerNames:v9 restaurantPartySize:v10 startLocationName:v20 startLocationAddress:v18 startLocationTelephone:v17 startDate:v16 startDateTimeZone:v11 restaurantMealType:v12 eventStatus:v13 error:a4];

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
    v4 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self provider];
    [v3 setObject:v4 forKeyedSubscript:@"provider"];
  }

  if (self->_reservationID)
  {
    v5 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self reservationID];
    [v3 setObject:v5 forKeyedSubscript:@"reservationID"];
  }

  if (self->_customerNames)
  {
    v6 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self customerNames];
    [v3 setObject:v6 forKeyedSubscript:@"customerNames"];
  }

  if (self->_hasRestaurantPartySize)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCAppIntentsExtractedEntityRestaurantReservation restaurantPartySize](self, "restaurantPartySize")}];
    [v3 setObject:v7 forKeyedSubscript:@"restaurantPartySize"];
  }

  if (self->_startLocationName)
  {
    v8 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startLocationName];
    [v3 setObject:v8 forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    v9 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startLocationAddress];
    [v3 setObject:v9 forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_startLocationTelephone)
  {
    v10 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startLocationTelephone];
    [v3 setObject:v10 forKeyedSubscript:@"startLocationTelephone"];
  }

  if (self->_startDate)
  {
    v11 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startDate];
    [v3 setObject:v11 forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    v12 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self startDateTimeZone];
    [v3 setObject:v12 forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_restaurantMealType)
  {
    v13 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self restaurantMealType];
    [v3 setObject:v13 forKeyedSubscript:@"restaurantMealType"];
  }

  if (self->_eventStatus)
  {
    v14 = [(CCAppIntentsExtractedEntityRestaurantReservation *)self eventStatus];
    [v3 setObject:v14 forKeyedSubscript:@"eventStatus"];
  }

  v15 = [v3 copy];

  return v15;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v17 = a3;
  if (self->_provider)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27382 stringValue:self->_provider];
    v17[2](v17, v5);
  }

  if (self->_reservationID)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27383 stringValue:self->_reservationID];
    v17[2](v17, v6);
  }

  if (self->_customerNames)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27384 repeatedStringValue:self->_customerNames];
    v17[2](v17, v7);
  }

  if (self->_hasRestaurantPartySize)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27385 uint32Value:self->_restaurantPartySize];
    v17[2](v17, v8);
  }

  if (self->_startLocationName)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27386 stringValue:self->_startLocationName];
    v17[2](v17, v9);
  }

  if (self->_startLocationAddress)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27387 stringValue:self->_startLocationAddress];
    v17[2](v17, v10);
  }

  if (self->_startLocationTelephone)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27388 stringValue:self->_startLocationTelephone];
    v17[2](v17, v11);
  }

  if (self->_startDate)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27389 stringValue:self->_startDate];
    v17[2](v17, v12);
  }

  if (self->_startDateTimeZone)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27390 stringValue:self->_startDateTimeZone];
    v17[2](v17, v13);
  }

  if (self->_restaurantMealType)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27391 stringValue:self->_restaurantMealType];
    v17[2](v17, v14);
  }

  v15 = v17;
  if (self->_eventStatus)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27392 stringValue:self->_eventStatus];
    v17[2](v17, v16);

    v15 = v17;
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

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
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
      v50 = a4;
      v38 = v37 = v6;
      v39 = *&v7[*v11];
      v10 = CCSkipFieldErrorForMessage();

      v6 = v37;
      a4 = v50;
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
    v47 = v46 = v6;
    CCSetError();

    v6 = v46;
  }

  v48 = 0;
LABEL_73:

  return v48;
}

- (CCAppIntentsExtractedEntityRestaurantReservation)initWithProvider:(id)a3 reservationID:(id)a4 customerNames:(id)a5 restaurantPartySize:(id)a6 startLocationName:(id)a7 startLocationAddress:(id)a8 startLocationTelephone:(id)a9 startDate:(id)a10 startDateTimeZone:(id)a11 restaurantMealType:(id)a12 eventStatus:(id)a13 error:(id *)a14
{
  v75 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v66 = a7;
  v65 = a8;
  v64 = a9;
  v63 = a10;
  v62 = a11;
  v61 = a12;
  v60 = a13;
  v23 = objc_opt_new();
  v24 = 0x1E696A000uLL;
  if (v19)
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
    if (!v20)
    {
LABEL_4:
      v27 = v26;
      if (v21)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v26 = 0;
    if (!v20)
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
  if (v21)
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

    v29 = v19;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v30 = v21;
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

    v19 = v29;
    v24 = 0x1E696A000;
    if (!v22)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_18:
  v26 = v27;
  if (!v22)
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

  [v22 unsignedIntValue];
  CCPBDataWriterWriteUint32Field();
LABEL_21:
  if (v66)
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

  if (v65)
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

  if (v64)
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

  if (!v63)
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
    if (!v62)
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
      if (!v61)
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
        if (!v60)
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
          v50 = v63;
          v58 = [v23 immutableData];
          v51 = [(CCItemMessage *)self initWithData:v58 error:a14];

          v49 = v51;
          goto LABEL_52;
        }

        goto LABEL_50;
      }

LABEL_45:
      CCSetError();
      v49 = 0;
      v26 = v27;
LABEL_51:
      v51 = self;
      v50 = v63;
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
  v50 = v63;
  v51 = self;
LABEL_52:

  v56 = *MEMORY[0x1E69E9840];
  return v49;
}

@end