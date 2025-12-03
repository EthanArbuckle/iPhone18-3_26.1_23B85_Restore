@interface CCContactPostalAddress
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCContactPostalAddress)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCContactPostalAddress)initWithLabel:(id)label street:(id)street subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)self0 ISOCountryCode:(id)self1 error:(id *)self2;
- (NSString)ISOCountryCode;
- (NSString)city;
- (NSString)country;
- (NSString)label;
- (NSString)postalCode;
- (NSString)state;
- (NSString)street;
- (NSString)subAdministrativeArea;
- (NSString)subLocality;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCContactPostalAddress

- (CCContactPostalAddress)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v18 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"street"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"subLocality"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"city"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"subAdministrativeArea"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    [dictionaryCopy objectForKeyedSubscript:@"postalCode"];
    v17 = v20 = self;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"country"];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"ISOCountryCode"];
    v15 = [[CCContactPostalAddress alloc] initWithLabel:v18 street:v9 subLocality:v19 city:v10 subAdministrativeArea:v11 state:v12 postalCode:v17 country:v13 ISOCountryCode:v14 error:error];

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
  if (self->_label)
  {
    label = [(CCContactPostalAddress *)self label];
    [v3 setObject:label forKeyedSubscript:@"label"];
  }

  if (self->_street)
  {
    street = [(CCContactPostalAddress *)self street];
    [v3 setObject:street forKeyedSubscript:@"street"];
  }

  if (self->_subLocality)
  {
    subLocality = [(CCContactPostalAddress *)self subLocality];
    [v3 setObject:subLocality forKeyedSubscript:@"subLocality"];
  }

  if (self->_city)
  {
    city = [(CCContactPostalAddress *)self city];
    [v3 setObject:city forKeyedSubscript:@"city"];
  }

  if (self->_subAdministrativeArea)
  {
    subAdministrativeArea = [(CCContactPostalAddress *)self subAdministrativeArea];
    [v3 setObject:subAdministrativeArea forKeyedSubscript:@"subAdministrativeArea"];
  }

  if (self->_state)
  {
    state = [(CCContactPostalAddress *)self state];
    [v3 setObject:state forKeyedSubscript:@"state"];
  }

  if (self->_postalCode)
  {
    postalCode = [(CCContactPostalAddress *)self postalCode];
    [v3 setObject:postalCode forKeyedSubscript:@"postalCode"];
  }

  if (self->_country)
  {
    country = [(CCContactPostalAddress *)self country];
    [v3 setObject:country forKeyedSubscript:@"country"];
  }

  if (self->_ISOCountryCode)
  {
    iSOCountryCode = [(CCContactPostalAddress *)self ISOCountryCode];
    [v3 setObject:iSOCountryCode forKeyedSubscript:@"ISOCountryCode"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_label)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19749 stringValue:self->_label];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_street)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19750 stringValue:self->_street];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_subLocality)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19751 stringValue:self->_subLocality];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_city)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19752 stringValue:self->_city];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_subAdministrativeArea)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19753 stringValue:self->_subAdministrativeArea];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_state)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19754 stringValue:self->_state];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_postalCode)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19755 stringValue:self->_postalCode];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_country)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19756 stringValue:self->_country];
    blockCopy[2](blockCopy, v12);
  }

  v13 = blockCopy;
  if (self->_ISOCountryCode)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19757 stringValue:self->_ISOCountryCode];
    blockCopy[2](blockCopy, v14);

    v13 = blockCopy;
  }
}

- (NSString)ISOCountryCode
{
  v2 = [(NSString *)self->_ISOCountryCode copy];

  return v2;
}

- (NSString)country
{
  v2 = [(NSString *)self->_country copy];

  return v2;
}

- (NSString)postalCode
{
  v2 = [(NSString *)self->_postalCode copy];

  return v2;
}

- (NSString)state
{
  v2 = [(NSString *)self->_state copy];

  return v2;
}

- (NSString)subAdministrativeArea
{
  v2 = [(NSString *)self->_subAdministrativeArea copy];

  return v2;
}

- (NSString)city
{
  v2 = [(NSString *)self->_city copy];

  return v2;
}

- (NSString)subLocality
{
  v2 = [(NSString *)self->_subLocality copy];

  return v2;
}

- (NSString)street
{
  v2 = [(NSString *)self->_street copy];

  return v2;
}

- (NSString)label
{
  v2 = [(NSString *)self->_label copy];

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
        if (v17 == -1 || v17 >= *&v6[*v8])
        {
          break;
        }

        v18 = *(*&v6[*v11] + v17);
        *&v6[v16] = v17 + 1;
        v15 |= (v18 & 0x7F) << v13;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        if (v14++ >= 9)
        {
          v20 = 0;
          if (*&v6[*v9])
          {
            goto LABEL_52;
          }

          goto LABEL_21;
        }
      }

      *&v6[*v9] = 1;
LABEL_17:
      v21 = *&v6[*v9];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15;
      }

      if (v21)
      {
        goto LABEL_52;
      }

LABEL_21:
      v22 = v20 >> 3;
      if ((v20 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 32;
            goto LABEL_42;
          }

          if (v22 == 4)
          {
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 40;
            goto LABEL_42;
          }
        }

        else
        {
          if (v22 == 1)
          {
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 16;
            goto LABEL_42;
          }

          if (v22 == 2)
          {
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 24;
            goto LABEL_42;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v24 = 48;
          goto LABEL_42;
        }

        if (v22 == 6)
        {
          v23 = CCPBReaderReadStringNoCopy();
          v10 = 0;
          v24 = 56;
          goto LABEL_42;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 64;
            goto LABEL_42;
          case 8:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 72;
            goto LABEL_42;
          case 9:
            v23 = CCPBReaderReadStringNoCopy();
            v10 = 0;
            v24 = 80;
LABEL_42:
            v25 = *(&self->super.super.isa + v24);
            *(&self->super.super.isa + v24) = v23;
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

      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      v27 = *&v6[*v9];
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
    v31 = 1;
    goto LABEL_55;
  }

LABEL_52:
  v28 = objc_opt_class();
  v10 = NSStringFromClass(v28);
  v29 = *&v6[*v9];
  v30 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_53:
  v31 = 0;
LABEL_55:

  return v31;
}

- (CCContactPostalAddress)initWithLabel:(id)label street:(id)street subLocality:(id)locality city:(id)city subAdministrativeArea:(id)area state:(id)state postalCode:(id)code country:(id)self0 ISOCountryCode:(id)self1 error:(id *)self2
{
  labelCopy = label;
  streetCopy = street;
  localityCopy = locality;
  cityCopy = city;
  areaCopy = area;
  stateCopy = state;
  codeCopy = code;
  countryCopy = country;
  countryCodeCopy = countryCode;
  v22 = objc_opt_new();
  v23 = 0x1E696A000uLL;
  if (labelCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_33;
    }

    CCPBDataWriterWriteStringField();
    if (!streetCopy)
    {
LABEL_4:
      v26 = v25;
      if (localityCopy)
      {
        goto LABEL_5;
      }

LABEL_13:
      v25 = v26;
      if (!cityCopy)
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
      if (areaCopy)
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
    if (!streetCopy)
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
  if (!localityCopy)
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
  if (cityCopy)
  {
    goto LABEL_14;
  }

LABEL_7:
  v26 = v25;
  if (!areaCopy)
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
  if (stateCopy)
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

  if (!codeCopy)
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
  if (!countryCopy)
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
    if (!countryCodeCopy)
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