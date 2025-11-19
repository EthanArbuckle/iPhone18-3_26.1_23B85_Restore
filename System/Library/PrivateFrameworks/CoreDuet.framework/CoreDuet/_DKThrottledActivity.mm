@interface _DKThrottledActivity
+ (id)standardInstance;
- (_DKThrottledActivity)initWithStore:(id)a3 namespace:(id)a4;
- (id)activityThrottler;
- (id)description;
- (void)clearHistoryForName:(id)a3;
- (void)performNoMoreOftenInDaysThan:(double)a3 name:(id)a4 activityBlock:(id)a5;
- (void)performNoMoreOftenInDaysThan:(double)a3 name:(id)a4 activityBlock:(id)a5 throttleBlock:(id)a6;
- (void)performNoMoreOftenInHoursThan:(double)a3 name:(id)a4 activityBlock:(id)a5;
- (void)performNoMoreOftenInHoursThan:(double)a3 name:(id)a4 activityBlock:(id)a5 throttleBlock:(id)a6;
- (void)performNoMoreOftenInMinutesThan:(double)a3 name:(id)a4 activityBlock:(id)a5;
- (void)performNoMoreOftenInMinutesThan:(double)a3 name:(id)a4 activityBlock:(id)a5 throttleBlock:(id)a6;
- (void)performNoMoreOftenInMinutesThan:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6 throttleBlock:(id)a7;
- (void)performNoMoreOftenInSecondsThan:(double)a3 name:(id)a4 activityBlock:(id)a5;
- (void)performNoMoreOftenInSecondsThan:(double)a3 name:(id)a4 activityBlock:(id)a5 throttleBlock:(id)a6;
- (void)performWithDelayInDaysOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6;
- (void)performWithDelayInHoursOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6;
- (void)performWithDelayInMinutesOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6;
- (void)performWithDelayInSecondsOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6;
- (void)performWithMinimumIntervalInDaysOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6;
- (void)performWithMinimumIntervalInHoursOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6;
- (void)performWithMinimumIntervalInMinutesOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6;
- (void)performWithMinimumIntervalInSecondsOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6;
- (void)setDate:(id)a3 forName:(id)a4;
@end

@implementation _DKThrottledActivity

+ (id)standardInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___DKThrottledActivity_standardInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (standardInstance_initialized != -1)
  {
    dispatch_once(&standardInstance_initialized, block);
  }

  v2 = standardInstance_standardInstance;

  return v2;
}

- (id)activityThrottler
{
  if (a1)
  {
    if (activityThrottler_initialized != -1)
    {
      [_DKThrottledActivity activityThrottler];
    }

    v2 = activityThrottler_sharedInstances;
    objc_sync_enter(v2);
    v3 = [activityThrottler_sharedInstances objectForKeyedSubscript:*(a1 + 8)];
    if (!v3)
    {
      v3 = [[_DKActivityThrottler alloc] initWithStore:?];
      [activityThrottler_sharedInstances setObject:v3 forKeyedSubscript:*(a1 + 8)];
    }

    objc_sync_exit(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_DKThrottledActivity)initWithStore:(id)a3 namespace:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DKThrottledActivity;
  v9 = [(_DKThrottledActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    objc_storeStrong(&v10->_namespace, a4);
  }

  return v10;
}

- (void)performNoMoreOftenInSecondsThan:(double)a3 name:(id)a4 activityBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v10 _performNoMoreOftenInSecondsThan:v9 name:v8 activityBlock:0 throttleBlock:a3];
}

- (void)performNoMoreOftenInSecondsThan:(double)a3 name:(id)a4 activityBlock:(id)a5 throttleBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performNoMoreOftenInSecondsThan:v12 name:v11 activityBlock:v10 throttleBlock:a3];
}

- (void)performNoMoreOftenInMinutesThan:(double)a3 name:(id)a4 activityBlock:(id)a5
{
  v7 = a3 * 60.0;
  v8 = a5;
  v9 = a4;
  v10 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v10 _performNoMoreOftenInSecondsThan:v9 name:v8 activityBlock:0 throttleBlock:v7];
}

- (void)performNoMoreOftenInMinutesThan:(double)a3 name:(id)a4 activityBlock:(id)a5 throttleBlock:(id)a6
{
  v9 = a3 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performNoMoreOftenInSecondsThan:v12 name:v11 activityBlock:v10 throttleBlock:v9];
}

