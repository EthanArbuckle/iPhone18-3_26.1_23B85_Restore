@interface PKPassRelevancyModel
- (PKPassRelevancyModel)initWithCoder:(id)a3;
- (PKPassRelevancyModel)initWithRelevancyActive:(BOOL)a3;
- (id)_init;
- (id)description;
@end

@implementation PKPassRelevancyModel

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPassRelevancyModel;
  return [(PKPassRelevancyModel *)&v3 init];
}

- (PKPassRelevancyModel)initWithRelevancyActive:(BOOL)a3
{
  result = [(PKPassRelevancyModel *)self _init];
  if (result)
  {
    result->_relevancyActive = a3;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_relevancyActive)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"relevancy active: %@", v5];
  [v4 appendFormat:@">"];

  return v4;
}

- (PKPassRelevancyModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPassRelevancyModel *)self _init];
  if (v5)
  {
    v5->_relevancyActive = [v4 decodeBoolForKey:@"relevancyActive"];
  }

  return v5;
}

@end