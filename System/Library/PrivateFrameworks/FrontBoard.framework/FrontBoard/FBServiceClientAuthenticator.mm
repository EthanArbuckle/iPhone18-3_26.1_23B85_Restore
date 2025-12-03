@interface FBServiceClientAuthenticator
+ (BOOL)_authenticateAuditToken:(id)token entitlement:(id)entitlement credentials:(unint64_t)credentials error:(id *)error;
+ (BOOL)authenticateAuditToken:(id *)token forEntitlement:(id)entitlement error:(id *)error;
+ (id)_errorForCode:(int)code process:(id)process failedEntitlement:(id)entitlement;
+ (id)sharedForegroundUIAppClientAuthenticator;
+ (id)sharedSystemClientAuthenticator;
+ (id)sharedUIAppClientAuthenticator;
- (BOOL)authenticateAuditToken:(id)token forEntitlement:(id)entitlement error:(id *)error;
- (BOOL)authenticateClient:(id)client error:(id *)error;
- (FBServiceClientAuthenticator)init;
- (FBServiceClientAuthenticator)initWithCredentials:(unint64_t)credentials;
- (FBServiceClientAuthenticator)initWithEntitlement:(id)entitlement additionalCredentials:(unint64_t)credentials;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBServiceClientAuthenticator

+ (id)sharedSystemClientAuthenticator
{
  if (sharedSystemClientAuthenticator_onceToken != -1)
  {
    +[FBServiceClientAuthenticator sharedSystemClientAuthenticator];
  }

  v3 = sharedSystemClientAuthenticator___authenticator;

  return v3;
}

void __63__FBServiceClientAuthenticator_sharedSystemClientAuthenticator__block_invoke()
{
  v0 = [[FBServiceClientAuthenticator alloc] initWithCredentials:3];
  v1 = sharedSystemClientAuthenticator___authenticator;
  sharedSystemClientAuthenticator___authenticator = v0;
}

+ (id)sharedUIAppClientAuthenticator
{
  if (sharedUIAppClientAuthenticator_onceToken != -1)
  {
    +[FBServiceClientAuthenticator sharedUIAppClientAuthenticator];
  }

  v3 = sharedUIAppClientAuthenticator___authenticator;

  return v3;
}

void __62__FBServiceClientAuthenticator_sharedUIAppClientAuthenticator__block_invoke()
{
  v0 = [[FBServiceClientAuthenticator alloc] initWithCredentials:5];
  v1 = sharedUIAppClientAuthenticator___authenticator;
  sharedUIAppClientAuthenticator___authenticator = v0;
}

+ (id)sharedForegroundUIAppClientAuthenticator
{
  if (sharedForegroundUIAppClientAuthenticator_onceToken != -1)
  {
    +[FBServiceClientAuthenticator sharedForegroundUIAppClientAuthenticator];
  }

  v3 = sharedForegroundUIAppClientAuthenticator___authenticator;

  return v3;
}

void __72__FBServiceClientAuthenticator_sharedForegroundUIAppClientAuthenticator__block_invoke()
{
  v0 = [[FBServiceClientAuthenticator alloc] initWithCredentials:9];
  v1 = sharedForegroundUIAppClientAuthenticator___authenticator;
  sharedForegroundUIAppClientAuthenticator___authenticator = v0;
}

- (FBServiceClientAuthenticator)init
{
  v3.receiver = self;
  v3.super_class = FBServiceClientAuthenticator;
  result = [(FBServiceClientAuthenticator *)&v3 init];
  if (result)
  {
    result->_credentials = 1;
  }

  return result;
}

- (FBServiceClientAuthenticator)initWithCredentials:(unint64_t)credentials
{
  result = [(FBServiceClientAuthenticator *)self init];
  if (result)
  {
    result->_credentials = credentials;
  }

  return result;
}

- (FBServiceClientAuthenticator)initWithEntitlement:(id)entitlement additionalCredentials:(unint64_t)credentials
{
  entitlementCopy = entitlement;
  v7 = [(FBServiceClientAuthenticator *)self init];
  if (v7)
  {
    v8 = [entitlementCopy copy];
    entitlement = v7->_entitlement;
    v7->_entitlement = v8;

    v7->_credentials = credentials;
  }

  return v7;
}

+ (BOOL)authenticateAuditToken:(id *)token forEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  if (!entitlementCopy)
  {
    [FBServiceClientAuthenticator authenticateAuditToken:a2 forEntitlement:self error:?];
  }

  v10 = entitlementCopy;
  v11 = objc_alloc(MEMORY[0x1E698E620]);
  v12 = *&token->var0[4];
  v16[0] = *token->var0;
  v16[1] = v12;
  v13 = [v11 initWithAuditToken:v16];
  v14 = [self _authenticateAuditToken:v13 entitlement:v10 credentials:0 error:error];

  return v14;
}

