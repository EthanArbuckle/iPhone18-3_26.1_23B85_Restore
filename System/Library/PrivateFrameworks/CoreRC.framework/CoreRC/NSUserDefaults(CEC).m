@interface NSUserDefaults(CEC)
+ (uint64_t)cecUserDefaults;
- (uint64_t)lastKnownPhysicalAddress;
@end

@implementation NSUserDefaults(CEC)

+ (uint64_t)cecUserDefaults
{
  if (cecUserDefaults_cecUserDefaultsInitialized != -1)
  {
    +[NSUserDefaults(CEC) cecUserDefaults];
  }

  return cecUserDefaults_cecUserDefaults;
}

- (uint64_t)lastKnownPhysicalAddress
{
  v10 = *MEMORY[0x277D85DE8];
  LOWORD(v2) = [a1 integerForKey:@"previousCECPhysicalAddress"];
  if (!v2)
  {
    v3 = [a1 integerForKey:@"previousPhysicalAddress"];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = 134217984;
        v9 = v4;
        _os_log_impl(&dword_247384000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Converting deprecated physical address: %lx", &v8, 0xCu);
      }

      v2 = v5 & 0xF | (16 * ((v5 >> 8) & 0xF));
      [a1 removeObjectForKey:@"previousPhysicalAddress"];
      [a1 setInteger:v2 forKey:@"previousCECPhysicalAddress"];
    }

    else
    {
      LOWORD(v2) = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

@end