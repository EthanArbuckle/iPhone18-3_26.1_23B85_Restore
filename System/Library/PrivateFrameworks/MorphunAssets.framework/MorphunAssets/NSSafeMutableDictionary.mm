@interface NSSafeMutableDictionary
- (NSSafeMutableDictionary)init;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation NSSafeMutableDictionary

- (NSSafeMutableDictionary)init
{
  v8.receiver = self;
  v8.super_class = NSSafeMutableDictionary;
  v2 = [(NSSafeMutableDictionary *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    storage = v2->_storage;
    v2->_storage = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v5;
  }

  return v2;
}

- (void)removeAllObjects
{
  [(NSLock *)self->_lock lock];
  [(NSMutableDictionary *)self->_storage removeAllObjects];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)removeObjectForKey:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  [(NSMutableDictionary *)self->_storage removeObjectForKey:v5];

  v6 = self->_lock;

  [(NSLock *)v6 unlock];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  lock = self->_lock;
  v7 = a4;
  v8 = a3;
  [(NSLock *)lock lock];
  [(NSMutableDictionary *)self->_storage setObject:v8 forKey:v7];

  v9 = self->_lock;

  [(NSLock *)v9 unlock];
}

- (id)objectForKey:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  v6 = [(NSMutableDictionary *)self->_storage objectForKey:v5];

  [(NSLock *)self->_lock unlock];

  return v6;
}

- (unint64_t)count
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_storage count];
  [(NSLock *)self->_lock unlock];
  return v3;
}

@end