@interface MCMXPCMessageCreateOrLookupWithBundle
- (BOOL)createIfNecessary;
- (BOOL)issueSandboxExtension;
- (BOOL)transient;
- (MCMXPCMessageCreateOrLookupWithBundle)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
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

- (MCMXPCMessageCreateOrLookupWithBundle)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v31 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v26.receiver = self;
  v26.super_class = MCMXPCMessageCreateOrLookupWithBundle;
  v9 = [(MCMXPCMessageBase *)&v26 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    uint64 = xpc_dictionary_get_uint64(objectCopy, "Flags");
    v9->_createIfNecessary = uint64 & 1;
    v9->_transient = (uint64 & 2) != 0;
    v9->_issueSandboxExtension = (uint64 & 8) != 0;
    v9->_sandboxToken = xpc_dictionary_get_string(objectCopy, "SandboxToken");
    v11 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:objectCopy key:"BundlePath"];
    if (v11)
    {
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:1 relativeToURL:0];
      bundleURL = v9->_bundleURL;
      v9->_bundleURL = v12;

      v14 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:objectCopy key:"ExecutablePath"];
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0 relativeToURL:0];
        executableURL = v9->_executableURL;
        v9->_executableURL = v16;

        path = [(NSURL *)v9->_executableURL path];
        path2 = [(NSURL *)v9->_bundleURL path];
        v20 = [path hasPrefix:path2];

        if (v20)
        {

          goto LABEL_11;
        }

        v21 = container_log_handle_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          path3 = [(NSURL *)v9->_executableURL path];
          path4 = [(NSURL *)v9->_bundleURL path];
          *buf = 138412546;
          v28 = path3;
          v29 = 2112;
          v30 = path4;
          _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Executable path [%@] is not inside bundle path [%@]", buf, 0x16u);
        }
      }
    }

    v9 = 0;
    if (error)
    {
      *error = 10;
    }
  }

LABEL_11:

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

@end