@interface DEDConstants
+ (id)processName;
@end

@implementation DEDConstants

+ (id)processName
{
  if (processName_onceToken != -1)
  {
    +[DEDConstants processName];
  }

  v3 = processName_processName;

  return v3;
}

void __27__DEDConstants_processName__block_invoke()
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v3 processName];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  objc_storeStrong(&processName_processName, v2);
}

@end