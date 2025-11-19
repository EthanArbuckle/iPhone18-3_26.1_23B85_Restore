@interface BSMutableServiceInterface
+ (id)interfaceWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setClient:(id)a3;
- (void)setClientMessagingExpectation:(int64_t)a3;
- (void)setIdentifier:(id)a3;
- (void)setServer:(id)a3;
@end

@implementation BSMutableServiceInterface

+ (id)interfaceWithIdentifier:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v23 = v13;
      v24 = 2114;
      v25 = v15;
      v26 = 2048;
      v27 = a1;
      v28 = 2114;
      v29 = @"BSServiceInterface.m";
      v30 = 1024;
      v31 = 469;
      v32 = 2114;
      v33 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859E2CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2048;
      v27 = a1;
      v28 = 2114;
      v29 = @"BSServiceInterface.m";
      v30 = 1024;
      v31 = 469;
      v32 = 2114;
      v33 = v17;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859F30);
  }

  v6 = [BSMutableServiceInterface alloc];
  v7 = __emptyProtocol();
  v8 = __emptyProtocol();
  v9 = [(BSServiceInterface *)v6 _initWithIdentifier:v5 server:v7 client:v8 clientWaitsForActivation:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)setIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v18 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v18)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceInterface.m";
      v27 = 1024;
      v28 = 475;
      v29 = 2114;
      v30 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85A16CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v20 = v14;
      v21 = 2114;
      v22 = v16;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceInterface.m";
      v27 = 1024;
      v28 = 475;
      v29 = 2114;
      v30 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85A270);
  }

  v5 = [v18 copy];
  identifier = self->super._identifier;
  self->super._identifier = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setServer:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v18 = a3;
  if (v18)
  {
    NSClassFromString(&cfstr_Bsobjcprotocol.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v20 = v14;
        v21 = 2114;
        v22 = v16;
        v23 = 2048;
        v24 = self;
        v25 = 2114;
        v26 = @"BSServiceInterface.m";
        v27 = 1024;
        v28 = 481;
        v29 = 2114;
        v30 = v13;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v17 = v13;
      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85A500);
    }

    v5 = __protocolsToRemove();
    v6 = [v18 flattenWithIgnoredInheritedProtocols:v5];

    __vetProtocol(v6);
    server = self->super._server;
    p_server = &self->super._server;
    v9 = BSEqualObjects();
  }

  else
  {
    v6 = __emptyProtocol();
    v10 = self->super._server;
    p_server = &self->super._server;
    v9 = BSEqualObjects();
  }

  if ((v9 & 1) == 0)
  {
    v6 = v6;
    v11 = *p_server;
    *p_server = v6;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setClient:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v18 = a3;
  if (v18)
  {
    NSClassFromString(&cfstr_Bsobjcprotocol.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v20 = v14;
        v21 = 2114;
        v22 = v16;
        v23 = 2048;
        v24 = self;
        v25 = 2114;
        v26 = @"BSServiceInterface.m";
        v27 = 1024;
        v28 = 498;
        v29 = 2114;
        v30 = v13;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v17 = v13;
      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85A780);
    }

    v5 = __protocolsToRemove();
    v6 = [v18 flattenWithIgnoredInheritedProtocols:v5];

    __vetProtocol(v6);
    client = self->super._client;
    p_client = &self->super._client;
    v9 = BSEqualObjects();
  }

  else
  {
    v6 = __emptyProtocol();
    v10 = self->super._client;
    p_client = &self->super._client;
    v9 = BSEqualObjects();
  }

  if ((v9 & 1) == 0)
  {
    v6 = v6;
    v11 = *p_client;
    *p_client = v6;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setClientMessagingExpectation:(int64_t)a3
{
  v3 = MEMORY[0x1E695E4D0];
  if (a3 != 1)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  self->super._clientWaitsForActivation = *v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(BSServiceInterface *)self clientMessagingExpectation];
  v6 = MEMORY[0x1E695E4D0];
  if (v5 != 1)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;
  v8 = [BSServiceInterface allocWithZone:a3];
  identifier = self->super._identifier;
  server = self->super._server;
  client = self->super._client;

  return [(BSServiceInterface *)v8 _initWithIdentifier:server server:client client:v7 clientWaitsForActivation:?];
}

@end