@interface BSServiceInterface
+ (BSServiceInterface)interfaceWithIdentifier:(id)a3;
+ (BSServiceInterface)interfaceWithIdentifier:(id)a3 configurator:(id)a4;
+ (BSServiceInterface)interfaceWithServer:(id)a3 client:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BSServiceInterface)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)invertInterface:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)clientMessagingExpectation;
- (unint64_t)hash;
- (void)_initWithIdentifier:(void *)a3 server:(void *)a4 client:(uint64_t)a5 clientWaitsForActivation:;
- (void)setIdentifier:(id)a3;
@end

@implementation BSServiceInterface

- (int64_t)clientMessagingExpectation
{
  clientWaitsForActivation = self->_clientWaitsForActivation;
  if (clientWaitsForActivation)
  {
    return CFBooleanGetValue(clientWaitsForActivation) != 0;
  }

  else
  {
    v5 = [(BSObjCProtocol *)self->_server methods];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (BSServiceInterface)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceInterface"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BSServiceInterface.m";
    v18 = 1024;
    v19 = 297;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BSServiceInterface)interfaceWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [BSServiceInterface alloc];
  v5 = __emptyProtocol();
  v6 = __emptyProtocol();
  v7 = [(BSServiceInterface *)v4 _initWithIdentifier:v3 server:v5 client:v6 clientWaitsForActivation:*MEMORY[0x1E695E4D0]];

  return v7;
}

- (void)_initWithIdentifier:(void *)a3 server:(void *)a4 client:(uint64_t)a5 clientWaitsForActivation:
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = objc_opt_class();
    if (v12 != objc_opt_class())
    {
      v13 = objc_opt_class();
      if (v13 != objc_opt_class())
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceInterface is not intended to be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v46 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          *buf = 138544642;
          v52 = v46;
          v53 = 2114;
          v54 = v48;
          v55 = 2048;
          v56 = a1;
          v57 = 2114;
          v58 = @"BSServiceInterface.m";
          v59 = 1024;
          v60 = 317;
          v61 = 2114;
          v62 = v45;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v49 = v45;
        [v45 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A858C4CLL);
      }
    }

    v14 = v10;
    NSClassFromString(&cfstr_Bsobjcprotocol.isa);
    if (!v14)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v52 = v26;
        v53 = 2114;
        v54 = v28;
        v55 = 2048;
        v56 = a1;
        v57 = 2114;
        v58 = @"BSServiceInterface.m";
        v59 = 1024;
        v60 = 318;
        v61 = 2114;
        v62 = v25;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A858848);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138544642;
        v52 = v31;
        v53 = 2114;
        v54 = v33;
        v55 = 2048;
        v56 = a1;
        v57 = 2114;
        v58 = @"BSServiceInterface.m";
        v59 = 1024;
        v60 = 318;
        v61 = 2114;
        v62 = v30;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v34 = v30;
      [v30 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A85894CLL);
    }

    v15 = v11;
    NSClassFromString(&cfstr_Bsobjcprotocol.isa);
    if (!v15)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138544642;
        v52 = v36;
        v53 = 2114;
        v54 = v38;
        v55 = 2048;
        v56 = a1;
        v57 = 2114;
        v58 = @"BSServiceInterface.m";
        v59 = 1024;
        v60 = 319;
        v61 = 2114;
        v62 = v35;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v39 = v35;
      [v35 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A858A50);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = NSStringFromSelector(sel__initWithIdentifier_server_client_clientWaitsForActivation_);
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        *buf = 138544642;
        v52 = v41;
        v53 = 2114;
        v54 = v43;
        v55 = 2048;
        v56 = a1;
        v57 = 2114;
        v58 = @"BSServiceInterface.m";
        v59 = 1024;
        v60 = 319;
        v61 = 2114;
        v62 = v40;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v44 = v40;
      [v40 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A858B54);
    }

    v50.receiver = a1;
    v50.super_class = BSServiceInterface;
    v16 = objc_msgSendSuper2(&v50, sel_init);
    if (v16)
    {
      v17 = [v9 copy];
      v18 = v16[1];
      v16[1] = v17;

      v19 = [v14 copy];
      v20 = v16[2];
      v16[2] = v19;

      v21 = [v15 copy];
      v22 = v16[3];
      v16[3] = v21;

      v16[4] = a5;
    }
  }

  else
  {
    v16 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BSServiceInterface)interfaceWithIdentifier:(id)a3 configurator:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      v23 = 2048;
      v24 = a1;
      v25 = 2114;
      v26 = @"BSServiceInterface.m";
      v27 = 1024;
      v28 = 306;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A858F2CLL);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [BSMutableServiceInterface interfaceWithIdentifier:v7];
  v8[2](v8, v10);
  v11 = [v10 copy];

  objc_autoreleasePoolPop(v9);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)invertInterface:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BSServiceInterface *)[BSMutableServiceInterface alloc] _initWithIdentifier:self->_client server:self->_server client:0 clientWaitsForActivation:?];
    v4[2](v4, v5);
    v6 = [v5 copy];
  }

  else
  {
    v6 = [[BSServiceInterface alloc] _initWithIdentifier:self->_client server:self->_server client:0 clientWaitsForActivation:?];
  }

  return v6;
}

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  identifier = self->_identifier;
  self->_identifier = v4;
}

