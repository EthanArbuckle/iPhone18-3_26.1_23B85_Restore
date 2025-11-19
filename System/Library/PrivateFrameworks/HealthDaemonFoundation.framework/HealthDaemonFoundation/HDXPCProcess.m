@interface HDXPCProcess
+ (HDXPCProcess)processWithConnection:(id)a3 error:(id *)a4;
+ (id)currentProcess;
- (BOOL)hasArrayEntitlement:(id)a3 containing:(id)a4;
- (BOOL)hasEntitlement:(id)a3;
- (BOOL)hasRequiredArrayEntitlement:(id)a3 containing:(id)a4 error:(id *)a5;
- (BOOL)hasRequiredEntitlement:(id)a3 error:(id *)a4;
- (BOOL)isWidgetKitExtension;
- (HDXPCProcess)initWithAuditToken:(id)a3 entitlements:(id)a4 isExtension:(BOOL)a5 containerAppBundleIdentifier:(id)a6;
- (NSString)name;
- (id)_pluginBundleForCurrentProcess;
- (id)description;
- (id)unitTest_copyProcessWithEntitlements:(id)a3;
- (id)valueForEntitlement:(id)a3;
- (void)_pluginBundleForCurrentProcess;
- (void)dropEntitlement:(id)a3;
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

- (HDXPCProcess)initWithAuditToken:(id)a3 entitlements:(id)a4 isExtension:(BOOL)a5 containerAppBundleIdentifier:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v32.receiver = self;
  v32.super_class = HDXPCProcess;
  v13 = [(HDXPCProcess *)&v32 init];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = [v10 copy];
  v15 = v13->_auditToken;
  v13->_auditToken = v14;

  objc_storeStrong(&v13->_entitlements, a4);
  v16 = v10;
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
      v18 = [v20 lastPathComponent];

      goto LABEL_12;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v17 encoding:4];
LABEL_12:

  name = v13->_name;
  v13->_name = v18;

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
    v26 = v24;
  }

  else
  {
    v26 = [v11 applicationIdentifier];
  }

  bundleIdentifier = v13->_bundleIdentifier;
  v13->_bundleIdentifier = v26;

  v13->_isExtension = a5;
  v28 = [v12 copy];
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
    v3 = [(HDXPCProcess *)self _pluginBundleForCurrentProcess];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 hk_extensionPointIdentifier];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 isEqualToString:@"com.apple.widgetkit-extension"];
      }

      else
      {
        _HKInitializeLogging();
        v9 = *MEMORY[0x277CCC2B0];
        v7 = 0;
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          v13 = self;
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
  v3 = [MEMORY[0x277D3D350] defaultManager];
  v4 = [v3 informationForPlugInWithPid:{-[HDXPCProcess processIdentifier](self, "processIdentifier")}];

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

+ (HDXPCProcess)processWithConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCDDA8] entitlementsWithConnection:v6 error:a4];
  if (v7)
  {
    v8 = [v6 hk_isAppExtension];
    if (v8)
    {
      v9 = [MEMORY[0x277CC1E88] hk_appExtensionContainerBundleForConnection:v6];
      v10 = [v9 bundleIdentifier];
    }

    else
    {
      v10 = 0;
    }

    v12 = objc_alloc(MEMORY[0x277CCDE78]);
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v13 = [v12 initWithAuditToken:v15];
    v11 = [[a1 alloc] initWithAuditToken:v13 entitlements:v7 isExtension:v8 containerAppBundleIdentifier:v10];
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

  v4 = [a1 alloc];
  v5 = [MEMORY[0x277CCDE78] auditTokenForCurrentTask];
  v6 = [v4 initWithAuditToken:v5 entitlements:v3 isExtension:0 containerAppBundleIdentifier:0];

  return v6;
}

- (BOOL)hasEntitlement:(id)a3
{
  v3 = [(HDXPCProcess *)self valueForEntitlement:a3];
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

- (BOOL)hasRequiredEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDXPCProcess *)self hasEntitlement:v6];
  if (!v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [(HDXPCProcess *)self name];
    v10 = [(HDXPCProcess *)self bundleIdentifier];
    [v8 hk_assignError:a4 code:4 format:{@"Process %@ (%@) missing required entitlement %@", v9, v10, v6}];
  }

  return v7;
}

- (BOOL)hasArrayEntitlement:(id)a3 containing:(id)a4
{
  v6 = a4;
  v7 = [(HDXPCProcess *)self valueForEntitlement:a3];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 containsObject:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasRequiredArrayEntitlement:(id)a3 containing:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDXPCProcess *)self hasArrayEntitlement:v8 containing:v9];
  if (!v10)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:4 format:{@"Missing %@[%@] entitlement.", v8, v9}];
  }

  return v10;
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_droppedEntitlements containsObject:v4]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_HKEntitlements *)self->_entitlements valueForEntitlement:v4];
  }

  return v5;
}

- (void)dropEntitlement:(id)a3
{
  v4 = a3;
  droppedEntitlements = self->_droppedEntitlements;
  v8 = v4;
  if (!droppedEntitlements)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_droppedEntitlements;
    self->_droppedEntitlements = v6;

    v4 = v8;
    droppedEntitlements = self->_droppedEntitlements;
  }

  [(NSMutableSet *)droppedEntitlements addObject:v4];
}

- (id)unitTest_copyProcessWithEntitlements:(id)a3
{
  v4 = a3;
  v5 = [[HDXPCProcess alloc] initWithAuditToken:self->_auditToken entitlements:v4 isExtension:self->_isExtension containerAppBundleIdentifier:self->_containerAppBundleIdentifier];

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
  v4 = a1;
  _os_log_debug_impl(&dword_25156C000, a2, OS_LOG_TYPE_DEBUG, "Plugin bundle not found for process: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_pluginBundleForCurrentProcess
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_25156C000, log, OS_LOG_TYPE_DEBUG, "%{public}@: Retrieved plugin bundle info (%{public}@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end