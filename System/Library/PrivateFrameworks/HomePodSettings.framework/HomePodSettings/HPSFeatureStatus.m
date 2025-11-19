@interface HPSFeatureStatus
+ (BOOL)isLocalSettingsEnabled;
@end

@implementation HPSFeatureStatus

+ (BOOL)isLocalSettingsEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _os_feature_enabled_impl();
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[HPSFeatureStatus isLocalSettingsEnabled]";
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

@end