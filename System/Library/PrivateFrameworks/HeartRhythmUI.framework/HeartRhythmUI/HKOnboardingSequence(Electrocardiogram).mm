@interface HKOnboardingSequence(Electrocardiogram)
+ (id)firstTimeElectrocardiogramAvailabilitySequence;
+ (id)firstTimeElectrocardiogramOnboardingSequenceWithAlgorithmVersion:()Electrocardiogram;
+ (id)upgradingElectrocardiogramAvailabilitySequence;
+ (id)upgradingElectrocardiogramSequenceFromAlgorithmVersion:()Electrocardiogram toAlgorithmVersion:;
@end

@implementation HKOnboardingSequence(Electrocardiogram)

+ (id)firstTimeElectrocardiogramAvailabilitySequence
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:0];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v2 = [objc_alloc(MEMORY[0x277D129A8]) initWithPages:v1];

  return v2;
}

+ (id)firstTimeElectrocardiogramOnboardingSequenceWithAlgorithmVersion:()Electrocardiogram
{
  v13[5] = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v3 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:3];
    v12 = v3;
    v4 = &v12;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:3];
    v13[0] = v3;
    v4 = v13;
LABEL_5:
    v5 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:4];
    v4[1] = v5;
    v6 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:5];
    v4[2] = v6;
    v7 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:6];
    v4[3] = v7;
    v8 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:7];
    v4[4] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

    v10 = [objc_alloc(MEMORY[0x277D129A8]) initWithPages:v9];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (id)upgradingElectrocardiogramAvailabilitySequence
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:1];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v2 = [objc_alloc(MEMORY[0x277D129A8]) initWithPages:v1];

  return v2;
}

+ (id)upgradingElectrocardiogramSequenceFromAlgorithmVersion:()Electrocardiogram toAlgorithmVersion:
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (a3 == 1 && a4 == 2)
  {
    v6 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:4];
    v7 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:{5, v6}];
    v13[1] = v7;
    v8 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:8];
    v13[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

    v10 = [objc_alloc(MEMORY[0x277D129A8]) initWithPages:v9];
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [(HKOnboardingSequence(Electrocardiogram) *)a3 upgradingElectrocardiogramSequenceFromAlgorithmVersion:a4 toAlgorithmVersion:v11];
    }

    v10 = 0;
  }

  return v10;
}

+ (void)upgradingElectrocardiogramSequenceFromAlgorithmVersion:()Electrocardiogram toAlgorithmVersion:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_2521E7000, log, OS_LOG_TYPE_ERROR, "Electrocardiogram upgrading from %ld to %ld is not supported", &v3, 0x16u);
}

@end