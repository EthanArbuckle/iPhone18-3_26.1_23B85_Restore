@interface CSScenario
- (BOOL)isEqual:(id)equal;
- (CSScenario)initWithIdentifier:(id)identifier andCriteria:(id)criteria;
@end

@implementation CSScenario

- (CSScenario)initWithIdentifier:(id)identifier andCriteria:(id)criteria
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  v12.receiver = self;
  v12.super_class = CSScenario;
  v9 = [(CSScenario *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_scenarioCriteria, criteria);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if ([(CSScenario *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [(CSScenario *)v5 identifier];
    if ([(NSString *)identifier isEqualToString:identifier])
    {
      scenarioCriteria = self->_scenarioCriteria;
      scenarioCriteria = [(CSScenario *)v5 scenarioCriteria];
      v10 = [(NSDictionary *)scenarioCriteria isEqualToDictionary:scenarioCriteria];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end