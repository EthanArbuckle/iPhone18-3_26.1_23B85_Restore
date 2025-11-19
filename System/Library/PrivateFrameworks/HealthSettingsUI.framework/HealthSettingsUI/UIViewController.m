@interface UIViewController
@end

@implementation UIViewController

void __92__UIViewController_AuthenticationHelper__hk_authenticateWithGuard_completionViewController___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained hk_showViewController:*(a1 + 32) animated:0];
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        __92__UIViewController_AuthenticationHelper__hk_authenticateWithGuard_completionViewController___block_invoke_cold_1(a1, v5, v8);
      }
    }
  }
}

void __92__UIViewController_AuthenticationHelper__hk_authenticateWithGuard_completionViewController___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_251E77000, log, OS_LOG_TYPE_ERROR, "%{public}@: Authentication failed: %{public}@.", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end