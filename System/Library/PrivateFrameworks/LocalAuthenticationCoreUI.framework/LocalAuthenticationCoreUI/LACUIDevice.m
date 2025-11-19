@interface LACUIDevice
+ (LACUIDevice)sharedInstance;
- (BOOL)isDynamicIslandAvailable;
@end

@implementation LACUIDevice

+ (LACUIDevice)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LACUIDevice sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __29__LACUIDevice_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isDynamicIslandAvailable
{
  if (SBUIIsSystemApertureEnabled())
  {
    v2 = [MEMORY[0x277D24050] sharedInstance];
    v3 = [v2 isClarityBoardRunning] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

@end