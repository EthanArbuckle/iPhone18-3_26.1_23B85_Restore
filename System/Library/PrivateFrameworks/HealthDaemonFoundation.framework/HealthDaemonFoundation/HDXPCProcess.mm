@interface HDXPCProcess
+ (HDXPCProcess)processWithConnection:(id)connection error:(id *)error;
+ (id)currentProcess;
- (BOOL)hasArrayEntitlement:(id)entitlement containing:(id)containing;
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)hasRequiredArrayEntitlement:(id)entitlement containing:(id)containing error:(id *)error;
- (BOOL)hasRequiredEntitlement:(id)entitlement error:(id *)error;
- (BOOL)isWidgetKitExtension;
- (HDXPCProcess)initWithAuditToken:(id)token entitlements:(id)entitlements isExtension:(BOOL)extension containerAppBundleIdentifier:(id)identifier;
- (NSString)name;
- (id)_pluginBundleForCurrentProcess;
- (id)description;
- (id)unitTest_copyProcessWithEntitlements:(id)entitlements;
- (id)valueForEntitlement:(id)entitlement;
- (void)_pluginBundleForCurrentProcess;
- (void)dropEntitlement:(id)entitlement;
- (void)isWidgetKitExtension;
@end

@implementation HDXPCProcess

- (NSString)name
{
  name = self->_name;
  if (name)
  {
    return name;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    return bundleIdentifier;
  }

  else
  {
    return @"Unknown";
  }
}

- (HDXPCProcess)initWithAuditToken:(id)token entitlements:(id)entitlements isExtension:(BOOL)extension containerAppBundleIdentifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  entitlementsCopy = entitlements;
  identifierCopy = identifier;
  v32.receiver = self;
  v32.super_class = HDXPCProcess;
  v13 = [(HDXPCProcess *)&v32 init];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = [tokenCopy copy];
  v15 = v13->_auditToken;
  v13->_auditToken = v14;

  objc_storeStrong(&v13->_entitlements, entitlements);
  v16 = tokenCopy;
  if (HDXPCProcessNameFromAuditToken_onceToken != -1)
  {
    [HDXPCProcess initWithAuditToken:entitlements:isExtension:containerAppBundleIdentifier:];
  }

  if (!HDXPCProcessNameFromAuditToken_pidInfoAllowed)
  {
    goto LABEL_11;
  }

  v17 = proc_name([v16 processIdentifier], buffer, 0x400u);
  if (v17 < 1)
  {
    memset(&audittoken, 0, sizeof(audittoken));
    if (v16)
    {
      [v16 auditToken];
    }

    v19 = proc_pidpath_audittoken(&audittoken, buffer, 0x400u);
    if (v19 >= 1)
    {
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v19 encoding:4];
      lastPathComponent = [v20 lastPathComponent];

      goto LABEL_12;
    }

LABEL_11:
    lastPathComponent = 0;
    goto LABEL_12;
  }

  lastPathComponent = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v17 encoding:4];
