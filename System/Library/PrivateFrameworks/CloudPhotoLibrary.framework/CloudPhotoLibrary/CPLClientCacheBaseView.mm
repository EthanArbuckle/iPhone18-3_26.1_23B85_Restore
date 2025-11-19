@interface CPLClientCacheBaseView
+ (id)clientCacheBaseViewIDMappingForStore:(id)a3;
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (CPLClientCacheBaseView)initWithStore:(id)a3;
- (id)recordViewWithScopedIdentifier:(id)a3;
- (id)recordViewsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)a3;
- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
@end

@implementation CPLClientCacheBaseView

- (unint64_t)countOfRecordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [(CPLClientCacheBaseView *)self idMapping];
  v12 = 0;
  v8 = [v7 cloudScopedIdentifierForLocalScopedIdentifier:v6 isFinal:&v12];

  if (v8)
  {
    v9 = [(CPLClientCacheBaseView *)self cloudCache];
    v10 = [v9 countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:v8 class:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLClientCacheBaseView *)self idMapping];
  v10 = 0;
  v6 = [v5 cloudScopedIdentifierForLocalScopedIdentifier:v4 isFinal:&v10];

  if (v6)
  {
    v7 = [(CPLClientCacheBaseView *)self cloudCache];
    v8 = [v7 hasRecordAcknowledgedByClientWithScopedIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLClientCacheBaseView *)self idMapping];
  v11 = 0;
  v6 = [v5 cloudScopedIdentifierForLocalScopedIdentifier:v4 isFinal:&v11];

  if (v6 && (-[CPLClientCacheBaseView cloudCache](self, "cloudCache"), v7 = objc_claimAutoreleasedReturnValue(), [v7 relatedScopedIdentifierForRecordWithScopedIdentifier:v6 isFinal:1], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = [v5 localScopedIdentifierForCloudScopedIdentifier:v8 isFinal:&v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)recordViewsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = 0;
  v7 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:v6 isFinal:&v24];
  v8 = v7;
  if (v7)
  {
    v19 = v7;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(CPLEngineCloudCache *)self->_cloudCache recordsAcknowledgedByClientWithRelatedScopedIdentifier:v7 class:a4];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v16 = [[CPLClientCacheRecordView alloc] initWithLocalScopedIdentifier:0 cloudRecord:v15 idMapping:self->_idMapping];
          [v12 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v8 = v19;
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)recordViewWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:v4 isFinal:&v10];
  if (v5 && ([(CPLEngineCloudCache *)self->_cloudCache recordAcknowledgedByClientWithScopedIdentifier:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [[CPLClientCacheRecordView alloc] initWithLocalScopedIdentifier:v4 cloudRecord:v6 idMapping:self->_idMapping];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CPLClientCacheBaseView)initWithStore:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CPLClientCacheBaseView;
  v6 = [(CPLClientCacheBaseView *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = [v5 cloudCache];
    cloudCache = v7->_cloudCache;
    v7->_cloudCache = v8;

    v10 = [objc_opt_class() clientCacheBaseViewIDMappingForStore:v5];
    idMapping = v7->_idMapping;
    v7->_idMapping = v10;
  }

  return v7;
}

+ (id)clientCacheBaseViewIDMappingForStore:(id)a3
{
  v3 = a3;
  v4 = [_CPLOptimisticIDMapping alloc];
  v5 = [v3 idMapping];

  v6 = [(_CPLOptimisticIDMapping *)v4 initWithIDMapping:v5];

  return v6;
}

@end