@interface EMFollowUp
- (BOOL)containsDate:(id)date;
- (BOOL)isActive;
- (BOOL)isEqual:(id)equal;
- (EMFollowUp)initWithCoder:(id)coder;
- (EMFollowUp)initWithStartDate:(id)date endDate:(id)endDate jsonStringForModelEvaluationForSuggestions:(id)suggestions;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMFollowUp

- (EMFollowUp)initWithStartDate:(id)date endDate:(id)endDate jsonStringForModelEvaluationForSuggestions:(id)suggestions
{
  dateCopy = date;
  endDateCopy = endDate;
  suggestionsCopy = suggestions;
  v15.receiver = self;
  v15.super_class = EMFollowUp;
  v11 = [(EMFollowUp *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E699B848] pairWithFirst:dateCopy second:endDateCopy];
    pair = v11->_pair;
    v11->_pair = v12;

    objc_storeStrong(&v11->_jsonStringForModelEvaluationForSuggestions, suggestions);
  }

  return v11;
}

- (NSString)description
{
  pair = [(EMFollowUp *)self pair];
  v3 = [pair description];

  return v3;
}

- (NSDate)startDate
{
  pair = [(EMFollowUp *)self pair];
  first = [pair first];

  return first;
}

- (NSDate)endDate
{
  pair = [(EMFollowUp *)self pair];
  second = [pair second];

  return second;
}

- (BOOL)isActive
{
  v3 = [MEMORY[0x1E695DF00] now];
  LOBYTE(self) = [(EMFollowUp *)self containsDate:v3];

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pair = [(EMFollowUp *)self pair];
      pair2 = [(EMFollowUp *)equalCopy pair];
      v7 = [pair isEqualToPair:pair2];
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
  pair = [(EMFollowUp *)self pair];
  v3 = [pair hash];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(EMFollowUp *)self startDate];
  endDate = [(EMFollowUp *)self endDate];
  v6 = [v3 stringWithFormat:@"startDate:%@, endDate:%@, isActive:%d", startDate, endDate, -[EMFollowUp isActive](self, "isActive")];

  return v6;
}

- (EMFollowUp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_startDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_endDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_jsonStringForModelEvaluationForSuggestions"];
  v8 = [(EMFollowUp *)self initWithStartDate:v5 endDate:v6 jsonStringForModelEvaluationForSuggestions:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(EMFollowUp *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"EFPropertyKey_startDate"];

  endDate = [(EMFollowUp *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"EFPropertyKey_endDate"];

  jsonStringForModelEvaluationForSuggestions = [(EMFollowUp *)self jsonStringForModelEvaluationForSuggestions];
  [coderCopy encodeObject:jsonStringForModelEvaluationForSuggestions forKey:@"EFPropertyKey_jsonStringForModelEvaluationForSuggestions"];
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    startDate = [(EMFollowUp *)self startDate];
    if ([startDate ef_isEarlierThanOrEqualDate:dateCopy])
    {
      endDate = [(EMFollowUp *)self endDate];
      v7 = [endDate ef_isEarlierThanOrEqualDate:dateCopy] ^ 1;
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