@interface _CPLOptimisticIDMapping
- (_CPLOptimisticIDMapping)initWithIDMapping:(id)mapping;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final;
- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)records;
@end

@implementation _CPLOptimisticIDMapping

- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)records
{
  recordsCopy = records;
  v5 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:recordsCopy];
  if (!v5)
  {
    v5 = [recordsCopy copy];
  }

  return v5;
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  identifierCopy = identifier;
  v7 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:identifierCopy isFinal:final];
  if (!v7)
  {
    v7 = [identifierCopy copy];
  }

  return v7;
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)identifier isFinal:(BOOL *)final
{
  identifierCopy = identifier;
  v7 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:identifierCopy isFinal:final];
  if (!v7)
  {
    v8 = [identifierCopy copy];
    v7 = [(CPLEngineIDMapping *)self->_idMapping firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:v8];
  }

  return v7;
}

- (_CPLOptimisticIDMapping)initWithIDMapping:(id)mapping
{
  mappingCopy = mapping;
  v9.receiver = self;
  v9.super_class = _CPLOptimisticIDMapping;
  v6 = [(_CPLOptimisticIDMapping *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idMapping, mapping);
  }

  return v7;
}

@end