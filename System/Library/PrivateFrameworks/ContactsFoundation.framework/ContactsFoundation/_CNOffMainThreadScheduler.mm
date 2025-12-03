@interface _CNOffMainThreadScheduler
+ (id)os_log;
- (NSString)description;
- (_CNOffMainThreadScheduler)init;
- (_CNOffMainThreadScheduler)initWithBackgroundScheduler:(id)scheduler;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _CNOffMainThreadScheduler

+ (id)os_log
{
  if (os_log_cn_once_token_1_1 != -1)
  {
    +[_CNOffMainThreadScheduler os_log];
  }

  v3 = os_log_cn_once_object_1_1;

  return v3;
}

- (_CNOffMainThreadScheduler)init
{
  v3 = +[CNScheduler globalAsyncScheduler];
  v4 = [(_CNOffMainThreadScheduler *)self initWithBackgroundScheduler:v3];

  return v4;
}

- (_CNOffMainThreadScheduler)initWithBackgroundScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  if (!schedulerCopy)
  {
    if (CNGuardOSLog_cn_once_token_0 != -1)
    {
      [_CNOffMainThreadScheduler initWithBackgroundScheduler:];
    }

    v6 = CNGuardOSLog_cn_once_object_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
    {
      [_CNOffMainThreadScheduler initWithBackgroundScheduler:v6];
    }
  }

  v12.receiver = self;
  v12.super_class = _CNOffMainThreadScheduler;
  v7 = [(_CNOffMainThreadScheduler *)&v12 init];
  if (v7)
  {
    v8 = +[CNScheduler inlineScheduler];
    alreadyOffMainThreadScheduler = v7->_alreadyOffMainThreadScheduler;
    v7->_alreadyOffMainThreadScheduler = v8;

    objc_storeStrong(&v7->_needToGetOffMainThreadScheduler, scheduler);
    v10 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"backgroundScheduler" object:self->_needToGetOffMainThreadScheduler];
  build = [v3 build];

  return build;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v6 = 8;
  if (isMainThread)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42___CNOffMainThreadScheduler_performBlock___block_invoke;
  v9[3] = &unk_1E6ED5858;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 performBlock:v9];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v8 = 8;
  if (isMainThread)
  {
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59___CNOffMainThreadScheduler_performBlock_qualityOfService___block_invoke;
  v11[3] = &unk_1E6ED5858;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 performBlock:v11 qualityOfService:service];
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v6 = 8;
  if (isMainThread)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52___CNOffMainThreadScheduler_performCancelableBlock___block_invoke;
  v11[3] = &unk_1E6ED5CC8;
  v11[4] = self;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [v7 performCancelableBlock:v11];

  return v9;
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v8 = 8;
  if (isMainThread)
  {
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69___CNOffMainThreadScheduler_performCancelableBlock_qualityOfService___block_invoke;
  v13[3] = &unk_1E6ED5CC8;
  v13[4] = self;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = [v9 performCancelableBlock:v13 qualityOfService:service];

  return v11;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v8 = 8;
  if (isMainThread)
  {
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53___CNOffMainThreadScheduler_afterDelay_performBlock___block_invoke;
  v13[3] = &unk_1E6ED5858;
  v13[4] = self;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = [v9 afterDelay:v13 performBlock:delay];

  return v11;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  v10 = 8;
  if (isMainThread)
  {
    v10 = 16;
  }

  v11 = *(&self->super.isa + v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70___CNOffMainThreadScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v15[3] = &unk_1E6ED5858;
  v15[4] = self;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = [v11 afterDelay:v15 performBlock:service qualityOfService:delay];

  return v13;
}

@end