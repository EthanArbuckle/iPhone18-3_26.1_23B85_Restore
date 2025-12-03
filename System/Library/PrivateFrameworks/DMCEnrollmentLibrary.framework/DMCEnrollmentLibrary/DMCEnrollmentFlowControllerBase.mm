@interface DMCEnrollmentFlowControllerBase
- (DMCEnrollmentFlowControllerBase)init;
- (void)_appendSteps:(id)steps;
- (void)_jumpToStep:(unint64_t)step;
- (void)_pollNextStep;
- (void)_resetToInitialSteps;
@end

@implementation DMCEnrollmentFlowControllerBase

- (DMCEnrollmentFlowControllerBase)init
{
  v13.receiver = self;
  v13.super_class = DMCEnrollmentFlowControllerBase;
  v2 = [(DMCEnrollmentFlowControllerBase *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    stepQueue = v2->_stepQueue;
    v2->_stepQueue = v3;

    v5 = objc_alloc(MEMORY[0x277D03510]);
    [MEMORY[0x277D03500] enrollmentStepTimeoutThresholdWithDefaultValue:10.0];
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 initWithQoS:25 hangThreshold:v9 owner:v7];
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v10;

    [(DMCHangDetectionQueue *)v2->_workerQueue setShouldDumpStackshot:1];
  }

  return v2;
}

- (void)_appendSteps:(id)steps
{
  stepsCopy = steps;
  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__DMCEnrollmentFlowControllerBase__appendSteps___block_invoke;
  v7[3] = &unk_278EE3528;
  v7[4] = self;
  v8 = stepsCopy;
  v6 = stepsCopy;
  [workerQueue queueBlock:v7];
}

void __48__DMCEnrollmentFlowControllerBase__appendSteps___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stepQueue];
  [v2 addObjectsFromArray:*(a1 + 40)];
}

- (void)_pollNextStep
{
  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__DMCEnrollmentFlowControllerBase__pollNextStep__block_invoke;
  v4[3] = &unk_278EE3120;
  v4[4] = self;
  [workerQueue queueBlock:v4];
}

uint64_t __48__DMCEnrollmentFlowControllerBase__pollNextStep__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextStepIndex];
  v3 = [*(a1 + 32) stepQueue];
  v4 = [v3 count];

  v5 = *(a1 + 32);
  if (v2 >= v4)
  {

    return [v5 _workerQueue_flowCompleted];
  }

  else
  {
    v6 = [v5 stepQueue];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "nextStepIndex")}];
    v8 = [v7 integerValue];

    [*(a1 + 32) setNextStepIndex:{objc_msgSend(*(a1 + 32), "nextStepIndex") + 1}];
    v9 = *(a1 + 32);

    return [v9 _workerQueue_performFlowStep:v8];
  }
}

- (void)_resetToInitialSteps
{
  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__DMCEnrollmentFlowControllerBase__resetToInitialSteps__block_invoke;
  v4[3] = &unk_278EE3120;
  v4[4] = self;
  [workerQueue queueBlock:v4];
}

uint64_t __55__DMCEnrollmentFlowControllerBase__resetToInitialSteps__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stepQueue];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setNextStepIndex:0];
}

- (void)_jumpToStep:(unint64_t)step
{
  workerQueue = [(DMCEnrollmentFlowControllerBase *)self workerQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DMCEnrollmentFlowControllerBase__jumpToStep___block_invoke;
  v6[3] = &unk_278EE3EC0;
  v6[4] = self;
  v6[5] = step;
  [workerQueue queueBlock:v6];
}

uint64_t __47__DMCEnrollmentFlowControllerBase__jumpToStep___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stepQueue];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 indexOfObject:v3];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) stepQueue];
    v4 = [v5 count];

    v6 = [*(a1 + 32) stepQueue];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    [v6 addObject:v7];
  }

  v8 = *(a1 + 32);

  return [v8 setNextStepIndex:v4];
}

@end