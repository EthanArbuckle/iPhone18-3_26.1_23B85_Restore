@interface BKDeviceDescriptor
+ (id)deviceDescriptorForType:(int64_t)type;
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

+ (id)deviceDescriptorForType:(int64_t)type
{
  v4 = objc_alloc_init(self);
  [v4 setType:type];

  return v4;
}

@end