@interface IDSSOSMetric
+ (id)metricWithDomain:(unint64_t)a3 type:(unint64_t)a4 error:(int64_t)a5 bagURL:(id)a6;
- (IDSSOSMetric)initWithDomain:(unint64_t)a3 type:(unint64_t)a4 error:(int64_t)a5 bagURL:(id)a6;
@end

@implementation IDSSOSMetric

+ (id)metricWithDomain:(unint64_t)a3 type:(unint64_t)a4 error:(int64_t)a5 bagURL:(id)a6
{
  v10 = a6;
  v11 = [[a1 alloc] initWithDomain:a3 type:a4 error:a5 bagURL:v10];

  return v11;
}

- (IDSSOSMetric)initWithDomain:(unint64_t)a3 type:(unint64_t)a4 error:(int64_t)a5 bagURL:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = IDSSOSMetric;
  v12 = [(IDSSOSMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_sosDomain = a3;
    v12->_sosType = a4;
    v12->_sosError = a5;
    objc_storeStrong(&v12->_operationID, a6);
  }

  return v13;
}

@end