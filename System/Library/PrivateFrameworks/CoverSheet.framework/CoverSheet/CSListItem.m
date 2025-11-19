@interface CSListItem
- (CSListItem)initWithIdentifier:(id)a3 groupingIdentifier:(id)a4 sectionIdentifier:(id)a5;
- (NSString)description;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation CSListItem

- (CSListItem)initWithIdentifier:(id)a3 groupingIdentifier:(id)a4 sectionIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CSListItem;
  v12 = [(CSListItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_groupingIdentifier, a4);
    objc_storeStrong(&v13->_sectionIdentifier, a5);
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
  v2 = [(CSListItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSListItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(CSListItem *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_identifier withName:@"identifier"];
  v6 = [v4 appendObject:self->_groupingIdentifier withName:@"groupingIdentifier"];
  v7 = [v4 appendObject:self->_sectionIdentifier withName:@"sectionIdentifier"];
  v8 = [v4 appendObject:self->_contentHost withName:@"contentHost"];
  v9 = [v4 appendObject:self->_onTapAction withName:@"onTapAction"];
  v10 = [v4 appendObject:self->_swipeActions withName:@"swipeActions"];
  v11 = [v4 appendObject:self->_contentCreatedDate withName:@"contentCreateDate"];
  v12 = [v4 appendDouble:@"relevanceScore" withName:2 decimalPrecision:self->_relevanceScore];

  return v4;
}

@end