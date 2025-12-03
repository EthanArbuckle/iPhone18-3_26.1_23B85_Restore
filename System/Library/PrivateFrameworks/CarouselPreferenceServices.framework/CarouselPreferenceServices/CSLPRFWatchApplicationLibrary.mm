@interface CSLPRFWatchApplicationLibrary
+ (id)libraryForWatchApplications;
@end

@implementation CSLPRFWatchApplicationLibrary

+ (id)libraryForWatchApplications
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  activeDeviceSelectorBlock = [MEMORY[0x277D37B50] activeDeviceSelectorBlock];
  v4 = [mEMORY[0x277D37B50] getDevicesMatching:activeDeviceSelectorBlock];
  firstObject = [v4 firstObject];

  v6 = cslprf_app_library_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    pairingID = [firstObject pairingID];
    v13 = 138412290;
    v14 = pairingID;
    _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_INFO, "Device Registry provided device:%@", &v13, 0xCu);
  }

  v8 = [firstObject supportsCapability:486198456];
  v9 = off_278743FC0;
  if (!v8)
  {
    v9 = off_278744050;
  }

  v10 = [objc_alloc(*v9) initWithPairedWatch:firstObject];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end