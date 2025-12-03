@interface DRSSandboxExtensionHelper
- (DRSSandboxExtensionHelper)initWithSandboxExtensionToken:(id)token logPath:(id)path errorOut:(id *)out;
- (void)dealloc;
@end

@implementation DRSSandboxExtensionHelper

- (DRSSandboxExtensionHelper)initWithSandboxExtensionToken:(id)token logPath:(id)path errorOut:(id *)out
{
  v30[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  pathCopy = path;
  if (!tokenCopy)
  {
    v11 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"nil sandbox extension token";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v13 = [v11 errorWithDomain:@"DRSSandboxExtensionHelper" code:0 userInfo:v12];

    if (out)
    {
      v14 = v13;
      *out = v13;
    }

    goto LABEL_13;
  }

  v26.receiver = self;
  v26.super_class = DRSSandboxExtensionHelper;
  self = [(DRSSandboxExtensionHelper *)&v26 init];
  if (self)
  {
    [tokenCopy UTF8String];
    self->_sandboxExtensionHandle = sandbox_extension_consume();
    objc_storeStrong(&self->_logPath, path);
    if ([(DRSSandboxExtensionHelper *)self sandboxExtensionHandle]!= -1)
    {
      self->_didInit = 1;
      goto LABEL_5;
    }

    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    logPath = [(DRSSandboxExtensionHelper *)self logPath];
    v17 = __error();
    v18 = strerror(*v17);
    v19 = "Unknown";
    if (v18)
    {
      v19 = v18;
    }

    v13 = [v15 initWithFormat:@"Failed to consume extension token for '%@' due to error: %s", logPath, v19];

    v20 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = v13;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v22 = [v20 errorWithDomain:@"DRSSandboxExtensionHelper" code:0 userInfo:v21];

    if (out)
    {
      v23 = v22;
      *out = v22;
    }

LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

LABEL_5:
  self = self;
  selfCopy = self;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(DRSSandboxExtensionHelper *)self didInit])
  {
    [(DRSSandboxExtensionHelper *)self sandboxExtensionHandle];
    if (sandbox_extension_release() == -1)
    {
      v3 = DPLogHandle_SubmitLogError();
      if (os_signpost_enabled(v3))
      {
        logPath = [(DRSSandboxExtensionHelper *)self logPath];
        v5 = __error();
        v6 = strerror(*v5);
        v7 = "Unknown";
        if (v6)
        {
          v7 = v6;
        }

        *buf = 138543618;
        v11 = logPath;
        v12 = 2082;
        v13 = v7;
        _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SandboxExtensionReleaseFailure", "Failed to release sandbox extension for file '%{public}@' due to error: %{public}s", buf, 0x16u);
      }
    }
  }

  v9.receiver = self;
  v9.super_class = DRSSandboxExtensionHelper;
  [(DRSSandboxExtensionHelper *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

@end