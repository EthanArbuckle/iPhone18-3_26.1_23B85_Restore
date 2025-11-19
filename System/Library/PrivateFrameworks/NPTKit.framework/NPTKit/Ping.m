@interface Ping
- (NSDictionary)dictionary;
- (Ping)init;
- (Ping)initWithCoder:(id)a3;
- (double)latency;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Ping

- (Ping)init
{
  v7.receiver = self;
  v7.super_class = Ping;
  v2 = [(Ping *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(Ping *)v2 setWasSuccessful:0];
    v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [(Ping *)v3 setStartTime:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [(Ping *)v3 setEndTime:v5];
  }

  return v3;
}

- (double)latency
{
  if (![(Ping *)self wasSuccessful])
  {
    return 0.0;
  }

  v3 = [(Ping *)self endTime];
  v4 = [(Ping *)self startTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (NSDictionary)dictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  v5 = [(Ping *)self startTime];
  v6 = [v4 stringFromDate:v5];

  v7 = [(Ping *)self endTime];
  v8 = [v4 stringFromDate:v7];

  [v3 setValue:v6 forKey:@"start_time"];
  [v3 setValue:v8 forKey:@"end_time"];
  v9 = MEMORY[0x277CCABB0];
  [(Ping *)self latency];
  v10 = [v9 numberWithDouble:?];
  [v3 setValue:v10 forKey:@"latency"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[Ping wasSuccessful](self, "wasSuccessful")}];
  [v3 setValue:v11 forKey:@"was_successful"];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[Ping wasSuccessful](self forKey:{"wasSuccessful"), @"wasSuccessful"}];
  v5 = [(Ping *)self startTime];
  [v4 encodeObject:v5 forKey:@"startTime"];

  v6 = [(Ping *)self endTime];
  [v4 encodeObject:v6 forKey:@"endTime"];
}

- (Ping)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = Ping;
  v3 = a3;
  v4 = [(Ping *)&v8 init];
  -[Ping setWasSuccessful:](v4, "setWasSuccessful:", [v3 decodeBoolForKey:{@"wasSuccessful", v8.receiver, v8.super_class}]);
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  [(Ping *)v4 setStartTime:v5];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];

  [(Ping *)v4 setEndTime:v6];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[Ping allocWithZone:?]];
  v5 = [(Ping *)self startTime];
  [(Ping *)v4 setStartTime:v5];

  v6 = [(Ping *)self endTime];
  [(Ping *)v4 setEndTime:v6];

  [(Ping *)v4 setWasSuccessful:[(Ping *)self wasSuccessful]];
  return v4;
}

@end