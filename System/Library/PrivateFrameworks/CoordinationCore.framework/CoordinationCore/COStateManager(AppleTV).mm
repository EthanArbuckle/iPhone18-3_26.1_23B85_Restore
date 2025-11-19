@interface COStateManager(AppleTV)
+ (id)appleTV_COStateManagerWithSuiteName:()AppleTV clusters:homeIdentifier:;
@end

@implementation COStateManager(AppleTV)

+ (id)appleTV_COStateManagerWithSuiteName:()AppleTV clusters:homeIdentifier:
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count] == 1 && objc_msgSend(v6, "containsObject:", *MEMORY[0x277CFCEE8]))
  {
    v7 = [objc_alloc(MEMORY[0x277CFD0E8]) initWithSuiteName:v5 clusters:v6];
    v8 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v7;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "Creating an AppleTV COStateManager instance %p", &v11, 0xCu);
    }
  }

  else
  {
    v8 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [COStateManager(AppleTV) appleTV_COStateManagerWithSuiteName:v6 clusters:v8 homeIdentifier:?];
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)appleTV_COStateManagerWithSuiteName:()AppleTV clusters:homeIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "Failed to create an Apple TV COStateManager instance. Invalid clusters provided %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end