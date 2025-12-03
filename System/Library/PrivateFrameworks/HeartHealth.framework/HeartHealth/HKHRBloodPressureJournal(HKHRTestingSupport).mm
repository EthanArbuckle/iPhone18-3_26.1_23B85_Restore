@interface HKHRBloodPressureJournal(HKHRTestingSupport)
+ (void)hkhr_defaultTimeIntervals;
@end

@implementation HKHRBloodPressureJournal(HKHRTestingSupport)

+ (void)hkhr_defaultTimeIntervals
{
  OUTLINED_FUNCTION_0_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)hkhr_timeIntervalsWithWake:()HKHRTestingSupport bed:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)hkhr_timeIntervalsWithWake:()HKHRTestingSupport bed:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end