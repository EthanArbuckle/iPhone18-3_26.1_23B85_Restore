@interface SGMailIntelligenceFollowUpWarning
- (SGMailIntelligenceFollowUpWarning)initWithCoder:(id)a3;
- (SGMailIntelligenceFollowUpWarning)initWithNSData:(id)a3;
- (SGMailIntelligenceFollowUpWarning)initWithNSDictionary:(id)a3;
- (SGMailIntelligenceFollowUpWarning)initWithString:(id)a3;
- (id)description;
- (id)toLightJson;
- (id)toLightNSData;
- (id)toLightNSDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGMailIntelligenceFollowUpWarning

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SGMailIntelligenceWarning *)self snippet];
  v5 = [(SGMailIntelligenceWarning *)self signature];
  v6 = [(SGMailIntelligenceWarning *)self score];
  startDate = self->_startDate;
  v8 = [v3 initWithFormat:@"<SGMailIntelligenceFollowUpWarningtriggered on: %@ (with signature %@) score: %@ valid from %@ to %@>", v4, v5, v6, startDate, self->_endDate];

  return v8;
}

- (id)toLightJson
{
  v4 = MEMORY[0x1E696ACB0];
  v5 = [(SGMailIntelligenceFollowUpWarning *)self toLightNSDictionary];
  v10 = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:&v10];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceWarning.m" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"output"}];
  }

  return v7;
}

- (id)toLightNSData
{
  v4 = MEMORY[0x1E696AE40];
  v5 = [(SGMailIntelligenceFollowUpWarning *)self toLightNSDictionary];
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:0];

  if (!v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceWarning.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"output"}];
  }

  return v6;
}

- (id)toLightNSDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:@"2" forKeyedSubscript:@"version"];
  v4 = [(SGMailIntelligenceWarning *)self signature];
  v5 = __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(v4);
  [v3 setObject:v5 forKeyedSubscript:@"signature"];

  v6 = [(SGMailIntelligenceWarning *)self detectedLanguage];
  v7 = __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(v6);
  [v3 setObject:v7 forKeyedSubscript:@"detectedLanguage"];

  v8 = [(SGMailIntelligenceWarning *)self score];
  v9 = __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(v8);
  [v3 setObject:v9 forKeyedSubscript:@"score"];

  v10 = [(SGMailIntelligenceFollowUpWarning *)self type];
  v11 = __56__SGMailIntelligenceFollowUpWarning_toLightNSDictionary__block_invoke(v10);
  [v3 setObject:v11 forKeyedSubscript:@"type"];

  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = [v3 allKeysForObject:v12];

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

- (SGMailIntelligenceFollowUpWarning)initWithString:(id)a3
{
  if (a3)
  {
    v4 = [a3 dataUsingEncoding:4];
    if (v4)
    {
      v8 = 0;
      v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v8];
      v6 = v8;
      if (v5)
      {
        self = [(SGMailIntelligenceFollowUpWarning *)self initWithNSDictionary:v5];

        v5 = self;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SGMailIntelligenceFollowUpWarning)initWithNSData:(id)a3
{
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [(SGMailIntelligenceFollowUpWarning *)self initWithNSDictionary:v4];

  return v5;
}

- (SGMailIntelligenceFollowUpWarning)initWithNSDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"version"];
  v6 = [v5 isEqualToString:@"1"];

  if (v6)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v7 = [v4 objectForKeyedSubscript:@"version"];
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
  v10 = [v4 objectForKeyedSubscript:@"signature"];
  v11 = [v4 objectForKeyedSubscript:@"detectedLanguage"];
  v12 = [v4 objectForKeyedSubscript:@"score"];
  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [(SGMailIntelligenceFollowUpWarning *)v9 initWithSnippet:&stru_1F385B250 core:&stru_1F385B250 signature:v10 detectedLanguage:v11 isIncomingMessage:0 score:v12 startDate:v13 startDateCore:&stru_1F385B250 endDate:v14 endDateCore:&stru_1F385B250];

  v16 = [v4 objectForKeyedSubscript:@"type"];
  [(SGMailIntelligenceFollowUpWarning *)v15 setType:v16];

LABEL_8:
  return v15;
}

- (SGMailIntelligenceFollowUpWarning)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[SGMailIntelligenceWarning alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E69C5D78];
    v7 = objc_opt_class();
    v8 = sgMailIntelligenceLogHandle();
    v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"startDate" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v8];

    v10 = MEMORY[0x1E69C5D78];
    v11 = objc_opt_class();
    v12 = sgMailIntelligenceLogHandle();
    v36 = [v10 robustDecodeObjectOfClass:v11 forKey:@"startDateCore" withCoder:v4 expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v12];

    v13 = MEMORY[0x1E69C5D78];
    v14 = objc_opt_class();
    v15 = sgMailIntelligenceLogHandle();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"endDate" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v15];

    v17 = MEMORY[0x1E69C5D78];
    v18 = objc_opt_class();
    v19 = sgMailIntelligenceLogHandle();
    v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"endDateCore" withCoder:v4 expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v19];

    v21 = MEMORY[0x1E69C5D78];
    v22 = objc_opt_class();
    v23 = sgMailIntelligenceLogHandle();
    v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"type" withCoder:v4 expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v23];

    v25 = 0;
    if (v9 && v16)
    {
      v26 = [v4 error];

      if (v26)
      {
        v25 = 0;
      }

      else
      {
        v33 = [SGMailIntelligenceFollowUpWarning alloc];
        v35 = [(SGMailIntelligenceWarning *)v5 snippet];
        v32 = [(SGMailIntelligenceWarning *)v5 core];
        v27 = [(SGMailIntelligenceWarning *)v5 signature];
        [(SGMailIntelligenceWarning *)v5 detectedLanguage];
        v28 = v34 = v9;
        v31 = [(SGMailIntelligenceWarning *)v5 isIncomingMessage];
        v29 = [(SGMailIntelligenceWarning *)v5 score];
        v25 = [(SGMailIntelligenceFollowUpWarning *)v33 initWithSnippet:v35 core:v32 signature:v27 detectedLanguage:v28 isIncomingMessage:v31 score:v29 startDate:v34 startDateCore:v36 endDate:v16 endDateCore:v20];

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGMailIntelligenceFollowUpWarning;
  v4 = a3;
  [(SGMailIntelligenceWarning *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_startDate forKey:{@"startDate", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_startDateCore forKey:@"startDateCore"];
  [v4 encodeObject:self->_endDate forKey:@"endDate"];
  [v4 encodeObject:self->_endDateCore forKey:@"endDateCore"];
  [v4 encodeObject:self->_type forKey:@"type"];
}

@end