@interface ELSEntitlementUtilities
+ (BOOL)auditToken:(id *)a3 hasEntitlement:(id)a4;
+ (BOOL)currentProcessHasEntitlement:(id)a3;
+ (id)entitlementMissingMessage;
+ (void)assertCurrentProcessHasEntitlement;
@end

@implementation ELSEntitlementUtilities

+ (BOOL)currentProcessHasEntitlement:(id)a3
{
  [a3 UTF8String];
  v3 = xpc_copy_entitlement_for_self();
  v4 = v3;
  if (v3)
  {
    value = xpc_BOOL_get_value(v3);
  }

  else
  {
    v6 = ELSLogHandleForCategory(11);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ELSEntitlementUtilities currentProcessHasEntitlement:v6];
    }

    value = 0;
  }

  return value;
}

+ (void)assertCurrentProcessHasEntitlement
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = +[ELSEntitlementUtilities entitlementMissingMessage];
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_24A07C000, a1, OS_LOG_TYPE_ERROR, "%@", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

+ (BOOL)auditToken:(id *)a3 hasEntitlement:(id)a4
{
  [a4 UTF8String];
  v4 = xpc_copy_entitlement_for_token();
  v5 = v4;
  if (v4)
  {
    value = xpc_BOOL_get_value(v4);
  }

  else
  {
    v7 = ELSLogHandleForCategory(11);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ELSEntitlementUtilities auditToken:v7 hasEntitlement:?];
    }

    value = 0;
  }

  return value;
}

+ (id)entitlementMissingMessage
{
  v2 = ELSInternalString(@"ELS_CONTACT_MESSAGE");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_285D33320;
  }

  v5 = [@"Missing entitlement to use Enhanced Logging State. " stringByAppendingString:v4];

  return v5;
}

@end