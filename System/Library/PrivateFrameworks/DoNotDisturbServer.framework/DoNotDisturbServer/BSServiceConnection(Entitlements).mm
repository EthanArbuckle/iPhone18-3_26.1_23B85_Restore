@interface BSServiceConnection(Entitlements)
- (BOOL)dnds_hasAnyValidEntitlement;
- (id)_dnds_safeStringArrayEntitlementForKey:()Entitlements;
- (uint64_t)dnds_hasActiveModeUpdatesEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasAuxiliaryStateModificationEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasBehaviorResolutionEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasHearingTestEventUpdateEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasMeDeviceStateEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasModeAssertionEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasModeConfigurationUpdatesEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasSettingsModificationEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasSettingsRequestEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasSettingsUpdatesEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasStateRequestEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasStateUpdatesEntitlementForClientIdentifier:()Entitlements;
- (uint64_t)dnds_hasUserNotificationsCommunicationEntitlement;
- (uint64_t)dnds_hasUserRequestedModeAssertionEntitlementForClientIdentifier:()Entitlements;
@end

@implementation BSServiceConnection(Entitlements)

- (BOOL)dnds_hasAnyValidEntitlement
{
  v2 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.behavior.resolution.client-identifiers"];
  if ([v2 count])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.mode.assertion.client-identifiers"];
    if ([v4 count])
    {
      v3 = 1;
    }

    else
    {
      v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.state.request.client-identifiers"];
      if ([v5 count])
      {
        v3 = 1;
      }

      else
      {
        v6 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.state.updates.client-identifiers"];
        if ([v6 count])
        {
          v3 = 1;
        }

        else
        {
          v7 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.settings.request.client-identifiers"];
          if ([v7 count])
          {
            v3 = 1;
          }

          else
          {
            v8 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.settings.modify.client-identifiers"];
            if ([v8 count])
            {
              v3 = 1;
            }

            else
            {
              v9 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.settings.updates.client-identifiers"];
              if ([v9 count])
              {
                v3 = 1;
              }

              else
              {
                v10 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.modeconfiguration.request.client-identifiers"];
                if ([v10 count])
                {
                  v3 = 1;
                }

                else
                {
                  v11 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.modeconfiguration.modify.client-identifiers"];
                  if ([v11 count])
                  {
                    v3 = 1;
                  }

                  else
                  {
                    v15 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.modeconfiguration.updates.client-identifiers"];
                    if ([v15 count])
                    {
                      v3 = 1;
                    }

                    else
                    {
                      v14 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.modeconfiguration.availability.client-identifiers"];
                      if ([v14 count])
                      {
                        v3 = 1;
                      }

                      else
                      {
                        v13 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.medevicestate.client-identifiers"];
                        v3 = [v13 count] != 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

- (uint64_t)dnds_hasBehaviorResolutionEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.behavior.resolution.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasModeAssertionEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.mode.assertion.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasUserRequestedModeAssertionEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.mode.assertion.user-requested.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasStateRequestEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.state.request.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasStateUpdatesEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.state.updates.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasAuxiliaryStateModificationEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.auxiliary-state.modification.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasHearingTestEventUpdateEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.0191488e-ff8a-728d-a9f7-08a0a77abd7d.update.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasSettingsRequestEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.settings.request.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasSettingsModificationEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.settings.modify.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasSettingsUpdatesEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.settings.updates.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasModeConfigurationRequestEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.modeconfiguration.request.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasModeConfigurationModificationEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.modeconfiguration.modify.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasModeConfigurationUpdatesEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.modeconfiguration.updates.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasModeConfigurationAvailabilityEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.modeconfiguration.availability.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasActiveModeUpdatesEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 dnds_hasModeConfigurationUpdatesEntitlementForClientIdentifier:v4];
  v6 = [a1 dnds_hasModeAssertionEntitlementForClientIdentifier:v4];
  if ([v4 isEqualToString:@"com.apple.focus.activity-manager"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.FocusSettings"))
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 isEqualToString:@"com.apple.Focus-Settings.extension"];
  }

  if (v5)
  {
    v8 = v6 & v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)dnds_hasMeDeviceStateEntitlementForClientIdentifier:()Entitlements
{
  v4 = a3;
  v5 = [a1 _dnds_safeStringArrayEntitlementForKey:@"com.apple.private.donotdisturb.medevicestate.client-identifiers"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (uint64_t)dnds_hasUserNotificationsCommunicationEntitlement
{
  if (objc_opt_respondsToSelector())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 remoteProcess];
  v4 = [v3 hasEntitlement:@"com.apple.developer.usernotifications.communication"];

  return v4;
}

- (id)_dnds_safeStringArrayEntitlementForKey:()Entitlements
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_respondsToSelector();
  v6 = MEMORY[0x277CBEBF8];
  if (a1 && (v5 & 1) != 0)
  {
    v7 = [a1 remoteProcess];
    v8 = [v7 valueForEntitlement:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_37];
      v6 = [v8 filteredArrayUsingPredicate:v9];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12[0] = v8;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      }

      else
      {
        v6 = MEMORY[0x277CBEBF8];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

@end