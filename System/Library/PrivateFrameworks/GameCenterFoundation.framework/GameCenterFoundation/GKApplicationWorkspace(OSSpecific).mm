@interface GKApplicationWorkspace(OSSpecific)
- (void)openICloudSettings;
- (void)openSoftwareUpdateSettings;
@end

@implementation GKApplicationWorkspace(OSSpecific)

- (void)openICloudSettings
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "cannot openICloudSettings because of error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)openSoftwareUpdateSettings
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "cannot openSoftwareUpdateSettings because of error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end