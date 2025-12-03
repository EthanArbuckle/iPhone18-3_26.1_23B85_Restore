@interface Ping
- (NSDictionary)dictionary;
- (Ping)init;
- (Ping)initWithCoder:(id)coder;
- (double)latency;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

  endTime = [(Ping *)self endTime];
  startTime = [(Ping *)self startTime];
  [endTime timeIntervalSinceDate:startTime];
  v6 = v5;

  return v6;
}

- (NSDictionary)dictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSxxx"];
  startTime = [(Ping *)self startTime];
  v6 = [v4 stringFromDate:startTime];

  endTime = [(Ping *)self endTime];
  v8 = [v4 stringFromDate:endTime];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[Ping wasSuccessful](self forKey:{"wasSuccessful"), @"wasSuccessful"}];
  startTime = [(Ping *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  endTime = [(Ping *)self endTime];
  [coderCopy encodeObject:endTime forKey:@"endTime"];
}

- (Ping)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = Ping;
  coderCopy = coder;
  v4 = [(Ping *)&v8 init];
  -[Ping setWasSuccessful:](v4, "setWasSuccessful:", [coderCopy decodeBoolForKey:{@"wasSuccessful", v8.receiver, v8.super_class}]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  [(Ping *)v4 setStartTime:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];

  [(Ping *)v4 setEndTime:v6];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[Ping allocWithZone:?]];
  startTime = [(Ping *)self startTime];
  [(Ping *)v4 setStartTime:startTime];

  endTime = [(Ping *)self endTime];
  [(Ping *)v4 setEndTime:endTime];

  [(Ping *)v4 setWasSuccessful:[(Ping *)self wasSuccessful]];
  return v4;
}

@end