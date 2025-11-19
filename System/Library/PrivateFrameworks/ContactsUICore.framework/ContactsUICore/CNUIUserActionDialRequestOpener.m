@interface CNUIUserActionDialRequestOpener
@end

@implementation CNUIUserActionDialRequestOpener

void __66___CNUIUserActionDialRequestOpener_openDialRequest_withScheduler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) callCenter];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
  [v4 launchAppForDialRequest:v2 completion:v3];
}

id __66___CNUIUserActionDialRequestOpener_openDialRequest_withScheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() errorForUnableToOpenDialRequest:*(a1 + 40) withUnderlyingError:v3];

  v5 = [MEMORY[0x1E6996720] futureWithError:v4];

  return v5;
}

void __66___CNUIUserActionDialRequestOpener_openDialRequest_withScheduler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __66___CNUIUserActionDialRequestOpener_openDialRequest_withScheduler___block_invoke_3_cold_1(v2, v3);
  }
}

void __66___CNUIUserActionDialRequestOpener_openDialRequest_withScheduler___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "Failed to open dialRequest: %@", &v2, 0xCu);
}

@end