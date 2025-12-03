@interface PKPassRelevancyModel
- (PKPassRelevancyModel)initWithCoder:(id)coder;
- (PKPassRelevancyModel)initWithRelevancyActive:(BOOL)active;
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

- (PKPassRelevancyModel)initWithRelevancyActive:(BOOL)active
{
  result = [(PKPassRelevancyModel *)self _init];
  if (result)
  {
    result->_relevancyActive = active;
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

- (PKPassRelevancyModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PKPassRelevancyModel *)self _init];
  if (_init)
  {
    _init->_relevancyActive = [coderCopy decodeBoolForKey:@"relevancyActive"];
  }

  return _init;
}

@end