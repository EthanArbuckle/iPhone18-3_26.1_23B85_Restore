@interface CCAppIntentsExtractedEntityTransitCard
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityTransitCard)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityTransitCard)initWithProvider:(id)a3 underName:(id)a4 number:(id)a5 issueDate:(id)a6 expirationDate:(id)a7 issuedBy:(id)a8 eventSubType:(id)a9 error:(id *)a10;
- (NSString)eventSubType;
- (NSString)expirationDate;
- (NSString)issueDate;
- (NSString)issuedBy;
- (NSString)number;
- (NSString)provider;
- (NSString)underName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityTransitCard

- (CCAppIntentsExtractedEntityTransitCard)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v19 = [v6 objectForKeyedSubscript:@"provider"];
    v9 = [v6 objectForKeyedSubscript:@"underName"];
    v10 = [v6 objectForKeyedSubscript:@"number"];
    v11 = [v6 objectForKeyedSubscript:@"issueDate"];
    v12 = [v6 objectForKeyedSubscript:@"expirationDate"];
    v13 = [v6 objectForKeyedSubscript:@"issuedBy"];
    [v6 objectForKeyedSubscript:@"eventSubType"];
    v15 = v14 = self;
    v20 = v8;
    v16 = v10;
    v17 = [[CCAppIntentsExtractedEntityTransitCard alloc] initWithProvider:v19 underName:v9 number:v10 issueDate:v11 expirationDate:v12 issuedBy:v13 eventSubType:v15 error:a4];

    self = v14;
    v8 = v20;
  }

  else
  {
    CCSetError();
    v17 = 0;
  }

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_provider)
  {
    v4 = [(CCAppIntentsExtractedEntityTransitCard *)self provider];
    [v3 setObject:v4 forKeyedSubscript:@"provider"];
  }

  if (self->_underName)
  {
    v5 = [(CCAppIntentsExtractedEntityTransitCard *)self underName];
    [v3 setObject:v5 forKeyedSubscript:@"underName"];
  }

  if (self->_number)
  {
    v6 = [(CCAppIntentsExtractedEntityTransitCard *)self number];
    [v3 setObject:v6 forKeyedSubscript:@"number"];
  }

  if (self->_issueDate)
  {
    v7 = [(CCAppIntentsExtractedEntityTransitCard *)self issueDate];
    [v3 setObject:v7 forKeyedSubscript:@"issueDate"];
  }

  if (self->_expirationDate)
  {
    v8 = [(CCAppIntentsExtractedEntityTransitCard *)self expirationDate];
    [v3 setObject:v8 forKeyedSubscript:@"expirationDate"];
  }

  if (self->_issuedBy)
  {
    v9 = [(CCAppIntentsExtractedEntityTransitCard *)self issuedBy];
    [v3 setObject:v9 forKeyedSubscript:@"issuedBy"];
  }

  if (self->_eventSubType)
  {
    v10 = [(CCAppIntentsExtractedEntityTransitCard *)self eventSubType];
    [v3 setObject:v10 forKeyedSubscript:@"eventSubType"];
  }

  v11 = [v3 copy];

  return v11;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v13 = a3;
  if (self->_provider)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27503 stringValue:self->_provider];
    v13[2](v13, v5);
  }

  if (self->_underName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27504 stringValue:self->_underName];
    v13[2](v13, v6);
  }

  if (self->_number)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27505 stringValue:self->_number];
    v13[2](v13, v7);
  }

  if (self->_issueDate)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27506 stringValue:self->_issueDate];
    v13[2](v13, v8);
  }

  if (self->_expirationDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27507 stringValue:self->_expirationDate];
    v13[2](v13, v9);
  }

  if (self->_issuedBy)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27508 stringValue:self->_issuedBy];
    v13[2](v13, v10);
  }

  v11 = v13;
  if (self->_eventSubType)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27509 stringValue:self->_eventSubType];
    v13[2](v13, v12);

    v11 = v13;
  }
}

- (NSString)eventSubType
{
  v2 = [(NSString *)self->_eventSubType copy];

  return v2;
}

- (NSString)issuedBy
{
  v2 = [(NSString *)self->_issuedBy copy];

  return v2;
}

- (NSString)expirationDate
{
  v2 = [(NSString *)self->_expirationDate copy];

  return v2;
}

- (NSString)issueDate
{
  v2 = [(NSString *)self->_issueDate copy];

  return v2;
}

- (NSString)number
{
  v2 = [(NSString *)self->_number copy];

  return v2;
}

