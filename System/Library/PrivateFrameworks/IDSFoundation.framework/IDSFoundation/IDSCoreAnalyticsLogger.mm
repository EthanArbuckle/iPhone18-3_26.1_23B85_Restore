@interface IDSCoreAnalyticsLogger
+ (id)defaultLogger;
- (IDSCoreAnalyticsLogger)initWithDomain:(id)a3;
- (void)logMetric:(id)a3;
@end

@implementation IDSCoreAnalyticsLogger

+ (id)defaultLogger
{
  v2 = [[a1 alloc] initWithDomain:@"com.apple.IDS"];

  return v2;
}

- (IDSCoreAnalyticsLogger)initWithDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSCoreAnalyticsLogger;
  v6 = [(IDSCoreAnalyticsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, a3);
  }

  return v7;
}

- (void)logMetric:(id)a3
{
  v10 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(IDSCoreAnalyticsLogger *)self domain];
  v6 = [v10 name];
  v7 = [v4 stringWithFormat:@"%@.%@", v5, v6];

  if (qword_1EB2BC178 != -1)
  {
    sub_1A7E20520();
  }

  v8 = off_1EB2BC170;
  if (off_1EB2BC170)
  {
    v9 = [v10 dictionaryRepresentation];
    v8(v7, v9);
  }
}

@end