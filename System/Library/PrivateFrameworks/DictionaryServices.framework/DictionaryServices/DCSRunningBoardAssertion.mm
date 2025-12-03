@interface DCSRunningBoardAssertion
+ (void)performTaskWithFinishAssertionName:(id)name task:(const void *)task;
@end

@implementation DCSRunningBoardAssertion

+ (void)performTaskWithFinishAssertionName:(id)name task:(const void *)task
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (+[DCSRunningBoardAssertion performTaskWithFinishAssertionName:task:]::onceToken != -1)
  {
    +[DCSRunningBoardAssertion performTaskWithFinishAssertionName:task:];
  }

  v6 = objc_alloc(MEMORY[0x277D46DB8]);
  v12[0] = +[DCSRunningBoardAssertion performTaskWithFinishAssertionName:task:]::attribute;
  v7 = [v6 initWithExplanation:name target:+[DCSRunningBoardAssertion performTaskWithFinishAssertionName:task:]::target attributes:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v12, 1)}];
  v11 = 0;
  if ([v7 acquireWithError:&v11])
  {
    DCSLog(1, @"DCSRunningBoardAssertion acquired Process assertion");
  }

  else
  {
    DCSLog(16, @"DCSRunningBoardAssertion failed to acquire Process assertion with error: %@", v11);
  }

  v8 = *(task + 3);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8);
  v11 = 0;
  if ([v7 invalidateSyncWithError:&v11])
  {
    DCSLog(1, @"DCSRunningBoardAssertion invalidated Process assertion", v10);
  }

  else
  {
    DCSLog(16, @"DCSRunningBoardAssertion failed to invalidate Process assertion with error: %@", v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __68__DCSRunningBoardAssertion_performTaskWithFinishAssertionName_task___block_invoke()
{
  +[DCSRunningBoardAssertion performTaskWithFinishAssertionName:task:]::target = [MEMORY[0x277D47008] currentProcess];
  result = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"FinishTaskNow"];
  +[DCSRunningBoardAssertion performTaskWithFinishAssertionName:task:]::attribute = result;
  return result;
}

@end