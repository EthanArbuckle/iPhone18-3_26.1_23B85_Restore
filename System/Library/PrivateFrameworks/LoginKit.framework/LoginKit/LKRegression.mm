@interface LKRegression
+ (void)executeDelayByUserDefaultIfSet:(id)set;
@end

@implementation LKRegression

+ (void)executeDelayByUserDefaultIfSet:(id)set
{
  v18 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = +[LKPlatformSupport isInternalBuild];
  if (setCopy)
  {
    if (v4)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v6 = [standardUserDefaults integerForKey:setCopy];

      if (v6 >= 1)
      {
        v7 = LKLogRegression;
        if (os_log_type_enabled(LKLogRegression, OS_LOG_TYPE_DEFAULT))
        {
          v8 = MEMORY[0x277CCACC8];
          v9 = v7;
          currentThread = [v8 currentThread];
          v12 = 138412802;
          v13 = currentThread;
          v14 = 2048;
          v15 = v6;
          v16 = 2112;
          v17 = setCopy;
          _os_log_impl(&dword_25618F000, v9, OS_LOG_TYPE_DEFAULT, "Delaying %@ for %lu seconds because %@ (user default) is set.", &v12, 0x20u);
        }

        [MEMORY[0x277CCACC8] sleepForTimeInterval:v6];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end