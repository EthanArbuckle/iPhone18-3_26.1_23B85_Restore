@interface _BSNSXPCConnectionEvent
- (NSString)description;
- (_BSNSXPCConnectionEvent)init;
@end

@implementation _BSNSXPCConnectionEvent

- (_BSNSXPCConnectionEvent)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on %@", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSNSXPCTransport.m";
    v18 = 1024;
    v19 = 94;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x19A907C90](self->_onQueue, a2);
  v5 = self->_code - 1;
  if (v5 >= 4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %d)", self->_code];
  }

  else
  {
    v6 = off_1E7520690[v5];
  }

  v7 = [v3 stringWithFormat:@"<BSNSXPCConnectionEvent: onQueue=%@ error=%@>", v4, v6];

  return v7;
}

@end