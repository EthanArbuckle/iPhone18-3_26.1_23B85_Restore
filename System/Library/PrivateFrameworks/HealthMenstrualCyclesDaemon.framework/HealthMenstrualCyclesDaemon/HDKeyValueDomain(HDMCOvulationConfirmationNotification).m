@interface HDKeyValueDomain(HDMCOvulationConfirmationNotification)
+ (id)hdmc_menstrualCyclesOvulationConfirmationNotificationStateSyncedUnprotectedDomainWithProfile:()HDMCOvulationConfirmationNotification;
- (id)hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:()HDMCOvulationConfirmationNotification;
- (uint64_t)hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:()HDMCOvulationConfirmationNotification error:;
@end

@implementation HDKeyValueDomain(HDMCOvulationConfirmationNotification)

+ (id)hdmc_menstrualCyclesOvulationConfirmationNotificationStateSyncedUnprotectedDomainWithProfile:()HDMCOvulationConfirmationNotification
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [[v3 alloc] initWithCategory:1 domainName:@"com.apple.private.health.menstrual-cycles.ovulation-confirmation-notification-state" profile:v4];

  return v5;
}

- (uint64_t)hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:()HDMCOvulationConfirmationNotification error:
{
  v6 = a3;
  v7 = [a1 domainName];
  v8 = [v7 isEqualToString:@"com.apple.private.health.menstrual-cycles.ovulation-confirmation-notification-state"];

  if ((v8 & 1) == 0)
  {
    [HDKeyValueDomain(HDMCOvulationConfirmationNotification) hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:error:];
  }

  if ([a1 category] != 1)
  {
    [HDKeyValueDomain(HDMCOvulationConfirmationNotification) hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:error:];
  }

  v9 = [v6 dictionaryRepresentation];
  v10 = [a1 setValuesWithDictionary:v9 error:a4];

  return v10;
}

- (id)hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:()HDMCOvulationConfirmationNotification
{
  v5 = [a1 domainName];
  v6 = [v5 isEqualToString:@"com.apple.private.health.menstrual-cycles.ovulation-confirmation-notification-state"];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(HDMCOvulationConfirmationNotification) hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:];
  }

  if ([a1 category] != 1)
  {
    [HDKeyValueDomain(HDMCOvulationConfirmationNotification) hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:];
  }

  v14 = 0;
  v7 = [a1 allValuesWithError:&v14];
  v8 = v14;
  if (v7)
  {
    v9 = [HDMCOvulationConfirmationNotificationStateMachineState stateFromDictionaryRepresentation:v7];
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HDKeyValueDomain(HDMCOvulationConfirmationNotification) *)v10 hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:a1];
    }

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

    v9 = 0;
  }

  return v9;
}

- (void)hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:()HDMCOvulationConfirmationNotification error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesOvulationConfirmationNotificationStateDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:()HDMCOvulationConfirmationNotification error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:()HDMCOvulationConfirmationNotification .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesOvulationConfirmationNotificationStateDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:()HDMCOvulationConfirmationNotification .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:()HDMCOvulationConfirmationNotification .cold.3(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = [a2 domainName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_2293D1000, v6, v7, "[%{public}@] Error retrieving dictionary from key value domain: %@ error:%@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end