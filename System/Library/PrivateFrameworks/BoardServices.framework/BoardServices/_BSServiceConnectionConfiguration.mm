@interface _BSServiceConnectionConfiguration
- (_BSServiceConnectionConfiguration)init;
- (void)encodeContext:(id)a3;
- (void)setActivationHandler:(id)a3;
- (void)setBatchingHandler:(id)a3;
- (void)setErrorHandler:(id)a3;
- (void)setInterface:(id)a3;
- (void)setInterfaceTarget:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
- (void)setMessageHandler:(id)a3;
- (void)setMultiplexer:(id)a3;
- (void)setName:(id)a3;
- (void)setQueue:(id)a3;
- (void)setServiceQuality:(id)a3;
- (void)setTargetQueue:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation _BSServiceConnectionConfiguration

- (_BSServiceConnectionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _BSServiceConnectionConfiguration;
  result = [(_BSServiceConnectionConfiguration *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)encodeContext:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"contextBuilder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      v24 = 2048;
      v25 = self;
      v26 = 2114;
      v27 = @"BSServiceConnection.m";
      v28 = 1024;
      v29 = 96;
      v30 = 2114;
      v31 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F258);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 1)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"encodeContext: called outside of options builder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      v24 = 2048;
      v25 = self;
      v26 = 2114;
      v27 = @"BSServiceConnection.m";
      v28 = 1024;
      v29 = 98;
      v30 = 2114;
      v31 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F350);
  }

  v19 = [MEMORY[0x1E698E7A8] coder];
  (*(a3 + 2))(a3);
  v6 = [v19 createMessage];
  clientContext = self->_clientContext;
  self->_clientContext = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMultiplexer:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"multiplexer", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v33 = v13;
      v34 = 2114;
      v35 = v15;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 105;
      v42 = 2114;
      v43 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F584);
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v7 classForCoder];
    if (!v18)
    {
      v18 = objc_opt_class();
    }

    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"multiplexer", v19, v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v33 = v23;
      v34 = 2114;
      v35 = v25;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 105;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F6CCLL);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 1)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setMultiplexer: called outside of options builder"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v33 = v28;
      v34 = 2114;
      v35 = v30;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 107;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83F7C4);
  }

  objc_storeStrong(&self->_multiplexer, a3);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setName:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  if (!v5)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"name", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v34 = v14;
      v35 = 2114;
      v36 = v16;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 114;
      v43 = 2114;
      v44 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83FA4CLL);
  }

  v7 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v7 classForCoder];
    if (!v19)
    {
      v19 = objc_opt_class();
    }

    v20 = NSStringFromClass(v19);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v18 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"name", v20, v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v34 = v24;
      v35 = 2114;
      v36 = v26;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 114;
      v43 = 2114;
      v44 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83FB90);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setName: called outside of configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v34 = v29;
      v35 = 2114;
      v36 = v31;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 116;
      v43 = 2114;
      v44 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83FC84);
  }

  v8 = [v7 copy];
  name = self->_name;
  self->_name = v8;
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setInterface:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"interface", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v34 = v14;
      v35 = 2114;
      v36 = v16;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 121;
      v43 = 2114;
      v44 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83FF10);
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v6 classForCoder];
    if (!v19)
    {
      v19 = objc_opt_class();
    }

    v20 = NSStringFromClass(v19);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v18 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"interface", v20, v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v34 = v24;
      v35 = 2114;
      v36 = v26;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 121;
      v43 = 2114;
      v44 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840058);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setInterface: called outside of configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v34 = v29;
      v35 = 2114;
      v36 = v31;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 123;
      v43 = 2114;
      v44 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840150);
  }

  v7 = [v6 copy];
  interface = self->_interface;
  self->_interface = v7;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setInterfaceTarget:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"target"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v18 = v8;
      v19 = 2114;
      v20 = v10;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"BSServiceConnection.m";
      v25 = 1024;
      v26 = 128;
      v27 = 2114;
      v28 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840380);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setInterfaceTarget: called outside of configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"BSServiceConnection.m";
      v25 = 1024;
      v26 = 130;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840478);
  }

  objc_storeStrong(&self->_target, a3);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setQueue:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"queue", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v33 = v13;
      v34 = 2114;
      v35 = v15;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 135;
      v42 = 2114;
      v43 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840688);
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v7 classForCoder];
    if (!v18)
    {
      v18 = objc_opt_class();
    }

    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"queue", v19, v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v33 = v23;
      v34 = 2114;
      v35 = v25;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 135;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8407D0);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setQueue: called outside of configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v33 = v28;
      v34 = 2114;
      v35 = v30;
      v36 = 2048;
      v37 = self;
      v38 = 2114;
      v39 = @"BSServiceConnection.m";
      v40 = 1024;
      v41 = 137;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8408C8);
  }

  objc_storeStrong(&self->_queue, a3);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUserInfo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"userInfo"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 142;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840B10);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setUserInfo: called outside of configurator"];
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
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 144;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840C08);
  }

  v6 = [a3 copyWithZone:0];
  userInfo = self->_userInfo;
  self->_userInfo = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setServiceQuality:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"serviceQuality", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v34 = v14;
      v35 = 2114;
      v36 = v16;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 151;
      v43 = 2114;
      v44 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840E28);
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v6 classForCoder];
    if (!v19)
    {
      v19 = objc_opt_class();
    }

    v20 = NSStringFromClass(v19);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v18 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"serviceQuality", v20, v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v34 = v24;
      v35 = 2114;
      v36 = v26;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 151;
      v43 = 2114;
      v44 = v23;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A840F70);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setServiceQuality: called outside of configurator"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v34 = v29;
      v35 = 2114;
      v36 = v31;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = @"BSServiceConnection.m";
      v41 = 1024;
      v42 = 153;
      v43 = 2114;
      v44 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841068);
  }

  v7 = [v6 copy];
  serviceQuality = self->_serviceQuality;
  self->_serviceQuality = v7;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setTargetQueue:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 158;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8412C4);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setTargetQueue: called outside of configurator"];
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
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 160;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8413BCLL);
  }

  objc_storeStrong(&self->_targetQueue, a3);
  v6 = [BSServiceDispatchQueue _queueOfDispatchQueue:a3];
  queueOfTargetQueue = self->_queueOfTargetQueue;
  self->_queueOfTargetQueue = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setActivationHandler:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 168;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841594);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setActivationHandler: called outside of configurator"];
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
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 170;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84168CLL);
  }

  v6 = [a3 copy];
  activationHandler = self->_activationHandler;
  self->_activationHandler = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setInterruptionHandler:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 175;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841864);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setInterruptionHandler: called outside of configurator"];
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
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 177;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84195CLL);
  }

  v6 = [a3 copy];
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setInvalidationHandler:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 188;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841B34);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setInvalidationHandler: called outside of configurator"];
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
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 190;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841C2CLL);
  }

  v6 = [a3 copy];
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setBatchingHandler:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 197;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841E04);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setBatchingHandler: called outside of configurator"];
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
      v24 = self;
      v25 = 2114;
      v26 = @"BSServiceConnection.m";
      v27 = 1024;
      v28 = 199;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A841EFCLL);
  }

  v6 = [a3 copy];
  batchingHandler = self->_batchingHandler;
  self->_batchingHandler = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMessageHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BSServiceConnection.m";
      v22 = 1024;
      v23 = 206;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8420C8);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [a3 copy];
  messageHandler = self->_messageHandler;
  self->_messageHandler = v5;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setErrorHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = self;
      v20 = 2114;
      v21 = @"BSServiceConnection.m";
      v22 = 1024;
      v23 = 212;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A842288);
  }

  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [a3 copy];
  errorHandler = self->_errorHandler;
  self->_errorHandler = v5;
  v7 = *MEMORY[0x1E69E9840];
}

@end