@interface EMGeneratedSummary
+ (int64_t)consideredUrgentHourLimit;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUrgentForDate:(id)a3;
- (EMGeneratedSummary)initWithCoder:(id)a3;
- (EMGeneratedSummary)initWithTopLine:(id)a3 synopsis:(id)a4 urgent:(BOOL)a5 messageItemID:(id)a6;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMGeneratedSummary

+ (int64_t)consideredUrgentHourLimit
{
  if (consideredUrgentHourLimit_onceToken != -1)
  {
    +[EMGeneratedSummary consideredUrgentHourLimit];
  }

  return consideredUrgentHourLimit_urgentHourLimit;
}

void __47__EMGeneratedSummary_consideredUrgentHourLimit__block_invoke()
{
  v3 = [MEMORY[0x1E695E000] em_userDefaults];
  v0 = [v3 valueForKey:@"MessageConsideredUrgentHourLimit"];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 integerValue];
  }

  else
  {
    v2 = 72;
  }

  consideredUrgentHourLimit_urgentHourLimit = v2;
}

- (EMGeneratedSummary)initWithTopLine:(id)a3 synopsis:(id)a4 urgent:(BOOL)a5 messageItemID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = EMGeneratedSummary;
  v14 = [(EMGeneratedSummary *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_topLine, a3);
    objc_storeStrong(&v15->_synopsis, a4);
    v15->_urgent = a5;
    objc_storeStrong(&v15->_messageItemID, a6);
  }

  return v15;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(EMGeneratedSummary *)self topLine];
  v7 = [(EMGeneratedSummary *)self synopsis];
  v8 = [(EMGeneratedSummary *)self urgent];
  v9 = [(EMGeneratedSummary *)self messageItemID];
  v10 = [v3 stringWithFormat:@"<%@: %p>\n\ttopLine:%@\n\tsynopsis:%@\n\turgent: %d\n\tmessageItemID: %@", v5, self, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EMGeneratedSummary *)self topLine];
      v7 = [(EMGeneratedSummary *)v5 topLine];
      if (EFObjectsAreEqual())
      {
        v8 = [(EMGeneratedSummary *)self synopsis];
        v9 = [(EMGeneratedSummary *)v5 synopsis];
        if (EFObjectsAreEqual() && (v10 = [(EMGeneratedSummary *)self urgent], v10 == [(EMGeneratedSummary *)v5 urgent]))
        {
          v12 = [(EMGeneratedSummary *)self messageItemID];
          v13 = [(EMGeneratedSummary *)v5 messageItemID];
          v11 = EFObjectsAreEqual();
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)isUrgentForDate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:{+[EMGeneratedSummary consideredUrgentHourLimit](EMGeneratedSummary, "consideredUrgentHourLimit")}];
  if ([(EMGeneratedSummary *)self urgent])
  {
    v6 = [v4 ef_isLaterThanDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(EMGeneratedSummary *)self topLine];

  if (v3)
  {
    v4 = [(EMGeneratedSummary *)self topLine];
    v5 = [v4 hash] + 177573;
  }

  else
  {
    v5 = 5381;
  }

  v6 = [(EMGeneratedSummary *)self synopsis];

  if (v6)
  {
    v7 = [(EMGeneratedSummary *)self synopsis];
    v5 = [v7 hash] + 33 * v5;
  }

  v8 = 33 * v5 + [(EMGeneratedSummary *)self urgent];
  v9 = [(EMGeneratedSummary *)self messageItemID];

  if (v9)
  {
    v10 = [(EMGeneratedSummary *)self messageItemID];
    v8 = [v10 hash] + 33 * v8;
  }

  return v8;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E699B858];
  v4 = [(EMGeneratedSummary *)self topLine];
  v5 = [v4 string];
  v6 = [v3 ec_partiallyRedactedStringForSubjectOrSummary:v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(EMGeneratedSummary *)self urgent];
  v9 = [(EMGeneratedSummary *)self messageItemID];
  v10 = [v7 stringWithFormat:@"t:%@, u:%d, m:%@", v6, v8, v9];

  return v10;
}

- (EMGeneratedSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_topLine"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_synopsis"];
  v7 = [v4 decodeBoolForKey:@"EFPropertyKey_urgent"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_messageItemID"];
  v9 = [(EMGeneratedSummary *)self initWithTopLine:v5 synopsis:v6 urgent:v7 messageItemID:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(EMGeneratedSummary *)self topLine];
  [v7 encodeObject:v4 forKey:@"EFPropertyKey_topLine"];

  v5 = [(EMGeneratedSummary *)self synopsis];
  [v7 encodeObject:v5 forKey:@"EFPropertyKey_synopsis"];

  [v7 encodeBool:-[EMGeneratedSummary urgent](self forKey:{"urgent"), @"EFPropertyKey_urgent"}];
  v6 = [(EMGeneratedSummary *)self messageItemID];
  [v7 encodeObject:v6 forKey:@"EFPropertyKey_messageItemID"];
}

@end