@interface MNTimeManager
+ (NSDate)currentDate;
+ (double)currentTime;
+ (id)sharedManager;
- (MNTimeManager)init;
- (void)_resetToDefaultProvider;
- (void)registerObserver:(id)observer;
- (void)setProvider:(id)provider;
@end

@implementation MNTimeManager

+ (double)currentTime
{
  v2 = +[MNTimeManager sharedManager];
  provider = [v2 provider];
  [provider currentTime];
  v5 = v4;

  return v5;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_18989);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

- (void)_resetToDefaultProvider
{
  provider = self->_provider;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = objc_alloc_init(MNDeviceTimeProvider);
    v5 = self->_provider;
    self->_provider = v4;
  }
}

- (void)setProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    objc_storeStrong(&self->_provider, provider);
  }

  else
  {
    [(MNTimeManager *)self _resetToDefaultProvider];
  }

  [(GEOObserverHashTable *)self->_timeManagerObservers timeManagerDidChangeProvider:self];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  timeManagerObservers = self->_timeManagerObservers;
  v10 = observerCopy;
  if (!timeManagerObservers)
  {
    v6 = objc_alloc(MEMORY[0x1E69A22D8]);
    v7 = MNNavigationQueue();
    v8 = [v6 initWithProtocol:&unk_1F4EF31B8 queue:v7];
    v9 = self->_timeManagerObservers;
    self->_timeManagerObservers = v8;

    observerCopy = v10;
    timeManagerObservers = self->_timeManagerObservers;
  }

  [(GEOObserverHashTable *)timeManagerObservers registerObserver:observerCopy];
}

- (MNTimeManager)init
{
  v5.receiver = self;
  v5.super_class = MNTimeManager;
  v2 = [(MNTimeManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MNDeviceTimeProvider);
    [(MNTimeManager *)v2 setProvider:v3];
  }

  return v2;
}

+ (NSDate)currentDate
{
  v2 = MEMORY[0x1E695DF00];
  [self currentTime];

  return [v2 dateWithTimeIntervalSinceReferenceDate:?];
}

void __30__MNTimeManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MNTimeManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

@end