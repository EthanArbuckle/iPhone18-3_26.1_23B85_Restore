@interface MCMXPCMessageRepairUserData
- (MCMXPCMessageRepairUserData)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (NSURL)url;
- (char)sandboxToken;
- (unsigned)disposition;
- (void)dealloc;
@end

@implementation MCMXPCMessageRepairUserData

- (char)sandboxToken
{
  result = self->_sandboxToken;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)url
{
  result = self->_url;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  sandboxToken = self->_sandboxToken;
  if (sandboxToken)
  {
    free(sandboxToken);
    memset_s(&self->_sandboxToken, 8uLL, 0, 8uLL);
  }

  v5.receiver = self;
  v5.super_class = MCMXPCMessageRepairUserData;
  [(MCMXPCMessageBase *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (unsigned)disposition
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMXPCMessageRepairUserData;
  v2 = [(MCMXPCMessageBase *)&v6 disposition];
  if (v2 == 1)
  {
    v3 = containermanager_copy_global_configuration();
    v2 = [v3 runmode] == 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (MCMXPCMessageRepairUserData)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v17.receiver = self;
  v17.super_class = MCMXPCMessageRepairUserData;
  v9 = [(MCMXPCMessageBase *)&v17 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    string = xpc_dictionary_get_string(v8, "SandboxToken");
    if (string)
    {
      string = strndup(string, 0x800uLL);
    }

    v9->_sandboxToken = string;
    url = v9->_url;
    v9->_url = 0;

    v12 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:v8 key:"Path"];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:1 relativeToURL:0];
      v14 = v9->_url;
      v9->_url = v13;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

@end