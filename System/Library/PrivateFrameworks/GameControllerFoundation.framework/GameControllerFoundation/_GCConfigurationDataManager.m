@interface _GCConfigurationDataManager
- (_GCConfigurationDataManager)init;
- (_GCConfigurationDataManager)initWithProvider:(id)a3;
- (id)configurationBundleLocatorForType:(id)a3;
- (id)serviceFor:(id)a3 client:(id)a4;
@end

@implementation _GCConfigurationDataManager

- (_GCConfigurationDataManager)initWithProvider:(id)a3
{
  v10.receiver = self;
  v10.super_class = _GCConfigurationDataManager;
  v3 = a3;
  v4 = [(_GCConfigurationDataManager *)&v10 init];
  objc_storeWeak(&v4->_provider, v3);

  v5 = dispatch_workloop_create("Workloop.GameController.ConfigurationData");
  workloop = v4->_workloop;
  v4->_workloop = v5;

  v7 = objc_opt_new();
  locators = v4->_locators;
  v4->_locators = v7;

  return v4;
}

- (_GCConfigurationDataManager)init
{
  [(_GCConfigurationDataManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)configurationBundleLocatorForType:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_locators objectForKey:v4];
  if (!v6)
  {
    v6 = [[_GCConfigurationBundleLocator alloc] initWithConfigurationType:v4 provider:v5];
    [(NSMutableDictionary *)v5->_locators setObject:v6 forKey:v4];
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)serviceFor:(id)a3 client:(id)a4
{
  if (&unk_1F4E42070 == a3)
  {
    v9 = self->_workloop;
  }

  else
  {
    v6 = a4;
    v7 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    v9 = [WeakRetained serviceFor:v7 client:v6];
  }

  return v9;
}

@end