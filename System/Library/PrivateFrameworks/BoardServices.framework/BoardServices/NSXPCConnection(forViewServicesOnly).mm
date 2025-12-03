@interface NSXPCConnection(forViewServicesOnly)
- (id)bs_fetchBundleIdentifierFromXPCConnection;
@end

@implementation NSXPCConnection(forViewServicesOnly)

- (id)bs_fetchBundleIdentifierFromXPCConnection
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = objc_getAssociatedObject(self, "BSNSXPCTransport");
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = MEMORY[0x1E696AEC0];
      classForCoder = [v6 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v20 = NSStringFromClass(classForCoder);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v18 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"transport", v20, v22];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v29 = v24;
        v30 = 2114;
        v31 = v26;
        v32 = 2048;
        selfCopy2 = self;
        v34 = 2114;
        v35 = @"BSNSXPCTransport.m";
        v36 = 1024;
        v37 = 881;
        v38 = 2114;
        v39 = v23;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83EF2CLL);
    }

    _underlyingServerPeerConnection = [(BSXPCServiceConnection *)v6[1] _underlyingServerPeerConnection];
  }

  else
  {
    _underlyingServerPeerConnection = [self _xpcConnection];
  }

  v8 = _underlyingServerPeerConnection;
  if (!_underlyingServerPeerConnection)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not find underlying xpcConnection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v29 = v14;
      v30 = 2114;
      v31 = v16;
      v32 = 2048;
      selfCopy2 = self;
      v34 = 2114;
      v35 = @"BSNSXPCTransport.m";
      v36 = 1024;
      v37 = 886;
      v38 = 2114;
      v39 = v13;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83EDE4);
  }

  v9 = xpc_connection_copy_bundle_id();
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    free(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end