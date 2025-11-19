@interface HMFClassRegistry
- (Class)classForKey:(id)a3;
- (HMFClassRegistry)initWithDefaultClass:(Class)a3;
- (void)setClass:(Class)a3 forKey:(id)a4;
@end

@implementation HMFClassRegistry

- (HMFClassRegistry)initWithDefaultClass:(Class)a3
{
  v8.receiver = self;
  v8.super_class = HMFClassRegistry;
  v4 = [(HMFClassRegistry *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    classes = v4->_classes;
    v4->_classes = v5;

    objc_storeStrong(&v4->_defaultClass, a3);
  }

  return v4;
}

- (Class)classForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_classes objectForKey:v4];
  defaultClass = v5;
  if (!v5)
  {
    defaultClass = self->_defaultClass;
  }

  v7 = defaultClass;

  os_unfair_lock_unlock(&self->_lock.lock);

  return v7;
}

- (void)setClass:(Class)a3 forKey:(id)a4
{
  v7 = a4;
  os_unfair_lock_lock_with_options();
  classes = self->_classes;
  if (a3)
  {
    [(NSMutableDictionary *)classes setObject:a3 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)classes removeObjectForKey:v7];
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

@end