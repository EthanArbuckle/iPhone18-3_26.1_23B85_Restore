@interface HFAnalyticsFaceRecognitionNamedPersonEvent
- (HFAnalyticsFaceRecognitionNamedPersonEvent)initWithData:(id)data;
- (id)payload;
- (unint64_t)_namedPersonTypeForPerson:(id)person;
@end

@implementation HFAnalyticsFaceRecognitionNamedPersonEvent

- (HFAnalyticsFaceRecognitionNamedPersonEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"isNewPerson"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_ErrorHfanalyti_11.isa);
  }

  objc_opt_class();
  v8 = [dataCopy objectForKeyedSubscript:@"person"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self _namedPersonTypeForPerson:v10];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v26.receiver = self;
  v26.super_class = HFAnalyticsFaceRecognitionNamedPersonEvent;
  v13 = [(HFAnalyticsEvent *)&v26 initWithEventType:4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_isNewPerson, v6);
    objc_storeStrong(&v14->_personType, v12);
    objc_opt_class();
    v15 = [dataCopy objectForKeyedSubscript:@"error"];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    domain = [v17 domain];
    v19 = domain;
    if (domain)
    {
      v20 = domain;
    }

    else
    {
      v20 = @"nil";
    }

    objc_storeStrong(&v14->_errorDomain, v20);

    v21 = MEMORY[0x277CCABB0];
    code = [v17 code];

    v23 = [v21 numberWithInteger:code];
    errorCode = v14->_errorCode;
    v14->_errorCode = v23;
  }

  return v14;
}

- (id)payload
{
  v10.receiver = self;
  v10.super_class = HFAnalyticsFaceRecognitionNamedPersonEvent;
  payload = [(HFAnalyticsEvent *)&v10 payload];
  v4 = [payload mutableCopy];

  isNewPerson = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self isNewPerson];
  [v4 na_safeSetObject:isNewPerson forKey:@"namedPersonIsNew"];

  personType = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self personType];
  [v4 na_safeSetObject:personType forKey:@"namedPersonType"];

  errorDomain = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self errorDomain];
  [v4 na_safeSetObject:errorDomain forKey:@"errorDomain"];

  errorCode = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self errorCode];
  [v4 na_safeSetObject:errorCode forKey:@"errorCode"];

  return v4;
}

- (unint64_t)_namedPersonTypeForPerson:(id)person
{
  personCopy = person;
  v4 = personCopy;
  if (personCopy)
  {
    name = [personCopy name];

    if (name)
    {
      name2 = [v4 name];
      NSLog(&cfstr_ExpectedHmpers.isa, v4, name2);

      name = 0;
    }
  }

  else
  {
    name = 1;
  }

  return name;
}

@end