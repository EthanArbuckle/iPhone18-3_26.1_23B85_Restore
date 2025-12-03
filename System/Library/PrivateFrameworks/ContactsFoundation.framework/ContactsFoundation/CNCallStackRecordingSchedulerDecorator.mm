@interface CNCallStackRecordingSchedulerDecorator
+ (id)os_log;
- (CNCallStackRecordingSchedulerDecorator)initWithScheduler:(id)scheduler;
- (NSString)description;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)blockBecamePending;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation CNCallStackRecordingSchedulerDecorator

+ (id)os_log
{
  if (os_log_cn_once_token_1_2 != -1)
  {
    +[CNCallStackRecordingSchedulerDecorator os_log];
  }

  v3 = os_log_cn_once_object_1_2;

  return v3;
}

uint64_t __48__CNCallStackRecordingSchedulerDecorator_os_log__block_invoke()
{
  os_log_cn_once_object_1_2 = os_log_create("com.apple.contacts.debug", "scheduler-callstack");

  return MEMORY[0x1EEE66BB8]();
}

- (CNCallStackRecordingSchedulerDecorator)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10.receiver = self;
  v10.super_class = CNCallStackRecordingSchedulerDecorator;
  v6 = [(CNCallStackRecordingSchedulerDecorator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, scheduler);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  scheduler = [(CNCallStackRecordingSchedulerDecorator *)self scheduler];
  v5 = [v3 appendName:@"scheduler" object:scheduler];

  build = [v3 build];

  return build;
}

- (void)blockBecamePending
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Scheduling block with call stack: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  [(CNCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNCallStackRecordingSchedulerDecorator *)self scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CNCallStackRecordingSchedulerDecorator_performBlock___block_invoke;
  v7[3] = &unk_1E6ED5F68;
  v8 = blockCopy;
  v6 = blockCopy;
  [scheduler performBlock:v7];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(CNCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNCallStackRecordingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__CNCallStackRecordingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_1E6ED5F68;
  v10 = blockCopy;
  v8 = blockCopy;
  [scheduler performBlock:v9 qualityOfService:service];
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  [(CNCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNCallStackRecordingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CNCallStackRecordingSchedulerDecorator_performCancelableBlock___block_invoke;
  v9[3] = &unk_1E6ED5F90;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [scheduler performCancelableBlock:v9];

  return v7;
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(CNCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNCallStackRecordingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__CNCallStackRecordingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke;
  v11[3] = &unk_1E6ED5F90;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler performCancelableBlock:v11 qualityOfService:service];

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  [(CNCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNCallStackRecordingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CNCallStackRecordingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_1E6ED5F68;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler afterDelay:v11 performBlock:delay];

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(CNCallStackRecordingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNCallStackRecordingSchedulerDecorator *)self scheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__CNCallStackRecordingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_1E6ED5F68;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = [scheduler afterDelay:v13 performBlock:service qualityOfService:delay];

  return v11;
}

- (double)timestamp
{
  scheduler = [(CNCallStackRecordingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

@end