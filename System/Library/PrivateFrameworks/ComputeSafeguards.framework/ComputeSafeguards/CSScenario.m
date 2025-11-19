@interface CSScenario
- (BOOL)isEqual:(id)a3;
- (CSScenario)initWithIdentifier:(id)a3 andCriteria:(id)a4;
@end

@implementation CSScenario

- (CSScenario)initWithIdentifier:(id)a3 andCriteria:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSScenario;
  v9 = [(CSScenario *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_scenarioCriteria, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else if ([(CSScenario *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    identifier = self->_identifier;
    v7 = [(CSScenario *)v5 identifier];
    if ([(NSString *)identifier isEqualToString:v7])
    {
      scenarioCriteria = self->_scenarioCriteria;
      v9 = [(CSScenario *)v5 scenarioCriteria];
      v10 = [(NSDictionary *)scenarioCriteria isEqualToDictionary:v9];
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