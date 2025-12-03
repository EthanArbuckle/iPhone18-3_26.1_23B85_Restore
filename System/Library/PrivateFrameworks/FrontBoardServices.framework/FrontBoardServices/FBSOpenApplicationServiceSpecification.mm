@interface FBSOpenApplicationServiceSpecification
+ (BSServiceInterface)interface;
- (FBSOpenApplicationServiceSpecification)init;
@end

@implementation FBSOpenApplicationServiceSpecification

+ (BSServiceInterface)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[FBSOpenApplicationServiceSpecification interface];
  }

  v3 = interface___interface;

  return v3;
}

void __51__FBSOpenApplicationServiceSpecification_interface__block_invoke()
{
  v0 = +[FBSOpenApplicationServiceSpecification identifier];
  v4 = [off_1E76BC9F8 interfaceWithIdentifier:v0];

  v1 = [off_1E76BCA10 protocolForProtocol:&unk_1F15C54C8];
  [v4 setServer:v1];

  v2 = [v4 copy];
  v3 = interface___interface;
  interface___interface = v2;
}

- (FBSOpenApplicationServiceSpecification)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not available on FBSOpenApplicationServiceSpecification"];
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
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSOpenApplicationServiceSpecification.m";
    v16 = 1024;
    v17 = 18;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end