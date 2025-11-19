@interface MCMResultWithURLBase
- (BOOL)encodeResultOntoReply:(id)a3;
- (BOOL)existed;
- (MCMResultWithURLBase)initWithPath:(id)a3 existed:(BOOL)a4 sandboxToken:(const char *)a5;
- (NSString)path;
- (NSURL)url;
- (const)sandboxToken;
- (void)dealloc;
@end

@implementation MCMResultWithURLBase

- (BOOL)existed
{
  result = self->_existed;
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

- (NSString)path
{
  result = self->_path;
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
  v5.super_class = MCMResultWithURLBase;
  [(MCMResultWithURLBase *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (MCMResultWithURLBase)initWithPath:(id)a3 existed:(BOOL)a4 sandboxToken:(const char *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v15.receiver = self;
  v15.super_class = MCMResultWithURLBase;
  v10 = [(MCMResultBase *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_path, a3);
    if (a5)
    {
      v12 = strndup(a5, 0x800uLL);
    }

    else
    {
      v12 = 0;
    }

    v11->_sandboxToken = v12;
    v11->_existed = a4;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MCMResultWithURLBase;
  v5 = [(MCMResultBase *)&v12 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      v7 = [(MCMResultWithURLBase *)self path];

      if (v7)
      {
        v8 = [(MCMResultWithURLBase *)self path];
        v9 = [v8 fileSystemRepresentation];

        if (v9)
        {
          xpc_dictionary_set_string(v4, "ReplyPath", v9);
        }
      }

      if ([(MCMResultWithURLBase *)self sandboxToken])
      {
        xpc_dictionary_set_string(v4, "ReplySandboxToken", [(MCMResultWithURLBase *)self sandboxToken]);
      }

      xpc_dictionary_set_BOOL(v4, "ReplyExisted", [(MCMResultWithURLBase *)self existed]);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

@end