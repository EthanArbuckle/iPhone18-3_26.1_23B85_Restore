@interface CNUIUserActionUserActivityOpener
@end

@implementation CNUIUserActionUserActivityOpener

void __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) becomeCurrent];
  v2 = [*(a1 + 40) applicationWorkspace];
  v7 = [v2 applicationForBundleIdentifier:*(a1 + 48)];

  v3 = +[CNUIApplicationLaunchOptions defaultOptions];
  v4 = [*(a1 + 40) applicationWorkspace];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 56) BOOLErrorCompletionHandlerAdapter];
  [v4 openUserActivity:v5 inApplication:v7 options:v3 completionHandler:v6];
}

id __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() errorForUnableToOpenUserActivity:*(a1 + 40) withUnderlyingError:v3];

  v5 = [MEMORY[0x1E6996720] futureWithError:v4];

  return v5;
}

void __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke_3_cold_1(v2, v3);
  }
}

void __90___CNUIUserActionUserActivityOpener_openUserActivity_usingBundleIdentifier_withScheduler___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "Failed to open user activity: %@", &v2, 0xCu);
}

@end