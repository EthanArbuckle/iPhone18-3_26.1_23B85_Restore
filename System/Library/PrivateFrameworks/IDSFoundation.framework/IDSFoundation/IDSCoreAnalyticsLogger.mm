@interface IDSCoreAnalyticsLogger
+ (id)defaultLogger;
- (IDSCoreAnalyticsLogger)initWithDomain:(id)domain;
- (void)logMetric:(id)metric;
@end

@implementation IDSCoreAnalyticsLogger

+ (id)defaultLogger
{
  v2 = [[self alloc] initWithDomain:@"com.apple.IDS"];

  return v2;
}

- (IDSCoreAnalyticsLogger)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = IDSCoreAnalyticsLogger;
  v6 = [(IDSCoreAnalyticsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, domain);
  }

  return v7;
}

- (void)logMetric:(id)metric
{
  metricCopy = metric;
  v4 = MEMORY[0x1E696AEC0];
  domain = [(IDSCoreAnalyticsLogger *)self domain];
  name = [metricCopy name];
  v7 = [v4 stringWithFormat:@"%@.%@", domain, name];

  if (qword_1EB2BC178 != -1)
  {
    sub_1A7E20520();
  }

  v8 = off_1EB2BC170;
  if (off_1EB2BC170)
  {
    dictionaryRepresentation = [metricCopy dictionaryRepresentation];
    v8(v7, dictionaryRepresentation);
  }
}

@end