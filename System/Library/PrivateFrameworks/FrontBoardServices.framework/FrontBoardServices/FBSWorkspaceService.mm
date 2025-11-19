@interface FBSWorkspaceService
+ (id)localServiceWithIdentifier:(id)a3;
- (FBSWorkspaceService)init;
- (id)_initWithTarget:(id)a3 identifier:(id)a4;
- (id)createScene:(id)a3;
- (id)createScene:(id)a3 completion:(id)a4;
- (id)description;
- (void)requestSceneWithOptions:(id)a3 completion:(id)a4;
- (void)sendActions:(id)a3 completion:(id)a4;
@end

@implementation FBSWorkspaceService

- (FBSWorkspaceService)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init not supported"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    v14 = 2114;
    v15 = @"FBSWorkspace.m";
    v16 = 1024;
    v17 = 700;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_initWithTarget:(id)a3 identifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [FBSWorkspaceService _initWithTarget:a2 identifier:?];
  }

  v10 = v9;
  v16.receiver = self;
  v16.super_class = FBSWorkspaceService;
  v11 = [(FBSWorkspaceService *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_target, a3);
    v13 = [v10 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_identifier)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = @"(default)";
  }

  v7 = [(FBSWorkspaceServiceTarget *)self->_target identifier];
  v8 = [v3 stringWithFormat:@"<%@: %p %@; %@>", v5, self, identifier, v7];;

  return v8;
}

- (void)sendActions:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  if (v9)
  {
    NSClassFromString(&cfstr_Nsset.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSWorkspaceService sendActions:a2 completion:?];
    }
  }

  if ([v9 count])
  {
    v10 = FBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(FBSWorkspaceServiceTarget *)self->_target identifier];
      if (self->_identifier)
      {
        identifier = self->_identifier;
      }

      else
      {
        identifier = @"(default)";
      }

      v13 = [v9 fbs_singleLineDescriptionOfBSActions];
      *buf = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = identifier;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending action(s) to workspace %{public}@: %{public}@", buf, 0x20u);
    }
  }

  target = self->_target;
  v15 = self->_identifier;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__FBSWorkspaceService_sendActions_completion___block_invoke;
  v17[3] = &unk_1E76BDD00;
  v17[4] = self;
  v18 = v8;
  v16 = v8;
  [(FBSWorkspaceServiceTarget *)target sendActions:v9 toWorkspaceID:v15 completion:v17];
}

void __46__FBSWorkspaceService_sendActions_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = FBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__FBSWorkspaceService_sendActions_completion___block_invoke_cold_1(a1, v5, v6);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (id)createScene:(id)a3
{
  v4 = a3;
  v5 = [[FBSClientSceneFutureDefinition alloc] initWithWorkspaceID:self->_identifier];
  if (v4)
  {
    v4[2](v4, v5);
  }

  v6 = [(FBSWorkspaceServiceTarget *)self->_target createSceneFutureWithDefinition:v5];

  return v6;
}

- (id)createScene:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(FBSWorkspaceService *)self createScene:a3];
  [v7 activateWithCompletion:v6];

  return v7;
}

- (void)requestSceneWithOptions:(id)a3 completion:(id)a4
{
  identifier = self->_identifier;
  v7 = a4;
  v8 = a3;
  [v8 setWorkspaceIdentifier:identifier];
  [(FBSWorkspaceServiceTarget *)self->_target requestSceneWithOptions:v8 completion:v7];
}

+ (id)localServiceWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = NSClassFromString(&cfstr_Fblocalsynchro.isa);
  if (v4)
  {
    v5 = [(objc_class *)v4 sharedInstance];
    v6 = [[FBSWorkspaceService alloc] _initWithTarget:v5 identifier:v3];
  }

  else
  {
    v7 = FBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FBSWorkspaceService(SynchronousLocalSupport) *)v7 localServiceWithIdentifier:v8, v9, v10, v11, v12, v13, v14];
    }

    v6 = 0;
  }

  return v6;
}

- (void)_initWithTarget:(char *)a1 identifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"target != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)sendActions:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSSetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __46__FBSWorkspaceService_sendActions_completion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 descriptionWithMultilinePrefix:0];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1A2DBB000, a3, OS_LOG_TYPE_ERROR, "%{public}@ Action(s) failed: %{public}@", &v6, 0x16u);
}

@end