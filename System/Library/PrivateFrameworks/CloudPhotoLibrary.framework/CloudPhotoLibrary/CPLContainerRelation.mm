@interface CPLContainerRelation
- (CPLContainerRelation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)proposedScopedIdentifierForItemScopedIdentifier:(id)a3;
@end

@implementation CPLContainerRelation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLContainerRelation)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLContainerRelation;
  v5 = [(CPLContainerRelation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
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

- (id)proposedScopedIdentifierForItemScopedIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 identifier];
  v8 = [(CPLContainerRelation *)self containerIdentifier];
  v9 = [v6 initWithFormat:@"%@-IN-%@", v7, v8];

  v10 = [CPLScopedIdentifier alloc];
  v11 = [v5 scopeIdentifier];

  v12 = [(CPLScopedIdentifier *)v10 initWithScopeIdentifier:v11 identifier:v9];

  return v12;
}

@end