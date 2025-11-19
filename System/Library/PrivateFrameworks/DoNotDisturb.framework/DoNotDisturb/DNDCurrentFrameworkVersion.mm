@interface DNDCurrentFrameworkVersion
@end

@implementation DNDCurrentFrameworkVersion

void ___DNDCurrentFrameworkVersion_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];

  v7 = 0uLL;
  v8 = 0;
  DNDOperatingSystemVersionFromString(v1, &v7);
  if (v7)
  {
    _DNDCurrentFrameworkVersion_currentVersion = v7;
    qword_280AF21F8 = v8;
  }

  else
  {
    v2 = DNDLogSettings;
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
    {
      ___DNDCurrentFrameworkVersion_block_invoke_cold_1(v1, v2);
    }
  }

  v3 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = _DNDCurrentFrameworkVersion_currentVersion;
    *&buf[16] = qword_280AF21F8;
    v4 = v3;
    v5 = DNDStringFromOperatingSystemVersion(buf);
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v1;
    _os_log_impl(&dword_22002F000, v4, OS_LOG_TYPE_DEFAULT, "Parsed current version: %@; source: %@", buf, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void ___DNDCurrentFrameworkVersion_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "Unexpected Project Source Version: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end