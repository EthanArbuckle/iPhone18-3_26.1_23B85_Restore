@interface NSXPCConnection(MicroLocationUtilities)
+ (id)_signingIdentityForAuditToken:()MicroLocationUtilities;
+ (id)signingIdentityForSelf;
- (id)signingIdentity;
- (uint64_t)hasBooleanEntitlement:()MicroLocationUtilities;
@end

@implementation NSXPCConnection(MicroLocationUtilities)

+ (id)signingIdentityForSelf
{
  *task_info_out = 0u;
  v7 = 0u;
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt))
  {
    v2 = 0;
  }

  else
  {
    v4[0] = *task_info_out;
    v4[1] = v7;
    v2 = [a1 _signingIdentityForAuditToken:v4];
  }

  return v2;
}

- (id)signingIdentity
{
  v2 = objc_opt_class();
  [a1 auditToken];
  v3 = [v2 _signingIdentityForAuditToken:&v5];

  return v3;
}

- (uint64_t)hasBooleanEntitlement:()MicroLocationUtilities
{
  v1 = [a1 valueForEntitlement:?];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (id)_signingIdentityForAuditToken:()MicroLocationUtilities
{
  v0 = xpc_copy_code_signing_identity_for_token();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v0];
    free(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end