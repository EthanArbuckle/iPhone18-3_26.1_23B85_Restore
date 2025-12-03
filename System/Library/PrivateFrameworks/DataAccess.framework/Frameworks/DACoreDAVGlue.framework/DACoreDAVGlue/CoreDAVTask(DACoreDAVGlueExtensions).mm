@interface CoreDAVTask(DACoreDAVGlueExtensions)
- (void)cancelTaskWithReason:()DACoreDAVGlueExtensions underlyingError:;
@end

@implementation CoreDAVTask(DACoreDAVGlueExtensions)

- (void)cancelTaskWithReason:()DACoreDAVGlueExtensions underlyingError:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 134218240;
    selfCopy = self;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&dword_248521000, v7, v8, "Task %p canceled due to reason %d", buf, 0x12u);
  }

  if (v6)
  {
    v12 = *MEMORY[0x277CCA7E8];
    v13 = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFDB18] code:1 userInfo:v9];
  [self finishCoreDAVTaskWithError:v10];

  v11 = *MEMORY[0x277D85DE8];
}

@end