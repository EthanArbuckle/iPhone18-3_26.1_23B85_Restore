@interface CSListItem
- (CSListItem)initWithIdentifier:(id)identifier groupingIdentifier:(id)groupingIdentifier sectionIdentifier:(id)sectionIdentifier;
- (NSString)description;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation CSListItem

- (CSListItem)initWithIdentifier:(id)identifier groupingIdentifier:(id)groupingIdentifier sectionIdentifier:(id)sectionIdentifier
{
  identifierCopy = identifier;
  groupingIdentifierCopy = groupingIdentifier;
  sectionIdentifierCopy = sectionIdentifier;
  v15.receiver = self;
  v15.super_class = CSListItem;
  v12 = [(CSListItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_groupingIdentifier, groupingIdentifier);
    objc_storeStrong(&v13->_sectionIdentifier, sectionIdentifier);
  }

  return v13;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = CSListItem;
  v3 = [(CSListItem *)&v6 description];
  v4 = [(CSListItem *)self descriptionWithMultilinePrefix:v3];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSListItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSListItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(CSListItem *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_identifier withName:@"identifier"];
  v6 = [succinctDescriptionBuilder appendObject:self->_groupingIdentifier withName:@"groupingIdentifier"];
  v7 = [succinctDescriptionBuilder appendObject:self->_sectionIdentifier withName:@"sectionIdentifier"];
  v8 = [succinctDescriptionBuilder appendObject:self->_contentHost withName:@"contentHost"];
  v9 = [succinctDescriptionBuilder appendObject:self->_onTapAction withName:@"onTapAction"];
  v10 = [succinctDescriptionBuilder appendObject:self->_swipeActions withName:@"swipeActions"];
  v11 = [succinctDescriptionBuilder appendObject:self->_contentCreatedDate withName:@"contentCreateDate"];
  v12 = [succinctDescriptionBuilder appendDouble:@"relevanceScore" withName:2 decimalPrecision:self->_relevanceScore];

  return succinctDescriptionBuilder;
}

@end