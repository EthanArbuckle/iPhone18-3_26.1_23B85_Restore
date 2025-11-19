@interface DASSchedulerClass
@end

@implementation DASSchedulerClass

Class __get_DASSchedulerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!DuetActivitySchedulerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __DuetActivitySchedulerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F72A10;
    v6 = 0;
    DuetActivitySchedulerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DuetActivitySchedulerLibraryCore_frameworkLibrary)
  {
    __get_DASSchedulerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("_DASScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_DASSchedulerClass_block_invoke_cold_1();
  }

  get_DASSchedulerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __get_DASSchedulerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_DASSchedulerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DSAppSharing.m" lineNumber:25 description:{@"Unable to find class %s", "_DASScheduler"}];

  __break(1u);
}

void __get_DASSchedulerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DuetActivitySchedulerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DSAppSharing.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

@end