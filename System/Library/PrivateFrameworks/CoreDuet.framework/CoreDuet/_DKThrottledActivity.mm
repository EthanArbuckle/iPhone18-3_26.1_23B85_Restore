@interface _DKThrottledActivity
+ (id)standardInstance;
- (_DKThrottledActivity)initWithStore:(id)store namespace:(id)namespace;
- (id)activityThrottler;
- (id)description;
- (void)clearHistoryForName:(id)name;
- (void)performNoMoreOftenInDaysThan:(double)than name:(id)name activityBlock:(id)block;
- (void)performNoMoreOftenInDaysThan:(double)than name:(id)name activityBlock:(id)block throttleBlock:(id)throttleBlock;
- (void)performNoMoreOftenInHoursThan:(double)than name:(id)name activityBlock:(id)block;
- (void)performNoMoreOftenInHoursThan:(double)than name:(id)name activityBlock:(id)block throttleBlock:(id)throttleBlock;
- (void)performNoMoreOftenInMinutesThan:(double)than name:(id)name activityBlock:(id)block;
- (void)performNoMoreOftenInMinutesThan:(double)than name:(id)name activityBlock:(id)block throttleBlock:(id)throttleBlock;
- (void)performNoMoreOftenInMinutesThan:(double)than name:(id)name queue:(id)queue activityBlock:(id)block throttleBlock:(id)throttleBlock;
- (void)performNoMoreOftenInSecondsThan:(double)than name:(id)name activityBlock:(id)block;
- (void)performNoMoreOftenInSecondsThan:(double)than name:(id)name activityBlock:(id)block throttleBlock:(id)throttleBlock;
- (void)performWithDelayInDaysOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block;
- (void)performWithDelayInHoursOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block;
- (void)performWithDelayInMinutesOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block;
- (void)performWithDelayInSecondsOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block;
- (void)performWithMinimumIntervalInDaysOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block;
- (void)performWithMinimumIntervalInHoursOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block;
- (void)performWithMinimumIntervalInMinutesOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block;
- (void)performWithMinimumIntervalInSecondsOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block;
- (void)setDate:(id)date forName:(id)name;
@end

@implementation _DKThrottledActivity

+ (id)standardInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___DKThrottledActivity_standardInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (standardInstance_initialized != -1)
  {
    dispatch_once(&standardInstance_initialized, block);
  }

  v2 = standardInstance_standardInstance;

  return v2;
}

- (id)activityThrottler
{
  if (self)
  {
    if (activityThrottler_initialized != -1)
    {
      [_DKThrottledActivity activityThrottler];
    }

    v2 = activityThrottler_sharedInstances;
    objc_sync_enter(v2);
    v3 = [activityThrottler_sharedInstances objectForKeyedSubscript:*(self + 8)];
    if (!v3)
    {
      v3 = [[_DKActivityThrottler alloc] initWithStore:?];
      [activityThrottler_sharedInstances setObject:v3 forKeyedSubscript:*(self + 8)];
    }

    objc_sync_exit(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_DKThrottledActivity)initWithStore:(id)store namespace:(id)namespace
{
  storeCopy = store;
  namespaceCopy = namespace;
  v12.receiver = self;
  v12.super_class = _DKThrottledActivity;
  v9 = [(_DKThrottledActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_namespace, namespace);
  }

  return v10;
}

- (void)performNoMoreOftenInSecondsThan:(double)than name:(id)name activityBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:0 throttleBlock:than];
}

- (void)performNoMoreOftenInSecondsThan:(double)than name:(id)name activityBlock:(id)block throttleBlock:(id)throttleBlock
{
  throttleBlockCopy = throttleBlock;
  blockCopy = block;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:throttleBlockCopy throttleBlock:than];
}

- (void)performNoMoreOftenInMinutesThan:(double)than name:(id)name activityBlock:(id)block
{
  v7 = than * 60.0;
  blockCopy = block;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:0 throttleBlock:v7];
}

- (void)performNoMoreOftenInMinutesThan:(double)than name:(id)name activityBlock:(id)block throttleBlock:(id)throttleBlock
{
  v9 = than * 60.0;
  throttleBlockCopy = throttleBlock;
  blockCopy = block;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:throttleBlockCopy throttleBlock:v9];
}

