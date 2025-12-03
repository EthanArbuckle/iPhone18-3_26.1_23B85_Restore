@interface CCAppIntentsExtractedEntityMedicalInsuranceCard
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityMedicalInsuranceCard)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppIntentsExtractedEntityMedicalInsuranceCard)initWithProvider:(id)provider underName:(id)name number:(id)number groupNumber:(id)groupNumber issueDate:(id)date expirationDate:(id)expirationDate issuedBy:(id)by description:(id)self0 eventSubType:(id)self1 error:(id *)self2;
- (NSString)description;
- (NSString)eventSubType;
- (NSString)expirationDate;
- (NSString)groupNumber;
- (NSString)issueDate;
- (NSString)issuedBy;
- (NSString)number;
- (NSString)provider;
- (NSString)underName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityMedicalInsuranceCard

- (CCAppIntentsExtractedEntityMedicalInsuranceCard)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v18 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"underName"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"groupNumber"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"issueDate"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
    [dictionaryCopy objectForKeyedSubscript:@"issuedBy"];
    v17 = v20 = self;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"eventSubType"];
    v15 = [[CCAppIntentsExtractedEntityMedicalInsuranceCard alloc] initWithProvider:v18 underName:v9 number:v19 groupNumber:v10 issueDate:v11 expirationDate:v12 issuedBy:v17 description:v13 eventSubType:v14 error:error];

    self = v20;
  }

  else
  {
    CCSetError();
    v15 = 0;
  }

  return v15;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_provider)
  {
    provider = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self provider];
    [v3 setObject:provider forKeyedSubscript:@"provider"];
  }

  if (self->_underName)
  {
    underName = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self underName];
    [v3 setObject:underName forKeyedSubscript:@"underName"];
  }

  if (self->_number)
  {
    number = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self number];
    [v3 setObject:number forKeyedSubscript:@"number"];
  }

  if (self->_groupNumber)
  {
    groupNumber = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self groupNumber];
    [v3 setObject:groupNumber forKeyedSubscript:@"groupNumber"];
  }

  if (self->_issueDate)
  {
    issueDate = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self issueDate];
    [v3 setObject:issueDate forKeyedSubscript:@"issueDate"];
  }

  if (self->_expirationDate)
  {
    expirationDate = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self expirationDate];
    [v3 setObject:expirationDate forKeyedSubscript:@"expirationDate"];
  }

  if (self->_issuedBy)
  {
    issuedBy = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self issuedBy];
    [v3 setObject:issuedBy forKeyedSubscript:@"issuedBy"];
  }

  if (self->_description)
  {
    v11 = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self description];
    [v3 setObject:v11 forKeyedSubscript:@"description"];
  }

  if (self->_eventSubType)
  {
    eventSubType = [(CCAppIntentsExtractedEntityMedicalInsuranceCard *)self eventSubType];
    [v3 setObject:eventSubType forKeyedSubscript:@"eventSubType"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_provider)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27484 stringValue:self->_provider];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_underName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27485 stringValue:self->_underName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_number)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27486 stringValue:self->_number];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_groupNumber)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27487 stringValue:self->_groupNumber];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_issueDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27488 stringValue:self->_issueDate];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_expirationDate)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27489 stringValue:self->_expirationDate];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_issuedBy)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27490 stringValue:self->_issuedBy];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_description)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27491 stringValue:self->_description];
    blockCopy[2](blockCopy, v12);
  }

  v13 = blockCopy;
  if (self->_eventSubType)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27492 stringValue:self->_eventSubType];
    blockCopy[2](blockCopy, v14);

    v13 = blockCopy;
  }
}

- (NSString)eventSubType
{
  v2 = [(NSString *)self->_eventSubType copy];

  return v2;
}

- (NSString)description
{
  v2 = [(NSString *)self->_description copy];

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

- (NSString)groupNumber
{
  v2 = [(NSString *)self->_groupNumber copy];

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
    goto LABEL_51;
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
            goto LABEL_52;
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
        goto LABEL_52;
      }

LABEL_21:
      v23 = v21 >> 3;
      if ((v21 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 32;
            goto LABEL_42;
          }

          if (v23 == 4)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 40;
            goto LABEL_42;
          }
        }

        else
        {
          if (v23 == 1)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 16;
            goto LABEL_42;
          }

          if (v23 == 2)
          {
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 24;
            goto LABEL_42;
          }
        }
      }

      else if (v23 <= 6)
      {
        if (v23 == 5)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 48;
          goto LABEL_42;
        }

        if (v23 == 6)
        {
          v24 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v25 = 56;
          goto LABEL_42;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 64;
            goto LABEL_42;
          case 8:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 72;
            goto LABEL_42;
          case 9:
            v24 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v25 = 80;
LABEL_42:
            v26 = *(&self->super.super.isa + v25);
            *(&self->super.super.isa + v25) = v24;
            goto LABEL_43;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        v10 = 0;
LABEL_44:
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
LABEL_43:

      goto LABEL_44;
    }

    break;
  }

  if (v10)
  {
    CCSetError();
    goto LABEL_53;
  }

