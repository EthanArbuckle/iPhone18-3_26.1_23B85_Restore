@interface NSXPCConnection(CCSEntitlements)
- (uint64_t)ccs_hasEntitlementForForciblyEnablingModules;
- (uint64_t)ccs_hasEntitlementForHandlingControlCenterOperation;
- (uint64_t)ccs_hasEntitlementForListingModuleIdentifiers;
- (uint64_t)ccs_hasEntitlementForModuleIdentifier:()CCSEntitlements;
- (uint64_t)ccs_hasEntitlementToResetToDefaultLayout;
@end

@implementation NSXPCConnection(CCSEntitlements)

- (uint64_t)ccs_hasEntitlementForModuleIdentifier:()CCSEntitlements
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CF0B98];
  v6 = [a1 _xpcConnection];
  v7 = [v5 tokenFromXPCConnection:v6];

  v8 = [v7 valueForEntitlement:@"com.apple.private.controlcenter.service.moduleidentifiers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

    v8 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 containsObject:v4])
  {
    v10 = 1;
  }

  else
  {
    v11 = [v7 valueForEntitlement:@"application-identifier"];
    if ([v11 isEqual:@"com.apple.control-center.controlcentertool"] & 1) != 0 || (objc_msgSend(v11, "isEqual:", @"com.apple.internal.suiautomation"))
    {
      v10 = 1;
    }

    else
    {
      v10 = [v11 isEqual:@"com.apple.springboard"];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (uint64_t)ccs_hasEntitlementForListingModuleIdentifiers
{
  v1 = MEMORY[0x277CF0B98];
  v2 = [a1 _xpcConnection];
  v3 = [v1 tokenFromXPCConnection:v2];

  v4 = [v3 valueForEntitlement:@"application-identifier"];
  v5 = [v4 isEqual:@"com.apple.control-center.controlcentertool"];

  return v5;
}

- (uint64_t)ccs_hasEntitlementForForciblyEnablingModules
{
  v1 = MEMORY[0x277CF0B98];
  v2 = [a1 _xpcConnection];
  v3 = [v1 tokenFromXPCConnection:v2];

  v4 = [v3 valueForEntitlement:@"application-identifier"];
  if ([v4 isEqual:@"com.apple.control-center.controlcentertool"] & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.internal.suiautomation") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.springboard") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.accessibility.AccessibilityUIServer") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.internal.suiuntool.SystemExperienceAutomationAngel") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.accessibility.heard") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.tvremoted") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.Music") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.amp.MusicUI.MusicUIEngagementExtension") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.Preferences") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.Health") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.logind") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.BarcodeScanner.BarcodeSupportHelper") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.GenerativeFunctions.generativeexperiencesd"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:@"com.apple.assistant_service"];
  }

  return v5;
}

- (uint64_t)ccs_hasEntitlementForHandlingControlCenterOperation
{
  v1 = MEMORY[0x277CF0B98];
  v2 = [a1 _xpcConnection];
  v3 = [v1 tokenFromXPCConnection:v2];

  v4 = [v3 valueForEntitlement:@"application-identifier"];
  if ([v4 isEqual:@"com.apple.control-center.controlcentertool"] & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.internal.suiautomation") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.internal.suiuntool.SystemExperienceAutomationAngel") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.springboard") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.GameOverlayUI") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.GameOverlayUIInternal"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:@"com.apple.WorkflowKit.BackgroundShortcutRunner"];
  }

  return v5;
}

- (uint64_t)ccs_hasEntitlementToResetToDefaultLayout
{
  v1 = MEMORY[0x277CF0B98];
  v2 = [a1 _xpcConnection];
  v3 = [v1 tokenFromXPCConnection:v2];

  v4 = [v3 valueForEntitlement:@"application-identifier"];
  if ([v4 isEqual:@"com.apple.control-center.controlcentertool"] & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.internal.suiautomation") & 1) != 0 || (objc_msgSend(v4, "isEqual:", @"com.apple.internal.suiuntool.SystemExperienceAutomationAngel"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:@"com.apple.Preferences"];
  }

  return v5;
}

@end