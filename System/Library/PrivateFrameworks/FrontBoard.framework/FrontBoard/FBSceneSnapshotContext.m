@interface FBSceneSnapshotContext
+ (id)contextWithFBSContext:(id)a3;
- (CGRect)frame;
- (FBSceneSnapshotContext)initWithFBSContext:(id)a3;
- (FBSceneSnapshotContext)initWithScene:(id)a3 configurator:(id)a4;
- (double)scale;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)applyContext:(id)a3;
@end

@implementation FBSceneSnapshotContext

- (FBSceneSnapshotContext)initWithScene:(id)a3 configurator:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBSceneSnapshotContext initWithScene:a2 configurator:self];
  }

  v9 = v8;
  v25.receiver = self;
  v25.super_class = FBSceneSnapshotContext;
  v10 = [(FBSceneSnapshotContext *)&v25 init];
  if (v10)
  {
    v11 = [v7 identifier];
    v12 = [v11 copy];
    sceneID = v10->_sceneID;
    v10->_sceneID = v12;

    v14 = [v7 settings];
    v15 = [v14 copy];
    settings = v10->_settings;
    v10->_settings = v15;

    [(FBSSceneSettings *)v10->_settings frame];
    BSRectWithSize();
    v10->_frame.origin.x = v17;
    v10->_frame.origin.y = v18;
    v10->_frame.size.width = v19;
    v10->_frame.size.height = v20;
    v21 = [v7 clientSettings];
    v22 = [v21 copy];
    clientSettings = v10->_clientSettings;
    v10->_clientSettings = v22;

    v10->_opaque = 1;
    v10->_orientation = 0;
    if (v9)
    {
      (v9)[2](v9, v10);
    }
  }

  return v10;
}

+ (id)contextWithFBSContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFBSContext:v4];

  return v5;
}

