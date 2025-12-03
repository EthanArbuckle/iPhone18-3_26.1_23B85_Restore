@interface BSXPCServiceConnectionEndpoint
+ (id)nullEndpoint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNullEndpoint;
- (BSXPCServiceConnectionEndpoint)init;
- (id)RBSTarget;
- (id)_initWithXPCEndpoint:(void *)endpoint oneshot:(char)oneshot nonLaunching:(int)launching targetPID:(void *)d withTargetDescription:;
- (id)debugDescription;
- (id)description;
- (id)initWithXPCEndpoint:(void *)endpoint oneshot:(char)oneshot nonLaunching:(uint64_t)launching targetPID:(void *)d targetDescription:;
- (uint64_t)compare:(uint64_t)compare;
- (unint64_t)hash;
@end

@implementation BSXPCServiceConnectionEndpoint

- (unint64_t)hash
{
  if (self->_xpcEndpoint)
  {
    xpcEndpoint = self->_xpcEndpoint;

    return xpc_hash(xpcEndpoint);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = BSXPCServiceConnectionEndpoint;
    return [(BSXPCServiceConnectionEndpoint *)&v6 hash];
  }
}

- (id)RBSTarget
{
  if (self)
  {
    if (*(self + 12) < 1)
    {
      if (*(self + 16))
      {
        self = [getRBSTargetClass_0() targetWithEndpoint:*(self + 16)];
      }

      else
      {
        self = 0;
      }
    }

    else
    {
      self = [getRBSTargetClass_0() targetWithPid:*(self + 12)];
    }

    v1 = vars8;
  }

  return self;
}

- (BOOL)isNullEndpoint
{
  selfCopy = self;
  if (self)
  {
    v2 = +[BSXPCServiceConnectionEndpoint nullEndpoint];
    selfCopy = v2 == selfCopy;
  }

  return selfCopy;
}

+ (id)nullEndpoint
{
  objc_opt_self();
  if (qword_1ED4A7C18 != -1)
  {
    dispatch_once(&qword_1ED4A7C18, &__block_literal_global_4);
  }

  v0 = _MergedGlobals_7;

  return v0;
}

void __46__BSXPCServiceConnectionEndpoint_nullEndpoint__block_invoke()
{
  v0 = [[BSXPCServiceConnectionEndpoint alloc] _initWithXPCEndpoint:0 oneshot:0 nonLaunching:0 targetPID:@"<null>" withTargetDescription:?];
  v1 = _MergedGlobals_7;
  _MergedGlobals_7 = v0;
}

- (id)description
{
  if (self->_nonLaunching)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NL:%@", self->_targetDescription];
  }

  else
  {
    v2 = self->_targetDescription;
  }

  return v2;
}

- (BSXPCServiceConnectionEndpoint)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSXPCServiceConnectionEndpoint"];
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
    v17 = @"BSXPCServiceConnectionEndpoint.m";
    v18 = 1024;
    v19 = 41;
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

- (id)_initWithXPCEndpoint:(void *)endpoint oneshot:(char)oneshot nonLaunching:(int)launching targetPID:(void *)d withTargetDescription:
{
  v12 = a2;
  endpointCopy = endpoint;
  dCopy = d;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = BSXPCServiceConnectionEndpoint;
    v15 = objc_msgSendSuper2(&v21, sel_init);
    self = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 2, a2);
      v16 = [endpointCopy copy];
      v17 = self[3];
      self[3] = v16;

      *(self + 8) = oneshot;
      *(self + 3) = launching;
      v18 = [dCopy copy];
      v19 = self[4];
      self[4] = v18;
    }
  }

  return self;
}

- (id)initWithXPCEndpoint:(void *)endpoint oneshot:(char)oneshot nonLaunching:(uint64_t)launching targetPID:(void *)d targetDescription:
{
  v64 = *MEMORY[0x1E69E9840];
  v51 = a2;
  endpointCopy = endpoint;
  dCopy = d;
  if (self)
  {
    v13 = endpointCopy;
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v41 = MEMORY[0x1E696AEC0];
        classForCoder = [v13 classForCoder];
        if (!classForCoder)
        {
          classForCoder = objc_opt_class();
        }

        v43 = NSStringFromClass(classForCoder);
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = [v41 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"oneshot", v43, v45];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v47 = NSStringFromSelector(sel_initWithXPCEndpoint_oneshot_nonLaunching_targetPID_targetDescription_);
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          *buf = 138544642;
          v53 = v47;
          v54 = 2114;
          v55 = v49;
          v56 = 2048;
          selfCopy4 = self;
          v58 = 2114;
          v59 = @"BSXPCServiceConnectionEndpoint.m";
          v60 = 1024;
          v61 = 65;
          v62 = 2114;
          v63 = v46;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v50 = v46;
        [v46 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A848FCCLL);
      }
    }

    if ((launching & 0x80000000) != 0)
    {
      launching = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid targetPID %i", launching];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel_initWithXPCEndpoint_oneshot_nonLaunching_targetPID_targetDescription_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v53 = v20;
        v54 = 2114;
        v55 = v22;
        v56 = 2048;
        selfCopy4 = self;
        v58 = 2114;
        v59 = @"BSXPCServiceConnectionEndpoint.m";
        v60 = 1024;
        v61 = 66;
        v62 = 2114;
        v63 = launching;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v23 = launching;
      [launching UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A848C28);
    }

    v14 = dCopy;
    v15 = MEMORY[0x1E696AEC0];
    if (!v14)
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v15 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"targetDescription", v25];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(sel_initWithXPCEndpoint_oneshot_nonLaunching_targetPID_targetDescription_);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v53 = v27;
        v54 = 2114;
        v55 = v29;
        v56 = 2048;
        selfCopy4 = self;
        v58 = 2114;
        v59 = @"BSXPCServiceConnectionEndpoint.m";
        v60 = 1024;
        v61 = 67;
        v62 = 2114;
        v63 = v26;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v30 = v26;
      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A848D40);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v14 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v33 = NSStringFromClass(classForCoder2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = [v31 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"targetDescription", v33, v35];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v37 = NSStringFromSelector(sel_initWithXPCEndpoint_oneshot_nonLaunching_targetPID_targetDescription_);
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138544642;
        v53 = v37;
        v54 = 2114;
        v55 = v39;
        v56 = 2048;
        selfCopy4 = self;
        v58 = 2114;
        v59 = @"BSXPCServiceConnectionEndpoint.m";
        v60 = 1024;
        v61 = 67;
        v62 = 2114;
        v63 = v36;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v40 = v36;
      [v36 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A848E84);
    }

    v16 = v51;
    self = [(BSXPCServiceConnectionEndpoint *)self _initWithXPCEndpoint:v51 oneshot:v13 nonLaunching:oneshot targetPID:launching withTargetDescription:v14];
  }

  else
  {
    v16 = v51;
  }

  v17 = *MEMORY[0x1E69E9840];
  return self;
}

