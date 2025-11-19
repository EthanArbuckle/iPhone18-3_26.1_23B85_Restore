@interface CPSAnalytics
+ (id)sharedInstance;
- (void)_sendCoreAnalyticsEvent:(id)a3 withDictionary:(id)a4;
- (void)audioAppMetadataThrottledWithBundleIdentifier:(id)a3;
- (void)navigationStartedWithBundleIdentifier:(id)a3;
@end

@implementation CPSAnalytics

+ (id)sharedInstance
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __30__CPSAnalytics_sharedInstance__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedInstance_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance___sharedAnalytics;

  return v2;
}

double __30__CPSAnalytics_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedAnalytics;
  sharedInstance___sharedAnalytics = v1;
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)_sendCoreAnalyticsEvent:(id)a3 withDictionary:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([(CPSAnalytics *)v9 shouldRecordAnalyticsEvents])
  {
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v10, location[0]);
      _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_INFO, "Sending CA event %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    AnalyticsSendEvent();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)navigationStartedWithBundleIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v7 = @"bundleID";
  v8[0] = location[0];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CPSAnalytics *)v3 _sendCoreAnalyticsEvent:@"com.apple.carexperience.navigationstarted" withDictionary:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)audioAppMetadataThrottledWithBundleIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v7 = @"bundleID";
  v8[0] = location[0];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CPSAnalytics *)v3 _sendCoreAnalyticsEvent:@"com.apple.carexperience.audioTemplateThrottled" withDictionary:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

@end