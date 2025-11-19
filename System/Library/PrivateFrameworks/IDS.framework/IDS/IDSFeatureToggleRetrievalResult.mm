@interface IDSFeatureToggleRetrievalResult
+ (id)resultWithError:(unint64_t)a3;
+ (id)resultWithState:(unint64_t)a3;
- (IDSFeatureToggleRetrievalResult)initWithCoder:(id)a3;
- (IDSFeatureToggleRetrievalResult)initWithState:(unint64_t)a3 error:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSFeatureToggleRetrievalResult

+ (id)resultWithState:(unint64_t)a3
{
  v3 = [[IDSFeatureToggleRetrievalResult alloc] initWithState:a3 error:0];

  return v3;
}

+ (id)resultWithError:(unint64_t)a3
{
  v3 = [[IDSFeatureToggleRetrievalResult alloc] initWithState:0 error:a3];

  return v3;
}

- (IDSFeatureToggleRetrievalResult)initWithState:(unint64_t)a3 error:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = IDSFeatureToggleRetrievalResult;
  result = [(IDSFeatureToggleRetrievalResult *)&v7 init];
  if (result)
  {
    result->_state = a3;
    result->_error = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IDSFeatureToggleRetrievalResult alloc];
  v5 = [(IDSFeatureToggleRetrievalResult *)self state];
  v6 = [(IDSFeatureToggleRetrievalResult *)self error];

  return [(IDSFeatureToggleRetrievalResult *)v4 initWithState:v5 error:v6];
}

- (IDSFeatureToggleRetrievalResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"st"];
  v6 = [v4 decodeIntegerForKey:@"err"];

  return [(IDSFeatureToggleRetrievalResult *)self initWithState:v5 error:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[IDSFeatureToggleRetrievalResult state](self forKey:{"state"), @"st"}];
  [v4 encodeInteger:-[IDSFeatureToggleRetrievalResult error](self forKey:{"error"), @"err"}];
}

@end