LABEL_51:
  if (!*&v6[*v9])
  {
    v32 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v29 = objc_opt_class();
  v10 = NSStringFromClass(v29);
  v30 = *&v6[*v9];
  v31 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_53:
  v32 = 0;
LABEL_55:

  return v32;
}

- (CCAppIntentsExtractedEntityMedicalInsuranceCard)initWithProvider:(id)provider underName:(id)name number:(id)number groupNumber:(id)groupNumber issueDate:(id)date expirationDate:(id)expirationDate issuedBy:(id)by description:(id)self0 eventSubType:(id)self1 error:(id *)self2
{
  providerCopy = provider;
  nameCopy = name;
  numberCopy = number;
  groupNumberCopy = groupNumber;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  byCopy = by;
  descriptionCopy = description;
  typeCopy = type;
  v22 = objc_opt_new();
  v23 = 0x1E696A000uLL;
  if (providerCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_33;
    }

    CCPBDataWriterWriteStringField();
    if (!nameCopy)
    {
LABEL_4:
      v26 = v25;
      if (numberCopy)
      {
        goto LABEL_5;
      }

LABEL_13:
      v25 = v26;
      if (!groupNumberCopy)
      {
        goto LABEL_7;
      }

LABEL_14:
      objc_opt_class();
      v31 = CCValidateIsInstanceOfExpectedClass();
      v26 = v25;

      if (!v31)
      {
        goto LABEL_28;
      }

      CCPBDataWriterWriteStringField();
      v23 = 0x1E696A000;
      if (dateCopy)
      {
        goto LABEL_8;
      }

LABEL_16:
      v25 = v26;
      goto LABEL_17;
    }
  }

  else
  {
    v25 = 0;
    if (!nameCopy)
    {
      goto LABEL_4;
    }
  }

  objc_opt_class();
  v30 = CCValidateIsInstanceOfExpectedClass();
  v26 = v25;

  if (!v30)
  {
    goto LABEL_28;
  }

  CCPBDataWriterWriteStringField();
  v23 = 0x1E696A000uLL;
  if (!numberCopy)
  {
    goto LABEL_13;
  }

LABEL_5:
  objc_opt_class();
  v27 = CCValidateIsInstanceOfExpectedClass();
  v25 = v26;

  if (!v27)
  {
    goto LABEL_33;
  }

  CCPBDataWriterWriteStringField();
  v23 = 0x1E696A000uLL;
  if (groupNumberCopy)
  {
    goto LABEL_14;
  }

LABEL_7:
  v26 = v25;
  if (!dateCopy)
  {
    goto LABEL_16;
  }

LABEL_8:
  v28 = *(v23 + 3776);
  objc_opt_class();
  v29 = CCValidateIsInstanceOfExpectedClass();
  v25 = v26;

  if (!v29)
  {
    goto LABEL_33;
  }

  CCPBDataWriterWriteStringField();
LABEL_17:
  if (expirationDateCopy)
  {
    objc_opt_class();
    v32 = CCValidateIsInstanceOfExpectedClass();
    v26 = v25;

    if (!v32)
    {
      goto LABEL_28;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v26 = v25;
  }

  if (!byCopy)
  {
    v25 = v26;
    goto LABEL_25;
  }

  objc_opt_class();
  v33 = CCValidateIsInstanceOfExpectedClass();
  v25 = v26;

  if (!v33)
  {
LABEL_33:
    CCSetError();
    v35 = 0;
    goto LABEL_34;
  }

  CCPBDataWriterWriteStringField();
LABEL_25:
  if (!descriptionCopy)
  {
    v26 = v25;
    goto LABEL_30;
  }

  objc_opt_class();
  v34 = CCValidateIsInstanceOfExpectedClass();
  v26 = v25;

  if (v34)
  {
    CCPBDataWriterWriteStringField();
LABEL_30:
    if (!typeCopy)
    {
      v25 = v26;
      goto LABEL_37;
    }

    objc_opt_class();
    v36 = CCValidateIsInstanceOfExpectedClass();
    v25 = v26;

    if (v36)
    {
      CCPBDataWriterWriteStringField();
LABEL_37:
      selfCopy = self;
      immutableData = [v22 immutableData];
      selfCopy2 = [(CCItemMessage *)selfCopy initWithData:immutableData error:error];

      v35 = selfCopy2;
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_28:
  CCSetError();
  v35 = 0;
  v25 = v26;
LABEL_34:
  selfCopy2 = self;
LABEL_35:

  return v35;
}

@end