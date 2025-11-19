@interface IMSandboxedResource
+ (Class)resourceClass;
- (BOOL)accessResourceByConsumingSandboxExtensionWithBlock:(id)a3;
- (IMSandboxedResource)initWithCoder:(id)a3;
- (char)_sandboxExtensionForAuditToken:(id *)a3;
- (char)_sandboxExtensionForPID:(int)a3;
- (id)description;
- (void)authorizeForAuditToken:(id *)a3;
- (void)authorizeForPID:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMSandboxedResource

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IMSandboxedResource *)self resource];
  v5 = [(IMSandboxedResource *)self sandboxExtension];
  v6 = @"YES";
  if (!v5)
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"<IMSandboxedResource resource: %@ hasSandboxExtension: %@>", v4, v6];

  return v7;
}

- (void)dealloc
{
  if (self->_sandboxExtensionHandle >= 1)
  {
    sandbox_extension_release();
    self->_sandboxExtensionHandle = 0;
  }

  v3.receiver = self;
  v3.super_class = IMSandboxedResource;
  [(IMSandboxedResource *)&v3 dealloc];
}

- (void)authorizeForPID:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(IMSandboxedResource *)self _sandboxExtensionForPID:?];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    sandboxExtension = self->_sandboxExtension;
    self->_sandboxExtension = v7;

    free(v6);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Unable to obtain sandbox extension for PID: %llu", &v10, 0xCu);
    }
  }
}

- (void)authorizeForAuditToken:(id *)a3
{
  v4 = *&a3->var0[4];
  v10[0] = *a3->var0;
  v10[1] = v4;
  v5 = [(IMSandboxedResource *)self _sandboxExtensionForAuditToken:v10];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    sandboxExtension = self->_sandboxExtension;
    self->_sandboxExtension = v7;

    free(v6);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Unable to obtain sandbox extension for auditToken", v10, 2u);
    }
  }
}

- (BOOL)accessResourceByConsumingSandboxExtensionWithBlock:(id)a3
{
  *&v17[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(IMSandboxedResource *)self sandboxExtension];
  v6 = [v5 length];

  if (!v6)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_11:
      v9 = 0;
      goto LABEL_12;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(IMSandboxedResource *)self resource];
      v16 = 138412290;
      *v17 = v11;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Unable to access protected resource (missing sandbox extension): %@", &v16, 0xCu);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!self->_sandboxExtensionHandle)
  {
    [(NSString *)self->_sandboxExtension UTF8String];
    v7 = sandbox_extension_consume();
    self->_sandboxExtensionHandle = v7;
    if (v7 == -1)
    {
      sandboxExtension = self->_sandboxExtension;
      self->_sandboxExtension = 0;

      self->_sandboxExtensionHandle = 0;
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_11;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = *__error();
        v15 = [(IMSandboxedResource *)self resource];
        v16 = 67109378;
        v17[0] = v14;
        LOWORD(v17[1]) = 2112;
        *(&v17[1] + 2) = v15;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Unable to access protected resource, error: %d resource: %@", &v16, 0x12u);
      }

      goto LABEL_10;
    }
  }

  if (v4)
  {
    v8 = [(IMSandboxedResource *)self resource];
    v4[2](v4, v8);
  }

  v9 = 1;
LABEL_12:

  return v9;
}

+ (Class)resourceClass
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is not implemented", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (char)_sandboxExtensionForPID:(int)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is not implemented", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (char)_sandboxExtensionForAuditToken:(id *)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is not implemented", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IMSandboxedResource *)self sandboxExtension];
    v7 = [v6 length];

    if (v7)
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = sub_1A861AA08;
      v14 = &unk_1E7826268;
      v15 = self;
      v16 = v5;
      [(IMSandboxedResource *)self accessResourceByConsumingSandboxExtensionWithBlock:&v11];
    }

    else
    {
      v8 = [v5 connection];
      -[IMSandboxedResource authorizeForPID:](self, "authorizeForPID:", [v8 processIdentifier]);
    }
  }

  v9 = [(IMSandboxedResource *)self sandboxExtension:v11];
  [v4 encodeObject:v9 forKey:@"sandboxExtension"];

  v10 = [(IMSandboxedResource *)self resource];
  [v4 encodeObject:v10 forKey:@"resource"];
}

- (IMSandboxedResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMSandboxedResource *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    sandboxExtension = v5->_sandboxExtension;
    v5->_sandboxExtension = v6;

    v8 = [v4 decodeObjectOfClass:objc_msgSend(objc_opt_class() forKey:{"resourceClass"), @"resource"}];
    resource = v5->_resource;
    v5->_resource = v8;
  }

  return v5;
}

@end