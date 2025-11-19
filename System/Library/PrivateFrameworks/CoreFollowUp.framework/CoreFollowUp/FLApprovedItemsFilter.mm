@interface FLApprovedItemsFilter
+ (id)sharedFilter;
- (BOOL)overrideGroupRestrictionsForItem:(id)a3;
- (unint64_t)approvalStatusForItem:(id)a3;
@end

@implementation FLApprovedItemsFilter

+ (id)sharedFilter
{
  if (sharedFilter_onceToken != -1)
  {
    +[FLApprovedItemsFilter sharedFilter];
  }

  v3 = sharedFilter_filter;

  return v3;
}

uint64_t __37__FLApprovedItemsFilter_sharedFilter__block_invoke()
{
  v0 = objc_alloc_init(FLApprovedItemsFilter);
  v1 = sharedFilter_filter;
  sharedFilter_filter = v0;

  v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.purplebuddy.revisitSkippedSteps", @"DrySpellFollowUpItem", @"WifiFollowUpItem", @"RestoreFailureFollowUpItem", @"com.apple.faceid.CamInterlockError", @"com.apple.SoftwareUpdateServices.followup", @"com.apple.SoftwareUpdateServices.followup.AutoUpdate", @"com.apple.SoftwareUpdateServices.followup.updateAvailable", @"com.apple.SoftwareUpdateServices.followup.badgeOnly", @"com.apple.SoftwareUpdateServices.followup.RollbackDetected", @"com.apple.SoftwareUpdateServices.followup.InsufficientDiskSpace", @"com.apple.softwareupdateservicesui.followup.postupdate", @"com.apple.Bridge.AppleID-FollowUp", @"com.apple.Bridge.iTunesAccount-FollowUp", @"com.apple.enhanced-logging-state", @"com.apple.NewDeviceOutreach", @"com.apple.managedconfiguration.ios-purgatory", @"com.apple.SensorKit.followup.enableSensorKit", @"com.apple.identityservicesd.HomeNumberSuccess", @"com.apple.identityservicesd.HomeNumberNearExpiration", @"com.apple.identityservicesd.HomeNumberExpiration", @"com.apple.sharingd.phone-auto-unlock-upsell", @"com.apple.backupd.prebuddy", @"com.apple.disembarkui", @"com.apple.devicemanagementclient.followup.reauth", @"com.apple.SOS.settingsReset", @"com.apple.transparency.ValidateSelfFailed", @"com.apple.transparency.AuditFailure", @"com.apple.transparency.TreeRollDetected", @"com.apple.transparency.OptOut", @"com.apple.Health.MedicalID.followup", @"com.apple.timed.timefix", @"com.apple.mdmclient.depenroll", @"com.apple.siri.assets.corefollowup", @"com.apple.safetyalerts.enhancedDelivery.onboardPrompt", @"com.apple.app-distribution.approval-flow", @"com.apple.SystemEnvironments.updateAvailable", @"com.apple.mdmclient.purgatory", @"com.apple.icloud.gm", @"com.apple.swtransparency.rollback", @"com.apple.swtransparency.treeFork", @"com.apple.modelcatalog.out-of-space-cfu", @"com.apple.icloud.gm.adm", @"com.apple.homed.hh2-upgrade", @"com.apple.ThreatNotificationUI.FollowUpItem.general", @"com.apple.FileVault.RecoveryKeyReminder", @"com.apple.devicemanagementclient.nag.migration", @"com.apple.securesettings.followup.alwaysAllowVoiceActivation", @"com.apple.securesettings.followup.allowCustomSoundRecognition", @"com.apple.assistant.domain.followup.voicetrigger", @"com.apple.corespeech.voiceEnrollment", @"com.apple.findmy", 0}];
  v3 = *(sharedFilter_filter + 8);
  *(sharedFilter_filter + 8) = v2;

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.appleaccount.followup", @"com.apple.NewDeviceOutreach", @"com.apple.authkit", @"com.apple.corecdp", @"com.apple.icloud.quota", @"com.apple.AppleMediaServices", @"com.apple.followup.tests", @"com.apple.ndoagent", @"com.apple.CoreTelephony", @"com.apple.mobilerepair", @"com.apple.HomeKit", @"com.icloud.family", @"com.apple.backupd", 0}];
  v5 = *(sharedFilter_filter + 16);
  *(sharedFilter_filter + 16) = v4;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)approvalStatusForItem:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[FLEnvironment currentEnvironment];
  v6 = [v5 shouldHideAllFollowUps];

  if ((v6 & 1) == 0)
  {
    v8 = [v4 uniqueIdentifier];
    v9 = [v4 clientIdentifier];
    v10 = v9;
    if (v8 && v9)
    {
      if (-[NSSet containsObject:](self->_approvedClientIdentifiers, "containsObject:", v9) || -[NSSet containsObject:](self->_approvedItemIdentifiers, "containsObject:", v8) || (approvedItemIdentifiers = self->_approvedItemIdentifiers, [v4 typeIdentifier], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(approvedItemIdentifiers) = -[NSSet containsObject:](approvedItemIdentifiers, "containsObject:", v12), v12, approvedItemIdentifiers))
      {
        v13 = [FLGroupViewModelImpl alloc];
        v14 = [v4 groupIdentifier];
        v15 = [(FLGroupViewModelImpl *)v13 initWithIdentifier:v14];

        if ([v15 restrictionEnabled]&& ![(FLApprovedItemsFilter *)self overrideGroupRestrictionsForItem:v4])
        {
          v16 = _FLLogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412290;
            v20 = v4;
            _os_log_impl(&dword_22E696000, v16, OS_LOG_TYPE_DEFAULT, "Item rejected due to group restriction: %@", &v19, 0xCu);
          }

          v7 = 2;
        }

        else
        {
          v16 = _FLLogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412290;
            v20 = v4;
            _os_log_impl(&dword_22E696000, v16, OS_LOG_TYPE_DEFAULT, "Item approved: %@", &v19, 0xCu);
          }

          v7 = 1;
        }

        goto LABEL_20;
      }

      v15 = _FLLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(FLApprovedItemsFilter *)v4 approvalStatusForItem:v15];
      }
    }

    else
    {
      v15 = _FLLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(FLApprovedItemsFilter *)v4 approvalStatusForItem:v15];
      }
    }

    v7 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v7 = 2;
LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)overrideGroupRestrictionsForItem:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = @"com.apple.AAFollowUpIdentifier.RenewCredentials";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v4 uniqueIdentifier];

  LOBYTE(v3) = [v5 containsObject:v6];
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)approvalStatusForItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22E696000, a2, OS_LOG_TYPE_ERROR, "Unknown item detected, please file a radar to [Follow Up | Requests] to be approved: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)approvalStatusForItem:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22E696000, a2, OS_LOG_TYPE_ERROR, "Rejecting item as invalid: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end