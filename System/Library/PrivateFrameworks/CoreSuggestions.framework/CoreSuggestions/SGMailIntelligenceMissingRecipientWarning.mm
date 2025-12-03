@interface SGMailIntelligenceMissingRecipientWarning
- (SGMailIntelligenceMissingRecipientWarning)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGMailIntelligenceMissingRecipientWarning

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  snippet = [(SGMailIntelligenceWarning *)self snippet];
  signature = [(SGMailIntelligenceWarning *)self signature];
  core = [(SGMailIntelligenceWarning *)self core];
  handle = [(SGMailIntelligenceMissingRecipientWarning *)self handle];
  score = [(SGMailIntelligenceWarning *)self score];
  v9 = score;
  if (self->_matchFoundInBCC)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" BCC match:%@", self->_matchFoundInBCC];
    v11 = [v3 initWithFormat:@"<SGMailIntelligenceMissingRecipientWarning triggered on: %@ (with signature %@) core:%@ handle:%@ score: %@%@>", snippet, signature, core, handle, v9, v10];
  }

  else
  {
    v11 = [v3 initWithFormat:@"<SGMailIntelligenceMissingRecipientWarning triggered on: %@ (with signature %@) core:%@ handle:%@ score: %@%@>", snippet, signature, core, handle, score, &stru_1F385B250];
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGMailIntelligenceMissingRecipientWarning;
  coderCopy = coder;
  [(SGMailIntelligenceWarning *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_matchFoundInBCC forKey:{@"matchFoundInBCC", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_handle forKey:@"handle"];
}

- (SGMailIntelligenceMissingRecipientWarning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[SGMailIntelligenceWarning alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E69C5D78];
    v7 = objc_opt_class();
    v8 = sgMailIntelligenceLogHandle();
    v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"matchFoundInBCC" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v8];

    v10 = MEMORY[0x1E69C5D78];
    v11 = objc_opt_class();
    v12 = sgMailIntelligenceLogHandle();
    v13 = [v10 robustDecodeObjectOfClass:v11 forKey:@"handle" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v12];

    error = [coderCopy error];

    if (error)
    {
      v15 = 0;
    }

    else
    {
      v23 = [SGMailIntelligenceMissingRecipientWarning alloc];
      [(SGMailIntelligenceWarning *)v5 snippet];
      v16 = v24 = self;
      core = [(SGMailIntelligenceWarning *)v5 core];
      signature = [(SGMailIntelligenceWarning *)v5 signature];
      detectedLanguage = [(SGMailIntelligenceWarning *)v5 detectedLanguage];
      isIncomingMessage = [(SGMailIntelligenceWarning *)v5 isIncomingMessage];
      score = [(SGMailIntelligenceWarning *)v5 score];
      v15 = [(SGMailIntelligenceMissingRecipientWarning *)v23 initWithSnippet:v16 core:core handle:v13 signature:signature detectedLanguage:detectedLanguage isIncomingMessage:isIncomingMessage score:score matchFoundInBCC:v9];

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