@interface CSLPRFWatchApplicationLibrary
+ (id)libraryForWatchApplications;
@end

@implementation CSLPRFWatchApplicationLibrary

+ (id)libraryForWatchApplications
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D37B50] sharedInstance];
  v3 = [MEMORY[0x277D37B50] activeDeviceSelectorBlock];
  v4 = [v2 getDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = cslprf_app_library_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 pairingID];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_INFO, "Device Registry provided device:%@", &v13, 0xCu);
  }

  v8 = [v5 supportsCapability:486198456];
  v9 = off_278743FC0;
  if (!v8)
  {
    v9 = off_278744050;
  }

  v10 = [objc_alloc(*v9) initWithPairedWatch:v5];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end