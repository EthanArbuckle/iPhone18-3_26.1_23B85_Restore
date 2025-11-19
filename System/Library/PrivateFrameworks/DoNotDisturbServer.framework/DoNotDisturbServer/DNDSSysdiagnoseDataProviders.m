@interface DNDSSysdiagnoseDataProviders
@end

@implementation DNDSSysdiagnoseDataProviders

uint64_t ___DNDSSysdiagnoseDataProviders_block_invoke()
{
  _sysdiagnoseInProgress = 0;
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.sysdiagnose.statehandler", v0);
  v2 = _sysdiagnoseQueue;
  _sysdiagnoseQueue = v1;

  v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v4 = _DNDSSysdiagnoseDataProviders_sysdiagnoseDataProviders;
  _DNDSSysdiagnoseDataProviders_sysdiagnoseDataProviders = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

@end