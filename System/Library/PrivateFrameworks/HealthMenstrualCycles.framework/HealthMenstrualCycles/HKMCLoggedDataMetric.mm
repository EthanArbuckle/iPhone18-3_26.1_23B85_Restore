@interface HKMCLoggedDataMetric
- (HKMCLoggedDataMetric)initWithMethod:(id)method;
- (NSDictionary)eventPayload;
- (id)description;
@end

@implementation HKMCLoggedDataMetric

- (HKMCLoggedDataMetric)initWithMethod:(id)method
{
  methodCopy = method;
  v9.receiver = self;
  v9.super_class = HKMCLoggedDataMetric;
  v6 = [(HKMCLoggedDataMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_method, method);
  }

  return v7;
}

- (NSDictionary)eventPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  method = [(HKMCLoggedDataMetric *)self method];
  [v3 setObject:method forKeyedSubscript:@"method"];

  dayIndexLoggingOffset = [(HKMCLoggedDataMetric *)self dayIndexLoggingOffset];
  [v3 setObject:dayIndexLoggingOffset forKeyedSubscript:@"dayIndexLoggingOffset"];

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  method = [(HKMCLoggedDataMetric *)self method];
  dayIndexLoggingOffset = [(HKMCLoggedDataMetric *)self dayIndexLoggingOffset];
  v7 = [v3 stringWithFormat:@"<%@:%p method:%@ dayIndexLoggingOffset:%@>", v4, self, method, dayIndexLoggingOffset];

  return v7;
}

@end