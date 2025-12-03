@interface IDSFeatureToggleUpdateResult
+ (id)resultWithError:(unint64_t)error;
+ (id)successfulResult;
- (IDSFeatureToggleUpdateResult)initWithCoder:(id)coder;
- (IDSFeatureToggleUpdateResult)initWithError:(unint64_t)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSFeatureToggleUpdateResult

+ (id)successfulResult
{
  v2 = [[IDSFeatureToggleUpdateResult alloc] initWithError:0];

  return v2;
}

+ (id)resultWithError:(unint64_t)error
{
  v3 = [[IDSFeatureToggleUpdateResult alloc] initWithError:error];

  return v3;
}

- (IDSFeatureToggleUpdateResult)initWithError:(unint64_t)error
{
  v5.receiver = self;
  v5.super_class = IDSFeatureToggleUpdateResult;
  result = [(IDSFeatureToggleUpdateResult *)&v5 init];
  if (result)
  {
    result->_error = error;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSFeatureToggleUpdateResult alloc];
  error = [(IDSFeatureToggleUpdateResult *)self error];

  return [(IDSFeatureToggleUpdateResult *)v4 initWithError:error];
}

- (IDSFeatureToggleUpdateResult)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"err"];

  return [(IDSFeatureToggleUpdateResult *)self initWithError:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[IDSFeatureToggleUpdateResult error](self forKey:{"error"), @"err"}];
}

@end