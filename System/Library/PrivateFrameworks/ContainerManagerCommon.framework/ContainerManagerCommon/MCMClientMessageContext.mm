@interface MCMClientMessageContext
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (MCMPOSIXUser)posixUser;
- (MCMUserIdentityCache)userIdentityCache;
- (NSString)personaUniqueString;
- (OS_xpc_object)message;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForCurrentThreadContextWithXPCMessage:(id)message userIdentityCache:(id)cache;
- (int)pid;
@end

@implementation MCMClientMessageContext

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *MEMORY[0x1E69E9840];
  v4 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v4;
  return self;
}

- (NSString)personaUniqueString
{
  result = self->_personaUniqueString;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (OS_xpc_object)message
{
  result = self->_message;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)pid
{
  v5 = *MEMORY[0x1E69E9840];
  auditToken = self->_auditToken;
  result = container_audit_token_get_pid();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)posixUser
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [MCMPOSIXUser posixUserWithUID:container_audit_token_get_euid(), *self->_auditToken.val, *&self->_auditToken.val[2], *&self->_auditToken.val[4], *&self->_auditToken.val[6]];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];

  return self;
}

- (id)initForCurrentThreadContextWithXPCMessage:(id)message userIdentityCache:(id)cache
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  cacheCopy = cache;
  v15.receiver = self;
  v15.super_class = MCMClientMessageContext;
  v9 = [(MCMClientMessageContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    xpc_dictionary_get_audit_token();
    objc_storeStrong(&v10->_userIdentityCache, cache);
    personaUniqueStringForCurrentContext = [cacheCopy personaUniqueStringForCurrentContext];
    personaUniqueString = v10->_personaUniqueString;
    v10->_personaUniqueString = personaUniqueStringForCurrentContext;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

@end