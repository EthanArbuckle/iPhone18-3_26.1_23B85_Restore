@interface MDMUserParser
- (id)_allCommands;
- (id)_allSettingsItems;
- (id)_declarativeManagement:(id)a3;
- (id)_originator;
- (id)_removeProfile:(id)a3;
- (void)_performQuery:(id)a3 withResultDictionary:(id)a4;
- (void)_sendAnalyticsMDMCommandEventWithRequest:(id)a3 response:(id)a4;
- (void)_userConfigured:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
@end

@implementation MDMUserParser

- (id)_allCommands
{
  if (_allCommands_once != -1)
  {
    [MDMUserParser _allCommands];
  }

  v3 = _allCommands_set;

  return v3;
}

void __29__MDMUserParser__allCommands__block_invoke()
{
  v5[9] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"ProfileList";
  v5[1] = @"InstallProfile";
  v5[2] = @"RemoveProfile";
  v5[3] = @"Restrictions";
  v5[4] = @"InviteToProgram";
  v5[5] = @"DeviceInformation";
  v5[6] = @"DeclarativeManagement";
  v5[7] = @"Settings";
  v5[8] = @"UserConfigured";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = _allCommands_set;
  _allCommands_set = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_allSettingsItems
{
  if (_allSettingsItems_onceToken != -1)
  {
    [MDMUserParser _allSettingsItems];
  }

  v3 = [(MDMParser *)self isChaperoned];
  v4 = &_allSettingsItems_supervisedSet;
  if (!v3)
  {
    v4 = &_allSettingsItems_nonSupervisedSet;
  }

  v5 = *v4;

  return v5;
}

void __34__MDMUserParser__allSettingsItems__block_invoke()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB58];
  v10[0] = @"AccessibilitySettings";
  v10[1] = @"DefaultApplications";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = _allSettingsItems_supervisedSet;
  _allSettingsItems_supervisedSet = v2;

  v4 = MEMORY[0x277CBEB58];
  v9 = @"DefaultApplications";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v6 = [v4 setWithArray:v5];
  v7 = _allSettingsItems_nonSupervisedSet;
  _allSettingsItems_nonSupervisedSet = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_removeProfile:(id)a3
{
  v4 = [a3 objectForKey:@"Identifier"];
  if (v4)
  {
    [(MDMParser *)self _removeProfileWithIdentifier:v4 forInstalledProfilesWithFilterFlags:9];
  }

  else
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }
  v5 = ;

  return v5;
}

- (id)_declarativeManagement:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Processing DeclarativeManagement command", buf, 2u);
  }

  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  v7 = [(MDMParser *)self managingProfileIdentifier];
  v16 = 0;
  v8 = [MDMDeclarativeManagementCommand processMultiUserDeviceUserChannelRequestTypeWithProfileIdentifier:v7 request:v4 error:&v16];

  v9 = v16;
  if (!v8)
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v9 DMCVerboseDescription];
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_ERROR, "Failed to process DeclarativeManagement command with error: %{public}@", buf, 0xCu);
    }

    v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v9];

    v6 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_performQuery:(id)a3 withResultDictionary:(id)a4
{
  v10 = a4;
  v5 = *MEMORY[0x277D24B08];
  if ([a3 isEqualToString:*MEMORY[0x277D24B08]])
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [MEMORY[0x277D246A0] sharedClient];
    v8 = [v7 pushToken];
    v9 = [v6 initWithData:v8 encoding:1];

    if (v9)
    {
      [v10 setObject:v9 forKeyedSubscript:v5];
    }
  }
}

- (void)_sendAnalyticsMDMCommandEventWithRequest:(id)a3 response:(id)a4
{
  if (a3 && a4)
  {
    v6 = MEMORY[0x277D24640];
    v7 = a4;
    v8 = a3;
    v11 = [v6 sharedConfiguration];
    v9 = [(MDMParser *)self _analyticsCommandNameFromRequest:v8];
    v10 = [(MDMParser *)self _analyticsErrorFromResponse:v7];

    [(MDMParser *)self _analyticsRequiresNetworkTetheringFromRequest:v8];
    [v11 isTeslaEnrolled];
    [v11 isSupervised];
    MDMAnalyticsSendCommandEvent(v9, v10);
  }
}

- (id)_originator
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 managingOrganizationInformation];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D030F0]];

  return v4;
}

- (void)_userConfigured:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v5 = a5;
  if ([MEMORY[0x277D03538] markCurrentUserAsConfigured])
  {
    v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Could not update await user configured", buf, 2u);
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277D03480];
  v10 = DMCErrorArray();
  v11 = [v8 DMCErrorWithDomain:v9 code:12114 descriptionArray:v10 errorType:{*MEMORY[0x277D032F8], 0}];
  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v11];

  if (v5)
  {
LABEL_7:
    v5[2](v5, v6);
  }

LABEL_8:
}

@end