- (BOOL)authenticateClient:(id)client error:(id *)error
{
  processHandle = [client processHandle];
  auditToken = [processHandle auditToken];

  LOBYTE(error) = [objc_opt_class() _authenticateAuditToken:auditToken entitlement:self->_entitlement credentials:self->_credentials error:error];
  return error;
}

- (BOOL)authenticateAuditToken:(id)token forEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  tokenCopy = token;
  LOBYTE(error) = [objc_opt_class() _authenticateAuditToken:tokenCopy entitlement:entitlementCopy credentials:self->_credentials error:error];

  return error;
}

+ (id)_errorForCode:(int)code process:(id)process failedEntitlement:(id)entitlement
{
  processCopy = process;
  entitlementCopy = entitlement;
  v9 = entitlementCopy;
  if (code == 3)
  {
    entitlementCopy = @"No such process.";
  }

  else if (code == 13 && entitlementCopy)
  {
    entitlementCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entitlement %@ is required to access this resource.", entitlementCopy];
  }

  else
  {
    entitlementCopy = @"Process lacks credentials to access this resource.";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Authentication failed: %@", entitlementCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v11 forKey:*MEMORY[0x1E696A578]];
  [dictionary setObject:entitlementCopy forKey:*MEMORY[0x1E696A588]];
  if (v9)
  {
    [dictionary setObject:v9 forKey:@"Entitlement"];
  }

  if (processCopy)
  {
    v13 = FBSProcessPrettyDescription();
    [dictionary setObject:v13 forKey:@"FBProcess"];
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBServiceClientAuthenticatorErrorDomain" code:code userInfo:dictionary];

  return v14;
}

+ (BOOL)_authenticateAuditToken:(id)token entitlement:(id)entitlement credentials:(unint64_t)credentials error:(id *)error
{
  credentialsCopy = credentials;
  tokenCopy = token;
  entitlementCopy = entitlement;
  v11 = +[FBProcessManager sharedInstance];
  if (tokenCopy)
  {
    [tokenCopy realToken];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v12 = [v11 registerProcessForAuditToken:&v19];

  if (![v12 isRunning])
  {
    v13 = 3;
    if (!error)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (credentialsCopy)
  {
    v14 = [tokenCopy pid];
    v15 = v14 == getpid();
    isApplicationProcess = v15;
    if (!entitlementCopy || v15)
    {
LABEL_15:
      if (credentialsCopy & 4) == 0 || (isApplicationProcess)
      {
LABEL_18:
        if (credentialsCopy & 8) == 0 || (isApplicationProcess)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

LABEL_17:
      isApplicationProcess = [v12 isApplicationProcess];
      goto LABEL_18;
    }

LABEL_14:
    isApplicationProcess = [tokenCopy hasEntitlement:{entitlementCopy, v19, v20}];
    goto LABEL_15;
  }

  if (entitlementCopy)
  {
    goto LABEL_14;
  }

  if ((credentialsCopy & 4) != 0)
  {
    goto LABEL_17;
  }

  if ((credentialsCopy & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (![v12 isApplicationProcess])
  {
LABEL_22:
    isApplicationProcess = 0;
    goto LABEL_23;
  }

  isApplicationProcess = [v12 isForeground];
LABEL_23:
  if ((credentialsCopy & 2) != 0 && (isApplicationProcess & 1) == 0)
  {
    if ([v12 isApplicationProcess])
    {
      applicationInfo = [v12 applicationInfo];
      isApplicationProcess = [applicationInfo type] != 2;
    }

    else
    {
      isApplicationProcess = [v12 executableLivesOnSystemPartition];
    }
  }

  if (isApplicationProcess)
  {
    v13 = 0;
  }

  else
  {
    v13 = 13;
  }

  if (error)
  {
LABEL_32:
    if (v13)
    {
      *error = [FBServiceClientAuthenticator _errorForCode:v13 process:v12 failedEntitlement:entitlementCopy];
    }
  }

LABEL_34:

  return v13 == 0;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBServiceClientAuthenticator *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  entitlement = [(FBServiceClientAuthenticator *)self entitlement];
  v5 = [v3 appendObject:entitlement withName:@"entitlement" skipIfNil:1];

  v6 = [v3 appendUnsignedInteger:self->_credentials withName:@"credentials"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBServiceClientAuthenticator *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

+ (void)authenticateAuditToken:(const char *)a1 forEntitlement:(uint64_t)a2 error:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"entitlement"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBServiceClientAuthenticator.m";
    v16 = 1024;
    v17 = 103;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end