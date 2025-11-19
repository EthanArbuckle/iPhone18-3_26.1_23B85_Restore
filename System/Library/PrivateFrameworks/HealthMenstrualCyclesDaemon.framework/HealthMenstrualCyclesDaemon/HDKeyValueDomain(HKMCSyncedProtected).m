@interface HDKeyValueDomain(HKMCSyncedProtected)
+ (id)hdmc_syncedMenstrualCyclesDefaultsDomainWithProfile:()HKMCSyncedProtected;
- (uint64_t)hdmc_lastLoggedInCycleTrackingDateWithError:()HKMCSyncedProtected;
- (uint64_t)hdmc_legacyOnboardingFirstCompletedDateWithError:()HKMCSyncedProtected;
- (uint64_t)hdmc_legacyOnboardingVersionCompletedWithError:()HKMCSyncedProtected;
- (uint64_t)hdmc_setLastLoggedInCycleTrackingDate:()HKMCSyncedProtected error:;
- (uint64_t)hdmc_setUnconfirmedDeviationDismissalDayIndex:()HKMCSyncedProtected error:;
- (uint64_t)hdmc_unconfirmedDeviationDismissalDayIndexWithError:()HKMCSyncedProtected;
@end

@implementation HDKeyValueDomain(HKMCSyncedProtected)

+ (id)hdmc_syncedMenstrualCyclesDefaultsDomainWithProfile:()HKMCSyncedProtected
{
  v3 = MEMORY[0x277D10718];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithCategory:105 domainName:*MEMORY[0x277D11898] profile:v4];

  return v6;
}

- (uint64_t)hdmc_legacyOnboardingVersionCompletedWithError:()HKMCSyncedProtected
{
  v5 = [a1 domainName];
  v6 = [v5 isEqualToString:*MEMORY[0x277D11898]];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_legacyOnboardingVersionCompletedWithError:];
  }

  if ([a1 category] != 105)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_legacyOnboardingVersionCompletedWithError:];
  }

  v7 = *MEMORY[0x277D11888];

  return [a1 numberForKey:v7 error:a3];
}

- (uint64_t)hdmc_legacyOnboardingFirstCompletedDateWithError:()HKMCSyncedProtected
{
  v5 = [a1 domainName];
  v6 = [v5 isEqualToString:*MEMORY[0x277D11898]];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_legacyOnboardingFirstCompletedDateWithError:];
  }

  if ([a1 category] != 105)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_legacyOnboardingFirstCompletedDateWithError:];
  }

  v7 = *MEMORY[0x277D11890];

  return [a1 dateForKey:v7 error:a3];
}

- (uint64_t)hdmc_setLastLoggedInCycleTrackingDate:()HKMCSyncedProtected error:
{
  v6 = a3;
  v7 = [a1 domainName];
  v8 = [v7 isEqualToString:*MEMORY[0x277D11898]];

  if ((v8 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_setLastLoggedInCycleTrackingDate:error:];
  }

  if ([a1 category] != 105)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_setLastLoggedInCycleTrackingDate:error:];
  }

  v9 = [a1 setDate:v6 forKey:*MEMORY[0x277D11880] error:a4];

  return v9;
}

- (uint64_t)hdmc_lastLoggedInCycleTrackingDateWithError:()HKMCSyncedProtected
{
  v5 = [a1 domainName];
  v6 = [v5 isEqualToString:*MEMORY[0x277D11898]];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_lastLoggedInCycleTrackingDateWithError:];
  }

  if ([a1 category] != 105)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_lastLoggedInCycleTrackingDateWithError:];
  }

  v7 = *MEMORY[0x277D11880];

  return [a1 dateForKey:v7 error:a3];
}

- (uint64_t)hdmc_setUnconfirmedDeviationDismissalDayIndex:()HKMCSyncedProtected error:
{
  v6 = a3;
  v7 = [a1 domainName];
  v8 = [v7 isEqualToString:*MEMORY[0x277D11898]];

  if ((v8 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_setUnconfirmedDeviationDismissalDayIndex:error:];
  }

  if ([a1 category] != 105)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_setUnconfirmedDeviationDismissalDayIndex:error:];
  }

  v9 = [a1 setNumber:v6 forKey:*MEMORY[0x277D11940] error:a4];

  return v9;
}

- (uint64_t)hdmc_unconfirmedDeviationDismissalDayIndexWithError:()HKMCSyncedProtected
{
  v5 = [a1 domainName];
  v6 = [v5 isEqualToString:*MEMORY[0x277D11898]];

  if ((v6 & 1) == 0)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_unconfirmedDeviationDismissalDayIndexWithError:];
  }

  if ([a1 category] != 105)
  {
    [HDKeyValueDomain(HKMCSyncedProtected) hdmc_unconfirmedDeviationDismissalDayIndexWithError:];
  }

  v7 = *MEMORY[0x277D11940];

  return [a1 numberForKey:v7 error:a3];
}

- (void)hdmc_legacyOnboardingVersionCompletedWithError:()HKMCSyncedProtected .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_legacyOnboardingVersionCompletedWithError:()HKMCSyncedProtected .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_legacyOnboardingFirstCompletedDateWithError:()HKMCSyncedProtected .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_legacyOnboardingFirstCompletedDateWithError:()HKMCSyncedProtected .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_setLastLoggedInCycleTrackingDate:()HKMCSyncedProtected error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_setLastLoggedInCycleTrackingDate:()HKMCSyncedProtected error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_lastLoggedInCycleTrackingDateWithError:()HKMCSyncedProtected .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_lastLoggedInCycleTrackingDateWithError:()HKMCSyncedProtected .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_setUnconfirmedDeviationDismissalDayIndex:()HKMCSyncedProtected error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_setUnconfirmedDeviationDismissalDayIndex:()HKMCSyncedProtected error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_unconfirmedDeviationDismissalDayIndexWithError:()HKMCSyncedProtected .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[self.domainName isEqualToString:HKMCMenstrualCyclesDefaultsDomain]" object:? file:? lineNumber:? description:?];
}

- (void)hdmc_unconfirmedDeviationDismissalDayIndexWithError:()HKMCSyncedProtected .cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"self.category == HDKeyValueEntityCategoryProtectedNanoUserDefaults" object:? file:? lineNumber:? description:?];
}

@end