- (uint64_t)compare:(uint64_t)compare
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!compare)
  {
    v11 = 0;
    goto LABEL_22;
  }

  v5 = v3;
  if (!v5)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v24 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"other", v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(sel_compare_);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v43 = v28;
      v44 = 2114;
      v45 = v30;
      v46 = 2048;
      *v47 = compare;
      *&v47[8] = 2114;
      *&v47[10] = @"BSXPCServiceConnectionEndpoint.m";
      v48 = 1024;
      v49 = 86;
      v50 = 2114;
      v51 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84945CLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = MEMORY[0x1E696AEC0];
    classForCoder = [v5 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v34 = NSStringFromClass(classForCoder);
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v32 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"other", v34, v36];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(sel_compare_);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      v43 = v38;
      v44 = 2114;
      v45 = v40;
      v46 = 2048;
      *v47 = compare;
      *&v47[8] = 2114;
      *&v47[10] = @"BSXPCServiceConnectionEndpoint.m";
      v48 = 1024;
      v49 = 86;
      v50 = 2114;
      v51 = v37;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8495A4);
  }

  v6 = *(compare + 16);
  v7 = *(v5 + 2);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v6;
    v9 = v7;
    v10 = xpc_endpoint_compare();
    if (v10 == -1)
    {
      v11 = -1;
LABEL_13:

      goto LABEL_22;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid xpc_endpoint_compare result : %i l=%@ r=%@", v10, v8, v9];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult __endpointCompare(__strong xpc_endpoint_t, __strong xpc_endpoint_t)"}];
          *buf = 138544130;
          v43 = v22;
          v44 = 2114;
          v45 = @"BSXPCServiceConnectionEndpoint.m";
          v46 = 1024;
          *v47 = 31;
          *&v47[4] = 2114;
          *&v47[6] = v21;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        v23 = v21;
        [v21 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A84933CLL);
      }

      v11 = 1;
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    goto LABEL_21;
  }

  v12 = *(compare + 24);
  v13 = *(v5 + 3);
  if (v12)
  {
    if (v13)
    {
      v11 = [v12 compare:?];
      if (v11)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

LABEL_19:
    v11 = 1;
    goto LABEL_22;
  }

  if (v13)
  {
LABEL_21:
    v11 = -1;
    goto LABEL_22;
  }

LABEL_23:
  if (*(compare + 8))
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (*(compare + 8) == v5[8])
  {
    v16 = *(compare + 12);
    v17 = *(v5 + 3);
    v18 = v16 == v17;
    v19 = v16 < v17;
    v20 = -1;
    if (!v19)
    {
      v20 = 1;
    }

    if (v18)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }
  }

LABEL_22:

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    xpcEndpoint = self->_xpcEndpoint;
    v9 = equalCopy->_xpcEndpoint;
    if (xpcEndpoint)
    {
      if (!v9 || !xpc_equal(xpcEndpoint, v9))
      {
        goto LABEL_3;
      }
    }

    else if (v9)
    {
      goto LABEL_3;
    }

    oneshot = self->_oneshot;
    v11 = equalCopy->_oneshot;
    if (BSEqualObjects() && self->_nonLaunching == equalCopy->_nonLaunching)
    {
      v6 = self->_targetPID == equalCopy->_targetPID;
      goto LABEL_5;
    }
  }

LABEL_3:
  v6 = 0;
LABEL_5:

  return v6;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_xpcEndpoint withName:@"xpcEndpoint" skipIfNil:0];
  v5 = [v3 appendObject:self->_oneshot withName:@"oneshot" skipIfNil:0];
  v6 = [v3 appendBool:self->_nonLaunching withName:@"nonLaunching"];
  v7 = [v3 appendInt:self->_targetPID withName:@"targetPID"];
  [v3 appendString:self->_targetDescription withName:@"targetDescription" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

@end