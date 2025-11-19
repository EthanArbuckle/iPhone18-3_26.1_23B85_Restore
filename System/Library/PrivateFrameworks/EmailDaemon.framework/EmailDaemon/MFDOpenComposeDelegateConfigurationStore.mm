@interface MFDOpenComposeDelegateConfigurationStore
+ (MFDOpenComposeDelegateConfigurationStore)sharedStore;
- (id)_init;
- (id)consumeConfigurationWithIdentifier:(id)a3;
- (void)registerConfiguration:(id)a3;
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

- (void)registerConfiguration:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  configurations = self->_configurations;
  if (!configurations)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = self->_configurations;
    self->_configurations = v5;

    configurations = self->_configurations;
  }

  v7 = [v8 identifier];
  [(NSMutableDictionary *)configurations setObject:v8 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)consumeConfigurationWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_configurations objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_configurations setObject:0 forKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

@end