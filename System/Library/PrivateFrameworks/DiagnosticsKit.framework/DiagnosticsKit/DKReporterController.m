@interface DKReporterController
- (void)start;
@end

@implementation DKReporterController

- (void)start
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(DKReporterController *)self isPresent])
  {
    [(DKReporterController *)self populateAttributes:v4];
    v6 = [(DKReporterController *)self componentIdentity];
    v7 = [DKComponent componentWithIdentity:v6 attributes:v4];

    [v5 addObject:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    [(DKReporterController *)self teardown];
  }

  v8 = [DKReport reportWithComponents:v5];
  v9 = [(DKReporterController *)self context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__DKReporterController_start__block_invoke;
  v10[3] = &unk_278F6C050;
  v10[4] = self;
  [v9 completeWithReport:v8 completion:v10];

  objc_autoreleasePoolPop(v3);
}

void __29__DKReporterController_start__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) context];
  [v1 completeRequestReturningItems:MEMORY[0x277CBEBF8] completionHandler:0];
}

@end