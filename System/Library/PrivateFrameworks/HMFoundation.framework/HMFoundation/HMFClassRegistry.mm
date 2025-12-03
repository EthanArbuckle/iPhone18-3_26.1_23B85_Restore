@interface HMFClassRegistry
- (Class)classForKey:(id)key;
- (HMFClassRegistry)initWithDefaultClass:(Class)class;
- (void)setClass:(Class)class forKey:(id)key;
@end

@implementation HMFClassRegistry

- (HMFClassRegistry)initWithDefaultClass:(Class)class
{
  v8.receiver = self;
  v8.super_class = HMFClassRegistry;
  v4 = [(HMFClassRegistry *)&v8 init];
  if (v4)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    classes = v4->_classes;
    v4->_classes = dictionary;

    objc_storeStrong(&v4->_defaultClass, class);
  }

  return v4;
}

- (Class)classForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_classes objectForKey:keyCopy];
  defaultClass = v5;
  if (!v5)
  {
    defaultClass = self->_defaultClass;
  }

  v7 = defaultClass;

  os_unfair_lock_unlock(&self->_lock.lock);

  return v7;
}

- (void)setClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  classes = self->_classes;
  if (class)
  {
    [(NSMutableDictionary *)classes setObject:class forKey:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)classes removeObjectForKey:keyCopy];
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

@end