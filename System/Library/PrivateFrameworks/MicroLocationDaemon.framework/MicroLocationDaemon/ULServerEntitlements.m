@interface ULServerEntitlements
+ (BOOL)_checkEntitlement:(id)a3 forConnection:(id)a4;
@end

@implementation ULServerEntitlements

+ (BOOL)_checkEntitlement:(id)a3 forConnection:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 hasBooleanEntitlement:v5];
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
      v10 = [v6 signingIdentity];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Missing entitlement: %@ is missing required entitlement: %@, rejecting connection.", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

@end