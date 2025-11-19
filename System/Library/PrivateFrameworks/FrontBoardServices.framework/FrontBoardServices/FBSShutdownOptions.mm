@interface FBSShutdownOptions
- (FBSShutdownOptions)init;
- (FBSShutdownOptions)initWithReason:(id)a3;
- (NSCopying)localContext;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation FBSShutdownOptions

- (FBSShutdownOptions)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Please use -[FBSShutdownOptions initWithReason:] instead."];
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
    v15 = @"FBSShutdownOptions.m";
    v16 = 1024;
    v17 = 17;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSShutdownOptions)initWithReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(FBSShutdownOptions *)a2 initWithReason:?];
  }

  v10.receiver = self;
  v10.super_class = FBSShutdownOptions;
  v6 = [(FBSShutdownOptions *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    reason = v6->_reason;
    v6->_reason = v7;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [FBSShutdownOptions alloc];
  v6 = [(NSString *)self->_reason copyWithZone:a3];
  v7 = [(FBSShutdownOptions *)v5 initWithReason:v6];

  [(FBSShutdownOptions *)v7 setRebootType:self->_rebootType];
  [(FBSShutdownOptions *)v7 setSource:self->_source];
  [(FBSShutdownOptions *)v7 setLPEMOption:self->_LPEMOption];
  WeakRetained = objc_loadWeakRetained(&self->_localContext);
  v9 = [WeakRetained copyWithZone:a3];
  [(FBSShutdownOptions *)v7 setLocalContext:v9];

  return v7;
}

- (id)succinctDescription
{
  v2 = [(FBSShutdownOptions *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSShutdownOptions *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(FBSShutdownOptions *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FBSShutdownOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyProem:v9];
  v7 = v5;

  return v5;
}

void __60__FBSShutdownOptions_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"reason"];
  v2 = *(*(a1 + 40) + 16);
  if (v2 == 2)
  {
    v3 = @"RebootDark";
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_6;
    }

    v3 = @"Reboot";
  }

  v4 = [*(a1 + 32) appendBool:1 withName:v3];
LABEL_6:
  v5 = *(*(a1 + 40) + 24);
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_11;
    }

    v6 = @"UserInitiated";
  }

  else
  {
    v6 = @"UnknownSource";
  }

  v7 = [*(a1 + 32) appendBool:1 withName:v6];
LABEL_11:
  v8 = *(*(a1 + 40) + 32);
  if (v8 == 1)
  {
    v9 = @"disableLPEM";
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v9 = @"enableLPEM";
  }

  v10 = [*(a1 + 32) appendBool:1 withName:v9];
LABEL_16:
  v11 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v12 = [v11 appendObject:WeakRetained withName:@"localContext" skipIfNil:1];
}

- (NSCopying)localContext
{
  WeakRetained = objc_loadWeakRetained(&self->_localContext);

  return WeakRetained;
}

- (void)initWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSShutdownOptions.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end