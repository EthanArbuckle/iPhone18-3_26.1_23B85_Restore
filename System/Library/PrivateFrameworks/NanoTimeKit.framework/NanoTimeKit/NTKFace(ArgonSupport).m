@interface NTKFace(ArgonSupport)
@end

@implementation NTKFace(ArgonSupport)

- (void)argon_notificationOverlayImageWithCompletion:()ArgonSupport .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = 0;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Notification: In-bundle asset overlay missing for bundle %{public}@", &v1, 0xCu);
}

@end