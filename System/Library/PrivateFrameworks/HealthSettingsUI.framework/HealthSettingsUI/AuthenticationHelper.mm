@interface AuthenticationHelper
+ (void)_authenticateWithGuard:(id)guard completion:(id)completion;
+ (void)authenticateWithCompletion:(id)completion;
@end

@implementation AuthenticationHelper

+ (void)_authenticateWithGuard:(id)guard completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x277CEBE80];
  v7 = *MEMORY[0x277CCE3A8];
  guardCopy = guard;
  v9 = [v6 applicationWithBundleIdentifier:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__AuthenticationHelper__authenticateWithGuard_completion___block_invoke;
  v11[3] = &unk_2796E54C0;
  v12 = completionCopy;
  v10 = completionCopy;
  [guardCopy authenticateForSubject:v9 completion:v11];
}

void __58__AuthenticationHelper__authenticateWithGuard_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__AuthenticationHelper__authenticateWithGuard_completion___block_invoke_2;
  block[3] = &unk_2796E5498;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (void)authenticateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CEBE98];
  completionCopy = completion;
  sharedGuard = [v4 sharedGuard];
  [self _authenticateWithGuard:sharedGuard completion:completionCopy];
}

@end