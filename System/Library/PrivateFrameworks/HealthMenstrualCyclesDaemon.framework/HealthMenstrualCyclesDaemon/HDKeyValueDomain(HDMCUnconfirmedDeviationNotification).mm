@interface HDKeyValueDomain(HDMCUnconfirmedDeviationNotification)
+ (id)hdmc_menstrualCyclesUnconfirmedDeviationNotificationStateSyncedUnprotectedDomainWithProfile:()HDMCUnconfirmedDeviationNotification;
- (id)hdmc_menstrualCyclesUnconfirmedDeviationNotificationGetStateWithError:()HDMCUnconfirmedDeviationNotification;
- (uint64_t)hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:()HDMCUnconfirmedDeviationNotification error:;
@end

@implementation HDKeyValueDomain(HDMCUnconfirmedDeviationNotification)

+ (id)hdmc_menstrualCyclesUnconfirmedDeviationNotificationStateSyncedUnprotectedDomainWithProfile:()HDMCUnconfirmedDeviationNotification
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [[v3 alloc] initWithCategory:1 domainName:@"com.apple.private.health.menstrual-cycles.unconfirmed-deviation-notification-state" profile:v4];

  return v5;
}

- (uint64_t)hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:()HDMCUnconfirmedDeviationNotification error:
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  domainName = [self domainName];
  v8 = [domainName isEqualToString:@"com.apple.private.health.menstrual-cycles.unconfirmed-deviation-notification-state"];

  if ((v8 & 1) == 0)
  {
    [HDKeyValueDomain(HDMCUnconfirmedDeviationNotification) hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:error:];
  }

  if ([self category] != 1)
  {
    [HDKeyValueDomain(HDMCUnconfirmedDeviationNotification) hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:error:];
  }

  v39 = 0;
  v9 = [self setValueForAllKeys:0 error:&v39];
  v10 = v39;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    v19 = v10;
    if (v19)
    {
      if (a4)
      {
        v27 = v19;
        *a4 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HDKeyValueDomain(HDMCUnconfirmedDeviationNotification) *)v29 hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:self error:v19];
    }

    goto LABEL_24;
  }

  _HKInitializeLogging();
  v12 = MEMORY[0x277CCC2E8];
  v13 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    *buf = 138543362;
    v41 = v15;
    v16 = v15;
    _os_log_impl(&dword_2293D1000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleared key value domain of unconfirmed deviation notification state", buf, 0xCu);
  }

  dictionaryRepresentation = [v6 dictionaryRepresentation];
  v38 = v11;
  v18 = [self setValuesWithDictionary:dictionaryRepresentation error:&v38];
  v19 = v38;

  if ((v18 & 1) == 0)
  {
    v19 = v19;
    if (v19)
    {
      if (a4)
      {
        v28 = v19;
        *a4 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v30 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v33 = v30;
      v34 = objc_opt_class();
      v35 = v34;
      v36 = HKSensitiveLogItem();
      domainName2 = [self domainName];
      *buf = 138544130;
      v41 = v34;
      v42 = 2112;
      v43 = v36;
      v44 = 2112;
      v45 = domainName2;
      v46 = 2114;
      v47 = v19;
      _os_log_error_impl(&dword_2293D1000, v33, OS_LOG_TYPE_ERROR, "[%{public}@] Error saving state:%@ in key value domain: %@ error: %{public}@", buf, 0x2Au);
    }

LABEL_24:
    v26 = 0;
    goto LABEL_25;
  }

  _HKInitializeLogging();
  v20 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = objc_opt_class();
    v23 = v22;
    v24 = HKSensitiveLogItem();
    domainName3 = [self domainName];
    *buf = 138543874;
    v41 = v22;
    v42 = 2112;
    v43 = v24;
    v44 = 2112;
    v45 = domainName3;
    _os_log_impl(&dword_2293D1000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully saved new state:%@ in key value domain:%@", buf, 0x20u);
  }

  v26 = 1;
LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)hdmc_menstrualCyclesUnconfirmedDeviationNotificationGetStateWithError:()HDMCUnconfirmedDeviationNotification
{
  domainName = [self domainName];
  v6 = [domainName isEqualToString:@"com.apple.private.health.menstrual-cycles.unconfirmed-deviation-notification-state"];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(HDMCUnconfirmedDeviationNotification) hdmc_menstrualCyclesUnconfirmedDeviationNotificationGetStateWithError:];
  }

  if ([self category] != 1)
  {
    [HDKeyValueDomain(HDMCUnconfirmedDeviationNotification) hdmc_menstrualCyclesUnconfirmedDeviationNotificationGetStateWithError:];
  }

  v15 = 0;
  v7 = [self allValuesWithError:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v10 = [HDMCUnconfirmedDeviationNotificationStateMachineState stateFromDictionaryRepresentation:v7];
  }

  else
  {
    v11 = v8;
    if (v11)
    {
      if (a3)
      {
        v12 = v11;
        *a3 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HDKeyValueDomain(HDMCOvulationConfirmationNotification) *)v13 hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:self];
    }

    v10 = 0;
  }

  return v10;
}

- (void)hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:()HDMCUnconfirmedDeviationNotification error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesUnconfirmedDeviationNotificationStateDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:()HDMCUnconfirmedDeviationNotification error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_menstrualCyclesUnconfirmedDeviationNotificationSetValuesWithState:()HDMCUnconfirmedDeviationNotification error:.cold.3(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_2293D1000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error clearing key value domain of unconfirmed deviation notification state: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)hdmc_menstrualCyclesUnconfirmedDeviationNotificationGetStateWithError:()HDMCUnconfirmedDeviationNotification .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesUnconfirmedDeviationNotificationStateDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_menstrualCyclesUnconfirmedDeviationNotificationGetStateWithError:()HDMCUnconfirmedDeviationNotification .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

@end