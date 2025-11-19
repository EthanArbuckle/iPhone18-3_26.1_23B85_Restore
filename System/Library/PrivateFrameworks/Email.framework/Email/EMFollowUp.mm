@interface EMFollowUp
- (BOOL)containsDate:(id)a3;
- (BOOL)isActive;
- (BOOL)isEqual:(id)a3;
- (EMFollowUp)initWithCoder:(id)a3;
- (EMFollowUp)initWithStartDate:(id)a3 endDate:(id)a4 jsonStringForModelEvaluationForSuggestions:(id)a5;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMFollowUp

- (EMFollowUp)initWithStartDate:(id)a3 endDate:(id)a4 jsonStringForModelEvaluationForSuggestions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = EMFollowUp;
  v11 = [(EMFollowUp *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E699B848] pairWithFirst:v8 second:v9];
    pair = v11->_pair;
    v11->_pair = v12;

    objc_storeStrong(&v11->_jsonStringForModelEvaluationForSuggestions, a5);
  }

  return v11;
}

- (NSString)description
{
  v2 = [(EMFollowUp *)self pair];
  v3 = [v2 description];

  return v3;
}

- (NSDate)startDate
{
  v2 = [(EMFollowUp *)self pair];
  v3 = [v2 first];

  return v3;
}

- (NSDate)endDate
{
  v2 = [(EMFollowUp *)self pair];
  v3 = [v2 second];

  return v3;
}

- (BOOL)isActive
{
  v3 = [MEMORY[0x1E695DF00] now];
  LOBYTE(self) = [(EMFollowUp *)self containsDate:v3];

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(EMFollowUp *)self pair];
      v6 = [(EMFollowUp *)v4 pair];
      v7 = [v5 isEqualToPair:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(EMFollowUp *)self pair];
  v3 = [v2 hash];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EMFollowUp *)self startDate];
  v5 = [(EMFollowUp *)self endDate];
  v6 = [v3 stringWithFormat:@"startDate:%@, endDate:%@, isActive:%d", v4, v5, -[EMFollowUp isActive](self, "isActive")];

  return v6;
}

- (EMFollowUp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_startDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_endDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_jsonStringForModelEvaluationForSuggestions"];
  v8 = [(EMFollowUp *)self initWithStartDate:v5 endDate:v6 jsonStringForModelEvaluationForSuggestions:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(EMFollowUp *)self startDate];
  [v7 encodeObject:v4 forKey:@"EFPropertyKey_startDate"];

  v5 = [(EMFollowUp *)self endDate];
  [v7 encodeObject:v5 forKey:@"EFPropertyKey_endDate"];

  v6 = [(EMFollowUp *)self jsonStringForModelEvaluationForSuggestions];
  [v7 encodeObject:v6 forKey:@"EFPropertyKey_jsonStringForModelEvaluationForSuggestions"];
}

- (BOOL)containsDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(EMFollowUp *)self startDate];
    if ([v5 ef_isEarlierThanOrEqualDate:v4])
    {
      v6 = [(EMFollowUp *)self endDate];
      v7 = [v6 ef_isEarlierThanOrEqualDate:v4] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end