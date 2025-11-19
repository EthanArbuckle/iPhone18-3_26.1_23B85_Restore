@interface HFAnalyticsFaceRecognitionNamedPersonEvent
- (HFAnalyticsFaceRecognitionNamedPersonEvent)initWithData:(id)a3;
- (id)payload;
- (unint64_t)_namedPersonTypeForPerson:(id)a3;
@end

@implementation HFAnalyticsFaceRecognitionNamedPersonEvent

- (HFAnalyticsFaceRecognitionNamedPersonEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"isNewPerson"];
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
  v8 = [v4 objectForKeyedSubscript:@"person"];
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
    v15 = [v4 objectForKeyedSubscript:@"error"];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [v17 domain];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = @"nil";
    }

    objc_storeStrong(&v14->_errorDomain, v20);

    v21 = MEMORY[0x277CCABB0];
    v22 = [v17 code];

    v23 = [v21 numberWithInteger:v22];
    errorCode = v14->_errorCode;
    v14->_errorCode = v23;
  }

  return v14;
}

- (id)payload
{
  v10.receiver = self;
  v10.super_class = HFAnalyticsFaceRecognitionNamedPersonEvent;
  v3 = [(HFAnalyticsEvent *)&v10 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self isNewPerson];
  [v4 na_safeSetObject:v5 forKey:@"namedPersonIsNew"];

  v6 = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self personType];
  [v4 na_safeSetObject:v6 forKey:@"namedPersonType"];

  v7 = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self errorDomain];
  [v4 na_safeSetObject:v7 forKey:@"errorDomain"];

  v8 = [(HFAnalyticsFaceRecognitionNamedPersonEvent *)self errorCode];
  [v4 na_safeSetObject:v8 forKey:@"errorCode"];

  return v4;
}

- (unint64_t)_namedPersonTypeForPerson:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 name];

    if (v5)
    {
      v6 = [v4 name];
      NSLog(&cfstr_ExpectedHmpers.isa, v4, v6);

      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end