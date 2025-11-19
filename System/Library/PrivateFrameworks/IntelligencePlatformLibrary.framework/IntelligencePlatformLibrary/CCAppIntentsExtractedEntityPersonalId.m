@interface CCAppIntentsExtractedEntityPersonalId
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityPersonalId)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCAppIntentsExtractedEntityPersonalId)initWithProvider:(id)a3 underName:(id)a4 number:(id)a5 issueDate:(id)a6 expirationDate:(id)a7 issuedBy:(id)a8 region:(id)a9 country:(id)a10 birthday:(id)a11 placeOfBirth:(id)a12 address:(id)a13 category:(id)a14 restrictions:(id)a15 eventSubType:(id)a16 error:(id *)a17;
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
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCAppIntentsExtractedEntityPersonalId

- (CCAppIntentsExtractedEntityPersonalId)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v26 = [v6 objectForKeyedSubscript:@"provider"];
    v25 = [v6 objectForKeyedSubscript:@"underName"];
    v23 = [v6 objectForKeyedSubscript:@"number"];
    v19 = [v6 objectForKeyedSubscript:@"issueDate"];
    v22 = [v6 objectForKeyedSubscript:@"expirationDate"];
    v21 = [v6 objectForKeyedSubscript:@"issuedBy"];
    v18 = [v6 objectForKeyedSubscript:@"region"];
    [v6 objectForKeyedSubscript:@"country"];
    v17 = v24 = v8;
    v16 = [v6 objectForKeyedSubscript:@"birthday"];
    v15 = [v6 objectForKeyedSubscript:@"placeOfBirth"];
    v9 = [v6 objectForKeyedSubscript:@"address"];
    v10 = [v6 objectForKeyedSubscript:@"category"];
    v11 = [v6 objectForKeyedSubscript:@"restrictions"];
    [v6 objectForKeyedSubscript:@"eventSubType"];
    v12 = v20 = self;
    v13 = [[CCAppIntentsExtractedEntityPersonalId alloc] initWithProvider:v26 underName:v25 number:v23 issueDate:v19 expirationDate:v22 issuedBy:v21 region:v18 country:v17 birthday:v16 placeOfBirth:v15 address:v9 category:v10 restrictions:v11 eventSubType:v12 error:a4];

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
    v4 = [(CCAppIntentsExtractedEntityPersonalId *)self provider];
    [v3 setObject:v4 forKeyedSubscript:@"provider"];
  }

  if (self->_underName)
  {
    v5 = [(CCAppIntentsExtractedEntityPersonalId *)self underName];
    [v3 setObject:v5 forKeyedSubscript:@"underName"];
  }

  if (self->_number)
  {
    v6 = [(CCAppIntentsExtractedEntityPersonalId *)self number];
    [v3 setObject:v6 forKeyedSubscript:@"number"];
  }

  if (self->_issueDate)
  {
    v7 = [(CCAppIntentsExtractedEntityPersonalId *)self issueDate];
    [v3 setObject:v7 forKeyedSubscript:@"issueDate"];
  }

  if (self->_expirationDate)
  {
    v8 = [(CCAppIntentsExtractedEntityPersonalId *)self expirationDate];
    [v3 setObject:v8 forKeyedSubscript:@"expirationDate"];
  }

  if (self->_issuedBy)
  {
    v9 = [(CCAppIntentsExtractedEntityPersonalId *)self issuedBy];
    [v3 setObject:v9 forKeyedSubscript:@"issuedBy"];
  }

  if (self->_region)
  {
    v10 = [(CCAppIntentsExtractedEntityPersonalId *)self region];
    [v3 setObject:v10 forKeyedSubscript:@"region"];
  }

  if (self->_country)
  {
    v11 = [(CCAppIntentsExtractedEntityPersonalId *)self country];
    [v3 setObject:v11 forKeyedSubscript:@"country"];
  }

  if (self->_birthday)
  {
    v12 = [(CCAppIntentsExtractedEntityPersonalId *)self birthday];
    [v3 setObject:v12 forKeyedSubscript:@"birthday"];
  }

  if (self->_placeOfBirth)
  {
    v13 = [(CCAppIntentsExtractedEntityPersonalId *)self placeOfBirth];
    [v3 setObject:v13 forKeyedSubscript:@"placeOfBirth"];
  }

  if (self->_address)
  {
    v14 = [(CCAppIntentsExtractedEntityPersonalId *)self address];
    [v3 setObject:v14 forKeyedSubscript:@"address"];
  }

  if (self->_category)
  {
    v15 = [(CCAppIntentsExtractedEntityPersonalId *)self category];
    [v3 setObject:v15 forKeyedSubscript:@"category"];
  }

  if (self->_restrictions)
  {
    v16 = [(CCAppIntentsExtractedEntityPersonalId *)self restrictions];
    [v3 setObject:v16 forKeyedSubscript:@"restrictions"];
  }

  if (self->_eventSubType)
  {
    v17 = [(CCAppIntentsExtractedEntityPersonalId *)self eventSubType];
    [v3 setObject:v17 forKeyedSubscript:@"eventSubType"];
  }

  v18 = [v3 copy];

  return v18;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v20 = a3;
  if (self->_provider)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27469 stringValue:self->_provider];
    v20[2](v20, v5);
  }

  if (self->_underName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27470 stringValue:self->_underName];
    v20[2](v20, v6);
  }

  if (self->_number)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27471 stringValue:self->_number];
    v20[2](v20, v7);
  }

  if (self->_issueDate)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27472 stringValue:self->_issueDate];
    v20[2](v20, v8);
  }

  if (self->_expirationDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27473 stringValue:self->_expirationDate];
    v20[2](v20, v9);
  }

  if (self->_issuedBy)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27474 stringValue:self->_issuedBy];
    v20[2](v20, v10);
  }

  if (self->_region)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27475 stringValue:self->_region];
    v20[2](v20, v11);
  }

  if (self->_country)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27476 stringValue:self->_country];
    v20[2](v20, v12);
  }

  if (self->_birthday)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27477 stringValue:self->_birthday];
    v20[2](v20, v13);
  }

  if (self->_placeOfBirth)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27478 stringValue:self->_placeOfBirth];
    v20[2](v20, v14);
  }

  if (self->_address)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27479 stringValue:self->_address];
    v20[2](v20, v15);
  }

  if (self->_category)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27480 stringValue:self->_category];
    v20[2](v20, v16);
  }

  if (self->_restrictions)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27481 stringValue:self->_restrictions];
    v20[2](v20, v17);
  }

  v18 = v20;
  if (self->_eventSubType)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27482 stringValue:self->_eventSubType];
    v20[2](v20, v19);

    v18 = v20;
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

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
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

