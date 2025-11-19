@interface HDKeyValueDomain(HKMCSyncedUnprotected)
+ (id)hdmc_cycleChartsHiddenRowsDomainWithProfile:()HKMCSyncedUnprotected;
+ (id)hdmc_syncedUnprotectedDomainWithProfile:()HKMCSyncedUnprotected;
- (uint64_t)hdmc_onboardingTileLastDismissedDateWithError:()HKMCSyncedUnprotected;
- (uint64_t)hdmc_setOnboardingTileLastDismissedTimeIntervalSinceReferenceDate:()HKMCSyncedUnprotected error:;
- (uint64_t)hdmc_setUpdatedFertileWindowNotificationFireDate:()HKMCSyncedUnprotected error:;
- (uint64_t)hdmc_updatedFertileWindowNotificationFireDateWithError:()HKMCSyncedUnprotected;
@end

@implementation HDKeyValueDomain(HKMCSyncedUnprotected)

+ (id)hdmc_cycleChartsHiddenRowsDomainWithProfile:()HKMCSyncedUnprotected
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCategory:1 domainName:*MEMORY[0x277D11810] profile:v4];

  return v6;
}

+ (id)hdmc_syncedUnprotectedDomainWithProfile:()HKMCSyncedUnprotected
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 initWithCategory:1 domainName:*MEMORY[0x277D11898] profile:v4];

  return v6;
}

- (uint64_t)hdmc_onboardingTileLastDismissedDateWithError:()HKMCSyncedUnprotected
{
  v5 = [a1 domainName];
  v6 = [v5 isEqualToString:*MEMORY[0x277D11898]];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedUnprotected) hdmc_onboardingTileLastDismissedDateWithError:];
  }

  if ([a1 category] != 1)
  {
    [HDKeyValueDomain(HKMCSyncedUnprotected) hdmc_onboardingTileLastDismissedDateWithError:];
  }

  v7 = *MEMORY[0x277D11918];

  return [a1 dateForKey:v7 error:a3];
}

- (uint64_t)hdmc_setOnboardingTileLastDismissedTimeIntervalSinceReferenceDate:()HKMCSyncedUnprotected error:
{
  v6 = a3;
  v7 = [a1 domainName];
  v8 = [v7 isEqualToString:*MEMORY[0x277D11898]];

  if ((v8 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedUnprotected) hdmc_setOnboardingTileLastDismissedTimeIntervalSinceReferenceDate:error:];
  }

  if ([a1 category] != 1)
  {
    [HDKeyValueDomain(HKMCSyncedUnprotected) hdmc_setOnboardingTileLastDismissedTimeIntervalSinceReferenceDate:error:];
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = MEMORY[0x277CBEAA8];
  [v6 doubleValue];
  v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
LABEL_8:
  v11 = [a1 setDate:v10 forKey:*MEMORY[0x277D11918] error:a4];

  return v11;
}

- (uint64_t)hdmc_setUpdatedFertileWindowNotificationFireDate:()HKMCSyncedUnprotected error:
{
  v6 = a3;
  v7 = [a1 domainName];
  v8 = [v7 isEqualToString:*MEMORY[0x277D11898]];

  if ((v8 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedUnprotected) hdmc_setUpdatedFertileWindowNotificationFireDate:error:];
  }

  if ([a1 category] != 1)
  {
    [HDKeyValueDomain(HKMCSyncedUnprotected) hdmc_setUpdatedFertileWindowNotificationFireDate:error:];
  }

  v9 = [a1 setDate:v6 forKey:*MEMORY[0x277D11950] error:a4];

  return v9;
}

- (uint64_t)hdmc_updatedFertileWindowNotificationFireDateWithError:()HKMCSyncedUnprotected
{
  v5 = [a1 domainName];
  v6 = [v5 isEqualToString:*MEMORY[0x277D11898]];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedUnprotected) hdmc_updatedFertileWindowNotificationFireDateWithError:];
  }

  if ([a1 category] != 1)
  {
    [HDKeyValueDomain(HKMCSyncedUnprotected) hdmc_updatedFertileWindowNotificationFireDateWithError:];
  }

  v7 = *MEMORY[0x277D11950];

  return [a1 dateForKey:v7 error:a3];
}

- (void)hdmc_onboardingTileLastDismissedDateWithError:()HKMCSyncedUnprotected .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_onboardingTileLastDismissedDateWithError:()HKMCSyncedUnprotected .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_setOnboardingTileLastDismissedTimeIntervalSinceReferenceDate:()HKMCSyncedUnprotected error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_setOnboardingTileLastDismissedTimeIntervalSinceReferenceDate:()HKMCSyncedUnprotected error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_setUpdatedFertileWindowNotificationFireDate:()HKMCSyncedUnprotected error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_setUpdatedFertileWindowNotificationFireDate:()HKMCSyncedUnprotected error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_updatedFertileWindowNotificationFireDateWithError:()HKMCSyncedUnprotected .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_updatedFertileWindowNotificationFireDateWithError:()HKMCSyncedUnprotected .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

@end