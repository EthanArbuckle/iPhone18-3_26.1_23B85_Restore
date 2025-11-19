@interface CCAppIntentsExtractedEntityBusinessMembershipCard
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityBusinessMembershipCard)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityBusinessMembershipCard)initWithProvider:(id)a3 underName:(id)a4 number:(id)a5 membershipType:(id)a6 issueDate:(id)a7 expirationDate:(id)a8 issuedBy:(id)a9 eventSubType:(id)a10 error:(id *)a11;
- (NSString)eventSubType;
- (NSString)expirationDate;
- (NSString)issueDate;
- (NSString)issuedBy;
- (NSString)membershipType;
- (NSString)number;
- (NSString)provider;
- (NSString)underName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityBusinessMembershipCard

- (CCAppIntentsExtractedEntityBusinessMembershipCard)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"provider"];
    v10 = [v6 objectForKeyedSubscript:@"underName"];
    v11 = [v6 objectForKeyedSubscript:@"number"];
    [v6 objectForKeyedSubscript:@"membershipType"];
    v12 = v19 = v8;
    v13 = [v6 objectForKeyedSubscript:@"issueDate"];
    v14 = [v6 objectForKeyedSubscript:@"expirationDate"];
    [v6 objectForKeyedSubscript:@"issuedBy"];
    v15 = v20 = self;
    v16 = [v6 objectForKeyedSubscript:@"eventSubType"];
    v17 = [[CCAppIntentsExtractedEntityBusinessMembershipCard alloc] initWithProvider:v9 underName:v10 number:v11 membershipType:v12 issueDate:v13 expirationDate:v14 issuedBy:v15 eventSubType:v16 error:a4];

    self = v20;
    v8 = v19;
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
    v4 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self provider];
    [v3 setObject:v4 forKeyedSubscript:@"provider"];
  }

  if (self->_underName)
  {
    v5 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self underName];
    [v3 setObject:v5 forKeyedSubscript:@"underName"];
  }

  if (self->_number)
  {
    v6 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self number];
    [v3 setObject:v6 forKeyedSubscript:@"number"];
  }

  if (self->_membershipType)
  {
    v7 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self membershipType];
    [v3 setObject:v7 forKeyedSubscript:@"membershipType"];
  }

  if (self->_issueDate)
  {
    v8 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self issueDate];
    [v3 setObject:v8 forKeyedSubscript:@"issueDate"];
  }

  if (self->_expirationDate)
  {
    v9 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self expirationDate];
    [v3 setObject:v9 forKeyedSubscript:@"expirationDate"];
  }

  if (self->_issuedBy)
  {
    v10 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self issuedBy];
    [v3 setObject:v10 forKeyedSubscript:@"issuedBy"];
  }

  if (self->_eventSubType)
  {
    v11 = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self eventSubType];
    [v3 setObject:v11 forKeyedSubscript:@"eventSubType"];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v14 = a3;
  if (self->_provider)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27494 stringValue:self->_provider];
    v14[2](v14, v5);
  }

  if (self->_underName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27495 stringValue:self->_underName];
    v14[2](v14, v6);
  }

  if (self->_number)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27496 stringValue:self->_number];
    v14[2](v14, v7);
  }

  if (self->_membershipType)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27497 stringValue:self->_membershipType];
    v14[2](v14, v8);
  }

  if (self->_issueDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27498 stringValue:self->_issueDate];
    v14[2](v14, v9);
  }

  if (self->_expirationDate)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27499 stringValue:self->_expirationDate];
    v14[2](v14, v10);
  }

  if (self->_issuedBy)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27500 stringValue:self->_issuedBy];
    v14[2](v14, v11);
  }

  v12 = v14;
  if (self->_eventSubType)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27501 stringValue:self->_eventSubType];
    v14[2](v14, v13);

    v12 = v14;
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

- (NSString)membershipType
{
  v2 = [(NSString *)self->_membershipType copy];

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
    goto LABEL_49;
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
            goto LABEL_50;
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
        goto LABEL_50;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) > 4)
      {
        if (v23 > 6)
        {
          if (v23 == 7)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 64;
            goto LABEL_40;
          }

          if (v23 == 8)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 72;
            goto LABEL_40;
          }
        }

        else
        {
          if (v23 == 5)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 48;
            goto LABEL_40;
          }

          if (v23 == 6)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 56;
            goto LABEL_40;
          }
        }
      }

      else if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 32;
          goto LABEL_40;
        }

        if (v23 == 4)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 40;
          goto LABEL_40;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 16;
          goto LABEL_40;
        }

        if (v23 == 2)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 24;
