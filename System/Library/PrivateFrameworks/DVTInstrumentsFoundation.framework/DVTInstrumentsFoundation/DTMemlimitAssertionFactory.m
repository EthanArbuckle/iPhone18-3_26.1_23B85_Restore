@interface DTMemlimitAssertionFactory
- (id)_removeMemoryLimitsForPid:(int)a3;
@end

@implementation DTMemlimitAssertionFactory

- (id)_removeMemoryLimitsForPid:(int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  *(&v13 + 4) = 0xFFFFFFFF00000000;
  LODWORD(v13) = -1;
  HIDWORD(v13) = 0;
  v4 = memorystatus_control();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v15 = a3;
      v16 = 1024;
      v17 = v5;
      v6 = MEMORY[0x277D86220];
      v7 = "DTMemlimitAssertionFactory: failed to remove active and inactive memory limits for pid %d (result = %d)";
      v8 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_247F67000, v6, v8, v7, buf, 0xEu);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [v9 BOOLForKey:@"DTMemlimitAssertionFactoryLog"];

    if (v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v15 = a3;
      v16 = 1024;
      v17 = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "DTMemlimitAssertionFactory: removed active and inactive memory limits for pid %d (result = %d)";
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

@end