+ (BSServiceInterface)interfaceWithServer:(id)a3 client:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  NSClassFromString(&cfstr_Bsobjcprotocol.isa);
  if (!v9)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v43 = v23;
      v44 = 2114;
      v45 = v25;
      v46 = 2048;
      v47 = a1;
      v48 = 2114;
      v49 = @"BSServiceInterface.m";
      v50 = 1024;
      v51 = 378;
      v52 = 2114;
      v53 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859378);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v43 = v28;
      v44 = 2114;
      v45 = v30;
      v46 = 2048;
      v47 = a1;
      v48 = 2114;
      v49 = @"BSServiceInterface.m";
      v50 = 1024;
      v51 = 378;
      v52 = 2114;
      v53 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A85947CLL);
  }

  v10 = __protocolsToRemove();
  v11 = [v9 flattenWithIgnoredInheritedProtocols:v10];

  __vetProtocol(v11);
  v12 = v8;
  NSClassFromString(&cfstr_Bsobjcprotocol.isa);
  if (!v12)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v43 = v33;
      v44 = 2114;
      v45 = v35;
      v46 = 2048;
      v47 = a1;
      v48 = 2114;
      v49 = @"BSServiceInterface.m";
      v50 = 1024;
      v51 = 382;
      v52 = 2114;
      v53 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859580);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v43 = v38;
      v44 = 2114;
      v45 = v40;
      v46 = 2048;
      v47 = a1;
      v48 = 2114;
      v49 = @"BSServiceInterface.m";
      v50 = 1024;
      v51 = 382;
      v52 = 2114;
      v53 = v37;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A859684);
  }

  v13 = __protocolsToRemove();
  v14 = [v12 flattenWithIgnoredInheritedProtocols:v13];

  __vetProtocol(v14);
  v15 = [BSServiceInterface alloc];
  v16 = [v11 methods];
  v17 = [v16 count];
  v18 = MEMORY[0x1E695E4D0];
  if (v17)
  {
    v18 = MEMORY[0x1E695E4C0];
  }

  v19 = [(BSServiceInterface *)v15 _initWithIdentifier:v11 server:v14 client:*v18 clientWaitsForActivation:?];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BSMutableServiceInterface allocWithZone:a3];
  identifier = self->_identifier;
  server = self->_server;
  client = self->_client;
  clientWaitsForActivation = self->_clientWaitsForActivation;

  return [(BSServiceInterface *)v4 _initWithIdentifier:server server:client client:clientWaitsForActivation clientWaitsForActivation:?];
}

- (id)succinctDescription
{
  v2 = [(BSServiceInterface *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_identifier withName:0];
  v4 = [(BSObjCProtocol *)self->_server name];
  [v3 appendString:v4 withName:@"server"];

  v5 = [(BSObjCProtocol *)self->_client name];
  [v3 appendString:v5 withName:@"client"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSServiceInterface *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceInterface *)self succinctDescriptionBuilder];
  [v5 appendString:self->_identifier withName:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__BSServiceInterface_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E75209E8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

const __CFBoolean *__60__BSServiceInterface_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"server"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"client"];
  result = *(*(a1 + 40) + 32);
  if (result)
  {
    return [*(a1 + 32) appendBool:CFBooleanGetValue(result) != 0 withName:@"clientWaitsForActivation"];
  }

  return result;
}

- (unint64_t)hash
{
  identifier = self->_identifier;
  if (identifier)
  {

    return [(NSString *)identifier hash];
  }

  else
  {
    v5 = [(BSObjCProtocol *)self->_server hash];
    return [(BSObjCProtocol *)self->_client hash]^ v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && (identifier = self->_identifier, v8 = v4->_identifier, BSEqualStrings()) && (server = self->_server, v10 = v4->_server, BSEqualObjects()) && (client = self->_client, v12 = v4->_client, BSEqualObjects()))
    {
      v13 = [(BSServiceInterface *)self clientMessagingExpectation];
      v14 = v13 == [(BSServiceInterface *)v4 clientMessagingExpectation];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

@end