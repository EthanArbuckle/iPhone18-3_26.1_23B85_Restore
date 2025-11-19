@interface CPLCloudCacheBaseView
- (CPLCloudCacheBaseView)initWithCloudCache:(id)a3 useFinal:(BOOL)a4;
- (id)recordViewWithScopedIdentifier:(id)a3;
- (id)recordViewsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
@end

@implementation CPLCloudCacheBaseView

- (id)recordViewsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(CPLEngineCloudCache *)self->_cloudCache recordsWithRelatedScopedIdentifier:v6 class:a4 isFinal:self->_useFinal, 0];
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

        v14 = [v13 asRecordView];
        [v10 addObject:v14];
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

- (id)recordViewWithScopedIdentifier:(id)a3
{
  v3 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:a3 isFinal:self->_useFinal];
  v4 = [v3 asRecordView];

  return v4;
}

- (CPLCloudCacheBaseView)initWithCloudCache:(id)a3 useFinal:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CPLCloudCacheBaseView;
  v8 = [(CPLCloudCacheBaseView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cloudCache, a3);
    v9->_useFinal = a4;
  }

  return v9;
}

@end