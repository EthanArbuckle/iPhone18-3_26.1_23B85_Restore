@interface HKMCLoggedDataMetric
- (HKMCLoggedDataMetric)initWithMethod:(id)a3;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCLoggedDataMetric

- (HKMCLoggedDataMetric)initWithMethod:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKMCLoggedDataMetric;
  v6 = [(HKMCLoggedDataMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_method, a3);
  }

  return v7;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HKMCLoggedDataMetric *)self method];
  [v3 setObject:v4 forKeyedSubscript:@"method"];

  v5 = [(HKMCLoggedDataMetric *)self dayIndexLoggingOffset];
  [v3 setObject:v5 forKeyedSubscript:@"dayIndexLoggingOffset"];

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKMCLoggedDataMetric *)self method];
  v6 = [(HKMCLoggedDataMetric *)self dayIndexLoggingOffset];
  v7 = [v3 stringWithFormat:@"<%@:%p method:%@ dayIndexLoggingOffset:%@>", v4, self, v5, v6];

  return v7;
}

@end