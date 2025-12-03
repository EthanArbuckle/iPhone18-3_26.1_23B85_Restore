@interface HUAlarmsAndTimersAccessUtility
+ (id)_canAlarmManagerControl:(id)control withManager:(id)manager;
+ (id)_canTimerManagerControl:(id)control withManager:(id)manager;
+ (id)canAccess:(id)access for:(unint64_t)for withManager:(id)manager;
@end

@implementation HUAlarmsAndTimersAccessUtility

+ (id)canAccess:(id)access for:(unint64_t)for withManager:(id)manager
{
  v28 = *MEMORY[0x277D85DE8];
  accessCopy = access;
  managerCopy = manager;
  if (for == 2)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "+[HUAlarmsAndTimersAccessUtility canAccess:for:withManager:]";
      v26 = 2112;
      v27 = accessCopy;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%s: checking accessory %@ access (type = AlarmsAndTimersAvailable).", buf, 0x16u);
    }

    v13 = MEMORY[0x277D2C900];
    v14 = [HUAlarmsAndTimersAccessUtility _canAlarmManagerControl:accessCopy withManager:managerCopy];
    v23[0] = v14;
    v15 = [HUAlarmsAndTimersAccessUtility _canTimerManagerControl:accessCopy withManager:managerCopy];
    v23[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v18 = [v13 combineAllFutures:v16 ignoringErrors:0 scheduler:mainThreadScheduler];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__HUAlarmsAndTimersAccessUtility_canAccess_for_withManager___block_invoke;
    v21[3] = &unk_277DB7A90;
    v22 = accessCopy;
    v19 = [v18 flatMap:v21];
  }

  else
  {
    if (for == 1)
    {
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "+[HUAlarmsAndTimersAccessUtility canAccess:for:withManager:]";
        v26 = 2112;
        v27 = accessCopy;
        _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%s: checking accessory %@ access (type = TimersAvailable).", buf, 0x16u);
      }

      v10 = [HUAlarmsAndTimersAccessUtility _canTimerManagerControl:accessCopy withManager:managerCopy];
    }

    else if (for)
    {
      v10 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
    }

    else
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "+[HUAlarmsAndTimersAccessUtility canAccess:for:withManager:]";
        v26 = 2112;
        v27 = accessCopy;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%s: checking accessory %@ access (type = AlarmsAvailable).", buf, 0x16u);
      }

      v10 = [HUAlarmsAndTimersAccessUtility _canAlarmManagerControl:accessCopy withManager:managerCopy];
    }

    v19 = v10;
  }

  return v19;
}

id __60__HUAlarmsAndTimersAccessUtility_canAccess_for_withManager___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_any:&__block_literal_global_253];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v11 = 136315906;
    v12 = "+[HUAlarmsAndTimersAccessUtility canAccess:for:withManager:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%s: checking accessory %@ for both = %@ (did either fail= %{BOOL}d)", &v11, 0x26u);
  }

  v7 = MEMORY[0x277D2C900];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v4 ^ 1u];
  v9 = [v7 futureWithResult:v8];

  return v9;
}

