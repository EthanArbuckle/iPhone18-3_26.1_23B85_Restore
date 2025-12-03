@interface CoreDAVTask(DACoreDAVGlueExtensions)
- (void)cancelTaskWithReason:()DACoreDAVGlueExtensions underlyingError:;
@end

@implementation CoreDAVTask(DACoreDAVGlueExtensions)

- (void)cancelTaskWithReason:()DACoreDAVGlueExtensions underlyingError:
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 134218240;
    selfCopy = self;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_2424DC000, v5, v6, "Task %p canceled due to reason %d", &v9, 0x12u);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFDB18] code:1 userInfo:0];
  [self finishCoreDAVTaskWithError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end