@interface LNViewEntityAggregationResult
- (LNViewEntityAggregationResult)init;
- (NSDictionary)entities;
- (NSError)error;
- (void)addResults:(id)a3 error:(id)a4 forBundle:(id)a5;
@end

@implementation LNViewEntityAggregationResult

- (NSError)error
{
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__LNViewEntityAggregationResult_error__block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([(NSMutableDictionary *)self->_errors count])
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNConnectionErrorDomain" code:1007 userInfo:self->_errors];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 copy];

  v3[2](v3);

  return v5;
}

- (NSDictionary)entities
{
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__LNViewEntityAggregationResult_entities__block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(NSMutableDictionary *)self->_entitiesByBundleId copy];
  v3[2](v3);

  return v4;
}

- (void)addResults:(id)a3 error:(id)a4 forBundle:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__LNViewEntityAggregationResult_addResults_error_forBundle___block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  if (v8)
  {
    v12 = getLNLogCategoryView();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v8 count];
      *buf = 134218242;
      v19 = v13;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_INFO, "Successfully fetched %lu view entities from %@", buf, 0x16u);
    }

    v14 = 8;
    v15 = v8;
LABEL_9:

    [*(&self->super.isa + v14) setValue:v15 forKey:v10];
    goto LABEL_10;
  }

  if (v9)
  {
    v12 = getLNLogCategoryView();
    v14 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v9;
      v14 = 16;
      _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch view entities from %@: %@", buf, 0x16u);
    }

    v15 = v9;
    goto LABEL_9;
  }

LABEL_10:
  v11[2](v11);

  v16 = *MEMORY[0x1E69E9840];
}

- (LNViewEntityAggregationResult)init
{
  v10.receiver = self;
  v10.super_class = LNViewEntityAggregationResult;
  v2 = [(LNViewEntityAggregationResult *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    entitiesByBundleId = v3->_entitiesByBundleId;
    v3->_entitiesByBundleId = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    errors = v3->_errors;
    v3->_errors = v6;

    v8 = v3;
  }

  return v3;
}

@end