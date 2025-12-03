@interface MCMResultAcquireSandboxExtensionWithUUID
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultAcquireSandboxExtensionWithUUID)initWithSandboxToken:(id)token personaUniqueString:(id)string url:(id)url;
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

- (BOOL)encodeResultOntoReply:(id)reply
{
  v13 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12.receiver = self;
  v12.super_class = MCMResultAcquireSandboxExtensionWithUUID;
  v5 = [(MCMResultBase *)&v12 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      personaUniqueString = [(MCMResultAcquireSandboxExtensionWithUUID *)self personaUniqueString];

      if (personaUniqueString)
      {
        personaUniqueString2 = [(MCMResultAcquireSandboxExtensionWithUUID *)self personaUniqueString];
        xpc_dictionary_set_string(replyCopy, "ReplyPersonaUniqueString", [personaUniqueString2 UTF8String]);
      }

      sandboxToken = [(MCMResultAcquireSandboxExtensionWithUUID *)self sandboxToken];
      xpc_dictionary_set_string(replyCopy, "ReplySandboxToken", [sandboxToken UTF8String]);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultAcquireSandboxExtensionWithUUID)initWithSandboxToken:(id)token personaUniqueString:(id)string url:(id)url
{
  v18 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  stringCopy = string;
  urlCopy = url;
  v17.receiver = self;
  v17.super_class = MCMResultAcquireSandboxExtensionWithUUID;
  v12 = [(MCMResultBase *)&v17 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    if (!tokenCopy)
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_sandboxToken, token);
    objc_storeStrong(p_isa + 6, string);
    objc_storeStrong(p_isa + 5, url);
  }

  v14 = p_isa;
LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end