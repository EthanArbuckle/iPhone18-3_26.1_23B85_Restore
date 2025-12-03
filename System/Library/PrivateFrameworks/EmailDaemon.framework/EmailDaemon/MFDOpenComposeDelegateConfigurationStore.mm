@interface MFDOpenComposeDelegateConfigurationStore
+ (MFDOpenComposeDelegateConfigurationStore)sharedStore;
- (id)_init;
- (id)consumeConfigurationWithIdentifier:(id)identifier;
- (void)registerConfiguration:(id)configuration;
@end

@implementation MFDOpenComposeDelegateConfigurationStore

+ (MFDOpenComposeDelegateConfigurationStore)sharedStore
{
  if (qword_100185860 != -1)
  {
    sub_1000D4330();
  }

  v3 = qword_100185858;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MFDOpenComposeDelegateConfigurationStore;
  return [(MFDOpenComposeDelegateConfigurationStore *)&v3 init];
}

- (void)registerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  configurations = self->_configurations;
  if (!configurations)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = self->_configurations;
    self->_configurations = v5;

    configurations = self->_configurations;
  }

  identifier = [configurationCopy identifier];
  [(NSMutableDictionary *)configurations setObject:configurationCopy forKeyedSubscript:identifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)consumeConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_configurations objectForKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->_configurations setObject:0 forKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end