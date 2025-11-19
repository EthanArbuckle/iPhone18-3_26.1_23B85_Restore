@interface MNNavdStateUpdater
+ (id)sharedUpdater;
- (BOOL)isNavigatingOrPredictingDestination;
- (BOOL)isNavigatingWithETA;
- (id)initPrivate;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation MNNavdStateUpdater

+ (id)sharedUpdater
{
  if (sharedUpdater_s_once != -1)
  {
    dispatch_once(&sharedUpdater_s_once, &__block_literal_global_16350);
  }

  v3 = sharedUpdater_s_singleton;

  return v3;
}

- (BOOL)isNavigatingWithETA
{
  v2 = +[MNNavigationStateManager sharedManager];
  v3 = [v2 currentStateType];

  return ((v3 + 1) > 7) | (0x70u >> (v3 + 1)) & 1;
}

- (BOOL)isNavigatingOrPredictingDestination
{
  v2 = +[MNNavigationStateManager sharedManager];
  if ([v2 currentStateType])
  {
    v3 = +[MNNavigationStateManager sharedManager];
    if ([v3 currentStateType] == 2)
    {
      v4 = 0;
    }

    else
    {
      v5 = +[MNNavigationStateManager sharedManager];
      v4 = [v5 currentStateType] != 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self->_innerObservers;
    objc_sync_enter(v5);
    [(GEOObserverHashTable *)self->_innerObservers unregisterObserver:v7];
    if (![(GEOObserverHashTable *)self->_innerObservers count])
    {
      self->_hasObservers = 0;
      v6 = +[MNNavigationStateManager sharedManager];
      [v6 unregisterObserver:self];
    }

    objc_sync_exit(v5);

    v4 = v7;
  }
}

- (void)registerObserver:(id)a3
{
  v6 = a3;
  v4 = self->_innerObservers;
  objc_sync_enter(v4);
  if (v6)
  {
    [(GEOObserverHashTable *)self->_innerObservers registerObserver:?];
    if (!self->_hasObservers)
    {
      self->_hasObservers = 1;
      v5 = +[MNNavigationStateManager sharedManager];
      [v5 registerObserver:self];
    }
  }

  objc_sync_exit(v4);
}

- (id)initPrivate
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 _navigation_isNavd];

  if (v4)
  {
    v15.receiver = self;
    v15.super_class = MNNavdStateUpdater;
    v5 = [(MNNavdStateUpdater *)&v15 init];
    v6 = v5;
    if (v5)
    {
      v5->_hasObservers = 0;
      v7 = objc_alloc(MEMORY[0x1E69A22D8]);
      v8 = [v7 initWithProtocol:&unk_1F4F22138 queue:MEMORY[0x1E69E96A0]];
      innerObservers = v6->_innerObservers;
      v6->_innerObservers = v8;

      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("MNNavdUpdaterQueue", v10);
      queue = v6->_queue;
      v6->_queue = v11;
    }

    self = v6;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __35__MNNavdStateUpdater_sharedUpdater__block_invoke()
{
  v0 = [[MNNavdStateUpdater alloc] initPrivate];
  v1 = sharedUpdater_s_singleton;
  sharedUpdater_s_singleton = v0;
}

@end