LABEL_12:

  name = v13->_name;
  v13->_name = lastPathComponent;

  v22 = MEMORY[0x277CCDE78];
  if (v16)
  {
    [v16 auditToken];
  }

  else
  {
    memset(buffer, 0, 32);
  }

  v23 = [v22 signingIdentifierFromAuditToken:buffer];
  v24 = [v23 copy];
  v25 = v24;
  if (v24)
  {
    applicationIdentifier = v24;
  }

  else
  {
    applicationIdentifier = [entitlementsCopy applicationIdentifier];
  }

  bundleIdentifier = v13->_bundleIdentifier;
  v13->_bundleIdentifier = applicationIdentifier;

  v13->_isExtension = extension;
  v28 = [identifierCopy copy];
  containerAppBundleIdentifier = v13->_containerAppBundleIdentifier;
  v13->_containerAppBundleIdentifier = v28;

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isWidgetKitExtension
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_isExtension)
  {
    _pluginBundleForCurrentProcess = [(HDXPCProcess *)self _pluginBundleForCurrentProcess];
    v4 = _pluginBundleForCurrentProcess;
    if (_pluginBundleForCurrentProcess)
    {
      hk_extensionPointIdentifier = [_pluginBundleForCurrentProcess hk_extensionPointIdentifier];
      v6 = hk_extensionPointIdentifier;
      if (hk_extensionPointIdentifier)
      {
        v7 = [hk_extensionPointIdentifier isEqualToString:@"com.apple.widgetkit-extension"];
      }

      else
      {
        _HKInitializeLogging();
        v9 = *MEMORY[0x277CCC2B0];
        v7 = 0;
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          selfCopy = self;
          _os_log_impl(&dword_25156C000, v9, OS_LOG_TYPE_DEFAULT, "Bundle extension point not found for process: %{public}@", &v12, 0xCu);
          v7 = 0;
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
      {
        [(HDXPCProcess *)self isWidgetKitExtension];
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_pluginBundleForCurrentProcess
{
  defaultManager = [MEMORY[0x277D3D350] defaultManager];
  v4 = [defaultManager informationForPlugInWithPid:{-[HDXPCProcess processIdentifier](self, "processIdentifier")}];

  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEBUG))
  {
    [(HDXPCProcess *)self _pluginBundleForCurrentProcess];
  }

  v6 = [v4 objectForKey:*MEMORY[0x277D3D370]];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
    v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (HDXPCProcess)processWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v7 = [MEMORY[0x277CCDDA8] entitlementsWithConnection:connectionCopy error:error];
  if (v7)
  {
    hk_isAppExtension = [connectionCopy hk_isAppExtension];
    if (hk_isAppExtension)
    {
      v9 = [MEMORY[0x277CC1E88] hk_appExtensionContainerBundleForConnection:connectionCopy];
      bundleIdentifier = [v9 bundleIdentifier];
    }

    else
    {
      bundleIdentifier = 0;
    }

    v12 = objc_alloc(MEMORY[0x277CCDE78]);
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v13 = [v12 initWithAuditToken:v15];
    v11 = [[self alloc] initWithAuditToken:v13 entitlements:v7 isExtension:hk_isAppExtension containerAppBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)currentProcess
{
  v8 = 0;
  v3 = [MEMORY[0x277CCDDA8] entitlementsForCurrentTaskWithError:&v8];
  if (!v3)
  {
    v3 = [MEMORY[0x277CCDDA8] entitlementsWithDictionary:MEMORY[0x277CBEC10]];
  }

  v4 = [self alloc];
  auditTokenForCurrentTask = [MEMORY[0x277CCDE78] auditTokenForCurrentTask];
  v6 = [v4 initWithAuditToken:auditTokenForCurrentTask entitlements:v3 isExtension:0 containerAppBundleIdentifier:0];

  return v6;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(HDXPCProcess *)self valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)hasRequiredEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  v7 = [(HDXPCProcess *)self hasEntitlement:entitlementCopy];
  if (!v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    name = [(HDXPCProcess *)self name];
    bundleIdentifier = [(HDXPCProcess *)self bundleIdentifier];
    [v8 hk_assignError:error code:4 format:{@"Process %@ (%@) missing required entitlement %@", name, bundleIdentifier, entitlementCopy}];
  }

  return v7;
}

- (BOOL)hasArrayEntitlement:(id)entitlement containing:(id)containing
{
  containingCopy = containing;
  v7 = [(HDXPCProcess *)self valueForEntitlement:entitlement];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 containsObject:containingCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasRequiredArrayEntitlement:(id)entitlement containing:(id)containing error:(id *)error
{
  entitlementCopy = entitlement;
  containingCopy = containing;
  v10 = [(HDXPCProcess *)self hasArrayEntitlement:entitlementCopy containing:containingCopy];
  if (!v10)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:{@"Missing %@[%@] entitlement.", entitlementCopy, containingCopy}];
  }

  return v10;
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (([(NSMutableSet *)self->_droppedEntitlements containsObject:entitlementCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_HKEntitlements *)self->_entitlements valueForEntitlement:entitlementCopy];
  }

  return v5;
}

- (void)dropEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  droppedEntitlements = self->_droppedEntitlements;
  v8 = entitlementCopy;
  if (!droppedEntitlements)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_droppedEntitlements;
    self->_droppedEntitlements = v6;

    entitlementCopy = v8;
    droppedEntitlements = self->_droppedEntitlements;
  }

  [(NSMutableSet *)droppedEntitlements addObject:entitlementCopy];
}

- (id)unitTest_copyProcessWithEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v5 = [[HDXPCProcess alloc] initWithAuditToken:self->_auditToken entitlements:entitlementsCopy isExtension:self->_isExtension containerAppBundleIdentifier:self->_containerAppBundleIdentifier];

  return v5;
}

- (id)description
{
  if (self->_name)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@": %@", self->_name];
  }

  else
  {
    v3 = &stru_28637B800;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %@(%d)%@>", objc_opt_class(), self->_bundleIdentifier, -[HDXPCProcess processIdentifier](self, "processIdentifier"), v3, 0];

  return v4;
}

- (void)isWidgetKitExtension
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_25156C000, a2, OS_LOG_TYPE_DEBUG, "Plugin bundle not found for process: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_pluginBundleForCurrentProcess
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  selfCopy = self;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_25156C000, log, OS_LOG_TYPE_DEBUG, "%{public}@: Retrieved plugin bundle info (%{public}@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end