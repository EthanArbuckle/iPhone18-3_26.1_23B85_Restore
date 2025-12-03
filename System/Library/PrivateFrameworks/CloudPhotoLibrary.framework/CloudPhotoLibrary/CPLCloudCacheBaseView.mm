@interface CPLCloudCacheBaseView
- (CPLCloudCacheBaseView)initWithCloudCache:(id)cache useFinal:(BOOL)final;
- (id)recordViewWithScopedIdentifier:(id)identifier;
- (id)recordViewsWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
@end

@implementation CPLCloudCacheBaseView

- (id)recordViewsWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(CPLEngineCloudCache *)self->_cloudCache recordsWithRelatedScopedIdentifier:identifierCopy class:class isFinal:self->_useFinal, 0];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        asRecordView = [v13 asRecordView];
        [v10 addObject:asRecordView];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)recordViewWithScopedIdentifier:(id)identifier
{
  v3 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:identifier isFinal:self->_useFinal];
  asRecordView = [v3 asRecordView];

  return asRecordView;
}

- (CPLCloudCacheBaseView)initWithCloudCache:(id)cache useFinal:(BOOL)final
{
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = CPLCloudCacheBaseView;
  v8 = [(CPLCloudCacheBaseView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cloudCache, cache);
    v9->_useFinal = final;
  }

  return v9;
}

@end