@interface SGMailIntelligenceMissingRecipientWarning
- (SGMailIntelligenceMissingRecipientWarning)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGMailIntelligenceMissingRecipientWarning

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SGMailIntelligenceWarning *)self snippet];
  v5 = [(SGMailIntelligenceWarning *)self signature];
  v6 = [(SGMailIntelligenceWarning *)self core];
  v7 = [(SGMailIntelligenceMissingRecipientWarning *)self handle];
  v8 = [(SGMailIntelligenceWarning *)self score];
  v9 = v8;
  if (self->_matchFoundInBCC)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" BCC match:%@", self->_matchFoundInBCC];
    v11 = [v3 initWithFormat:@"<SGMailIntelligenceMissingRecipientWarning triggered on: %@ (with signature %@) core:%@ handle:%@ score: %@%@>", v4, v5, v6, v7, v9, v10];
  }

  else
  {
    v11 = [v3 initWithFormat:@"<SGMailIntelligenceMissingRecipientWarning triggered on: %@ (with signature %@) core:%@ handle:%@ score: %@%@>", v4, v5, v6, v7, v8, &stru_1F385B250];
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGMailIntelligenceMissingRecipientWarning;
  v4 = a3;
  [(SGMailIntelligenceWarning *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_matchFoundInBCC forKey:{@"matchFoundInBCC", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_handle forKey:@"handle"];
}

- (SGMailIntelligenceMissingRecipientWarning)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[SGMailIntelligenceWarning alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E69C5D78];
    v7 = objc_opt_class();
    v8 = sgMailIntelligenceLogHandle();
    v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"matchFoundInBCC" withCoder:v4 expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v8];

    v10 = MEMORY[0x1E69C5D78];
    v11 = objc_opt_class();
    v12 = sgMailIntelligenceLogHandle();
    v13 = [v10 robustDecodeObjectOfClass:v11 forKey:@"handle" withCoder:v4 expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v12];

    v14 = [v4 error];

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v23 = [SGMailIntelligenceMissingRecipientWarning alloc];
      [(SGMailIntelligenceWarning *)v5 snippet];
      v16 = v24 = self;
      v17 = [(SGMailIntelligenceWarning *)v5 core];
      v18 = [(SGMailIntelligenceWarning *)v5 signature];
      v19 = [(SGMailIntelligenceWarning *)v5 detectedLanguage];
      v20 = [(SGMailIntelligenceWarning *)v5 isIncomingMessage];
      v21 = [(SGMailIntelligenceWarning *)v5 score];
      v15 = [(SGMailIntelligenceMissingRecipientWarning *)v23 initWithSnippet:v16 core:v17 handle:v13 signature:v18 detectedLanguage:v19 isIncomingMessage:v20 score:v21 matchFoundInBCC:v9];

      self = v24;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end