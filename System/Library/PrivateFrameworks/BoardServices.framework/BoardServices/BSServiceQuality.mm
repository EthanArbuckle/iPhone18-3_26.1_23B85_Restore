@interface BSServiceQuality
+ (id)main;
+ (void)_serviceWithClass:(uint64_t)class relativePriority:(uint64_t)priority main:;
- (BOOL)isEqual:(id)equal;
- (BSServiceQuality)init;
- (id)description;
- (void)_initWithClass:(void *)class name:(int)name relativePriority:(char)priority singleton:(char)singleton main:;
- (void)dealloc;
@end

@implementation BSServiceQuality

+ (id)main
{
  v2 = qos_class_main();

  return [BSServiceQuality _serviceWithClass:v2 relativePriority:0 main:1];
}

- (BSServiceQuality)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceQuality"];
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
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSServiceQuality.m";
    v18 = 1024;
    v19 = 27;
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

- (void)_initWithClass:(void *)class name:(int)name relativePriority:(char)priority singleton:(char)singleton main:
{
  v36 = *MEMORY[0x1E69E9840];
  classCopy = class;
  if (self)
  {
    v12 = objc_opt_class();
    if (v12 != objc_opt_class())
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSServiceQuality is not intended to be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel__initWithClass_name_relativePriority_singleton_main_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v25 = v19;
        v26 = 2114;
        v27 = v21;
        v28 = 2048;
        selfCopy = self;
        v30 = 2114;
        v31 = @"BSServiceQuality.m";
        v32 = 1024;
        v33 = 32;
        v34 = 2114;
        v35 = v18;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86A894);
    }

    v23.receiver = self;
    v23.super_class = BSServiceQuality;
    v13 = objc_msgSendSuper2(&v23, sel_init);
    if (v13)
    {
      v14 = [classCopy copy];
      v15 = v13[1];
      v13[1] = v14;

      *(v13 + 5) = a2;
      *(v13 + 6) = name;
      *(v13 + 16) = priority;
      *(v13 + 17) = singleton;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (void)_serviceWithClass:(uint64_t)class relativePriority:(uint64_t)priority main:
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  HIDWORD(v9) = a2 - 9;
  LODWORD(v9) = a2 - 9;
  v8 = v9 >> 2;
  if (v8 >= 7 || ((0x5Du >> v8) & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown qos=%u", a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(sel__serviceWithClass_relativePriority_main_);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v35 = v20;
      v36 = 2114;
      v37 = v22;
      v38 = 2048;
      v39 = v7;
      v40 = 2114;
      v41 = @"BSServiceQuality.m";
      v42 = 1024;
      v43 = 58;
      v44 = 2114;
      v45 = v19;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86ABE8);
  }

  v10 = off_1E7521090[v8];
  if (class)
  {
    if (priority)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot ask for main with relative priority : qos=%u rp=%i", a2, class];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(sel__serviceWithClass_relativePriority_main_);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138544642;
        v35 = v30;
        v36 = 2114;
        v37 = v32;
        v38 = 2048;
        v39 = v7;
        v40 = 2114;
        v41 = @"BSServiceQuality.m";
        v42 = 1024;
        v43 = 89;
        v44 = 2114;
        v45 = v29;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v33 = v29;
      [v29 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86ADE4);
    }

    v11 = [[BSServiceQuality alloc] _initWithClass:a2 name:v10 relativePriority:class singleton:0 main:0];
  }

  else
  {
    os_unfair_lock_lock(&_MergedGlobals_15);
    if (priority)
    {
      v12 = qword_1ED4A7CC8;
      if (!qword_1ED4A7CC8)
      {
        v12 = [[BSServiceQuality alloc] _initWithClass:a2 name:v10 relativePriority:0 singleton:1 main:1];
        v13 = qword_1ED4A7CC8;
        qword_1ED4A7CC8 = v12;
      }

      v11 = v12;
    }

    else
    {
      v11 = [qword_1ED4A7CD0 objectForKey:a2];
      if (!v11)
      {
        v11 = [[BSServiceQuality alloc] _initWithClass:a2 name:v10 relativePriority:0 singleton:1 main:0];
        v14 = qword_1ED4A7CD0;
        if (!qword_1ED4A7CD0)
        {
          v15 = objc_alloc_init(MEMORY[0x1E698E6E0]);
          v16 = qword_1ED4A7CD0;
          qword_1ED4A7CD0 = v15;

          v14 = qword_1ED4A7CD0;
        }

        [v14 setObject:v11 forKey:a2];
      }
    }

    os_unfair_lock_unlock(&_MergedGlobals_15);
    if (*(v11 + 5) != a2 || *(v11 + 6) || *(v11 + 16) != 1 || *(v11 + 17) != priority)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cached properties aren't consistent : qos=%u main=%i cached=%@", a2, priority, v11];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel__serviceWithClass_relativePriority_main_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v35 = v25;
        v36 = 2114;
        v37 = v27;
        v38 = 2048;
        v39 = v7;
        v40 = 2114;
        v41 = @"BSServiceQuality.m";
        v42 = 1024;
        v43 = 85;
        v44 = 2114;
        v45 = v24;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86ACE8);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_singleton)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can not deallocate a singleton BSServiceQuality : %@", self];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"BSServiceQuality.m";
      v19 = 1024;
      v20 = 95;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86AFC8);
  }

  v10.receiver = self;
  v10.super_class = BSServiceQuality;
  [(BSServiceQuality *)&v10 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_serviceClass == equalCopy->_serviceClass && self->_relativePriority == equalCopy->_relativePriority;
  }

  return v6;
}

- (id)description
{
  serviceClassName = self->_serviceClassName;
  if (serviceClassName)
  {
    v4 = serviceClassName;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%x>", self->_serviceClass];
  }

  v5 = v4;
  if (self->_main)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"main(%@)", v4];

    v5 = v6;
  }

  relativePriority = self->_relativePriority;
  if (relativePriority)
  {
    relativePriority = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%+i", v5, relativePriority];

    v5 = relativePriority;
  }

  if (self->_singleton)
  {
    v9 = @"<BSServiceQuality:(%p) %@>";
  }

  else
  {
    v9 = @"<BSServiceQuality:%p %@>";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, self, v5];

  return v10;
}

@end