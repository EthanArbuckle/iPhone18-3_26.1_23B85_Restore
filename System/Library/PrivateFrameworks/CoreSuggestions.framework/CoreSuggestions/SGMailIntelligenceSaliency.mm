@interface SGMailIntelligenceSaliency
+ (id)decayScore:(id)a3 creationTime:(id)a4;
- (SGMailIntelligenceSaliency)initWithCoder:(id)a3;
- (SGMailIntelligenceSaliency)initWithMessageId:(id)a3 mailboxId:(id)a4 score:(id)a5 isSalient:(BOOL)a6 gteSaliency:(int64_t)a7 isCounted:(BOOL)a8 creationDate:(id)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (SGMailIntelligenceSaliency)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = sgMailIntelligenceLogHandle();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"messageId" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = sgMailIntelligenceLogHandle();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"mailboxId" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v11];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = sgMailIntelligenceLogHandle();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"score" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v15];

  v17 = [v4 decodeBoolForKey:@"isSalient"];
  v18 = MEMORY[0x1E69C5D78];
  v19 = objc_opt_class();
  v20 = sgMailIntelligenceLogHandle();
  v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"creationDate" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v20];

  v22 = 0;
  if (v16 && v12 && v8 && v21)
  {
    v23 = [v4 error];

    if (v23)
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

- (void)encodeWithCoder:(id)a3
{
  messageId = self->_messageId;
  v5 = a3;
  [v5 encodeObject:messageId forKey:@"messageId"];
  [v5 encodeObject:self->_mailboxId forKey:@"mailboxId"];
  [v5 encodeObject:self->_score forKey:@"score"];
  [v5 encodeBool:self->_isSalient forKey:@"isSalient"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (SGMailIntelligenceSaliency)initWithMessageId:(id)a3 mailboxId:(id)a4 score:(id)a5 isSalient:(BOOL)a6 gteSaliency:(int64_t)a7 isCounted:(BOOL)a8 creationDate:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a9;
  if (v16)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceSaliency.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"score != nil"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceSaliency.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"messageId != nil"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = SGMailIntelligenceSaliency;
  v18 = [(SGMailIntelligenceSaliency *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messageId, a3);
    objc_storeStrong(&v19->_mailboxId, a4);
    objc_storeStrong(&v19->_score, a5);
    v19->_isSalient = a6;
    v19->_gteSaliency = a7;
    v19->_isCounted = a8;
    objc_storeStrong(&v19->_creationDate, a9);
  }

  return v19;
}

+ (id)decayScore:(id)a3 creationTime:(id)a4
{
  v5 = a3;
  [a4 timeIntervalSinceNow];
  v7 = exp(v6 * -0.693147181 / -259200.0);
  v8 = MEMORY[0x1E696AD98];
  [v5 doubleValue];
  v10 = v9;

  return [v8 numberWithDouble:v10 * v7];
}

@end