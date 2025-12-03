@interface NCCSensorStatusViewModelHelper
- (void)observeDataFromStatusDomain:(id)domain completion:(id)completion;
@end

@implementation NCCSensorStatusViewModelHelper

- (void)observeDataFromStatusDomain:(id)domain completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__NCCSensorStatusViewModelHelper_observeDataFromStatusDomain_completion___block_invoke;
  v7[3] = &unk_27992F238;
  v8 = completionCopy;
  v6 = completionCopy;
  [domain observeDataWithBlock:v7];
}

void __73__NCCSensorStatusViewModelHelper_observeDataFromStatusDomain_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NCCSensorStatusViewModelHelper_observeDataFromStatusDomain_completion___block_invoke_2;
  block[3] = &unk_27992F210;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end