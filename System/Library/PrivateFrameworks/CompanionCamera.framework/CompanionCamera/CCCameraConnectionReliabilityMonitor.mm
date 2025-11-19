@interface CCCameraConnectionReliabilityMonitor
+ (id)sharedInstance;
- (CCCameraConnectionReliabilityMonitor)init;
- (void)didConnect;
- (void)incrementInstanceCount;
@end

@implementation CCCameraConnectionReliabilityMonitor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CCCameraConnectionReliabilityMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __54__CCCameraConnectionReliabilityMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CCCameraConnectionReliabilityMonitor)init
{
  v6.receiver = self;
  v6.super_class = CCCameraConnectionReliabilityMonitor;
  v2 = [(CCCameraConnectionReliabilityMonitor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_instanceCount = 0;
    lastConnectTime = v2->_lastConnectTime;
    v2->_lastConnectTime = 0;
  }

  return v3;
}

- (void)incrementInstanceCount
{
  if (self->_instanceCount)
  {
    [ViewfinderErrorReporter report:102 status:0];
    v3 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CCCameraConnectionReliabilityMonitor_incrementInstanceCount__block_invoke;
    block[3] = &unk_278DEF1D0;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
    v4 = self->_instanceCount + 1;
  }

  else
  {
    v4 = 1;
  }

  self->_instanceCount = v4;
}

- (void)didConnect
{
  if (!self->_isConnected)
  {
    lastConnectTime = self->_lastConnectTime;
    if (lastConnectTime)
    {
      [(NSDate *)lastConnectTime timeIntervalSinceNow];
      if (v4 > -0.8)
      {
        [ViewfinderErrorReporter report:101 status:0];
      }
    }
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = self->_lastConnectTime;
  self->_lastConnectTime = v5;

  self->_isConnected = 1;
}

uint64_t __62__CCCameraConnectionReliabilityMonitor_incrementInstanceCount__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) >= 2u)
  {
    return [ViewfinderErrorReporter report:103 status:0];
  }

  return result;
}

@end