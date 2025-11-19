@interface MCMXPCMessageCreateOrLookupWithBundle
- (BOOL)createIfNecessary;
- (BOOL)issueSandboxExtension;
- (BOOL)transient;
- (MCMXPCMessageCreateOrLookupWithBundle)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (NSURL)bundleURL;
- (NSURL)executableURL;
- (const)sandboxToken;
@end

@implementation MCMXPCMessageCreateOrLookupWithBundle

- (NSURL)executableURL
{
  result = self->_executableURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)bundleURL
{
  result = self->_bundleURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (const)sandboxToken
{
  result = self->_sandboxToken;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)issueSandboxExtension
{
  result = self->_issueSandboxExtension;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)transient
{
  result = self->_transient;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)createIfNecessary
{
  result = self->_createIfNecessary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageCreateOrLookupWithBundle)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v26.receiver = self;
  v26.super_class = MCMXPCMessageCreateOrLookupWithBundle;
  v9 = [(MCMXPCMessageBase *)&v26 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    uint64 = xpc_dictionary_get_uint64(v8, "Flags");
    v9->_createIfNecessary = uint64 & 1;
    v9->_transient = (uint64 & 2) != 0;
    v9->_issueSandboxExtension = (uint64 & 8) != 0;
    v9->_sandboxToken = xpc_dictionary_get_string(v8, "SandboxToken");
    v11 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:v8 key:"BundlePath"];
    if (v11)
    {
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:1 relativeToURL:0];
      bundleURL = v9->_bundleURL;
      v9->_bundleURL = v12;

      v14 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:v8 key:"ExecutablePath"];
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0 relativeToURL:0];
        executableURL = v9->_executableURL;
        v9->_executableURL = v16;

        v18 = [(NSURL *)v9->_executableURL path];
        v19 = [(NSURL *)v9->_bundleURL path];
        v20 = [v18 hasPrefix:v19];

        if (v20)
        {

          goto LABEL_11;
        }

        v21 = container_log_handle_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v24 = [(NSURL *)v9->_executableURL path];
          v25 = [(NSURL *)v9->_bundleURL path];
          *buf = 138412546;
          v28 = v24;
          v29 = 2112;
          v30 = v25;
          _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Executable path [%@] is not inside bundle path [%@]", buf, 0x16u);
        }
      }
    }

    v9 = 0;
    if (a5)
    {
      *a5 = 10;
    }
  }

LABEL_11:

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

@end