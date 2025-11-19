@interface FBSProcessTerminationRequest
+ (id)requestForProcess:(id)a3 withLabel:(id)a4;
- (FBSProcess)process;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)execute;
@end

@implementation FBSProcessTerminationRequest

+ (id)requestForProcess:(id)a3 withLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [FBSProcessTerminationRequest requestForProcess:a2 withLabel:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSProcessTerminationRequest requestForProcess:a2 withLabel:?];
  }

  v9 = v7;
  v10 = v9;
  if (v9)
  {
    if (([v9 conformsToProtocol:&unk_1F15BB948] & 1) == 0)
    {
      [FBSProcessTerminationRequest requestForProcess:a2 withLabel:?];
    }

    v11 = objc_alloc_init(a1);
    [v11 setLabel:v8];
    [v11 setProcess:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)execute
{
  WeakRetained = objc_loadWeakRetained(&self->_process);
  [WeakRetained _terminateWithRequest:self forWatchdog:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setLabel:self->_label];
  WeakRetained = objc_loadWeakRetained(&self->_process);
  [v4 setProcess:WeakRetained];

  [v4 setOptions:self->_options];
  [v4 setReportType:self->_reportType];
  [v4 setExceptionCode:self->_exceptionCode];
  [v4 setExplanation:self->_explanation];
  return v4;
}

- (id)succinctDescription
{
  v2 = [(FBSProcessTerminationRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  [v3 appendString:self->_label withName:@"label"];
  exceptionCode = self->_exceptionCode;
  if (exceptionCode >= 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = FBSProcessExceptionCodeDescription(exceptionCode);
    v7 = [v5 stringWithFormat:@"%@ (0x%08X)", v6, self->_exceptionCode];

    [v3 appendString:v7 withName:@"exceptionCode"];
  }

  v8 = [v3 appendBool:self->_options & 1 withName:@"performGracefully" ifEqualTo:1];
  reportType = self->_reportType;
  if (reportType > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E76BF3D8[reportType];
  }

  v11 = [v3 appendObject:v10 withName:@"reportType"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSProcessTerminationRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(FBSProcessTerminationRequest *)self succinctDescriptionBuilder];
  [v4 appendString:self->_explanation withName:@"explanation"];

  return v4;
}

- (FBSProcess)process
{
  WeakRetained = objc_loadWeakRetained(&self->_process);

  return WeakRetained;
}

+ (void)requestForProcess:(const char *)a1 withLabel:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:NSStringClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)requestForProcess:(const char *)a1 withLabel:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object conformsToProtocol:@protocol(FBSProcess)]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)requestForProcess:(const char *)a1 withLabel:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end