@interface EMTMeaningDescription
- (BOOL)isEqual:(id)equal;
- (EMTMeaningDescription)initWithDefinition:(id)definition;
@end

@implementation EMTMeaningDescription

- (EMTMeaningDescription)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v9.receiver = self;
  v9.super_class = EMTMeaningDescription;
  v6 = [(EMTMeaningDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_definition, definition);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    definition = self->_definition;
    definition = [equalCopy definition];
    v7 = [(NSString *)definition isEqual:definition];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end