- (void)performNoMoreOftenInMinutesThan:(double)than name:(id)name queue:(id)queue activityBlock:(id)block throttleBlock:(id)throttleBlock
{
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  throttleBlockCopy = throttleBlock;
  v16 = than * 60.0;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:throttleBlockCopy throttleBlock:v16];
  v18 = dispatch_get_current_queue();

  if (v18 == queueCopy)
  {
    [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:throttleBlockCopy throttleBlock:v16];
  }

  else
  {
    [nameCopy UTF8String];
    v19 = os_transaction_create();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95___DKThrottledActivity_performNoMoreOftenInMinutesThan_name_queue_activityBlock_throttleBlock___block_invoke;
    v21[3] = &unk_1E73699C0;
    v22 = activityThrottler;
    v27 = v16;
    v23 = nameCopy;
    v25 = blockCopy;
    v26 = throttleBlockCopy;
    v24 = v19;
    v20 = v19;
    dispatch_async(queueCopy, v21);
  }
}

- (void)performNoMoreOftenInHoursThan:(double)than name:(id)name activityBlock:(id)block
{
  v7 = than * 60.0 * 60.0;
  blockCopy = block;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:0 throttleBlock:v7];
}

- (void)performNoMoreOftenInHoursThan:(double)than name:(id)name activityBlock:(id)block throttleBlock:(id)throttleBlock
{
  v9 = than * 60.0 * 60.0;
  throttleBlockCopy = throttleBlock;
  blockCopy = block;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:throttleBlockCopy throttleBlock:v9];
}

- (void)performNoMoreOftenInDaysThan:(double)than name:(id)name activityBlock:(id)block
{
  v7 = than * 24.0 * 60.0 * 60.0;
  blockCopy = block;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:0 throttleBlock:v7];
}

- (void)performNoMoreOftenInDaysThan:(double)than name:(id)name activityBlock:(id)block throttleBlock:(id)throttleBlock
{
  v9 = than * 24.0 * 60.0 * 60.0;
  throttleBlockCopy = throttleBlock;
  blockCopy = block;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performNoMoreOftenInSecondsThan:nameCopy name:blockCopy activityBlock:throttleBlockCopy throttleBlock:v9];
}

- (void)performWithMinimumIntervalInSecondsOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performOrScheduleWithTimeInterval:nameCopy name:queueCopy queue:blockCopy activityBlock:0 callDepth:of];
}

- (void)performWithMinimumIntervalInMinutesOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block
{
  v9 = of * 60.0;
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performOrScheduleWithTimeInterval:nameCopy name:queueCopy queue:blockCopy activityBlock:0 callDepth:v9];
}

- (void)performWithMinimumIntervalInHoursOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block
{
  v9 = of * 60.0 * 60.0;
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performOrScheduleWithTimeInterval:nameCopy name:queueCopy queue:blockCopy activityBlock:0 callDepth:v9];
}

- (void)performWithMinimumIntervalInDaysOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block
{
  v9 = of * 24.0 * 60.0 * 60.0;
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performOrScheduleWithTimeInterval:nameCopy name:queueCopy queue:blockCopy activityBlock:0 callDepth:v9];
}

- (void)performWithDelayInSecondsOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performWithDelayInSecondsOf:nameCopy name:queueCopy queue:blockCopy activityBlock:of];
}

- (void)performWithDelayInMinutesOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block
{
  v9 = of * 60.0;
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performWithDelayInSecondsOf:nameCopy name:queueCopy queue:blockCopy activityBlock:v9];
}

- (void)performWithDelayInHoursOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block
{
  v9 = of * 60.0 * 60.0;
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performWithDelayInSecondsOf:nameCopy name:queueCopy queue:blockCopy activityBlock:v9];
}

- (void)performWithDelayInDaysOf:(double)of name:(id)name queue:(id)queue activityBlock:(id)block
{
  v9 = of * 24.0 * 60.0 * 60.0;
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler _performWithDelayInSecondsOf:nameCopy name:queueCopy queue:blockCopy activityBlock:v9];
}

- (id)description
{
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ %p: %@>", v6, self, activityThrottler];

  return v7;
}

- (void)clearHistoryForName:(id)name
{
  nameCopy = name;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)activityThrottler clearHistoryForName:nameCopy];
}

- (void)setDate:(id)date forName:(id)name
{
  nameCopy = name;
  dateCopy = date;
  activityThrottler = [(_DKThrottledActivity *)self activityThrottler];
  v8 = [(_DKActivityThrottler *)activityThrottler keyForName:nameCopy];

  [(_DKActivityThrottler *)activityThrottler setDate:dateCopy forKey:v8];
}

@end