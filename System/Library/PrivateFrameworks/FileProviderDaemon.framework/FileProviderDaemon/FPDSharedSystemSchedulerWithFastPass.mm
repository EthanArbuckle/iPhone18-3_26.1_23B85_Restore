@interface FPDSharedSystemSchedulerWithFastPass
- (BOOL)isRunningAsFastPass;
- (BOOL)preventRunning;
- (FPDSharedSystemSchedulerWithFastPass)initWithTaskRequest:(id)request fastPassTaskRequest:(id)taskRequest options:(int64_t)options;
- (id)buildNewTaskRequest;
- (id)taskLabel;
- (void)defer;
- (void)enableFastPassRunWithSemanticVersion:(int64_t)version;
- (void)setAllowRunningOnlyAsFastPass:(BOOL)pass;
@end

@implementation FPDSharedSystemSchedulerWithFastPass

- (FPDSharedSystemSchedulerWithFastPass)initWithTaskRequest:(id)request fastPassTaskRequest:(id)taskRequest options:(int64_t)options
{
  taskRequestCopy = taskRequest;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__FPDSharedSystemSchedulerWithFastPass_initWithTaskRequest_fastPassTaskRequest_options___block_invoke;
  aBlock[3] = &unk_1E83BFFF8;
  v19 = taskRequestCopy;
  v9 = taskRequestCopy;
  requestCopy = request;
  v11 = _Block_copy(aBlock);
  fastPassCriteriaBuilder = self->_fastPassCriteriaBuilder;
  self->_fastPassCriteriaBuilder = v11;

  self->_shouldRunInFastPass = 0;
  self->_allowRunningOnlyAsFastPass = 0;
  self->_semanticVersion = 0;
  identifier = [v9 identifier];
  fastPassLabel = self->_fastPassLabel;
  self->_fastPassLabel = identifier;

  v17.receiver = self;
  v17.super_class = FPDSharedSystemSchedulerWithFastPass;
  v15 = [(FPDSharedSystemScheduler *)&v17 initWithTaskRequest:requestCopy options:options];

  return v15;
}

- (id)taskLabel
{
  if (self->_shouldRunInFastPass)
  {
    taskLabel = self->_fastPassLabel;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = FPDSharedSystemSchedulerWithFastPass;
    taskLabel = [(FPDSharedSystemScheduler *)&v4 taskLabel];
  }

  return taskLabel;
}

- (void)defer
{
  v4.receiver = self;
  v4.super_class = FPDSharedSystemSchedulerWithFastPass;
  [(FPDSharedSystemScheduler *)&v4 defer];
  if (self->_shouldRunInFastPass)
  {
    v3.receiver = self;
    v3.super_class = FPDSharedSystemSchedulerWithFastPass;
    [(FPDSharedSystemScheduler *)&v3 unregisterActivityImmediately];
    self->_shouldRunInFastPass = 0;
  }
}

- (id)buildNewTaskRequest
{
  if (self->_shouldRunInFastPass)
  {
    fastPassCriteriaBuilder = self->_fastPassCriteriaBuilder;
    buildNewTaskRequest = (*(self->_fastPassCriteriaBuilder + 2))();
    [buildNewTaskRequest setSemanticVersion:self->_semanticVersion];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = FPDSharedSystemSchedulerWithFastPass;
    buildNewTaskRequest = [(FPDSharedSystemScheduler *)&v6 buildNewTaskRequest];
  }

  return buildNewTaskRequest;
}

- (void)enableFastPassRunWithSemanticVersion:(int64_t)version
{
  v5 = +[FPDSharedSystemScheduler queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__FPDSharedSystemSchedulerWithFastPass_enableFastPassRunWithSemanticVersion___block_invoke;
  v6[3] = &unk_1E83BEFB0;
  v6[4] = self;
  v6[5] = version;
  dispatch_sync(v5, v6);
}

id __77__FPDSharedSystemSchedulerWithFastPass_enableFastPassRunWithSemanticVersion___block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = FPDSharedSystemSchedulerWithFastPass;
  result = objc_msgSendSuper2(&v3, sel_unregisterActivityImmediately);
  *(*(a1 + 32) + 152) = *(a1 + 40);
  *(*(a1 + 32) + 144) = 1;
  return result;
}

- (void)setAllowRunningOnlyAsFastPass:(BOOL)pass
{
  v5 = +[FPDSharedSystemScheduler queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__FPDSharedSystemSchedulerWithFastPass_setAllowRunningOnlyAsFastPass___block_invoke;
  v6[3] = &unk_1E83BFFD0;
  passCopy = pass;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

unsigned __int8 *__70__FPDSharedSystemSchedulerWithFastPass_setAllowRunningOnlyAsFastPass___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  result = *(a1 + 32);
  if (v3 != result[168])
  {
    v7 = v1;
    v8 = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__FPDSharedSystemSchedulerWithFastPass_setAllowRunningOnlyAsFastPass___block_invoke_2;
    v5[3] = &unk_1E83BFFD0;
    v5[4] = result;
    v6 = v3;
    return [result withReevaluationOfSchedulingState:v5];
  }

  return result;
}

- (BOOL)isRunningAsFastPass
{
  if (!self->_shouldRunInFastPass)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = FPDSharedSystemSchedulerWithFastPass;
  return [(FPDSharedSystemScheduler *)&v5 isRegistered];
}

- (BOOL)preventRunning
{
  if (!self->_allowRunningOnlyAsFastPass)
  {
    selfCopy = self;
    v3 = &selfCopy;
    goto LABEL_5;
  }

  if ([(FPDSharedSystemSchedulerWithFastPass *)self isRunningAsFastPass])
  {
    selfCopy2 = self;
    v3 = &selfCopy2;
LABEL_5:
    v3[1] = FPDSharedSystemSchedulerWithFastPass;
    return objc_msgSendSuper2(v3, sel_preventRunning, selfCopy);
  }

  return 1;
}

@end