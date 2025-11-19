@interface HMFMutableThreadSafeDictionary
+ (id)threadSafeDictionary;
- (HMFMutableThreadSafeDictionary)initWithDictionary:(id)a3;
- (NSArray)allKeys;
- (NSArray)allValues;
- (NSDictionary)rawDictionarySnapshot;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyEnumerator;
- (id)objectEnumerator;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (unint64_t)count;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation HMFMutableThreadSafeDictionary

+ (id)threadSafeDictionary
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (HMFMutableThreadSafeDictionary)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMFMutableThreadSafeDictionary;
  v5 = [(HMFMutableThreadSafeDictionary *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 mutableCopy];
    dictionary = v6->_dictionary;
    v6->_dictionary = v7;
  }

  return v6;
}

- (unint64_t)count
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_dictionary count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSArray)allKeys
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_dictionary allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)allValues
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_dictionary allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_dictionary objectsForKeys:v6 notFoundMarker:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_dictionary setObject:v7 forKey:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_dictionary setObject:v7 forKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_dictionary removeObjectsForKeys:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)keyEnumerator
{
  v2 = [(HMFMutableThreadSafeDictionary *)self rawDictionarySnapshot];
  v3 = [v2 keyEnumerator];

  return v3;
}

- (id)objectEnumerator
{
  v2 = [(HMFMutableThreadSafeDictionary *)self rawDictionarySnapshot];
  v3 = [v2 objectEnumerator];

  return v3;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(HMFMutableThreadSafeDictionary *)self rawDictionarySnapshot];
  [v7 enumerateKeysAndObjectsWithOptions:a3 usingBlock:v6];
}

- (NSDictionary)rawDictionarySnapshot
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_dictionary copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMFMutableThreadSafeDictionary alloc];
  v5 = [(HMFMutableThreadSafeDictionary *)self rawDictionarySnapshot];
  v6 = [(HMFMutableThreadSafeDictionary *)v4 initWithDictionary:v5];

  return v6;
}

@end