@interface HFItemUpdateOutcome
+ (id)outcomeWithResults:(id)results;
- (BOOL)isEqual:(id)equal;
- (HFItemUpdateOutcome)init;
- (HFItemUpdateOutcome)initWithResults:(id)results type:(unint64_t)type;
- (NSArray)allKeys;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)hash;
@end

@implementation HFItemUpdateOutcome

+ (id)outcomeWithResults:(id)results
{
  resultsCopy = results;
  v4 = [objc_alloc(objc_opt_class()) initWithResults:resultsCopy];

  return v4;
}

- (HFItemUpdateOutcome)initWithResults:(id)results type:(unint64_t)type
{
  resultsCopy = results;
  if (!resultsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFItemUpdateOutcome.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"results != nil"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFItemUpdateOutcome.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"[results isKindOfClass:[NSDictionary class]]"}];
  }

  v14.receiver = self;
  v14.super_class = HFItemUpdateOutcome;
  v9 = [(HFItemUpdateOutcome *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_results, results);
    v10->_outcomeType = type;
  }

  return v10;
}

- (HFItemUpdateOutcome)init
{
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v4 = [(HFItemUpdateOutcome *)self initWithResults:dictionary];

  return v4;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  results = [(HFItemUpdateOutcome *)self results];
  v6 = [results objectForKeyedSubscript:subscriptCopy];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HFMutableItemUpdateOutcome alloc];
  results = [(HFItemUpdateOutcome *)self results];
  v6 = [(HFMutableItemUpdateOutcome *)v4 initWithResults:results type:[(HFItemUpdateOutcome *)self outcomeType]];

  return v6;
}

- (unint64_t)hash
{
  results = [(HFItemUpdateOutcome *)self results];
  v3 = [results hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      results = [(HFItemUpdateOutcome *)v5 results];
      results2 = [(HFItemUpdateOutcome *)self results];
      if (results == results2)
      {
        v10 = 1;
      }

      else
      {
        results3 = [(HFItemUpdateOutcome *)v5 results];
        results4 = [(HFItemUpdateOutcome *)self results];
        v10 = [results3 isEqualToDictionary:results4];
      }

      outcomeType = [(HFItemUpdateOutcome *)v5 outcomeType];
      v11 = (outcomeType == [(HFItemUpdateOutcome *)self outcomeType]) & v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (NSArray)allKeys
{
  results = [(HFItemUpdateOutcome *)self results];
  allKeys = [results allKeys];

  return allKeys;
}

- (id)description
{
  outcomeType = [(HFItemUpdateOutcome *)self outcomeType];
  v4 = @"Not set";
  if (outcomeType == 1)
  {
    v4 = @"No new data";
  }

  if (outcomeType == 2)
  {
    v5 = @"New data";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  results = [(HFItemUpdateOutcome *)self results];
  v9 = [v6 stringWithFormat:@"<%@: %p> type: %@, results: %@>", v7, self, v5, results];

  return v9;
}

@end