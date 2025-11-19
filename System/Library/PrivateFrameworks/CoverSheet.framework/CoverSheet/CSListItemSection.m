@interface CSListItemSection
- (CSListItemSection)initWithIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation CSListItemSection

- (CSListItemSection)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSListItemSection;
  v6 = [(CSListItemSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (id)succinctDescription
{
  v2 = [(CSListItemSection *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSListItemSection *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(CSListItemSection *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_identifier withName:@"identifier"];

  return v4;
}

@end