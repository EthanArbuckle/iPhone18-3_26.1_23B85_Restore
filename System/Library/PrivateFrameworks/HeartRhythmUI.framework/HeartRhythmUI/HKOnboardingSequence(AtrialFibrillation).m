@interface HKOnboardingSequence(AtrialFibrillation)
+ (id)firstTimeAtrialFibrillationAvailabilitySequence;
+ (id)firstTimeAtrialFibrillationOnboardingSequence;
@end

@implementation HKOnboardingSequence(AtrialFibrillation)

+ (id)firstTimeAtrialFibrillationAvailabilitySequence
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:0];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v2 = [objc_alloc(MEMORY[0x277D129A8]) initWithPages:v1];

  return v2;
}

+ (id)firstTimeAtrialFibrillationOnboardingSequence
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:1];
  v7[0] = v0;
  v1 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:2];
  v7[1] = v1;
  v2 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:3];
  v7[2] = v2;
  v3 = [objc_alloc(MEMORY[0x277D129A0]) initWithViewControllerClass:objc_opt_class() sequencePage:4];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  v5 = [objc_alloc(MEMORY[0x277D129A8]) initWithPages:v4];

  return v5;
}

@end