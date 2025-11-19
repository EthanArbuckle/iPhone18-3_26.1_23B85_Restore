@interface IDSFeatureToggleUpdateResult
+ (id)resultWithError:(unint64_t)a3;
+ (id)successfulResult;
- (IDSFeatureToggleUpdateResult)initWithCoder:(id)a3;
- (IDSFeatureToggleUpdateResult)initWithError:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSFeatureToggleUpdateResult

+ (id)successfulResult
{
  v2 = [[IDSFeatureToggleUpdateResult alloc] initWithError:0];

  return v2;
}

+ (id)resultWithError:(unint64_t)a3
{
  v3 = [[IDSFeatureToggleUpdateResult alloc] initWithError:a3];

  return v3;
}

- (IDSFeatureToggleUpdateResult)initWithError:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = IDSFeatureToggleUpdateResult;
  result = [(IDSFeatureToggleUpdateResult *)&v5 init];
  if (result)
  {
    result->_error = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IDSFeatureToggleUpdateResult alloc];
  v5 = [(IDSFeatureToggleUpdateResult *)self error];

  return [(IDSFeatureToggleUpdateResult *)v4 initWithError:v5];
}

- (IDSFeatureToggleUpdateResult)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"err"];

  return [(IDSFeatureToggleUpdateResult *)self initWithError:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[IDSFeatureToggleUpdateResult error](self forKey:{"error"), @"err"}];
}

@end