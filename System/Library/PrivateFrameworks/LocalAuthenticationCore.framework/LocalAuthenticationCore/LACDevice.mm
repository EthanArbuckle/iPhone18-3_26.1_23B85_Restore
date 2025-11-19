@interface LACDevice
+ (LACDevice)sharedInstance;
- (BOOL)isDynamicIslandAvailable;
@end

@implementation LACDevice

+ (LACDevice)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[LACDevice sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_6;

  return v3;
}

uint64_t __27__LACDevice_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_6 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isDynamicIslandAvailable
{
  v3 = SBSIsSystemApertureAvailable();
  if (v3)
  {
    LOBYTE(v3) = ![(LACDevice *)self isClarityBoardRunning];
  }

  return v3;
}

@end