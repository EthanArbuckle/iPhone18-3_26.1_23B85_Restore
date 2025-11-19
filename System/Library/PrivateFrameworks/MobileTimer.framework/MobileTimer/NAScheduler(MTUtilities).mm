@interface NAScheduler(MTUtilities)
+ (id)mtSerialSchedulerForObject:()MTUtilities;
@end

@implementation NAScheduler(MTUtilities)

+ (id)mtSerialSchedulerForObject:()MTUtilities
{
  v0 = MEMORY[0x1E69B3790];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@.serial", objc_opt_class()];
  v2 = [v0 serialDispatchQueueSchedulerWithName:v1];

  return v2;
}

@end