+ (id)_canAlarmManagerControl:(id)control withManager:(id)manager
{
  v29 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  managerCopy = manager;
  if (!controlCopy)
  {
LABEL_11:
    v11 = MEMORY[0x277D2C900];
    v12 = MEMORY[0x277CBEC28];
LABEL_12:
    v14 = [v11 futureWithResult:v12];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v16 = [v14 reschedule:mainThreadScheduler];

    goto LABEL_14;
  }

  if (([controlCopy isReachable] & 1) == 0)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "+[HUAlarmsAndTimersAccessUtility _canAlarmManagerControl:withManager:]";
      v27 = 2112;
      v28 = controlCopy;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s: NO: accessory %@ is not reachable...", buf, 0x16u);
    }

    goto LABEL_11;
  }

  hf_siriEndpointProfile = [controlCopy hf_siriEndpointProfile];
  if (hf_siriEndpointProfile)
  {
    v8 = hf_siriEndpointProfile;
    hf_needsOnboarding = [controlCopy hf_needsOnboarding];

    if (hf_needsOnboarding)
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "+[HUAlarmsAndTimersAccessUtility _canAlarmManagerControl:withManager:]";
        v27 = 2112;
        v28 = controlCopy;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%s: YES: Siri endpoint accessory %@ is available for Alarms (implicit onboarding required)", buf, 0x16u);
      }

      v11 = MEMORY[0x277D2C900];
      v12 = MEMORY[0x277CBEC38];
      goto LABEL_12;
    }
  }

  v17 = MEMORY[0x277D2C900];
  v22 = MEMORY[0x277D85DD0];
  v23 = managerCopy;
  v24 = controlCopy;
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v19 = [v17 futureWithBlock:&v22 scheduler:globalAsyncScheduler];

  mainThreadScheduler2 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v16 = [v19 reschedule:mainThreadScheduler2];

LABEL_14:

  return v16;
}

void __70__HUAlarmsAndTimersAccessUtility__canAlarmManagerControl_withManager___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [MEMORY[0x277CFD070] hf_AlarmManagerForAccessory:*(a1 + 40)];
  }

  v8 = v7;

  v9 = [v8 _canDispatchForAssociatedAccessory];
  if ((v9 & 1) == 0)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Coordination says accessory %@ is NOT controllable for Alarms", &v13, 0xCu);
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v3 finishWithResult:v12];
}

+ (id)_canTimerManagerControl:(id)control withManager:(id)manager
{
  v29 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  managerCopy = manager;
  if (!controlCopy)
  {
LABEL_11:
    v11 = MEMORY[0x277D2C900];
    v12 = MEMORY[0x277CBEC28];
LABEL_12:
    v14 = [v11 futureWithResult:v12];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v16 = [v14 reschedule:mainThreadScheduler];

    goto LABEL_14;
  }

  if (([controlCopy isReachable] & 1) == 0)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "+[HUAlarmsAndTimersAccessUtility _canTimerManagerControl:withManager:]";
      v27 = 2112;
      v28 = controlCopy;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%s: NO: accessory %@ is not reachable...", buf, 0x16u);
    }

    goto LABEL_11;
  }

  hf_siriEndpointProfile = [controlCopy hf_siriEndpointProfile];
  if (hf_siriEndpointProfile)
  {
    v8 = hf_siriEndpointProfile;
    hf_needsOnboarding = [controlCopy hf_needsOnboarding];

    if (hf_needsOnboarding)
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "+[HUAlarmsAndTimersAccessUtility _canTimerManagerControl:withManager:]";
        v27 = 2112;
        v28 = controlCopy;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%s: YES: Siri endpoint accessory %@ is available for Timers (implicit onboarding required)", buf, 0x16u);
      }

      v11 = MEMORY[0x277D2C900];
      v12 = MEMORY[0x277CBEC38];
      goto LABEL_12;
    }
  }

  v17 = MEMORY[0x277D2C900];
  v22 = MEMORY[0x277D85DD0];
  v23 = managerCopy;
  v24 = controlCopy;
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v19 = [v17 futureWithBlock:&v22 scheduler:globalAsyncScheduler];

  mainThreadScheduler2 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v16 = [v19 reschedule:mainThreadScheduler2];

LABEL_14:

  return v16;
}

void __70__HUAlarmsAndTimersAccessUtility__canTimerManagerControl_withManager___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [MEMORY[0x277CFD0F0] hf_TimerManagerForAccessory:*(a1 + 40)];
  }

  v8 = v7;

  v9 = [v8 _canDispatchForAssociatedAccessory];
  if ((v9 & 1) == 0)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Coordination says accessory %@ is NOT controllable for Timers", &v13, 0xCu);
    }
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v3 finishWithResult:v12];
}

@end