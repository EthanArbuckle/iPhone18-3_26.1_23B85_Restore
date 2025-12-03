@interface NSURL(LNSandboxExtension)
- (id)ln_sandboxExtendedURLWithAuditToken:()LNSandboxExtension;
@end

@implementation NSURL(LNSandboxExtension)

- (id)ln_sandboxExtendedURLWithAuditToken:()LNSandboxExtension
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9BA8];
  path = [self path];
  [path fileSystemRepresentation];
  v7 = *MEMORY[0x1E69E9BE0];
  v8 = a3[1];
  *v17 = *a3;
  *&v17[16] = v8;
  v9 = sandbox_extension_issue_file_to_process();

  if (v9)
  {
    selfCopy = [self copy];
    v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:strlen(v9) + 1];
    MEMORY[0x19A8E56D0](selfCopy, v11);
  }

  else
  {
    v12 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = __error();
      v14 = strerror(*v13);
      *v17 = 138412546;
      *&v17[4] = self;
      *&v17[12] = 2080;
      *&v17[14] = v14;
      _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_ERROR, "Could not create sandbox read extension for file URL %@, error: %s", v17, 0x16u);
    }

    selfCopy = self;
  }

  v15 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

@end