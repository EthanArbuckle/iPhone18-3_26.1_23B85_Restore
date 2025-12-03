@interface IDSFeatureToggleRetrievalResult
+ (id)resultWithError:(unint64_t)error;
+ (id)resultWithState:(unint64_t)state;
- (IDSFeatureToggleRetrievalResult)initWithCoder:(id)coder;
- (IDSFeatureToggleRetrievalResult)initWithState:(unint64_t)state error:(unint64_t)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSFeatureToggleRetrievalResult

+ (id)resultWithState:(unint64_t)state
{
  v3 = [[IDSFeatureToggleRetrievalResult alloc] initWithState:state error:0];

  return v3;
}

+ (id)resultWithError:(unint64_t)error
{
  v3 = [[IDSFeatureToggleRetrievalResult alloc] initWithState:0 error:error];

  return v3;
}

- (IDSFeatureToggleRetrievalResult)initWithState:(unint64_t)state error:(unint64_t)error
{
  v7.receiver = self;
  v7.super_class = IDSFeatureToggleRetrievalResult;
  result = [(IDSFeatureToggleRetrievalResult *)&v7 init];
  if (result)
  {
    result->_state = state;
    result->_error = error;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSFeatureToggleRetrievalResult alloc];
  state = [(IDSFeatureToggleRetrievalResult *)self state];
  error = [(IDSFeatureToggleRetrievalResult *)self error];

  return [(IDSFeatureToggleRetrievalResult *)v4 initWithState:state error:error];
}

- (IDSFeatureToggleRetrievalResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"st"];
  v6 = [coderCopy decodeIntegerForKey:@"err"];

  return [(IDSFeatureToggleRetrievalResult *)self initWithState:v5 error:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[IDSFeatureToggleRetrievalResult state](self forKey:{"state"), @"st"}];
  [coderCopy encodeInteger:-[IDSFeatureToggleRetrievalResult error](self forKey:{"error"), @"err"}];
}

@end