@interface BKDeviceDescriptor
+ (id)deviceDescriptorForType:(int64_t)a3;
+ (void)initialize;
@end

@implementation BKDeviceDescriptor

+ (void)initialize
{
  if (initializeOSLog_onceToken != -1)
  {
    +[BKDeviceDescriptor initialize];
  }
}

+ (id)deviceDescriptorForType:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setType:a3];

  return v4;
}

@end