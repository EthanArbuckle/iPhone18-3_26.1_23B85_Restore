@interface MTScheduler
+ (id)globalAsyncSchedulerWithPriority:(unsigned int)priority;
+ (id)serialSchedulerForObject:(id)object;
+ (id)serialSchedulerWithName:(id)name;
+ (id)serialSchedulerWithName:(id)name priority:(unsigned int)priority;
+ (id)serialSchedulerWithQueue:(id)queue;
@end

@implementation MTScheduler

+ (id)serialSchedulerWithName:(id)name priority:(unsigned int)priority
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, priority, -1);
  v6 = dispatch_queue_create([name UTF8String], v5);
  v7 = [MTScheduler serialSchedulerWithQueue:v6];

  return v7;
}

+ (id)serialSchedulerWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[_MTSerialQueueScheduler alloc] initWithQueue:queueCopy];

  return v4;
}

+ (id)serialSchedulerWithName:(id)name
{
  nameCopy = name;
  v6 = dispatch_queue_create([name UTF8String], 0);
  v7 = [self serialSchedulerWithQueue:v6];

  return v7;
}

+ (id)serialSchedulerForObject:(id)object
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@.serial", objc_opt_class()];
  v5 = [self serialSchedulerWithName:v4];

  return v5;
}

+ (id)globalAsyncSchedulerWithPriority:(unsigned int)priority
{
  v4 = [_MTSerialQueueScheduler alloc];
  v5 = dispatch_get_global_queue(priority, 0);
  v6 = [(_MTSerialQueueScheduler *)v4 initWithQueue:v5];

  return v6;
}

@end