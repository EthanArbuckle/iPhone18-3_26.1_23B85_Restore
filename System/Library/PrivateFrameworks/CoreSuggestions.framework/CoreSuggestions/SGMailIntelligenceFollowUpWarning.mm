@interface SGMailIntelligenceFollowUpWarning
- (SGMailIntelligenceFollowUpWarning)initWithCoder:(id)coder;
- (SGMailIntelligenceFollowUpWarning)initWithNSData:(id)data;
- (SGMailIntelligenceFollowUpWarning)initWithNSDictionary:(id)dictionary;
- (SGMailIntelligenceFollowUpWarning)initWithString:(id)string;
- (id)description;
- (id)toLightJson;
- (id)toLightNSData;
- (id)toLightNSDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGMailIntelligenceFollowUpWarning

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  snippet = [(SGMailIntelligenceWarning *)self snippet];
  signature = [(SGMailIntelligenceWarning *)self signature];
  score = [(SGMailIntelligenceWarning *)self score];
  startDate = self->_startDate;
  v8 = [v3 initWithFormat:@"<SGMailIntelligenceFollowUpWarningtriggered on: %@ (with signature %@) score: %@ valid from %@ to %@>", snippet, signature, score, startDate, self->_endDate];

  return v8;
}

- (id)toLightJson
{
  v4 = MEMORY[0x1E696ACB0];
  toLightNSDictionary = [(SGMailIntelligenceFollowUpWarning *)self toLightNSDictionary];
  v10 = 0;
  v6 = [v4 dataWithJSONObject:toLightNSDictionary options:0 error:&v10];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceWarning.m" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"output"}];
  }

  return v7;
}

- (id)toLightNSData
{
  v4 = MEMORY[0x1E696AE40];
  toLightNSDictionary = [(SGMailIntelligenceFollowUpWarning *)self toLightNSDictionary];
  v6 = [v4 dataWithPropertyList:toLightNSDictionary format:200 options:0 error:0];

  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceWarning.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"output"}];
  }

  return v6;
}

- (id)toLightNSDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:@"2" forKeyedSubscript:@"version"];
  signature = [(SGMailIntelligenceWarning *)self signature];
  v5 = __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(signature);
  [v3 setObject:v5 forKeyedSubscript:@"signature"];

  detectedLanguage = [(SGMailIntelligenceWarning *)self detectedLanguage];
  v7 = __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(detectedLanguage);
  [v3 setObject:v7 forKeyedSubscript:@"detectedLanguage"];

  score = [(SGMailIntelligenceWarning *)self score];
  v9 = __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(score);
  [v3 setObject:v9 forKeyedSubscript:@"score"];

  type = [(SGMailIntelligenceFollowUpWarning *)self type];
  v11 = __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(type);
  [v3 setObject:v11 forKeyedSubscript:@"type"];

  null = [MEMORY[0x1E695DFB0] null];
  v13 = [v3 allKeysForObject:null];

  [v3 removeObjectsForKeys:v13];

  return v3;
}

id __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;

  return v4;
}

- (SGMailIntelligenceFollowUpWarning)initWithString:(id)string
{
  if (string)
  {
    v4 = [string dataUsingEncoding:4];
    if (v4)
    {
      v8 = 0;
      selfCopy = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v8];
      v6 = v8;
      if (selfCopy)
      {
        self = [(SGMailIntelligenceFollowUpWarning *)self initWithNSDictionary:selfCopy];

        selfCopy = self;
      }
    }

    else
    {
      v6 = 0;
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SGMailIntelligenceFollowUpWarning)initWithNSData:(id)data
{
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:0];
  v5 = [(SGMailIntelligenceFollowUpWarning *)self initWithNSDictionary:v4];

  return v5;
}

- (SGMailIntelligenceFollowUpWarning)initWithNSDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  v6 = [v5 isEqualToString:@"1"];

  if (v6)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  v8 = [v7 isEqualToString:@"2"];

  if (!v8)
  {
    v17 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA729000, v17, OS_LOG_TYPE_FAULT, "SGMailIntelligenceFollowUpWarning version not supported.", buf, 2u);
    }

    goto LABEL_7;
  }

  v9 = [SGMailIntelligenceFollowUpWarning alloc];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"signature"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"detectedLanguage"];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"score"];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [(SGMailIntelligenceFollowUpWarning *)v9 initWithSnippet:&stru_1F385B250 core:&stru_1F385B250 signature:v10 detectedLanguage:v11 isIncomingMessage:0 score:v12 startDate:v13 startDateCore:&stru_1F385B250 endDate:v14 endDateCore:&stru_1F385B250];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  [(SGMailIntelligenceFollowUpWarning *)v15 setType:v16];

LABEL_8:
  return v15;
}

- (SGMailIntelligenceFollowUpWarning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[SGMailIntelligenceWarning alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E69C5D78];
    v7 = objc_opt_class();
    v8 = sgMailIntelligenceLogHandle();
    v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"startDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v8];

    v10 = MEMORY[0x1E69C5D78];
    v11 = objc_opt_class();
    v12 = sgMailIntelligenceLogHandle();
    v36 = [v10 robustDecodeObjectOfClass:v11 forKey:@"startDateCore" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v12];

    v13 = MEMORY[0x1E69C5D78];
    v14 = objc_opt_class();
    v15 = sgMailIntelligenceLogHandle();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"endDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v15];

    v17 = MEMORY[0x1E69C5D78];
    v18 = objc_opt_class();
    v19 = sgMailIntelligenceLogHandle();
    v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"endDateCore" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v19];

    v21 = MEMORY[0x1E69C5D78];
    v22 = objc_opt_class();
    v23 = sgMailIntelligenceLogHandle();
    v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"type" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v23];

    v25 = 0;
    if (v9 && v16)
    {
      error = [coderCopy error];

      if (error)
      {
        v25 = 0;
      }

      else
      {
        v33 = [SGMailIntelligenceFollowUpWarning alloc];
        snippet = [(SGMailIntelligenceWarning *)v5 snippet];
        core = [(SGMailIntelligenceWarning *)v5 core];
        signature = [(SGMailIntelligenceWarning *)v5 signature];
        [(SGMailIntelligenceWarning *)v5 detectedLanguage];
        v28 = v34 = v9;
        isIncomingMessage = [(SGMailIntelligenceWarning *)v5 isIncomingMessage];
        score = [(SGMailIntelligenceWarning *)v5 score];
        v25 = [(SGMailIntelligenceFollowUpWarning *)v33 initWithSnippet:snippet core:core signature:signature detectedLanguage:v28 isIncomingMessage:isIncomingMessage score:score startDate:v34 startDateCore:v36 endDate:v16 endDateCore:v20];

        v9 = v34;
        [(SGMailIntelligenceFollowUpWarning *)v25 setType:v24];
      }
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGMailIntelligenceFollowUpWarning;
  coderCopy = coder;
  [(SGMailIntelligenceWarning *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startDate forKey:{@"startDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_startDateCore forKey:@"startDateCore"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_endDateCore forKey:@"endDateCore"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
}

@end