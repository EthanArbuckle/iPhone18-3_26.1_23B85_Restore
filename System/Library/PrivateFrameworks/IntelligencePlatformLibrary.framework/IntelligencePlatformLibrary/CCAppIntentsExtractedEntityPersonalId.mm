@interface CCAppIntentsExtractedEntityPersonalId
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityPersonalId)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCAppIntentsExtractedEntityPersonalId)initWithProvider:(id)provider underName:(id)name number:(id)number issueDate:(id)date expirationDate:(id)expirationDate issuedBy:(id)by region:(id)region country:(id)self0 birthday:(id)self1 placeOfBirth:(id)self2 address:(id)self3 category:(id)self4 restrictions:(id)self5 eventSubType:(id)self6 error:(id *)self7;
- (NSString)address;
- (NSString)birthday;
- (NSString)category;
- (NSString)country;
- (NSString)eventSubType;
- (NSString)expirationDate;
- (NSString)issueDate;
- (NSString)issuedBy;
- (NSString)number;
- (NSString)placeOfBirth;
- (NSString)provider;
- (NSString)region;
- (NSString)restrictions;
- (NSString)underName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityPersonalId

- (CCAppIntentsExtractedEntityPersonalId)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v26 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    v25 = [dictionaryCopy objectForKeyedSubscript:@"underName"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"issueDate"];
    v22 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"issuedBy"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"region"];
    [dictionaryCopy objectForKeyedSubscript:@"country"];
    v17 = v24 = v8;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"birthday"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"placeOfBirth"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"address"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"category"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"restrictions"];
    [dictionaryCopy objectForKeyedSubscript:@"eventSubType"];
    v12 = v20 = self;
    v13 = [[CCAppIntentsExtractedEntityPersonalId alloc] initWithProvider:v26 underName:v25 number:v23 issueDate:v19 expirationDate:v22 issuedBy:v21 region:v18 country:v17 birthday:v16 placeOfBirth:v15 address:v9 category:v10 restrictions:v11 eventSubType:v12 error:error];

    self = v20;
    v8 = v24;
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
  if (self->_provider)
  {
    provider = [(CCAppIntentsExtractedEntityPersonalId *)self provider];
    [v3 setObject:provider forKeyedSubscript:@"provider"];
  }

  if (self->_underName)
  {
    underName = [(CCAppIntentsExtractedEntityPersonalId *)self underName];
    [v3 setObject:underName forKeyedSubscript:@"underName"];
  }

  if (self->_number)
  {
    number = [(CCAppIntentsExtractedEntityPersonalId *)self number];
    [v3 setObject:number forKeyedSubscript:@"number"];
  }

  if (self->_issueDate)
  {
    issueDate = [(CCAppIntentsExtractedEntityPersonalId *)self issueDate];
    [v3 setObject:issueDate forKeyedSubscript:@"issueDate"];
  }

  if (self->_expirationDate)
  {
    expirationDate = [(CCAppIntentsExtractedEntityPersonalId *)self expirationDate];
    [v3 setObject:expirationDate forKeyedSubscript:@"expirationDate"];
  }

  if (self->_issuedBy)
  {
    issuedBy = [(CCAppIntentsExtractedEntityPersonalId *)self issuedBy];
    [v3 setObject:issuedBy forKeyedSubscript:@"issuedBy"];
  }

  if (self->_region)
  {
    region = [(CCAppIntentsExtractedEntityPersonalId *)self region];
    [v3 setObject:region forKeyedSubscript:@"region"];
  }

  if (self->_country)
  {
    country = [(CCAppIntentsExtractedEntityPersonalId *)self country];
    [v3 setObject:country forKeyedSubscript:@"country"];
  }

  if (self->_birthday)
  {
    birthday = [(CCAppIntentsExtractedEntityPersonalId *)self birthday];
    [v3 setObject:birthday forKeyedSubscript:@"birthday"];
  }

  if (self->_placeOfBirth)
  {
    placeOfBirth = [(CCAppIntentsExtractedEntityPersonalId *)self placeOfBirth];
    [v3 setObject:placeOfBirth forKeyedSubscript:@"placeOfBirth"];
  }

  if (self->_address)
  {
    address = [(CCAppIntentsExtractedEntityPersonalId *)self address];
    [v3 setObject:address forKeyedSubscript:@"address"];
  }

  if (self->_category)
  {
    category = [(CCAppIntentsExtractedEntityPersonalId *)self category];
    [v3 setObject:category forKeyedSubscript:@"category"];
  }

  if (self->_restrictions)
  {
    restrictions = [(CCAppIntentsExtractedEntityPersonalId *)self restrictions];
    [v3 setObject:restrictions forKeyedSubscript:@"restrictions"];
  }

  if (self->_eventSubType)
  {
    eventSubType = [(CCAppIntentsExtractedEntityPersonalId *)self eventSubType];
    [v3 setObject:eventSubType forKeyedSubscript:@"eventSubType"];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_provider)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27469 stringValue:self->_provider];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_underName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27470 stringValue:self->_underName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_number)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27471 stringValue:self->_number];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_issueDate)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27472 stringValue:self->_issueDate];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_expirationDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27473 stringValue:self->_expirationDate];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_issuedBy)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27474 stringValue:self->_issuedBy];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_region)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27475 stringValue:self->_region];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_country)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27476 stringValue:self->_country];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_birthday)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27477 stringValue:self->_birthday];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_placeOfBirth)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27478 stringValue:self->_placeOfBirth];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_address)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27479 stringValue:self->_address];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_category)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27480 stringValue:self->_category];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_restrictions)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27481 stringValue:self->_restrictions];
    blockCopy[2](blockCopy, v17);
  }

  v18 = blockCopy;
  if (self->_eventSubType)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27482 stringValue:self->_eventSubType];
    blockCopy[2](blockCopy, v19);

    v18 = blockCopy;
  }
}

