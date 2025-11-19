@interface SGMailIntelligenceUnsubscriptionRule
+ (id)prettyNameForUnsubscriptionRuleField:(int64_t)a3;
- (SGMailIntelligenceUnsubscriptionRule)initWithCoder:(id)a3;
- (SGMailIntelligenceUnsubscriptionRule)initWithUnsubscriptionRuleField:(int64_t)a3 tokenCounts:(id)a4;
- (SGMailIntelligenceUnsubscriptionRule)initWithUnsubscriptionRuleField:(int64_t)a3 value:(id)a4 mailCount:(id)a5 score:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGMailIntelligenceUnsubscriptionRule

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(NSNumber *)self->_score floatValue];
  v5 = (v4 * 100.0);
  mailCount = self->_mailCount;
  v7 = [SGMailIntelligenceUnsubscriptionRule prettyNameForUnsubscriptionRuleField:self->_unsubscriptionRuleField];
  v8 = [v3 initWithFormat:@"<SGMailIntelligenceUnsubscriptionRule: %.1f%% of the %@ mails from %@ %@ were ignorable>", *&v5, mailCount, v7, self->_value];

  return v8;
}

- (SGMailIntelligenceUnsubscriptionRule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = sgMailIntelligenceLogHandle();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"unsubscriptionRuleField" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = sgMailIntelligenceLogHandle();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"value" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v11];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = sgMailIntelligenceLogHandle();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"mailCount" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v15];

  v17 = MEMORY[0x1E69C5D78];
  v18 = objc_opt_class();
  v19 = sgMailIntelligenceLogHandle();
  v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"score" withCoder:v4 expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v19];

  v21 = 0;
  if (v8 && v12 && v16 && v20)
  {
    v22 = [v4 error];

    if (v22)
    {
      v21 = 0;
    }

    else
    {
      v21 = -[SGMailIntelligenceUnsubscriptionRule initWithUnsubscriptionRuleField:value:mailCount:score:]([SGMailIntelligenceUnsubscriptionRule alloc], "initWithUnsubscriptionRuleField:value:mailCount:score:", [v8 integerValue], v12, v16, v20);
    }
  }

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  unsubscriptionRuleField = self->_unsubscriptionRuleField;
  v7 = a3;
  v6 = [v4 numberWithInteger:unsubscriptionRuleField];
  [v7 encodeObject:v6 forKey:@"unsubscriptionRuleField"];

  [v7 encodeObject:self->_value forKey:@"value"];
  [v7 encodeObject:self->_mailCount forKey:@"mailCount"];
  [v7 encodeObject:self->_score forKey:@"score"];
}

- (SGMailIntelligenceUnsubscriptionRule)initWithUnsubscriptionRuleField:(int64_t)a3 tokenCounts:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceUnsubscriptionRule.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"tokenCounts != nil"}];
  }

  v28.receiver = self;
  v28.super_class = SGMailIntelligenceUnsubscriptionRule;
  v8 = [(SGMailIntelligenceUnsubscriptionRule *)&v28 init];
  v9 = v8;
  if (v8)
  {
    v8->_unsubscriptionRuleField = a3;
    v10 = [v7 token];
    value = v9->_value;
    v9->_value = v10;

    v12 = [v7 salientCount];
    v13 = [v12 unsignedIntegerValue];
    v14 = [v7 regularCount];
    v15 = [v14 unsignedIntegerValue] + v13;

    v16 = 0x1E696A000;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    mailCount = v9->_mailCount;
    v9->_mailCount = v17;

    v19 = MEMORY[0x1E696AD98];
    if (v15)
    {
      v16 = [v7 regularCount];
      [v16 doubleValue];
      v21 = v20;
      [(NSNumber *)v9->_mailCount doubleValue];
      v23 = v21 / v22;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = [v19 numberWithDouble:v23];
    score = v9->_score;
    v9->_score = v24;

    if (v15)
    {
    }
  }

  return v9;
}

- (SGMailIntelligenceUnsubscriptionRule)initWithUnsubscriptionRuleField:(int64_t)a3 value:(id)a4 mailCount:(id)a5 score:(id)a6
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceUnsubscriptionRule.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"mailCount != nil"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceUnsubscriptionRule.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"value != nil"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceUnsubscriptionRule.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"score != nil"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = SGMailIntelligenceUnsubscriptionRule;
  v15 = [(SGMailIntelligenceUnsubscriptionRule *)&v21 init];
  v16 = v15;
  if (v15)
  {
    v15->_unsubscriptionRuleField = a3;
    objc_storeStrong(&v15->_value, a4);
    objc_storeStrong(&v16->_mailCount, a5);
    objc_storeStrong(&v16->_score, a6);
  }

  return v16;
}

+ (id)prettyNameForUnsubscriptionRuleField:(int64_t)a3
{
  if (a3)
  {
    return @"sender's domain";
  }

  else
  {
    return @"sender";
  }
}

@end