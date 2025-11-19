@interface HFItemUpdateOutcome
+ (id)outcomeWithResults:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HFItemUpdateOutcome)init;
- (HFItemUpdateOutcome)initWithResults:(id)a3 type:(unint64_t)a4;
- (NSArray)allKeys;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (unint64_t)hash;
@end

@implementation HFItemUpdateOutcome

+ (id)outcomeWithResults:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResults:v3];

  return v4;
}

- (HFItemUpdateOutcome)initWithResults:(id)a3 type:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HFItemUpdateOutcome.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"results != nil"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HFItemUpdateOutcome.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"[results isKindOfClass:[NSDictionary class]]"}];
  }

  v14.receiver = self;
  v14.super_class = HFItemUpdateOutcome;
  v9 = [(HFItemUpdateOutcome *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_results, a3);
    v10->_outcomeType = a4;
  }

  return v10;
}

- (HFItemUpdateOutcome)init
{
  v3 = [MEMORY[0x277CBEAC0] dictionary];
  v4 = [(HFItemUpdateOutcome *)self initWithResults:v3];

  return v4;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(HFItemUpdateOutcome *)self results];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HFMutableItemUpdateOutcome alloc];
  v5 = [(HFItemUpdateOutcome *)self results];
  v6 = [(HFMutableItemUpdateOutcome *)v4 initWithResults:v5 type:[(HFItemUpdateOutcome *)self outcomeType]];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(HFItemUpdateOutcome *)self results];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HFItemUpdateOutcome *)v5 results];
      v7 = [(HFItemUpdateOutcome *)self results];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HFItemUpdateOutcome *)v5 results];
        v9 = [(HFItemUpdateOutcome *)self results];
        v10 = [v8 isEqualToDictionary:v9];
      }

      v12 = [(HFItemUpdateOutcome *)v5 outcomeType];
      v11 = (v12 == [(HFItemUpdateOutcome *)self outcomeType]) & v10;
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
  v2 = [(HFItemUpdateOutcome *)self results];
  v3 = [v2 allKeys];

  return v3;
}

- (id)description
{
  v3 = [(HFItemUpdateOutcome *)self outcomeType];
  v4 = @"Not set";
  if (v3 == 1)
  {
    v4 = @"No new data";
  }

  if (v3 == 2)
  {
    v5 = @"New data";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = [(HFItemUpdateOutcome *)self results];
  v9 = [v6 stringWithFormat:@"<%@: %p> type: %@, results: %@>", v7, self, v5, v8];

  return v9;
}

@end