- (CCAppIntentsExtractedEntityPersonalId)initWithProvider:(id)a3 underName:(id)a4 number:(id)a5 issueDate:(id)a6 expirationDate:(id)a7 issuedBy:(id)a8 region:(id)a9 country:(id)a10 birthday:(id)a11 placeOfBirth:(id)a12 address:(id)a13 category:(id)a14 restrictions:(id)a15 eventSubType:(id)a16 error:(id *)a17
{
  v22 = a3;
  v67 = a4;
  v65 = a5;
  v57 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v64 = a11;
  v63 = a12;
  v62 = a13;
  v61 = a14;
  v60 = a15;
  v59 = a16;
  v66 = objc_opt_new();
  if (!v22)
  {
    v28 = 0;
LABEL_5:
    if (v67)
    {
      v29 = v22;
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v31 = v28;

      if (!IsInstanceOfExpectedClass)
      {
        CCSetError();
        v32 = 0;
        v28 = v31;
        v22 = v29;
        v33 = v24;
        v34 = v23;
        v35 = v57;
LABEL_21:
        v36 = self;
        goto LABEL_22;
      }

      CCPBDataWriterWriteStringField();
      v22 = v29;
    }

    else
    {
      v31 = v28;
    }

    v55 = v22;
    v33 = v24;
    if (v65)
    {
      objc_opt_class();
      v37 = CCValidateIsInstanceOfExpectedClass();
      v28 = v31;

      v34 = v23;
      v38 = v66;
      if (!v37)
      {
        CCSetError();
        v32 = 0;
        v22 = v55;
        v35 = v57;
        v36 = self;
        goto LABEL_39;
      }

      CCPBDataWriterWriteStringField();
      v35 = v57;
      if (!v57)
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
            if (v25)
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
          if (v25)
          {
LABEL_17:
            objc_opt_class();
            v41 = CCValidateIsInstanceOfExpectedClass();
            v28 = v39;

            if (v41)
            {
              CCPBDataWriterWriteStringField();
              if (!v26)
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
          if (!v26)
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
            if (v64)
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

            if (v63)
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

            if (v62)
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

            if (!v61)
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
              if (!v60)
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
                v52 = self;
                if (!v59)
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
                  v52 = self;
LABEL_64:
                  v54 = [v38 immutableData];
                  v36 = [(CCItemMessage *)v52 initWithData:v54 error:a17];

                  v32 = v36;
                  v22 = v56;
                  goto LABEL_39;
                }

                goto LABEL_61;
              }

LABEL_56:
              CCSetError();
              v32 = 0;
LABEL_62:
              v22 = v55;
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
        v22 = v55;
        v36 = self;
        goto LABEL_39;
      }
    }

    else
    {
      v28 = v31;
      v34 = v23;
      v35 = v57;
      v38 = v66;
      if (!v57)
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
  v33 = v24;
  v34 = v23;
  v35 = v57;
  v36 = self;
LABEL_22:
  v38 = v66;
LABEL_39:

  return v32;
}

@end