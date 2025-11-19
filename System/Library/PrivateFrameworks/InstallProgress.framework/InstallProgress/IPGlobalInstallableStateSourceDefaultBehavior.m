@interface IPGlobalInstallableStateSourceDefaultBehavior
+ (id)sharedInstance;
@end

@implementation IPGlobalInstallableStateSourceDefaultBehavior

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[IPGlobalInstallableStateSourceDefaultBehavior sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

void __63__IPGlobalInstallableStateSourceDefaultBehavior_sharedInstance__block_invoke()
{
  v0 = [IPXPCEventStateUpdateStream alloc];
  v1 = defaultBehaviorQueue();
  v8 = [(IPXPCEventStateUpdateStream *)v0 initWithStreamName:@"com.apple.InstallProgress.events" queue:v1];

  v2 = [(IPXPCEventStateUpdateStream *)v8 source];
  v3 = [IPGlobalInstallableStateSourceDefaultBehavior alloc];
  if (defaultConnectionProvider_onceToken != -1)
  {
    __63__IPGlobalInstallableStateSourceDefaultBehavior_sharedInstance__block_invoke_cold_1();
  }

  v4 = MEMORY[0x259C29600](defaultConnectionProvider_provider);
  v5 = defaultBehaviorQueue();
  v6 = [(IPGlobalInstallableStateSourceXPCBehavior *)v3 initWithXPCConnectionProvider:v4 stateStreamSource:v2 queue:v5];
  v7 = sharedInstance_shared;
  sharedInstance_shared = v6;
}

@end