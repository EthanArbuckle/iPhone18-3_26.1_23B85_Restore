@interface CPLContainerRelation
- (CPLContainerRelation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)proposedScopedIdentifierForItemScopedIdentifier:(id)identifier;
@end

@implementation CPLContainerRelation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLContainerRelation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPLContainerRelation;
  v5 = [(CPLContainerRelation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:coderCopy];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_keyAsset)
  {
    v5 = @"keyAsset";
  }

  else
  {
    v5 = &stru_1F57BD298;
  }

  return [v3 stringWithFormat:@"<%@ [position: %ld container: %@ %@]>", v4, self->_position, self->_containerIdentifier, v5];
}

- (id)proposedScopedIdentifierForItemScopedIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  v6 = [v4 alloc];
  identifier = [identifierCopy identifier];
  containerIdentifier = [(CPLContainerRelation *)self containerIdentifier];
  v9 = [v6 initWithFormat:@"%@-IN-%@", identifier, containerIdentifier];

  v10 = [CPLScopedIdentifier alloc];
  scopeIdentifier = [identifierCopy scopeIdentifier];

  v12 = [(CPLScopedIdentifier *)v10 initWithScopeIdentifier:scopeIdentifier identifier:v9];

  return v12;
}

@end