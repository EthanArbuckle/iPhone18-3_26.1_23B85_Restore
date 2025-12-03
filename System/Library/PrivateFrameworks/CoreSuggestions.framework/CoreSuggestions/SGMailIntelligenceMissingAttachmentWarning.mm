@interface SGMailIntelligenceMissingAttachmentWarning
- (SGMailIntelligenceMissingAttachmentWarning)initWithCoder:(id)coder;
- (id)description;
@end

@implementation SGMailIntelligenceMissingAttachmentWarning

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  snippet = [(SGMailIntelligenceWarning *)self snippet];
  signature = [(SGMailIntelligenceWarning *)self signature];
  score = [(SGMailIntelligenceWarning *)self score];
  v7 = [v3 initWithFormat:@"<SGMailIntelligenceMissingAttachmentWarning triggered on: %@ (with signature %@) score: %@>", snippet, signature, score];

  return v7;
}

- (SGMailIntelligenceMissingAttachmentWarning)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[SGMailIntelligenceWarning alloc] initWithCoder:coderCopy];

  if (v5)
  {
    v6 = [SGMailIntelligenceMissingAttachmentWarning alloc];
    snippet = [(SGMailIntelligenceWarning *)v5 snippet];
    core = [(SGMailIntelligenceWarning *)v5 core];
    signature = [(SGMailIntelligenceWarning *)v5 signature];
    detectedLanguage = [(SGMailIntelligenceWarning *)v5 detectedLanguage];
    isIncomingMessage = [(SGMailIntelligenceWarning *)v5 isIncomingMessage];
    score = [(SGMailIntelligenceWarning *)v5 score];
    v13 = [(SGMailIntelligenceWarning *)v6 initWithSnippet:snippet core:core signature:signature detectedLanguage:detectedLanguage isIncomingMessage:isIncomingMessage score:score];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end