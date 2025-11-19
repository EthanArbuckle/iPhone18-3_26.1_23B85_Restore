@interface EMTMeaningDescription
- (BOOL)isEqual:(id)a3;
- (EMTMeaningDescription)initWithDefinition:(id)a3;
@end

@implementation EMTMeaningDescription

- (EMTMeaningDescription)initWithDefinition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EMTMeaningDescription;
  v6 = [(EMTMeaningDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_definition, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    definition = self->_definition;
    v6 = [v4 definition];
    v7 = [(NSString *)definition isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end