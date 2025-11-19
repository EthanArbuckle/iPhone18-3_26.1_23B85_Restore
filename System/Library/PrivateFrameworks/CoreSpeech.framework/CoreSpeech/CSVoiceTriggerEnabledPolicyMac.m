@interface CSVoiceTriggerEnabledPolicyMac
- (CSVoiceTriggerEnabledPolicyMac)init;
- (void)_addVoiceTriggerEnabledConditions;
- (void)_subscribeEventMonitors;
@end

@implementation CSVoiceTriggerEnabledPolicyMac

- (void)_addVoiceTriggerEnabledConditions
{
  [(CSPolicy *)self addConditions:&__block_literal_global_22165];
  [(CSPolicy *)self addConditions:&__block_literal_global_7_22166];
  [(CSPolicy *)self addConditions:&__block_literal_global_10_22167];

  [(CSPolicy *)self addConditions:&__block_literal_global_13_22168];
}

uint64_t __67__CSVoiceTriggerEnabledPolicyMac__addVoiceTriggerEnabledConditions__block_invoke_11()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D018E8] sharedInstance];
  v1 = [v0 isUserActive];

  if ((v1 & 1) == 0)
  {
    v2 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyMac _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since current user doesn't activated", &v5, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t __67__CSVoiceTriggerEnabledPolicyMac__addVoiceTriggerEnabledConditions__block_invoke_8()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = +[CSSRFUserSettingMonitor sharedInstance];
  if (([v0 isSiriRestrictedOnLockScreen] & 1) == 0)
  {

    goto LABEL_6;
  }

  v1 = [MEMORY[0x277D01870] sharedInstance];
  v2 = [v1 isScreenLocked];

  if (!v2)
  {
LABEL_6:
    result = 1;
    goto LABEL_7;
  }

  v3 = *MEMORY[0x277D015D8];
  v4 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v4)
  {
    v7 = 136315138;
    v8 = "[CSVoiceTriggerEnabledPolicyMac _addVoiceTriggerEnabledConditions]_block_invoke";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since Siri restricted on lock screen AND screen is locked", &v7, 0xCu);
    result = 0;
  }

LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __67__CSVoiceTriggerEnabledPolicyMac__addVoiceTriggerEnabledConditions__block_invoke_5()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D01938] sharedInstance];
  v1 = [v0 isEnabled];

  if ((v1 & 1) == 0)
  {
    v2 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyMac _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since VoiceTrigger is disabled", &v5, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t __67__CSVoiceTriggerEnabledPolicyMac__addVoiceTriggerEnabledConditions__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = +[CSClamshellStateMonitor sharedInstance];
  v1 = [v0 isClamshellClosed];

  if (v1)
  {
    v2 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSVoiceTriggerEnabledPolicyMac _addVoiceTriggerEnabledConditions]_block_invoke";
      _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger cannot be turned on since clamshell is closed", &v5, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1 ^ 1u;
}

- (void)_subscribeEventMonitors
{
  v3 = [MEMORY[0x277D01938] sharedInstance];
  [(CSPolicy *)self subscribeEventMonitor:v3];

  v4 = +[CSClamshellStateMonitor sharedInstance];
  [(CSPolicy *)self subscribeEventMonitor:v4];

  v5 = +[CSSRFUserSettingMonitor sharedInstance];
  [(CSPolicy *)self subscribeEventMonitor:v5];

  v6 = [MEMORY[0x277D01870] sharedInstance];
  [(CSPolicy *)self subscribeEventMonitor:v6];

  v7 = [MEMORY[0x277D018E8] sharedInstance];
  [(CSPolicy *)self subscribeEventMonitor:v7];
}

- (CSVoiceTriggerEnabledPolicyMac)init
{
  v5.receiver = self;
  v5.super_class = CSVoiceTriggerEnabledPolicyMac;
  v2 = [(CSPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSVoiceTriggerEnabledPolicyMac *)v2 _addVoiceTriggerEnabledConditions];
    [(CSVoiceTriggerEnabledPolicyMac *)v3 _subscribeEventMonitors];
  }

  return v3;
}

@end