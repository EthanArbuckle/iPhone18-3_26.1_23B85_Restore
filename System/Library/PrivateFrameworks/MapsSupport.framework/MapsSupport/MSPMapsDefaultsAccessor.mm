@interface MSPMapsDefaultsAccessor
+ (id)get:(id)get;
+ (id)sharedInstance;
+ (void)set:(id)set value:(id)value;
+ (void)synchronize;
- (MSPMapsDefaultsAccessor)init;
- (id)_get:(id)_get;
- (void)_set:(id)_set value:(id)value;
- (void)_synchronize;
@end

@implementation MSPMapsDefaultsAccessor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MSPMapsDefaultsAccessor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    mEMORY[0x277D0EB48] = [MEMORY[0x277D0EB48] sharedObject];
    v2->_protectedDataAvailable = [mEMORY[0x277D0EB48] addDataDidBecomeAvailableAfterFirstUnlockObserver:v2] ^ 1;
  }

  return v2;
}

- (id)_get:(id)_get
{
  if (self->_protectedDataAvailable)
  {
    _getCopy = _get;
    v4 = +[MSPMapsPaths mapsApplicationContainerPaths];
    groupDirectory = [v4 groupDirectory];
    v6 = _CFPreferencesCopyAppValueWithContainer();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_set:(id)_set value:(id)value
{
  if (self->_protectedDataAvailable)
  {
    valueCopy = value;
    _setCopy = _set;
    v9 = +[MSPMapsPaths mapsApplicationContainerPaths];
    groupDirectory = [v9 groupDirectory];
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
    groupDirectory = [v6 groupDirectory];
    _CFPreferencesSynchronizeWithContainer();
  }
}

+ (id)get:(id)get
{
  getCopy = get;
  sharedInstance = [self sharedInstance];
  v6 = [sharedInstance _get:getCopy];

  return v6;
}

+ (void)set:(id)set value:(id)value
{
  valueCopy = value;
  setCopy = set;
  sharedInstance = [self sharedInstance];
  [sharedInstance _set:setCopy value:valueCopy];
}

+ (void)synchronize
{
  sharedInstance = [self sharedInstance];
  [sharedInstance _synchronize];
}

@end