- (NSString)underName
{
  v2 = [(NSString *)self->_underName copy];

  return v2;
}

- (NSString)provider
{
  v2 = [(NSString *)self->_provider copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_46;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v7;
        v17 = *&v6[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v6[*v8])
        {
          break;
        }

        v19 = *(*&v6[*v11] + v17);
        *&v6[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v21 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_47;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v22 = *&v6[*v9];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_47;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 3)
      {
        switch(v23)
        {
          case 1:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 16;
            goto LABEL_39;
          case 2:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 24;
            goto LABEL_39;
          case 3:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 32;
            goto LABEL_39;
        }
      }

      else if (v23 > 5)
      {
        if (v23 == 6)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 56;
          goto LABEL_39;
        }

        if (v23 == 7)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 64;
          goto LABEL_39;
        }
      }

      else
      {
        if (v23 == 4)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 40;
          goto LABEL_39;
        }

        if (v23 == 5)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 48;
LABEL_39:
          v26 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;
          goto LABEL_40;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
        goto LABEL_41;
      }

      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      v28 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_40:

LABEL_41:
      if (*&v6[*v7] < *&v6[*v8])
      {
        continue;
      }
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_48;
  }

LABEL_46:
  if (!*&v6[*v9])
  {
    v32 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v29 = objc_opt_class();
  v10 = NSStringFromClass(v29);
  v30 = *&v6[*v9];
  v31 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_48:
  v32 = 0;
LABEL_50:

  return v32;
}

- (CCAppIntentsExtractedEntityTransitCard)initWithProvider:(id)a3 underName:(id)a4 number:(id)a5 issueDate:(id)a6 expirationDate:(id)a7 issuedBy:(id)a8 eventSubType:(id)a9 error:(id *)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v40 = a8;
  v39 = a9;
  v20 = objc_opt_new();
  v21 = 0x1E696A000uLL;
  if (v15)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v23 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_25;
    }

    CCPBDataWriterWriteStringField();
    if (!v16)
    {
LABEL_4:
      v24 = v23;
      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v23 = 0;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v27 = CCValidateIsInstanceOfExpectedClass();
  v24 = v23;

  if (!v27)
  {
    goto LABEL_20;
  }

  CCPBDataWriterWriteStringField();
  v21 = 0x1E696A000uLL;
  if (v17)
  {
LABEL_5:
    objc_opt_class();
    v25 = CCValidateIsInstanceOfExpectedClass();
    v23 = v24;

    if (v25)
    {
      CCPBDataWriterWriteStringField();
      v21 = 0x1E696A000uLL;
      if (!v18)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_25:
    CCSetError();
    v31 = 0;
    goto LABEL_26;
  }

LABEL_13:
  v23 = v24;
  if (!v18)
  {
LABEL_7:
    v24 = v23;
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_16:
    v23 = v24;
    goto LABEL_17;
  }

LABEL_14:
  objc_opt_class();
  v28 = CCValidateIsInstanceOfExpectedClass();
  v24 = v23;

  if (!v28)
  {
    goto LABEL_20;
  }

  CCPBDataWriterWriteStringField();
  v21 = 0x1E696A000uLL;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_8:
  objc_opt_class();
  v26 = CCValidateIsInstanceOfExpectedClass();
  v23 = v24;

  if (!v26)
  {
    goto LABEL_25;
  }

  CCPBDataWriterWriteStringField();
  v21 = 0x1E696A000;
LABEL_17:
  if (!v40)
  {
    v24 = v23;
    goto LABEL_22;
  }

  v29 = *(v21 + 3776);
  objc_opt_class();
  v30 = CCValidateIsInstanceOfExpectedClass();
  v24 = v23;

  if (v30)
  {
    CCPBDataWriterWriteStringField();
    v21 = 0x1E696A000;
LABEL_22:
    if (!v39)
    {
      v23 = v24;
      goto LABEL_29;
    }

    v32 = *(v21 + 3776);
    objc_opt_class();
    v33 = CCValidateIsInstanceOfExpectedClass();
    v23 = v24;

    if (v33)
    {
      CCPBDataWriterWriteStringField();
LABEL_29:
      v36 = [v20 immutableData];
      v34 = [v38 initWithData:v36 error:a10];

      v31 = v34;
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_20:
  CCSetError();
  v31 = 0;
  v23 = v24;
LABEL_26:
  v34 = self;
LABEL_27:

  return v31;
}

@end