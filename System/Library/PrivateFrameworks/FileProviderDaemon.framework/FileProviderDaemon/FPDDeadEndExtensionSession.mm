@interface FPDDeadEndExtensionSession
- (FPDDeadEndExtensionSession)init;
- (FPDDeadEndExtensionSession)initWithError:(id)error;
- (id)newFileProviderProxyWithTimeout:(double)timeout pid:(int)pid;
@end

@implementation FPDDeadEndExtensionSession

- (FPDDeadEndExtensionSession)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = FPDDeadEndExtensionSession;
  v5 = [(FPDDeadEndExtensionSession *)&v9 init];
  if (v5)
  {
    v6 = [errorCopy copy];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (FPDDeadEndExtensionSession)init
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shouldn't be called"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDDeadEndExtensionSession init]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionSession.m", 1012, [v2 UTF8String]);
}

- (id)newFileProviderProxyWithTimeout:(double)timeout pid:(int)pid
{
  v5 = objc_alloc(MEMORY[0x1E69674B0]);
  error = self->_error;

  return [v5 initWithConnection:0 protocol:&unk_1F4C8C390 orError:error name:@"dead-end" requestPid:0];
}

@end