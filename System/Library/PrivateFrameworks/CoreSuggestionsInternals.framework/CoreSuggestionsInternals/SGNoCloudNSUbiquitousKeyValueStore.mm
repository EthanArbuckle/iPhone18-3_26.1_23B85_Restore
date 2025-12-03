@interface SGNoCloudNSUbiquitousKeyValueStore
- (SGNoCloudNSUbiquitousKeyValueStore)init;
- (id)arrayForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)setArray:(id)array forKey:(id)key;
- (void)setData:(id)data forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SGNoCloudNSUbiquitousKeyValueStore

- (void)setArray:(id)array forKey:(id)key
{
  keyCopy = key;
  arrayCopy = array;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_kv setObject:arrayCopy forKeyedSubscript:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (void)setData:(id)data forKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_kv setObject:dataCopy forKeyedSubscript:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_kv setObject:objectCopy forKeyedSubscript:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_kv objectForKeyedSubscript:keyCopy];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_kv objectForKeyedSubscript:keyCopy];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_kv objectForKeyedSubscript:keyCopy];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = SGNoCloudNSUbiquitousKeyValueStore;
  [(SGNoCloudNSUbiquitousKeyValueStore *)&v3 dealloc];
}

- (SGNoCloudNSUbiquitousKeyValueStore)init
{
  v6.receiver = self;
  v6.super_class = SGNoCloudNSUbiquitousKeyValueStore;
  v2 = [(SGNoCloudNSUbiquitousKeyValueStore *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    kv = v2->_kv;
    v2->_kv = v3;

    pthread_mutex_init(&v2->_lock, 0);
  }

  return v2;
}

@end