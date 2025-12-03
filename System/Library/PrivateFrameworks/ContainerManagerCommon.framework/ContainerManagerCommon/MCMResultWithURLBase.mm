@interface MCMResultWithURLBase
- (BOOL)encodeResultOntoReply:(id)reply;
- (BOOL)existed;
- (MCMResultWithURLBase)initWithPath:(id)path existed:(BOOL)existed sandboxToken:(const char *)token;
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

- (MCMResultWithURLBase)initWithPath:(id)path existed:(BOOL)existed sandboxToken:(const char *)token
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = MCMResultWithURLBase;
  v10 = [(MCMResultBase *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_path, path);
    if (token)
    {
      v12 = strndup(token, 0x800uLL);
    }

    else
    {
      v12 = 0;
    }

    v11->_sandboxToken = v12;
    v11->_existed = existed;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v13 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12.receiver = self;
  v12.super_class = MCMResultWithURLBase;
  v5 = [(MCMResultBase *)&v12 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      path = [(MCMResultWithURLBase *)self path];

      if (path)
      {
        path2 = [(MCMResultWithURLBase *)self path];
        fileSystemRepresentation = [path2 fileSystemRepresentation];

        if (fileSystemRepresentation)
        {
          xpc_dictionary_set_string(replyCopy, "ReplyPath", fileSystemRepresentation);
        }
      }

      if ([(MCMResultWithURLBase *)self sandboxToken])
      {
        xpc_dictionary_set_string(replyCopy, "ReplySandboxToken", [(MCMResultWithURLBase *)self sandboxToken]);
      }

      xpc_dictionary_set_BOOL(replyCopy, "ReplyExisted", [(MCMResultWithURLBase *)self existed]);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

@end