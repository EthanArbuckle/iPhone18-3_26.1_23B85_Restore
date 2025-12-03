@interface DUPersonalIDResult
- (DUPersonalIDResult)initWithCoder:(id)coder;
- (DUPersonalIDResult)initWithResultType:(int64_t)type attributes:(id)attributes isPartialExtraction:(BOOL)extraction;
- (id)dateFromString:(id)string forAttributeKey:(id)key;
- (id)spotlightOntologyAttributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DUPersonalIDResult

- (id)spotlightOntologyAttributes
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  type = [(DUPersonalIDResult *)self type];
  if (type <= 0xD)
  {
    if (((1 << type) & 0x39FE) != 0)
    {
      v5 = MEMORY[0x277CC2280];
LABEL_4:
      [v3 setCardType:*v5];
      goto LABEL_5;
    }

    if (type == 9)
    {
      v5 = MEMORY[0x277CC2288];
      goto LABEL_4;
    }

    if (type == 10)
    {
      v5 = MEMORY[0x277CC2290];
      goto LABEL_4;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    type2 = [(DUPersonalIDResult *)self type];
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] Cannot convert unexpected CardType '%ld' to Spotlight Attributes ", buf, 0xCu);
  }

LABEL_5:
  type3 = [(DUPersonalIDResult *)self type];
  v7 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"CardType"];
  [v3 setCardSubType:v7];

  extractedAttributes = self->_extractedAttributes;
  if (type3 == 3)
  {
    v9 = [(NSDictionary *)extractedAttributes objectForKeyedSubscript:@"BusinessName"];
    [v3 setCardProvider:v9];

    v10 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"UnderName"];
    [v3 setCardUnderName:v10];

    v11 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"Address"];
    if (v11)
    {
      v12 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"Address"];
      v49 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
      [v3 setWorkAddresses:v13];
    }

    else
    {
      [v3 setWorkAddresses:0];
    }

    v32 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"BusinessPhoneNumber"];
    if (v32)
    {
      v33 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"BusinessPhoneNumber"];
      v48 = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      [v3 setPhoneNumbers:v34];
    }

    else
    {
      [v3 setPhoneNumbers:0];
    }

    v35 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"BusinessEmail"];
    if (v35)
    {
      v36 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"BusinessEmail"];
      v47 = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      [v3 setEmailAddresses:v37];
    }

    else
    {
      [v3 setEmailAddresses:0];
    }

    v38 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"BusinessWebsite"];
    if (v38)
    {
      v39 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"BusinessWebsite"];
      v46 = v39;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [v3 setLinks:v40];
    }

    else
    {
      [v3 setLinks:0];
    }

    v31 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"BusinessHours"];
    if (v31)
    {
      v41 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"BusinessHours"];
      v45 = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      [v3 setBusinessHours:v42];
    }

    else
    {
      [v3 setBusinessHours:0];
    }
  }

  else
  {
    v14 = [(NSDictionary *)extractedAttributes objectForKeyedSubscript:@"CardProvider"];
    [v3 setCardProvider:v14];

    v15 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"UnderName"];
    [v3 setCardUnderName:v15];

    v16 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"CardNumber"];
    [v3 setCardNumber:v16];

    v17 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"CardGroupNumber"];
    [v3 setCardGroupNumber:v17];

    v18 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"IssueDate"];
    v19 = [(DUPersonalIDResult *)self dateFromString:v18 forAttributeKey:@"IssueDate"];
    [v3 setCardIssueDate:v19];

    v20 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"ExpirationDate"];
    v21 = [(DUPersonalIDResult *)self dateFromString:v20 forAttributeKey:@"ExpirationDate"];
    [v3 setCardExpirationDate:v21];

    v22 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"IssuedBy"];
    [v3 setCardIssuedBy:v22];

    v23 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"Region"];
    [v3 setCardRegion:v23];

    v24 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"Country"];
    [v3 setCardCountry:v24];

    v25 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"PlaceOfBirth"];
    [v3 setCardPlaceOfBirth:v25];

    v26 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"Address"];
    [v3 setCardAddress:v26];

    v27 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"Birthday"];
    v28 = [(DUPersonalIDResult *)self dateFromString:v27 forAttributeKey:@"Birthday"];
    [v3 setBirthday:v28];

    v29 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"Sex"];
    [v3 setCardSex:v29];

    v30 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"CardCategory"];
    [v3 setCardCategory:v30];

    v31 = [(NSDictionary *)self->_extractedAttributes objectForKeyedSubscript:@"CardRestrictions"];
    [v3 setCardRestrictions:v31];
  }

  v43 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)dateFromString:(id)string forAttributeKey:(id)key
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (string)
  {
    v6 = MEMORY[0x277CCA968];
    stringCopy = string;
    v8 = objc_alloc_init(v6);
    [v8 setDateFormat:@"yyyy-MM-dd"];
    v9 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    [v8 setTimeZone:v9];

    v10 = [v8 dateFromString:stringCopy];

    if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = keyCopy;
      _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to convert '%@' value to NSDate", &v13, 0xCu);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (DUPersonalIDResult)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"resultType"];
  v6 = [coderCopy decodeBoolForKey:@"isPartialExtraction"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extractedAttributes"];

  v17 = 0;
  v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:&v17];
  v9 = v17;
  error = v9;
  if (v9 || !v8)
  {
    if (!v9)
    {
      error = [v8 error];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = error;
      _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDResult: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBEB98]);
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    error = [v11 initWithArray:v12];

    v13 = [v8 decodeObjectOfClasses:error forKey:*MEMORY[0x277CCA308]];
    [v8 finishDecoding];
    self = [(DUPersonalIDResult *)self initWithResultType:v5 attributes:v13 isPartialExtraction:v6];

    selfCopy = self;
  }

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"resultType"];
  [coderCopy encodeBool:self->_isPartialExtraction forKey:@"isPartialExtraction"];
  extractedAttributes = self->_extractedAttributes;
  v9 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:extractedAttributes requiringSecureCoding:1 error:&v9];
  v7 = v9;
  if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v7;
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[DUInformationExtractor] failed to decode DUPersonalIDResult: %@", buf, 0xCu);
  }

  [coderCopy encodeObject:v6 forKey:@"extractedAttributes"];

  v8 = *MEMORY[0x277D85DE8];
}

- (DUPersonalIDResult)initWithResultType:(int64_t)type attributes:(id)attributes isPartialExtraction:(BOOL)extraction
{
  attributesCopy = attributes;
  v14.receiver = self;
  v14.super_class = DUPersonalIDResult;
  v9 = [(DUPersonalIDResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v9->_isPartialExtraction = extraction;
    v11 = [attributesCopy copy];
    extractedAttributes = v10->_extractedAttributes;
    v10->_extractedAttributes = v11;
  }

  return v10;
}

@end