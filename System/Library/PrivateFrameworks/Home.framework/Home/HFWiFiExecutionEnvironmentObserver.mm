@interface HFWiFiExecutionEnvironmentObserver
- (HFExecutionEnvironment)environment;
- (HFHomeKitDispatcher)dispatcher;
- (HFWiFiExecutionEnvironmentObserver)initWithExecutionEnvironment:(id)environment dispatcher:(id)dispatcher;
- (void)_updateState;
- (void)dealloc;
@end

@implementation HFWiFiExecutionEnvironmentObserver

- (HFWiFiExecutionEnvironmentObserver)initWithExecutionEnvironment:(id)environment dispatcher:(id)dispatcher
{
  environmentCopy = environment;
  dispatcherCopy = dispatcher;
  v11.receiver = self;
  v11.super_class = HFWiFiExecutionEnvironmentObserver;
  v8 = [(HFWiFiExecutionEnvironmentObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeWeak(&v9->_dispatcher, dispatcherCopy);
    [(HFWiFiExecutionEnvironmentObserver *)v9 _updateState];
    [environmentCopy addObserver:v9];
    [dispatcherCopy addHomeManagerObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  dispatcher = [(HFWiFiExecutionEnvironmentObserver *)self dispatcher];
  [dispatcher removeHomeManagerObserver:self];

  environment = [(HFWiFiExecutionEnvironmentObserver *)self environment];
  [environment removeObserver:self];

  v5.receiver = self;
  v5.super_class = HFWiFiExecutionEnvironmentObserver;
  [(HFWiFiExecutionEnvironmentObserver *)&v5 dealloc];
}

- (void)_updateState
{
  dispatcher = [(HFWiFiExecutionEnvironmentObserver *)self dispatcher];
  home = [dispatcher home];

  if (home || ([(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    lastKnownHome = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome];

    lastKnownRunningState = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownRunningState];
    environment = [(HFWiFiExecutionEnvironmentObserver *)self environment];
    runningState = [environment runningState];

    if (home == lastKnownHome)
    {
      if (lastKnownRunningState == runningState)
      {
        goto LABEL_11;
      }
    }

    else
    {
      lastKnownHome2 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome];
      [lastKnownHome2 stopDiscoveringSymptomsForNearbyDevices];

      [(HFWiFiExecutionEnvironmentObserver *)self setLastKnownHome:home];
    }

    environment2 = [(HFWiFiExecutionEnvironmentObserver *)self environment];
    -[HFWiFiExecutionEnvironmentObserver setLastKnownRunningState:](self, "setLastKnownRunningState:", [environment2 runningState]);

    lastKnownRunningState2 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownRunningState];
    if (lastKnownRunningState2)
    {
      if (lastKnownRunningState2 != 1)
      {
        goto LABEL_11;
      }

      lastKnownHome3 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome];
      [lastKnownHome3 stopDiscoveringSymptomsForNearbyDevices];
    }

    else
    {
      lastKnownHome3 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome];
      [lastKnownHome3 startDiscoveringSymptomsForNearbyDevices];
    }
  }

LABEL_11:
}

- (HFExecutionEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HFHomeKitDispatcher)dispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatcher);

  return WeakRetained;
}

@end