@interface SGMailIntelligenceSaliency
+ (id)decayScore:(id)score creationTime:(id)time;
- (SGMailIntelligenceSaliency)initWithCoder:(id)coder;
- (SGMailIntelligenceSaliency)initWithMessageId:(id)id mailboxId:(id)mailboxId score:(id)score isSalient:(BOOL)salient gteSaliency:(int64_t)saliency isCounted:(BOOL)counted creationDate:(id)date;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGMailIntelligenceSaliency

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = @"regular";
  if (self->_isSalient)
  {
    v4 = @"salient";
  }

  messageId = self->_messageId;
  v6 = [v3 initWithFormat:@"<SGMailIntelligenceSaliency score: %@ (%@), messageId: %@, mailboxId: %@>", self->_score, v4, messageId, self->_mailboxId];

  return v6;
}

- (SGMailIntelligenceSaliency)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = sgMailIntelligenceLogHandle();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"messageId" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = sgMailIntelligenceLogHandle();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"mailboxId" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v11];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = sgMailIntelligenceLogHandle();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"score" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v15];

  v17 = [coderCopy decodeBoolForKey:@"isSalient"];
  v18 = MEMORY[0x1E69C5D78];
  v19 = objc_opt_class();
  v20 = sgMailIntelligenceLogHandle();
  v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"creationDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v20];

  v22 = 0;
  if (v16 && v12 && v8 && v21)
  {
    error = [coderCopy error];

    if (error)
    {
      v22 = 0;
    }

    else
    {
      v22 = [[SGMailIntelligenceSaliency alloc] initWithMessageId:v8 mailboxId:v12 score:v16 isSalient:v17 creationDate:v21];
    }
  }

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  messageId = self->_messageId;
  coderCopy = coder;
  [coderCopy encodeObject:messageId forKey:@"messageId"];
  [coderCopy encodeObject:self->_mailboxId forKey:@"mailboxId"];
  [coderCopy encodeObject:self->_score forKey:@"score"];
  [coderCopy encodeBool:self->_isSalient forKey:@"isSalient"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (SGMailIntelligenceSaliency)initWithMessageId:(id)id mailboxId:(id)mailboxId score:(id)score isSalient:(BOOL)salient gteSaliency:(int64_t)saliency isCounted:(BOOL)counted creationDate:(id)date
{
  idCopy = id;
  mailboxIdCopy = mailboxId;
  scoreCopy = score;
  dateCopy = date;
  if (scoreCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceSaliency.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"score != nil"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceSaliency.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"messageId != nil"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = SGMailIntelligenceSaliency;
  v18 = [(SGMailIntelligenceSaliency *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messageId, id);
    objc_storeStrong(&v19->_mailboxId, mailboxId);
    objc_storeStrong(&v19->_score, score);
    v19->_isSalient = salient;
    v19->_gteSaliency = saliency;
    v19->_isCounted = counted;
    objc_storeStrong(&v19->_creationDate, date);
  }

  return v19;
}

+ (id)decayScore:(id)score creationTime:(id)time
{
  scoreCopy = score;
  [time timeIntervalSinceNow];
  v7 = exp(v6 * -0.693147181 / -259200.0);
  v8 = MEMORY[0x1E696AD98];
  [scoreCopy doubleValue];
  v10 = v9;

  return [v8 numberWithDouble:v10 * v7];
}

@end