@interface MCMResultAcquireSandboxExtensionWithUUID
- (BOOL)encodeResultOntoReply:(id)a3;
- (MCMResultAcquireSandboxExtensionWithUUID)initWithSandboxToken:(id)a3 personaUniqueString:(id)a4 url:(id)a5;
- (NSString)personaUniqueString;
- (NSString)sandboxToken;
- (NSURL)url;
@end

@implementation MCMResultAcquireSandboxExtensionWithUUID

- (NSString)personaUniqueString
{
  result = self->_personaUniqueString;
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

- (NSString)sandboxToken
{
  result = self->_sandboxToken;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MCMResultAcquireSandboxExtensionWithUUID;
  v5 = [(MCMResultBase *)&v12 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      v7 = [(MCMResultAcquireSandboxExtensionWithUUID *)self personaUniqueString];

      if (v7)
      {
        v8 = [(MCMResultAcquireSandboxExtensionWithUUID *)self personaUniqueString];
        xpc_dictionary_set_string(v4, "ReplyPersonaUniqueString", [v8 UTF8String]);
      }

      v9 = [(MCMResultAcquireSandboxExtensionWithUUID *)self sandboxToken];
      xpc_dictionary_set_string(v4, "ReplySandboxToken", [v9 UTF8String]);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultAcquireSandboxExtensionWithUUID)initWithSandboxToken:(id)a3 personaUniqueString:(id)a4 url:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MCMResultAcquireSandboxExtensionWithUUID;
  v12 = [(MCMResultBase *)&v17 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    if (!v9)
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_sandboxToken, a3);
    objc_storeStrong(p_isa + 6, a4);
    objc_storeStrong(p_isa + 5, a5);
  }

  v14 = p_isa;
LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end