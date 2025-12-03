@interface BKUIBundleEnrollViewController
- (id)bundleAlertView;
- (void)bundleAlertView;
@end

@implementation BKUIBundleEnrollViewController

- (id)bundleAlertView
{
  bkui_bundle_enroll_view_controller_log = self->bkui_bundle_enroll_view_controller_log;
  if (os_log_type_enabled(bkui_bundle_enroll_view_controller_log, OS_LOG_TYPE_ERROR))
  {
    [(BKUIBundleEnrollViewController *)bkui_bundle_enroll_view_controller_log bundleAlertView];
  }

  return 0;
}

- (void)statusMessage:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [BKUIUtils nameForMessage:a2];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_0(&dword_241B0A000, v5, v6, "statusMessage: status = %3d (%@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)afterStatusMessage:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [BKUIUtils nameForMessage:a2];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_0(&dword_241B0A000, v5, v6, "afterStatusMessage: status = %3d (%@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)bundleAlertView
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = [objc_opt_class() description];
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_241B0A000, selfCopy, OS_LOG_TYPE_ERROR, "BiometricKitUI: %@ does not override BKUIBundleEnrollViewController.bundleAlertView!", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

@end