- (FBSceneSnapshotContext)initWithFBSContext:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v55.receiver = self;
  v55.super_class = FBSceneSnapshotContext;
  v5 = [(FBSceneSnapshotContext *)&v55 init];
  if (v5)
  {
    v6 = [v4 sceneID];
    v7 = [v6 copy];
    sceneID = v5->_sceneID;
    v5->_sceneID = v7;

    v9 = [v4 settings];
    v10 = [v9 copy];
    settings = v5->_settings;
    v5->_settings = v10;

    v5->_orientation = 0;
    [(FBSSceneSettings *)v5->_settings frame];
    [v4 frame];
    v13 = v12;
    v15 = v14;
    BSRectWithSize();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v4 frame];
    v60.origin.x = v24;
    v60.origin.y = v25;
    v60.size.width = v26;
    v60.size.height = v27;
    v58.origin.x = v17;
    v58.origin.y = v19;
    v58.size.width = v21;
    v58.size.height = v23;
    v59 = CGRectIntersection(v58, v60);
    v5->_frame.origin.x = v13;
    v5->_frame.origin.y = v15;
    v5->_frame.size.width = v59.size.width;
    v5->_frame.size.height = v59.size.height;
    v28 = [v4 layersToExclude];

    if (v28)
    {
      v29 = [MEMORY[0x1E695DFA8] set];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v30 = [v4 layersToExclude];
      v31 = [v30 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v52;
        do
        {
          v34 = 0;
          do
          {
            if (*v52 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = [FBSceneLayer layerWithFBSSceneLayer:*(*(&v51 + 1) + 8 * v34)];
            if (v35)
            {
              [(NSSet *)v29 addObject:v35];
            }

            ++v34;
          }

          while (v32 != v34);
          v32 = [v30 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v32);
      }

      layersToExclude = v5->_layersToExclude;
      v5->_layersToExclude = v29;
    }

    v37 = [v4 clientExtendedData];
    v5->_clientAllowsProtectedContent = [v37 BOOLForSetting:281330800];

    [v4 expirationInterval];
    if (v38 > 0.0)
    {
      v39 = v38;
      v40 = [MEMORY[0x1E695DF00] distantFuture];
      [v40 timeIntervalSinceReferenceDate];
      v42 = v41;

      if (v39 < v42)
      {
        v43 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v39];
        expirationDate = v5->_expirationDate;
        v5->_expirationDate = v43;
      }
    }

    v45 = [v4 clientExtendedData];
    v46 = v45;
    if (v45)
    {
      v47 = [v45 copy];
      clientExtendedData = v5->_clientExtendedData;
      v5->_clientExtendedData = v47;
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (double)scale
{
  v2 = [(FBSSceneSettings *)self->_settings displayConfiguration];
  v3 = v2;
  if (v2)
  {
    [v2 pointScale];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (void)applyContext:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  sceneID = self->_sceneID;
  v7 = [v5 sceneID];
  LOBYTE(sceneID) = [(NSString *)sceneID isEqualToString:v7];

  if ((sceneID & 1) == 0)
  {
    v45 = MEMORY[0x1E696AEC0];
    v46 = [v5 sceneID];
    v47 = objc_claimAutoreleasedReturnValue();

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBSceneSnapshotContext *)a2 applyContext:v47];
    }

    [v47 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A89F16BCLL);
  }

  v8 = [v5 settings];
  v9 = [v8 copy];
  settings = self->_settings;
  self->_settings = v9;

  [(FBSSceneSettings *)self->_settings frame];
  [v5 frame];
  v12 = v11;
  v14 = v13;
  BSRectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v5 frame];
  v56.origin.x = v23;
  v56.origin.y = v24;
  v56.size.width = v25;
  v56.size.height = v26;
  v54.origin.x = v16;
  v54.origin.y = v18;
  v54.size.width = v20;
  v54.size.height = v22;
  v55 = CGRectIntersection(v54, v56);
  self->_frame.origin.x = v12;
  self->_frame.origin.y = v14;
  self->_frame.size.width = v55.size.width;
  self->_frame.size.height = v55.size.height;
  v27 = [v5 layersToExclude];

  if (v27)
  {
    v28 = [MEMORY[0x1E695DFA8] set];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = [v5 layersToExclude];
    v30 = [v29 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      do
      {
        v33 = 0;
        do
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [FBSceneLayer layerWithFBSSceneLayer:*(*(&v48 + 1) + 8 * v33)];
          if (v34)
          {
            [(NSSet *)v28 addObject:v34];
          }

          ++v33;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v31);
    }

    layersToExclude = self->_layersToExclude;
    self->_layersToExclude = v28;
  }

  v36 = [v5 clientExtendedData];
  self->_clientAllowsProtectedContent = [v36 BOOLForSetting:281330800];

  [v5 expirationInterval];
  if (v37 > 0.0)
  {
    v38 = v37;
    v39 = [MEMORY[0x1E695DF00] distantFuture];
    [v39 timeIntervalSinceReferenceDate];
    v41 = v40;

    if (v38 < v41)
    {
      v42 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v38];
      expirationDate = self->_expirationDate;
      self->_expirationDate = v42;
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (id)succinctDescription
{
  v2 = [(FBSceneSnapshotContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_sceneID withName:@"sceneID"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSceneSnapshotContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSceneSnapshotContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__FBSceneSnapshotContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E783B240;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __64__FBSceneSnapshotContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"settings"];
  v3 = [*(a1 + 32) appendRect:@"frame" withName:{*(*(a1 + 40) + 80), *(*(a1 + 40) + 88), *(*(a1 + 40) + 96), *(*(a1 + 40) + 104)}];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"opaque"];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 64);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = @"Reference";
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown:%ld)", *(*(a1 + 40) + 64)];
    }
  }

  else
  {
    v7 = @"Natural";
  }

  v8 = [v5 appendObject:v7 withName:@"orientation"];

  v9 = *(a1 + 32);
  v10 = [*(*(a1 + 40) + 72) allObjects];
  [v9 appendArraySection:v10 withName:@"layersToExclude" skipIfEmpty:1];

  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"expirationDate" skipIfNil:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"clientAllowsProtectedContent"];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithScene:(const char *)a1 configurator:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSceneSnapshotContext.m";
    v16 = 1024;
    v17 = 33;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)applyContext:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138544642;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2048;
  v14 = a2;
  v15 = 2114;
  v16 = @"FBSceneSnapshotContext.m";
  v17 = 1024;
  v18 = 121;
  v19 = 2114;
  v20 = a3;
  _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);

  v8 = *MEMORY[0x1E69E9840];
}

@end