LABEL_40:
          v26 = *(&self->super.super.isa + v25);
          *(&self->super.super.isa + v25) = v24;
          goto LABEL_41;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
LABEL_42:
        if (*&v6[*v7] < *&v6[*v8])
        {
          continue;
        }

        break;
      }

      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      v28 = *&v6[*v9];
      v10 = CCSkipFieldErrorForMessage();
LABEL_41:

      goto LABEL_42;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_51;
  }

LABEL_49:
  if (!*&v6[*v9])
  {
    v32 = 1;
    goto LABEL_53;
  }

LABEL_50:
  v29 = objc_opt_class();
  v10 = NSStringFromClass(v29);
  v30 = *&v6[*v9];
  v31 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_51:
  v32 = 0;
LABEL_53:

  return v32;
}

- (CCAppIntentsExtractedEntityBusinessMembershipCard)initWithProvider:(id)a3 underName:(id)a4 number:(id)a5 membershipType:(id)a6 issueDate:(id)a7 expirationDate:(id)a8 issuedBy:(id)a9 eventSubType:(id)a10 error:(id *)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v44 = a8;
  v43 = a9;
  v42 = a10;
  v21 = objc_opt_new();
  v22 = 0x1E696A000uLL;
  if (!v16)
  {
    v24 = 0;
    if (!v17)
    {
      goto LABEL_4;
    }

LABEL_12:
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = v24;

    if (!IsInstanceOfExpectedClass)
    {
LABEL_29:
      CCSetError();
      v34 = 0;
      v24 = v25;
      goto LABEL_30;
    }

    CCPBDataWriterWriteStringField();
    v22 = 0x1E696A000uLL;
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_14:
    v24 = v25;
    if (!v19)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  v23 = CCValidateIsInstanceOfExpectedClass();
  v24 = 0;
  if (!v23)
  {
    goto LABEL_23;
  }

  CCPBDataWriterWriteStringField();
  if (v17)
  {
    goto LABEL_12;
  }

LABEL_4:
  v25 = v24;
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_5:
  objc_opt_class();
  v26 = CCValidateIsInstanceOfExpectedClass();
  v24 = v25;

  if (!v26)
  {
    goto LABEL_23;
  }

  CCPBDataWriterWriteStringField();
  v22 = 0x1E696A000uLL;
  if (!v19)
  {
LABEL_7:
    v25 = v24;
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_15:
  objc_opt_class();
  v29 = CCValidateIsInstanceOfExpectedClass();
  v25 = v24;

  if (!v29)
  {
    goto LABEL_29;
  }

  CCPBDataWriterWriteStringField();
  v22 = 0x1E696A000uLL;
  if (v20)
  {
LABEL_8:
    objc_opt_class();
    v27 = CCValidateIsInstanceOfExpectedClass();
    v24 = v25;

    if (!v27)
    {
      goto LABEL_23;
    }

    CCPBDataWriterWriteStringField();
    v22 = 0x1E696A000;
    if (!v44)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v24 = v25;
  if (!v44)
  {
LABEL_10:
    v25 = v24;
    goto LABEL_20;
  }

LABEL_18:
  v30 = *(v22 + 3776);
  objc_opt_class();
  v31 = CCValidateIsInstanceOfExpectedClass();
  v25 = v24;

  if (!v31)
  {
    goto LABEL_29;
  }

  CCPBDataWriterWriteStringField();
  v22 = 0x1E696A000uLL;
LABEL_20:
  if (v43)
  {
    v32 = *(v22 + 3776);
    objc_opt_class();
    v33 = CCValidateIsInstanceOfExpectedClass();
    v24 = v25;

    if (v33)
    {
      CCPBDataWriterWriteStringField();
      v22 = 0x1E696A000;
      goto LABEL_25;
    }

LABEL_23:
    CCSetError();
    v34 = 0;
LABEL_30:
    v38 = self;
    goto LABEL_31;
  }

  v24 = v25;
LABEL_25:
  if (v42)
  {
    v35 = *(v22 + 3776);
    objc_opt_class();
    v36 = CCValidateIsInstanceOfExpectedClass();
    v25 = v24;

    if (v36)
    {
      CCPBDataWriterWriteStringField();
      v24 = v25;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_28:
  v37 = [v21 immutableData];
  v34 = [v41 initWithData:v37 error:a11];

  v38 = v34;
LABEL_31:

  return v34;
}

@end