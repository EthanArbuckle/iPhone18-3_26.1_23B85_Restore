@interface _CPLOptimisticIDMapping
- (_CPLOptimisticIDMapping)initWithIDMapping:(id)a3;
- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)a3 isFinal:(BOOL *)a4;
- (id)localScopedIdentifierForCloudScopedIdentifier:(id)a3 isFinal:(BOOL *)a4;
- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)a3;
@end

@implementation _CPLOptimisticIDMapping

- (id)localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v4];
  if (!v5)
  {
    v5 = [v4 copy];
  }

  return v5;
}

- (id)localScopedIdentifierForCloudScopedIdentifier:(id)a3 isFinal:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v6 isFinal:a4];
  if (!v7)
  {
    v7 = [v6 copy];
  }

  return v7;
}

- (id)cloudScopedIdentifierForLocalScopedIdentifier:(id)a3 isFinal:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:v6 isFinal:a4];
  if (!v7)
  {
    v8 = [v6 copy];
    v7 = [(CPLEngineIDMapping *)self->_idMapping firstAvailableCloudScopedIdentifierForProposedCloudScopedIdentifier:v8];
  }

  return v7;
}

- (_CPLOptimisticIDMapping)initWithIDMapping:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CPLOptimisticIDMapping;
  v6 = [(_CPLOptimisticIDMapping *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idMapping, a3);
  }

  return v7;
}

@end