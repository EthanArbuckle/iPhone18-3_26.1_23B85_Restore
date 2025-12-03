@interface FSFSiriPreferenceUtil
+ (BOOL)isOptedIn;
@end

@implementation FSFSiriPreferenceUtil

+ (BOOL)isOptedIn
{
  v9 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  siriDataSharingOptInStatus = [mEMORY[0x277CEF368] siriDataSharingOptInStatus];

  if (siriDataSharingOptInStatus >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = siriDataSharingOptInStatus;
      _os_log_impl(&dword_223066000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Unexpected siriPreferenceDataSharingOptInStatus value %ld", &v7, 0xCu);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 2u >> (siriDataSharingOptInStatus & 0xF);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

@end