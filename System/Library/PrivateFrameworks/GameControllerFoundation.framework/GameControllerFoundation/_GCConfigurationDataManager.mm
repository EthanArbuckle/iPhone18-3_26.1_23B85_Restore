@interface _GCConfigurationDataManager
- (_GCConfigurationDataManager)init;
- (_GCConfigurationDataManager)initWithProvider:(id)provider;
- (id)configurationBundleLocatorForType:(id)type;
- (id)serviceFor:(id)for client:(id)client;
@end

@implementation _GCConfigurationDataManager

- (_GCConfigurationDataManager)initWithProvider:(id)provider
{
  v10.receiver = self;
  v10.super_class = _GCConfigurationDataManager;
  providerCopy = provider;
  v4 = [(_GCConfigurationDataManager *)&v10 init];
  objc_storeWeak(&v4->_provider, providerCopy);

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

- (id)configurationBundleLocatorForType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_locators objectForKey:typeCopy];
  if (!v6)
  {
    v6 = [[_GCConfigurationBundleLocator alloc] initWithConfigurationType:typeCopy provider:selfCopy];
    [(NSMutableDictionary *)selfCopy->_locators setObject:v6 forKey:typeCopy];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)serviceFor:(id)for client:(id)client
{
  if (&unk_1F4E42070 == for)
  {
    v9 = self->_workloop;
  }

  else
  {
    clientCopy = client;
    forCopy = for;
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    v9 = [WeakRetained serviceFor:forCopy client:clientCopy];
  }

  return v9;
}

@end