- (NSString)eventSubType
{
  v2 = [(NSString *)self->_eventSubType copy];

  return v2;
}

- (NSString)restrictions
{
  v2 = [(NSString *)self->_restrictions copy];

  return v2;
}

- (NSString)category
{
  v2 = [(NSString *)self->_category copy];

  return v2;
}

- (NSString)address
{
  v2 = [(NSString *)self->_address copy];

  return v2;
}

- (NSString)placeOfBirth
{
  v2 = [(NSString *)self->_placeOfBirth copy];

  return v2;
}

- (NSString)birthday
{
  v2 = [(NSString *)self->_birthday copy];

  return v2;
}

- (NSString)country
{
  v2 = [(NSString *)self->_country copy];

  return v2;
}

- (NSString)region
{
  v2 = [(NSString *)self->_region copy];

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

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] < *&v6[*MEMORY[0x1E6993AB0]])
  {
    v10 = 0;
    v11 = MEMORY[0x1E6993AA0];
LABEL_3:
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
            goto LABEL_46;
          }

LABEL_21:
          switch((v21 >> 3))
          {
            case 1u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 16;
              goto LABEL_36;
            case 2u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 24;
              goto LABEL_36;
            case 3u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 32;
              goto LABEL_36;
            case 4u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 40;
              goto LABEL_36;
            case 5u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 48;
              goto LABEL_36;
            case 6u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 56;
              goto LABEL_36;
            case 7u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 64;
              goto LABEL_36;
            case 8u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 72;
              goto LABEL_36;
            case 9u:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 80;
              goto LABEL_36;
            case 0xAu:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 88;
              goto LABEL_36;
            case 0xBu:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 96;
              goto LABEL_36;
            case 0xCu:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 104;
              goto LABEL_36;
            case 0xDu:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 112;
              goto LABEL_36;
            case 0xEu:
              v23 = CCPBReaderReadStringNoCopy();
              v10 = 0;
              v24 = 120;
LABEL_36:
              v25 = *(&self->super.super.isa + v24);
              *(&self->super.super.isa + v24) = v23;
              goto LABEL_37;
            default:
              if (CCPBReaderSkipValueWithTag())
              {
                v10 = 0;
              }

              else
              {
                v26 = objc_opt_class();
                v25 = NSStringFromClass(v26);
                v27 = *&v6[*v9];
                v10 = CCSkipFieldErrorForMessage();
LABEL_37:
              }

              if (*&v6[*v7] >= *&v6[*v8])
              {
                goto LABEL_43;
              }

              goto LABEL_3;
          }
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

      if (!v22)
      {
        goto LABEL_21;
      }

