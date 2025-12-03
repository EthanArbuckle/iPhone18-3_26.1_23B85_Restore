@interface CSListItemSection
- (CSListItemSection)initWithIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation CSListItemSection

- (CSListItemSection)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CSListItemSection;
  v6 = [(CSListItemSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSListItemSection *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSListItemSection *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(CSListItemSection *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_identifier withName:@"identifier"];

  return succinctDescriptionBuilder;
}

@end