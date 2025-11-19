@interface MSPMapsDefaultsAccessor
+ (id)get:(id)a3;
+ (id)sharedInstance;
+ (void)set:(id)a3 value:(id)a4;
+ (void)synchronize;
- (MSPMapsDefaultsAccessor)init;
- (id)_get:(id)a3;
- (void)_set:(id)a3 value:(id)a4;
- (void)_synchronize;
@end

@implementation MSPMapsDefaultsAccessor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MSPMapsDefaultsAccessor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __41__MSPMapsDefaultsAccessor_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MSPMapsDefaultsAccessor)init
{
  v5.receiver = self;
  v5.super_class = MSPMapsDefaultsAccessor;
  v2 = [(MSPMapsDefaultsAccessor *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D0EB48] sharedObject];
    v2->_protectedDataAvailable = [v3 addDataDidBecomeAvailableAfterFirstUnlockObserver:v2] ^ 1;
  }

  return v2;
}

- (id)_get:(id)a3
{
  if (self->_protectedDataAvailable)
  {
    v3 = a3;
    v4 = +[MSPMapsPaths mapsApplicationContainerPaths];
    v5 = [v4 groupDirectory];
    v6 = _CFPreferencesCopyAppValueWithContainer();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_set:(id)a3 value:(id)a4
{
  if (self->_protectedDataAvailable)
  {
    v6 = a4;
    v7 = a3;
    v9 = +[MSPMapsPaths mapsApplicationContainerPaths];
    v8 = [v9 groupDirectory];
    _CFPreferencesSetAppValueWithContainer();
  }
}

- (void)_synchronize
{
  if (self->_protectedDataAvailable)
  {
    v3 = *MEMORY[0x277CBF040];
    v4 = *MEMORY[0x277CBF010];
    v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
    v5 = [v6 groupDirectory];
    _CFPreferencesSynchronizeWithContainer();
  }
}

+ (id)get:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedInstance];
  v6 = [v5 _get:v4];

  return v6;
}

+ (void)set:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedInstance];
  [v8 _set:v7 value:v6];
}

+ (void)synchronize
{
  v2 = [a1 sharedInstance];
  [v2 _synchronize];
}

@end