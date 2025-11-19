@interface EFSandboxedURLWrapper
+ (OS_os_log)log;
- (EFSandboxedURLWrapper)initWithCoder:(id)a3;
- (EFSandboxedURLWrapper)initWithFileURL:(id)a3 readOnly:(BOOL)a4;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EFSandboxedURLWrapper

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EFSandboxedURLWrapper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

void __28__EFSandboxedURLWrapper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

- (EFSandboxedURLWrapper)initWithFileURL:(id)a3 readOnly:(BOOL)a4
{
  v6 = a3;
  if ([v6 isFileURL])
  {
    v14.receiver = self;
    v14.super_class = EFSandboxedURLWrapper;
    v7 = [(EFSandboxedURLWrapper *)&v14 init];
    if (v7)
    {
      v8 = objc_alloc_init(EFDeallocInvocationToken);
      invocable = v7->_invocable;
      v7->_invocable = v8;

      v10 = [v6 copy];
      url = v7->_url;
      v7->_url = v10;

      v7->_readOnly = a4;
      objc_setAssociatedObject(v7->_url, v7, v7->_invocable, 0x301);
    }

    self = v7;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EFSandboxedURLWrapper *)self url];
  v6 = [(EFSandboxedURLWrapper *)self isReadOnly];
  v7 = [(EFSandboxedURLWrapper *)self sandboxToken];
  v8 = [v3 stringWithFormat:@"<%@: %p> url=%@, readOnly=%d, token=%@, invocable=%@", v4, self, v5, v6, v7, self->_invocable];

  return v8;
}

- (NSString)ef_publicDescription
{
  v3 = +[EFDevice currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = [(EFSandboxedURLWrapper *)self debugDescription];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = EFSandboxedURLWrapper;
    v6 = [(EFSandboxedURLWrapper *)&v10 description];
    v7 = [(EFSandboxedURLWrapper *)self sandboxToken];
    v8 = @"YES";
    if (!v7)
    {
      v8 = @"NO";
    }

    v5 = [v6 stringByAppendingFormat:@" has-token=%@", v8];
  }

  return v5;
}

- (EFSandboxedURLWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_url"];
  v6 = -[EFSandboxedURLWrapper initWithFileURL:readOnly:](self, "initWithFileURL:readOnly:", v5, [v4 decodeBoolForKey:@"EFPropertyKey_readOnly"]);
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kEFSandboxExtensionToken"];
    sandboxToken = v6->_sandboxToken;
    v6->_sandboxToken = v7;

    v9 = v6->_sandboxToken;
    if (v9)
    {
      MEMORY[0x1C6956F90](v6->_url, [(NSString *)v9 dataUsingEncoding:4]);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EFSandboxedURLWrapper *)self url];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_url"];

  [v4 encodeBool:-[EFSandboxedURLWrapper isReadOnly](self forKey:{"isReadOnly"), @"EFPropertyKey_readOnly"}];
  v33 = 0u;
  v34 = 0u;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 connection];
    v7 = v6;
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v33 = *buf;
    v34 = *&buf[16];
  }

  v8 = [(EFSandboxedURLWrapper *)self url];
  v9 = [v8 startAccessingSecurityScopedResource];
  v10 = [(EFSandboxedURLWrapper *)self isReadOnly];
  v11 = v8;
  if (v11 && (getpid(), v12 = v11, v13 = [v11 fileSystemRepresentation], v14 = *MEMORY[0x1E69E9BD0], v29 = v13, !sandbox_check()))
  {
    v16 = MEMORY[0x1E69E9BA8];
    if (!v10)
    {
      v16 = MEMORY[0x1E69E9BB0];
    }

    v15 = *v16;
  }

  else
  {
    v15 = 0;
  }

  v30 = v33;
  v31 = v34;
  v17 = v11;
  if (!v15)
  {
LABEL_24:

    v23 = 0;
    if (!v9)
    {
      goto LABEL_26;
    }

LABEL_25:
    [v17 stopAccessingSecurityScopedResource];
    goto LABEL_26;
  }

  memset(v32, 0, sizeof(v32));
  v18 = bcmp(&v30, v32, 0x20uLL) == 0;
  v19 = v17;
  [v17 fileSystemRepresentation];
  v20 = *MEMORY[0x1E69E9BE0];
  if (v18)
  {
    v21 = sandbox_extension_issue_file();
  }

  else
  {
    *buf = v30;
    *&buf[16] = v31;
    v21 = sandbox_extension_issue_file_to_process();
  }

  v22 = v21;
  if (!v21)
  {
    v24 = *__error();
    v25 = __error();
    v26 = strerror(*v25);
    v27 = +[EFSandboxedURLWrapper log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 1024;
      *&buf[24] = v24;
      *&buf[28] = 2082;
      *&buf[30] = v26;
      _os_log_error_impl(&dword_1C6152000, v27, OS_LOG_TYPE_ERROR, "unable to issue sandbox extension %{public}s for URL %@: (%d) %{public}s", buf, 0x26u);
    }

    goto LABEL_24;
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
  free(v22);

  if (v23)
  {
    [v4 encodeObject:v23 forKey:@"kEFSandboxExtensionToken"];
  }

  if (v9)
  {
    goto LABEL_25;
  }

LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
}

@end