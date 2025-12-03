@interface CCAppIntentsExtractedEntityBusinessMembershipCard
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityBusinessMembershipCard)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppIntentsExtractedEntityBusinessMembershipCard)initWithProvider:(id)provider underName:(id)name number:(id)number membershipType:(id)type issueDate:(id)date expirationDate:(id)expirationDate issuedBy:(id)by eventSubType:(id)self0 error:(id *)self1;
- (NSString)eventSubType;
- (NSString)expirationDate;
- (NSString)issueDate;
- (NSString)issuedBy;
- (NSString)membershipType;
- (NSString)number;
- (NSString)provider;
- (NSString)underName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityBusinessMembershipCard

- (CCAppIntentsExtractedEntityBusinessMembershipCard)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"underName"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    [dictionaryCopy objectForKeyedSubscript:@"membershipType"];
    v12 = v19 = v8;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"issueDate"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
    [dictionaryCopy objectForKeyedSubscript:@"issuedBy"];
    v15 = v20 = self;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"eventSubType"];
    v17 = [[CCAppIntentsExtractedEntityBusinessMembershipCard alloc] initWithProvider:v9 underName:v10 number:v11 membershipType:v12 issueDate:v13 expirationDate:v14 issuedBy:v15 eventSubType:v16 error:error];

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
    provider = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self provider];
    [v3 setObject:provider forKeyedSubscript:@"provider"];
  }

  if (self->_underName)
  {
    underName = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self underName];
    [v3 setObject:underName forKeyedSubscript:@"underName"];
  }

  if (self->_number)
  {
    number = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self number];
    [v3 setObject:number forKeyedSubscript:@"number"];
  }

  if (self->_membershipType)
  {
    membershipType = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self membershipType];
    [v3 setObject:membershipType forKeyedSubscript:@"membershipType"];
  }

  if (self->_issueDate)
  {
    issueDate = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self issueDate];
    [v3 setObject:issueDate forKeyedSubscript:@"issueDate"];
  }

  if (self->_expirationDate)
  {
    expirationDate = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self expirationDate];
    [v3 setObject:expirationDate forKeyedSubscript:@"expirationDate"];
  }

  if (self->_issuedBy)
  {
    issuedBy = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self issuedBy];
    [v3 setObject:issuedBy forKeyedSubscript:@"issuedBy"];
  }

  if (self->_eventSubType)
  {
    eventSubType = [(CCAppIntentsExtractedEntityBusinessMembershipCard *)self eventSubType];
    [v3 setObject:eventSubType forKeyedSubscript:@"eventSubType"];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_provider)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27494 stringValue:self->_provider];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_underName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27495 stringValue:self->_underName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_number)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27496 stringValue:self->_number];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_membershipType)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27497 stringValue:self->_membershipType];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_issueDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27498 stringValue:self->_issueDate];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_expirationDate)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27499 stringValue:self->_expirationDate];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_issuedBy)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27500 stringValue:self->_issuedBy];
    blockCopy[2](blockCopy, v11);
  }

  v12 = blockCopy;
  if (self->_eventSubType)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27501 stringValue:self->_eventSubType];
    blockCopy[2](blockCopy, v13);

    v12 = blockCopy;
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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
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

- (CCAppIntentsExtractedEntityBusinessMembershipCard)initWithProvider:(id)provider underName:(id)name number:(id)number membershipType:(id)type issueDate:(id)date expirationDate:(id)expirationDate issuedBy:(id)by eventSubType:(id)self0 error:(id *)self1
{
  providerCopy = provider;
  nameCopy = name;
  numberCopy = number;
  typeCopy = type;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  byCopy = by;
  subTypeCopy = subType;
  v21 = objc_opt_new();
  v22 = 0x1E696A000uLL;
  if (!providerCopy)
  {
    v24 = 0;
    if (!nameCopy)
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
    if (numberCopy)
    {
      goto LABEL_5;
    }

LABEL_14:
    v24 = v25;
    if (!typeCopy)
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
  if (nameCopy)
  {
    goto LABEL_12;
  }

LABEL_4:
  v25 = v24;
  if (!numberCopy)
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
  if (!typeCopy)
  {
LABEL_7:
    v25 = v24;
    if (dateCopy)
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
  if (dateCopy)
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
    if (!expirationDateCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v24 = v25;
  if (!expirationDateCopy)
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
  if (byCopy)
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
    selfCopy = self;
    goto LABEL_31;
  }

  v24 = v25;
LABEL_25:
  if (subTypeCopy)
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
  immutableData = [v21 immutableData];
  v34 = [v41 initWithData:immutableData error:error];

  selfCopy = v34;
LABEL_31:

  return v34;
}

@end