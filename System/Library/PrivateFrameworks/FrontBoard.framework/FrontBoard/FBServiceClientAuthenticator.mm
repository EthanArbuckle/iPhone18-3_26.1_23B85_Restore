@interface FBServiceClientAuthenticator
+ (BOOL)_authenticateAuditToken:(id)a3 entitlement:(id)a4 credentials:(unint64_t)a5 error:(id *)a6;
+ (BOOL)authenticateAuditToken:(id *)a3 forEntitlement:(id)a4 error:(id *)a5;
+ (id)_errorForCode:(int)a3 process:(id)a4 failedEntitlement:(id)a5;
+ (id)sharedForegroundUIAppClientAuthenticator;
+ (id)sharedSystemClientAuthenticator;
+ (id)sharedUIAppClientAuthenticator;
- (BOOL)authenticateAuditToken:(id)a3 forEntitlement:(id)a4 error:(id *)a5;
- (BOOL)authenticateClient:(id)a3 error:(id *)a4;
- (FBServiceClientAuthenticator)init;
- (FBServiceClientAuthenticator)initWithCredentials:(unint64_t)a3;
- (FBServiceClientAuthenticator)initWithEntitlement:(id)a3 additionalCredentials:(unint64_t)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
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

- (FBServiceClientAuthenticator)initWithCredentials:(unint64_t)a3
{
  result = [(FBServiceClientAuthenticator *)self init];
  if (result)
  {
    result->_credentials = a3;
  }

  return result;
}

- (FBServiceClientAuthenticator)initWithEntitlement:(id)a3 additionalCredentials:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FBServiceClientAuthenticator *)self init];
  if (v7)
  {
    v8 = [v6 copy];
    entitlement = v7->_entitlement;
    v7->_entitlement = v8;

    v7->_credentials = a4;
  }

  return v7;
}

+ (BOOL)authenticateAuditToken:(id *)a3 forEntitlement:(id)a4 error:(id *)a5
{
  v9 = a4;
  if (!v9)
  {
    [FBServiceClientAuthenticator authenticateAuditToken:a2 forEntitlement:a1 error:?];
  }

  v10 = v9;
  v11 = objc_alloc(MEMORY[0x1E698E620]);
  v12 = *&a3->var0[4];
  v16[0] = *a3->var0;
  v16[1] = v12;
  v13 = [v11 initWithAuditToken:v16];
  v14 = [a1 _authenticateAuditToken:v13 entitlement:v10 credentials:0 error:a5];

  return v14;
}

- (BOOL)authenticateClient:(id)a3 error:(id *)a4
{
  v6 = [a3 processHandle];
  v7 = [v6 auditToken];

  LOBYTE(a4) = [objc_opt_class() _authenticateAuditToken:v7 entitlement:self->_entitlement credentials:self->_credentials error:a4];
  return a4;
}

- (BOOL)authenticateAuditToken:(id)a3 forEntitlement:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  LOBYTE(a5) = [objc_opt_class() _authenticateAuditToken:v9 entitlement:v8 credentials:self->_credentials error:a5];

  return a5;
}

+ (id)_errorForCode:(int)a3 process:(id)a4 failedEntitlement:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 == 3)
  {
    v10 = @"No such process.";
  }

  else if (a3 == 13 && v8)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entitlement %@ is required to access this resource.", v8];
  }

  else
  {
    v10 = @"Process lacks credentials to access this resource.";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Authentication failed: %@", v10];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  [v12 setObject:v11 forKey:*MEMORY[0x1E696A578]];
  [v12 setObject:v10 forKey:*MEMORY[0x1E696A588]];
  if (v9)
  {
    [v12 setObject:v9 forKey:@"Entitlement"];
  }

  if (v7)
  {
    v13 = FBSProcessPrettyDescription();
    [v12 setObject:v13 forKey:@"FBProcess"];
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBServiceClientAuthenticatorErrorDomain" code:a3 userInfo:v12];

  return v14;
}

+ (BOOL)_authenticateAuditToken:(id)a3 entitlement:(id)a4 credentials:(unint64_t)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = +[FBProcessManager sharedInstance];
  if (v9)
  {
    [v9 realToken];
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
    if (!a6)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v7)
  {
    v14 = [v9 pid];
    v15 = v14 == getpid();
    v16 = v15;
    if (!v10 || v15)
    {
LABEL_15:
      if (v7 & 4) == 0 || (v16)
      {
LABEL_18:
        if (v7 & 8) == 0 || (v16)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

LABEL_17:
      v16 = [v12 isApplicationProcess];
      goto LABEL_18;
    }

LABEL_14:
    v16 = [v9 hasEntitlement:{v10, v19, v20}];
    goto LABEL_15;
  }

  if (v10)
  {
    goto LABEL_14;
  }

  if ((v7 & 4) != 0)
  {
    goto LABEL_17;
  }

  if ((v7 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (![v12 isApplicationProcess])
  {
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v16 = [v12 isForeground];
LABEL_23:
  if ((v7 & 2) != 0 && (v16 & 1) == 0)
  {
    if ([v12 isApplicationProcess])
    {
      v17 = [v12 applicationInfo];
      v16 = [v17 type] != 2;
    }

    else
    {
      v16 = [v12 executableLivesOnSystemPartition];
    }
  }

  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v13 = 13;
  }

  if (a6)
  {
LABEL_32:
    if (v13)
    {
      *a6 = [FBServiceClientAuthenticator _errorForCode:v13 process:v12 failedEntitlement:v10];
    }
  }

LABEL_34:

  return v13 == 0;
}

- (id)succinctDescription
{
  v2 = [(FBServiceClientAuthenticator *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(FBServiceClientAuthenticator *)self entitlement];
  v5 = [v3 appendObject:v4 withName:@"entitlement" skipIfNil:1];

  v6 = [v3 appendUnsignedInteger:self->_credentials withName:@"credentials"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBServiceClientAuthenticator *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
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