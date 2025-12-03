@interface ULServerEntitlements
+ (BOOL)_checkEntitlement:(id)entitlement forConnection:(id)connection;
@end

@implementation ULServerEntitlements

+ (BOOL)_checkEntitlement:(id)entitlement forConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  connectionCopy = connection;
  v7 = [connectionCopy hasBooleanEntitlement:entitlementCopy];
  if ((v7 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      +[ULServerEntitlements _checkEntitlement:forConnection:];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      signingIdentity = [connectionCopy signingIdentity];
      v13 = 138412546;
      v14 = signingIdentity;
      v15 = 2112;
      v16 = entitlementCopy;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Missing entitlement: %@ is missing required entitlement: %@, rejecting connection.", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

@end