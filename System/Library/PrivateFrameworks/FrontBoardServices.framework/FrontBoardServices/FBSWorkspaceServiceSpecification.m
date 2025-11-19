@interface FBSWorkspaceServiceSpecification
+ (id)_interfaceWithInversion:(uint64_t)a1;
- (FBSWorkspaceServiceSpecification)init;
@end

@implementation FBSWorkspaceServiceSpecification

- (FBSWorkspaceServiceSpecification)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not available on FBSWorkspaceServiceSpecification"];
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
    v15 = @"FBSWorkspaceServiceSpecification.m";
    v16 = 1024;
    v17 = 20;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

+ (id)_interfaceWithInversion:(uint64_t)a1
{
  v3 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__FBSWorkspaceServiceSpecification__interfaceWithInversion___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v3;
  if (_interfaceWithInversion__onceToken != -1)
  {
    dispatch_once(&_interfaceWithInversion__onceToken, block);
  }

  v4 = &_interfaceWithInversion____invertedInterface;
  if (!a2)
  {
    v4 = &_interfaceWithInversion____interface;
  }

  v5 = *v4;

  return v5;
}

void __60__FBSWorkspaceServiceSpecification__interfaceWithInversion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  v8 = [off_1E76BC9F8 interfaceWithIdentifier:v1];

  v2 = [off_1E76BCA10 protocolForProtocol:&unk_1F15C5528];
  [v8 setServer:v2];

  v3 = [off_1E76BCA10 protocolForProtocol:&unk_1F15B9658];
  [v8 setClient:v3];

  [v8 setClientMessagingExpectation:1];
  v4 = [v8 copy];
  v5 = _interfaceWithInversion____interface;
  _interfaceWithInversion____interface = v4;

  v6 = [_interfaceWithInversion____interface invertInterface:&__block_literal_global_17];
  v7 = _interfaceWithInversion____invertedInterface;
  _interfaceWithInversion____invertedInterface = v6;
}

@end