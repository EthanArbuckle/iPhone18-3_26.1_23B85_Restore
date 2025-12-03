@interface FinHealthEntitlementsChecker
- (BOOL)_BOOLValueOfEntitlement:(id)entitlement;
- (FinHealthEntitlementsChecker)initWithConnection:(id)connection;
- (id)_arrayValueOfEntitlement:(id)entitlement;
- (id)_stringValueOfEntitlement:(id)entitlement;
- (id)applicationID;
- (void)copyValueOfEntitlement:(id)entitlement;
@end

@implementation FinHealthEntitlementsChecker

- (FinHealthEntitlementsChecker)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = FinHealthEntitlementsChecker;
  v6 = [(FinHealthEntitlementsChecker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (id)applicationID
{
  v2 = [(FinHealthEntitlementsChecker *)self _stringValueOfEntitlement:@"application-identifier"];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)_BOOLValueOfEntitlement:(id)entitlement
{
  v3 = [(FinHealthEntitlementsChecker *)self copyValueOfEntitlement:entitlement];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
  CFRelease(v4);
  return v6;
}

- (id)_arrayValueOfEntitlement:(id)entitlement
{
  v3 = [(FinHealthEntitlementsChecker *)self copyValueOfEntitlement:entitlement];
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFArrayGetTypeID())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_stringValueOfEntitlement:(id)entitlement
{
  v3 = [(FinHealthEntitlementsChecker *)self copyValueOfEntitlement:entitlement];
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)copyValueOfEntitlement:(id)entitlement
{
  v15 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  error = 0;
  v5 = *MEMORY[0x277CBECE8];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v7 = SecTaskCreateWithAuditToken(v5, &token);
  v8 = SecTaskCopyValueForEntitlement(v7, entitlementCopy, &error);
  if (error)
  {
    v9 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      token.val[0] = 138412290;
      *&token.val[1] = error;
      _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_ERROR, "Failed to get entitlements: %@", &token, 0xCu);
    }

    CFRelease(error);
  }

  if (v8)
  {
    v10 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      token.val[0] = 138412290;
      *&token.val[1] = entitlementCopy;
      _os_log_impl(&dword_226DD4000, v10, OS_LOG_TYPE_DEBUG, "Client has entitlement for %@", &token, 0xCu);
    }
  }

  CFRelease(v7);

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

@end