- (void)performNoMoreOftenInMinutesThan:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6 throttleBlock:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3 * 60.0;
  v17 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v17 _performNoMoreOftenInSecondsThan:v12 name:v14 activityBlock:v15 throttleBlock:v16];
  v18 = dispatch_get_current_queue();

  if (v18 == v13)
  {
    [(_DKActivityThrottler *)v17 _performNoMoreOftenInSecondsThan:v12 name:v14 activityBlock:v15 throttleBlock:v16];
  }

  else
  {
    [v12 UTF8String];
    v19 = os_transaction_create();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95___DKThrottledActivity_performNoMoreOftenInMinutesThan_name_queue_activityBlock_throttleBlock___block_invoke;
    v21[3] = &unk_1E73699C0;
    v22 = v17;
    v27 = v16;
    v23 = v12;
    v25 = v14;
    v26 = v15;
    v24 = v19;
    v20 = v19;
    dispatch_async(v13, v21);
  }
}

- (void)performNoMoreOftenInHoursThan:(double)a3 name:(id)a4 activityBlock:(id)a5
{
  v7 = a3 * 60.0 * 60.0;
  v8 = a5;
  v9 = a4;
  v10 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v10 _performNoMoreOftenInSecondsThan:v9 name:v8 activityBlock:0 throttleBlock:v7];
}

- (void)performNoMoreOftenInHoursThan:(double)a3 name:(id)a4 activityBlock:(id)a5 throttleBlock:(id)a6
{
  v9 = a3 * 60.0 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performNoMoreOftenInSecondsThan:v12 name:v11 activityBlock:v10 throttleBlock:v9];
}

- (void)performNoMoreOftenInDaysThan:(double)a3 name:(id)a4 activityBlock:(id)a5
{
  v7 = a3 * 24.0 * 60.0 * 60.0;
  v8 = a5;
  v9 = a4;
  v10 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v10 _performNoMoreOftenInSecondsThan:v9 name:v8 activityBlock:0 throttleBlock:v7];
}

- (void)performNoMoreOftenInDaysThan:(double)a3 name:(id)a4 activityBlock:(id)a5 throttleBlock:(id)a6
{
  v9 = a3 * 24.0 * 60.0 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performNoMoreOftenInSecondsThan:v12 name:v11 activityBlock:v10 throttleBlock:v9];
}

- (void)performWithMinimumIntervalInSecondsOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performOrScheduleWithTimeInterval:v12 name:v11 queue:v10 activityBlock:0 callDepth:a3];
}

- (void)performWithMinimumIntervalInMinutesOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6
{
  v9 = a3 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performOrScheduleWithTimeInterval:v12 name:v11 queue:v10 activityBlock:0 callDepth:v9];
}

- (void)performWithMinimumIntervalInHoursOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6
{
  v9 = a3 * 60.0 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performOrScheduleWithTimeInterval:v12 name:v11 queue:v10 activityBlock:0 callDepth:v9];
}

- (void)performWithMinimumIntervalInDaysOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6
{
  v9 = a3 * 24.0 * 60.0 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performOrScheduleWithTimeInterval:v12 name:v11 queue:v10 activityBlock:0 callDepth:v9];
}

- (void)performWithDelayInSecondsOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performWithDelayInSecondsOf:v12 name:v11 queue:v10 activityBlock:a3];
}

- (void)performWithDelayInMinutesOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6
{
  v9 = a3 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performWithDelayInSecondsOf:v12 name:v11 queue:v10 activityBlock:v9];
}

- (void)performWithDelayInHoursOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6
{
  v9 = a3 * 60.0 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performWithDelayInSecondsOf:v12 name:v11 queue:v10 activityBlock:v9];
}

- (void)performWithDelayInDaysOf:(double)a3 name:(id)a4 queue:(id)a5 activityBlock:(id)a6
{
  v9 = a3 * 24.0 * 60.0 * 60.0;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v13 _performWithDelayInSecondsOf:v12 name:v11 queue:v10 activityBlock:v9];
}

- (id)description
{
  v3 = [(_DKThrottledActivity *)self activityThrottler];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ %p: %@>", v6, self, v3];

  return v7;
}

- (void)clearHistoryForName:(id)a3
{
  v4 = a3;
  v5 = [(_DKThrottledActivity *)self activityThrottler];
  [(_DKActivityThrottler *)v5 clearHistoryForName:v4];
}

- (void)setDate:(id)a3 forName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(_DKThrottledActivity *)self activityThrottler];
  v8 = [(_DKActivityThrottler *)v9 keyForName:v6];

  [(_DKActivityThrottler *)v9 setDate:v7 forKey:v8];
}

@end