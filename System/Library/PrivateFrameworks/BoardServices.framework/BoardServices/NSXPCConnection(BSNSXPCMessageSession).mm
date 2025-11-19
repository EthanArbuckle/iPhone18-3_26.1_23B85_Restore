@interface NSXPCConnection(BSNSXPCMessageSession)
- (id)externalMessageSessionController;
@end

@implementation NSXPCConnection(BSNSXPCMessageSession)

- (id)externalMessageSessionController
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, "BSNSXPCTransport");
    if (!v2)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v5 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"transport", v7];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel__BSNSXPCTransport);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v24 = v9;
        v25 = 2114;
        v26 = v11;
        v27 = 2048;
        v28 = a1;
        v29 = 2114;
        v30 = @"BSNSXPCTransport.m";
        v31 = 1024;
        v32 = 856;
        v33 = 2114;
        v34 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83E9F4);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [v2 classForCoder];
      if (!v14)
      {
        v14 = objc_opt_class();
      }

      v15 = NSStringFromClass(v14);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v13 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"transport", v15, v17];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel__BSNSXPCTransport);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v24 = v19;
        v25 = 2114;
        v26 = v21;
        v27 = 2048;
        v28 = a1;
        v29 = 2114;
        v30 = @"BSNSXPCTransport.m";
        v31 = 1024;
        v32 = 856;
        v33 = 2114;
        v34 = v18;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83EB3CLL);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end