LABEL_46:
      v28 = objc_opt_class();
      v10 = NSStringFromClass(v28);
      v29 = *&v6[*v9];
      v30 = CCInvalidBufferErrorForMessage();
      CCSetError();

      goto LABEL_47;
    }

LABEL_43:
    if (v10)
    {
      CCSetError();
LABEL_47:

      v31 = 0;
      goto LABEL_49;
    }
  }

  if (*&v6[*v9])
  {
    goto LABEL_46;
  }

  v31 = 1;
LABEL_49:

  return v31;
}

- (CCAppIntentsExtractedEntityPersonalId)initWithProvider:(id)provider underName:(id)name number:(id)number issueDate:(id)date expirationDate:(id)expirationDate issuedBy:(id)by region:(id)region country:(id)self0 birthday:(id)self1 placeOfBirth:(id)self2 address:(id)self3 category:(id)self4 restrictions:(id)self5 eventSubType:(id)self6 error:(id *)self7
{
  providerCopy = provider;
  nameCopy = name;
  numberCopy = number;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  byCopy = by;
  regionCopy = region;
  countryCopy = country;
  birthdayCopy = birthday;
  birthCopy = birth;
  addressCopy = address;
  categoryCopy = category;
  restrictionsCopy = restrictions;
  typeCopy = type;
  v66 = objc_opt_new();
  if (!providerCopy)
  {
    v28 = 0;
LABEL_5:
    if (nameCopy)
    {
      v29 = providerCopy;
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v31 = v28;

      if (!IsInstanceOfExpectedClass)
      {
        CCSetError();
        v32 = 0;
        v28 = v31;
        providerCopy = v29;
        v33 = byCopy;
        v34 = expirationDateCopy;
        v35 = dateCopy;
LABEL_21:
        selfCopy6 = self;
        goto LABEL_22;
      }

      CCPBDataWriterWriteStringField();
      providerCopy = v29;
    }

    else
    {
      v31 = v28;
    }

    v55 = providerCopy;
    v33 = byCopy;
    if (numberCopy)
    {
      objc_opt_class();
      v37 = CCValidateIsInstanceOfExpectedClass();
      v28 = v31;

      v34 = expirationDateCopy;
      v38 = v66;
      if (!v37)
      {
        CCSetError();
        v32 = 0;
        providerCopy = v55;
        v35 = dateCopy;
        selfCopy6 = self;
        goto LABEL_39;
      }

      CCPBDataWriterWriteStringField();
      v35 = dateCopy;
      if (!dateCopy)
      {
LABEL_13:
        v39 = v28;
        if (v34)
        {
LABEL_14:
          objc_opt_class();
          v40 = CCValidateIsInstanceOfExpectedClass();
          v28 = v39;

          if (!v40)
          {
            goto LABEL_37;
          }

          CCPBDataWriterWriteStringField();
          if (!v33)
          {
LABEL_16:
            v39 = v28;
            if (regionCopy)
            {
              goto LABEL_17;
            }

            goto LABEL_29;
          }

          goto LABEL_27;
        }

LABEL_26:
        v28 = v39;
        if (!v33)
        {
          goto LABEL_16;
        }

LABEL_27:
        objc_opt_class();
        v43 = CCValidateIsInstanceOfExpectedClass();
        v39 = v28;

        if (v43)
        {
          CCPBDataWriterWriteStringField();
          if (regionCopy)
          {
LABEL_17:
            objc_opt_class();
            v41 = CCValidateIsInstanceOfExpectedClass();
            v28 = v39;

            if (v41)
            {
              CCPBDataWriterWriteStringField();
              if (!countryCopy)
              {
LABEL_19:
                v39 = v28;
                goto LABEL_32;
              }

              goto LABEL_30;
            }

LABEL_37:
            CCSetError();
            v32 = 0;
            goto LABEL_38;
          }

LABEL_29:
          v28 = v39;
          if (!countryCopy)
          {
            goto LABEL_19;
          }

LABEL_30:
          objc_opt_class();
          v44 = CCValidateIsInstanceOfExpectedClass();
          v39 = v28;

          if (v44)
          {
            CCPBDataWriterWriteStringField();
LABEL_32:
            if (birthdayCopy)
            {
              objc_opt_class();
              v45 = CCValidateIsInstanceOfExpectedClass();
              v28 = v39;

              if (!v45)
              {
                goto LABEL_56;
              }

              CCPBDataWriterWriteStringField();
            }

            else
            {
              v28 = v39;
            }

            if (birthCopy)
            {
              objc_opt_class();
              v47 = CCValidateIsInstanceOfExpectedClass();
              v48 = v28;

              if (!v47)
              {
                goto LABEL_61;
              }

              CCPBDataWriterWriteStringField();
            }

            else
            {
              v48 = v28;
            }

            if (addressCopy)
            {
              objc_opt_class();
              v49 = CCValidateIsInstanceOfExpectedClass();
              v28 = v48;

              if (!v49)
              {
                goto LABEL_56;
              }

              CCPBDataWriterWriteStringField();
            }

            else
            {
              v28 = v48;
            }

            if (!categoryCopy)
            {
              v48 = v28;
              goto LABEL_53;
            }

            objc_opt_class();
            v50 = CCValidateIsInstanceOfExpectedClass();
            v48 = v28;

            if (v50)
            {
              CCPBDataWriterWriteStringField();
LABEL_53:
              if (!restrictionsCopy)
              {
                v28 = v48;
                goto LABEL_58;
              }

              objc_opt_class();
              v51 = CCValidateIsInstanceOfExpectedClass();
              v28 = v48;

              if (v51)
              {
                CCPBDataWriterWriteStringField();
LABEL_58:
                selfCopy4 = self;
                if (!typeCopy)
                {
                  v38 = v66;
                  goto LABEL_64;
                }

                objc_opt_class();
                v53 = CCValidateIsInstanceOfExpectedClass();
                v48 = v28;

                if (v53)
                {
                  v38 = v66;
                  CCPBDataWriterWriteStringField();
                  v28 = v48;
                  selfCopy4 = self;
LABEL_64:
                  immutableData = [v38 immutableData];
                  selfCopy6 = [(CCItemMessage *)selfCopy4 initWithData:immutableData error:error];

                  v32 = selfCopy6;
                  providerCopy = v56;
                  goto LABEL_39;
                }

                goto LABEL_61;
              }

LABEL_56:
              CCSetError();
              v32 = 0;
LABEL_62:
              providerCopy = v55;
              goto LABEL_21;
            }

LABEL_61:
            CCSetError();
            v32 = 0;
            v28 = v48;
            goto LABEL_62;
          }
        }

LABEL_35:
        CCSetError();
        v32 = 0;
        v28 = v39;
LABEL_38:
        providerCopy = v55;
        selfCopy6 = self;
        goto LABEL_39;
      }
    }

    else
    {
      v28 = v31;
      v34 = expirationDateCopy;
      v35 = dateCopy;
      v38 = v66;
      if (!dateCopy)
      {
        goto LABEL_13;
      }
    }

    objc_opt_class();
    v42 = CCValidateIsInstanceOfExpectedClass();
    v39 = v28;

    if (!v42)
    {
      goto LABEL_35;
    }

    CCPBDataWriterWriteStringField();
    if (v34)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  objc_opt_class();
  v27 = CCValidateIsInstanceOfExpectedClass();
  v28 = 0;
  if (v27)
  {
    CCPBDataWriterWriteStringField();
    goto LABEL_5;
  }

  CCSetError();
  v32 = 0;
  v33 = byCopy;
  v34 = expirationDateCopy;
  v35 = dateCopy;
  selfCopy6 = self;
LABEL_22:
  v38 = v66;
LABEL_39:

  return v32;
}

@end