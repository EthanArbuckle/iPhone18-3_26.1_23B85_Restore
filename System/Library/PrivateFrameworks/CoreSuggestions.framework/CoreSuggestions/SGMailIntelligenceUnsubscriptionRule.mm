@interface SGMailIntelligenceUnsubscriptionRule
+ (id)prettyNameForUnsubscriptionRuleField:(int64_t)field;
- (SGMailIntelligenceUnsubscriptionRule)initWithCoder:(id)coder;
- (SGMailIntelligenceUnsubscriptionRule)initWithUnsubscriptionRuleField:(int64_t)field tokenCounts:(id)counts;
- (SGMailIntelligenceUnsubscriptionRule)initWithUnsubscriptionRuleField:(int64_t)field value:(id)value mailCount:(id)count score:(id)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (SGMailIntelligenceUnsubscriptionRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = sgMailIntelligenceLogHandle();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"unsubscriptionRuleField" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = objc_opt_class();
  v11 = sgMailIntelligenceLogHandle();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"value" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v11];

  v13 = MEMORY[0x1E69C5D78];
  v14 = objc_opt_class();
  v15 = sgMailIntelligenceLogHandle();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"mailCount" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v15];

  v17 = MEMORY[0x1E69C5D78];
  v18 = objc_opt_class();
  v19 = sgMailIntelligenceLogHandle();
  v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"score" withCoder:coderCopy expectNonNull:1 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v19];

  v21 = 0;
  if (v8 && v12 && v16 && v20)
  {
    error = [coderCopy error];

    if (error)
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  unsubscriptionRuleField = self->_unsubscriptionRuleField;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:unsubscriptionRuleField];
  [coderCopy encodeObject:v6 forKey:@"unsubscriptionRuleField"];

  [coderCopy encodeObject:self->_value forKey:@"value"];
  [coderCopy encodeObject:self->_mailCount forKey:@"mailCount"];
  [coderCopy encodeObject:self->_score forKey:@"score"];
}

- (SGMailIntelligenceUnsubscriptionRule)initWithUnsubscriptionRuleField:(int64_t)field tokenCounts:(id)counts
{
  countsCopy = counts;
  if (!countsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceUnsubscriptionRule.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"tokenCounts != nil"}];
  }

  v28.receiver = self;
  v28.super_class = SGMailIntelligenceUnsubscriptionRule;
  v8 = [(SGMailIntelligenceUnsubscriptionRule *)&v28 init];
  v9 = v8;
  if (v8)
  {
    v8->_unsubscriptionRuleField = field;
    token = [countsCopy token];
    value = v9->_value;
    v9->_value = token;

    salientCount = [countsCopy salientCount];
    unsignedIntegerValue = [salientCount unsignedIntegerValue];
    regularCount = [countsCopy regularCount];
    v15 = [regularCount unsignedIntegerValue] + unsignedIntegerValue;

    regularCount2 = 0x1E696A000;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    mailCount = v9->_mailCount;
    v9->_mailCount = v17;

    v19 = MEMORY[0x1E696AD98];
    if (v15)
    {
      regularCount2 = [countsCopy regularCount];
      [regularCount2 doubleValue];
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

- (SGMailIntelligenceUnsubscriptionRule)initWithUnsubscriptionRuleField:(int64_t)field value:(id)value mailCount:(id)count score:(id)score
{
  valueCopy = value;
  countCopy = count;
  scoreCopy = score;
  if (valueCopy)
  {
    if (countCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceUnsubscriptionRule.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"mailCount != nil"}];

    if (scoreCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceUnsubscriptionRule.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"value != nil"}];

  if (!countCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (scoreCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGMailIntelligenceUnsubscriptionRule.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"score != nil"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = SGMailIntelligenceUnsubscriptionRule;
  v15 = [(SGMailIntelligenceUnsubscriptionRule *)&v21 init];
  v16 = v15;
  if (v15)
  {
    v15->_unsubscriptionRuleField = field;
    objc_storeStrong(&v15->_value, value);
    objc_storeStrong(&v16->_mailCount, count);
    objc_storeStrong(&v16->_score, score);
  }

  return v16;
}

+ (id)prettyNameForUnsubscriptionRuleField:(int64_t)field
{
  if (field)
  {
    return @"sender's domain";
  }

  else
  {
    return @"sender";
  }
}

@end