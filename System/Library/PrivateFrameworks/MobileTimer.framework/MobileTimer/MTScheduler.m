@interface MTScheduler
+ (id)globalAsyncSchedulerWithPriority:(unsigned int)a3;
+ (id)serialSchedulerForObject:(id)a3;
+ (id)serialSchedulerWithName:(id)a3;
+ (id)serialSchedulerWithName:(id)a3 priority:(unsigned int)a4;
+ (id)serialSchedulerWithQueue:(id)a3;
@end

@implementation MTScheduler

+ (id)serialSchedulerWithName:(id)a3 priority:(unsigned int)a4
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, a4, -1);
  v6 = dispatch_queue_create([a3 UTF8String], v5);
  v7 = [MTScheduler serialSchedulerWithQueue:v6];

  return v7;
}

+ (id)serialSchedulerWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[_MTSerialQueueScheduler alloc] initWithQueue:v3];

  return v4;
}

+ (id)serialSchedulerWithName:(id)a3
{
  v5 = a3;
  v6 = dispatch_queue_create([a3 UTF8String], 0);
  v7 = [a1 serialSchedulerWithQueue:v6];

  return v7;
}

+ (id)serialSchedulerForObject:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@.serial", objc_opt_class()];
  v5 = [a1 serialSchedulerWithName:v4];

  return v5;
}

+ (id)globalAsyncSchedulerWithPriority:(unsigned int)a3
{
  v4 = [_MTSerialQueueScheduler alloc];
  v5 = dispatch_get_global_queue(a3, 0);
  v6 = [(_MTSerialQueueScheduler *)v4 initWithQueue:v5];

  return v6;
}

@end