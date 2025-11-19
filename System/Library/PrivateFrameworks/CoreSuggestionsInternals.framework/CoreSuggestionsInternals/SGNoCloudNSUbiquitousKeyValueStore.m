@interface SGNoCloudNSUbiquitousKeyValueStore
- (SGNoCloudNSUbiquitousKeyValueStore)init;
- (id)arrayForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (void)dealloc;
- (void)setArray:(id)a3 forKey:(id)a4;
- (void)setData:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation SGNoCloudNSUbiquitousKeyValueStore

- (void)setArray:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_kv setObject:v7 forKeyedSubscript:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (void)setData:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_kv setObject:v7 forKeyedSubscript:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_kv setObject:v7 forKeyedSubscript:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_kv objectForKeyedSubscript:v4];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_kv objectForKeyedSubscript:v4];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_kv objectForKeyedSubscript:v4];

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