@interface CPLRecordTargetMapping
- (CPLRecordTargetMapping)init;
- (NSString)targetDescriptions;
- (NSString)updatedTargetsDescription;
- (void)_setTarget:(id)a3 forRecordWithScopedIdentifier:(id)a4 isUpdate:(BOOL)a5;
- (void)enumerateTargetsWithBlock:(id)a3;
- (void)enumerateUnknownTargetsWithBlock:(id)a3;
- (void)enumerateUpdatedTargetsWithBlock:(id)a3;
- (void)startTrackingUpdates;
@end

@implementation CPLRecordTargetMapping

- (NSString)targetDescriptions
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableDictionary count](self->_targets, "count")}];
  targets = self->_targets;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __44__CPLRecordTargetMapping_targetDescriptions__block_invoke;
  v11 = &unk_1E861C3F0;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [(NSMutableDictionary *)targets enumerateKeysAndObjectsUsingBlock:&v8];
  v6 = [v5 componentsJoinedByString:{@"\n", v8, v9, v10, v11}];

  return v6;
}

void __44__CPLRecordTargetMapping_targetDescriptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = a2;
  v9 = [v6 alloc];
  v10 = [*(*(a1 + 40) + 24) containsObject:v8];
  v11 = "";
  if (v10)
  {
    v11 = " (updated)";
  }

  v12 = [v9 initWithFormat:@"%@ = %@%s", v8, v7, v11];

  [v5 addObject:v12];
}

- (NSString)updatedTargetsDescription
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_updatedScopedIdentifiers count])
  {
    v20 = a2;
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableSet count](self->_updatedScopedIdentifiers, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_updatedScopedIdentifiers;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_targets objectForKeyedSubscript:v10];
          if (!v11)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v17 = __CPLGenericOSLogDomain();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v26 = v10;
                _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Target for %@ should have been updated and thus present", buf, 0xCu);
              }
            }

            v18 = [MEMORY[0x1E696AAA8] currentHandler];
            v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordTarget.m"];
            [v18 handleFailureInMethod:v20 object:self file:v19 lineNumber:252 description:{@"Target for %@ should have been updated and thus present", v10}];

            abort();
          }

          v12 = v11;
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@: %@", v10, v11];
          [v4 addObject:v13];
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    v14 = [v4 componentsJoinedByString:@"\n"];
  }

  else
  {
    v14 = @"no updates";
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)enumerateUpdatedTargetsWithBlock:(id)a3
{
  v5 = a3;
  if ([(NSMutableSet *)self->_updatedScopedIdentifiers count])
  {
    updatedScopedIdentifiers = self->_updatedScopedIdentifiers;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__CPLRecordTargetMapping_enumerateUpdatedTargetsWithBlock___block_invoke;
    v7[3] = &unk_1E861C3C8;
    v7[4] = self;
    v9 = a2;
    v8 = v5;
    [(NSMutableSet *)updatedScopedIdentifiers enumerateObjectsUsingBlock:v7];
  }
}

void __59__CPLRecordTargetMapping_enumerateUpdatedTargetsWithBlock___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v3 = [*(a1[4] + 8) objectForKeyedSubscript:?];
  if (!v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Target for %@ should have been updated and thus present", buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = a1[6];
    v9 = a1[4];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordTarget.m"];
    [v7 handleFailureInMethod:v8 object:v9 file:v10 lineNumber:235 description:{@"Target for %@ should have been updated and thus present", v11}];

    abort();
  }

  v4 = v3;
  (*(a1[5] + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingUpdates
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  updatedScopedIdentifiers = self->_updatedScopedIdentifiers;
  self->_updatedScopedIdentifiers = v3;

  MEMORY[0x1EEE66BB8](v3, updatedScopedIdentifiers);
}

- (void)enumerateUnknownTargetsWithBlock:(id)a3
{
  v5 = a3;
  scopedIdentifiersWithUnknownTargets = self->_scopedIdentifiersWithUnknownTargets;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CPLRecordTargetMapping_enumerateUnknownTargetsWithBlock___block_invoke;
  v8[3] = &unk_1E861C3C8;
  v9 = v5;
  v10 = a2;
  v8[4] = self;
  v7 = v5;
  [(NSMutableSet *)scopedIdentifiersWithUnknownTargets enumerateObjectsUsingBlock:v8];
}

void __59__CPLRecordTargetMapping_enumerateUnknownTargetsWithBlock___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v3 = [*(a1[4] + 8) objectForKeyedSubscript:?];
  if (!v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Target for %@ should be present", buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = a1[6];
    v9 = a1[4];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordTarget.m"];
    [v7 handleFailureInMethod:v8 object:v9 file:v10 lineNumber:208 description:{@"Target for %@ should be present", v11}];

    abort();
  }

  v4 = v3;
  (*(a1[5] + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)enumerateTargetsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_targets allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CPLRecordTargetMapping_enumerateTargetsWithBlock___block_invoke;
  v7[3] = &unk_1E861C3A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __52__CPLRecordTargetMapping_enumerateTargetsWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:a2];
  (*(*(a1 + 40) + 16))();
}

- (void)_setTarget:(id)a3 forRecordWithScopedIdentifier:(id)a4 isUpdate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v22 = v9;
  v10 = [(NSMutableDictionary *)self->_targets objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10 && ([v10 isEqual:v8] & 1) != 0)
  {
    goto LABEL_23;
  }

  if (v5)
  {
    updatedScopedIdentifiers = self->_updatedScopedIdentifiers;
    if (updatedScopedIdentifiers)
    {
      [(NSMutableSet *)updatedScopedIdentifiers addObject:v9];
    }
  }

  v13 = [v11 otherScopedIdentifier];
  v14 = [v8 otherScopedIdentifier];
  v15 = v14;
  v16 = v14 != 0;
  if (!v13 || !v14)
  {
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    [(NSMutableDictionary *)self->_targetsFromOtherScopedIdentifier removeObjectForKey:v13];
    v16 = 1;
    goto LABEL_12;
  }

  if (([v13 isEqual:v14] & 1) == 0)
  {
    goto LABEL_11;
  }

  v16 = 0;
LABEL_12:
  v17 = [v8 targetState];
  scopedIdentifiersWithUnknownTargets = self->_scopedIdentifiersWithUnknownTargets;
  if (v17)
  {
    [(NSMutableSet *)scopedIdentifiersWithUnknownTargets removeObject:v9];
  }

  else if (scopedIdentifiersWithUnknownTargets)
  {
    [(NSMutableSet *)scopedIdentifiersWithUnknownTargets addObject:v9];
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&v22 count:1];
    v20 = self->_scopedIdentifiersWithUnknownTargets;
    self->_scopedIdentifiersWithUnknownTargets = v19;

    v9 = v22;
  }

  [(NSMutableDictionary *)self->_targets setObject:v8 forKeyedSubscript:v9];
  if (v15)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    [(NSMutableDictionary *)self->_targetsFromOtherScopedIdentifier setObject:v8 forKeyedSubscript:v15];
  }

LABEL_23:
}

- (CPLRecordTargetMapping)init
{
  v8.receiver = self;
  v8.super_class = CPLRecordTargetMapping;
  v2 = [(CPLRecordTargetMapping *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    targets = v2->_targets;
    v2->_targets = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    targetsFromOtherScopedIdentifier = v2->_targetsFromOtherScopedIdentifier;
    v2->_targetsFromOtherScopedIdentifier = v5;
  }

  return v2;
}

@end