@interface IFDeviceInfo
+ (id)sharedInstance;
- (IFDeviceInfo)init;
@end

@implementation IFDeviceInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[IFDeviceInfo sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __30__IFDeviceInfo_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(IFDeviceInfo);

  return MEMORY[0x1EEE66BB8]();
}

- (IFDeviceInfo)init
{
  v5.receiver = self;
  v5.super_class = IFDeviceInfo;
  v2 = [(IFDeviceInfo *)&v5 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    v2->_deviceClass = [v3 intValue];
  }

  return v2;
}

@end