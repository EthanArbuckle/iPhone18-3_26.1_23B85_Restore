@interface IDSSOSMetric
+ (id)metricWithDomain:(unint64_t)domain type:(unint64_t)type error:(int64_t)error bagURL:(id)l;
- (IDSSOSMetric)initWithDomain:(unint64_t)domain type:(unint64_t)type error:(int64_t)error bagURL:(id)l;
@end

@implementation IDSSOSMetric

+ (id)metricWithDomain:(unint64_t)domain type:(unint64_t)type error:(int64_t)error bagURL:(id)l
{
  lCopy = l;
  v11 = [[self alloc] initWithDomain:domain type:type error:error bagURL:lCopy];

  return v11;
}

- (IDSSOSMetric)initWithDomain:(unint64_t)domain type:(unint64_t)type error:(int64_t)error bagURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = IDSSOSMetric;
  v12 = [(IDSSOSMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_sosDomain = domain;
    v12->_sosType = type;
    v12->_sosError = error;
    objc_storeStrong(&v12->_operationID, l);
  }

  return v13;
}

@end