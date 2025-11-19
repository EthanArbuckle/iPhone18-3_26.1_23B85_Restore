@interface CSAttSiriRequestContext
- (CSAttSiriRequestContext)initWithCoder:(id)a3;
- (CSAttSiriRequestContext)initWithRequestSource:(unint64_t)a3;
- (id)description;
@end

@implementation CSAttSiriRequestContext

- (id)description
{
  v2 = self->_reqSrc - 1;
  if (v2 > 2)
  {
    return @"SiriFollowupforIdleAndQuiet";
  }

  else
  {
    return *(&off_10024E5B8 + v2);
  }
}

- (CSAttSiriRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CSAttSiriRequestContext;
  v5 = [(CSAttSiriRequestContext *)&v7 init];
  if (v5)
  {
    v5->_reqSrc = [v4 decodeIntegerForKey:@"CSAttSiriRequestSourceKey"];
  }

  return v5;
}

- (CSAttSiriRequestContext)initWithRequestSource:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CSAttSiriRequestContext;
  result = [(CSAttSiriRequestContext *)&v5 init];
  if (result)
  {
    result->_reqSrc = a3;
  }

  return result;
}

@end