@interface HFWiFiExecutionEnvironmentObserver
- (HFExecutionEnvironment)environment;
- (HFHomeKitDispatcher)dispatcher;
- (HFWiFiExecutionEnvironmentObserver)initWithExecutionEnvironment:(id)a3 dispatcher:(id)a4;
- (void)_updateState;
- (void)dealloc;
@end

@implementation HFWiFiExecutionEnvironmentObserver

- (HFWiFiExecutionEnvironmentObserver)initWithExecutionEnvironment:(id)a3 dispatcher:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HFWiFiExecutionEnvironmentObserver;
  v8 = [(HFWiFiExecutionEnvironmentObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, v6);
    objc_storeWeak(&v9->_dispatcher, v7);
    [(HFWiFiExecutionEnvironmentObserver *)v9 _updateState];
    [v6 addObserver:v9];
    [v7 addHomeManagerObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(HFWiFiExecutionEnvironmentObserver *)self dispatcher];
  [v3 removeHomeManagerObserver:self];

  v4 = [(HFWiFiExecutionEnvironmentObserver *)self environment];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HFWiFiExecutionEnvironmentObserver;
  [(HFWiFiExecutionEnvironmentObserver *)&v5 dealloc];
}

- (void)_updateState
{
  v3 = [(HFWiFiExecutionEnvironmentObserver *)self dispatcher];
  v13 = [v3 home];

  if (v13 || ([(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome];

    v6 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownRunningState];
    v7 = [(HFWiFiExecutionEnvironmentObserver *)self environment];
    v8 = [v7 runningState];

    if (v13 == v5)
    {
      if (v6 == v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome];
      [v9 stopDiscoveringSymptomsForNearbyDevices];

      [(HFWiFiExecutionEnvironmentObserver *)self setLastKnownHome:v13];
    }

    v10 = [(HFWiFiExecutionEnvironmentObserver *)self environment];
    -[HFWiFiExecutionEnvironmentObserver setLastKnownRunningState:](self, "setLastKnownRunningState:", [v10 runningState]);

    v11 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownRunningState];
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_11;
      }

      v12 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome];
      [v12 stopDiscoveringSymptomsForNearbyDevices];
    }

    else
    {
      v12 = [(HFWiFiExecutionEnvironmentObserver *)self lastKnownHome];
      [v12 startDiscoveringSymptomsForNearbyDevices];
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