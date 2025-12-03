@interface HMFMutableThreadSafeDictionary
+ (id)threadSafeDictionary;
- (HMFMutableThreadSafeDictionary)initWithDictionary:(id)dictionary;
- (NSArray)allKeys;
- (NSArray)allValues;
- (NSDictionary)rawDictionarySnapshot;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyEnumerator;
- (id)objectEnumerator;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker;
- (unint64_t)count;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation HMFMutableThreadSafeDictionary

+ (id)threadSafeDictionary
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (HMFMutableThreadSafeDictionary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = HMFMutableThreadSafeDictionary;
  v5 = [(HMFMutableThreadSafeDictionary *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [dictionaryCopy mutableCopy];
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
  allKeys = [(NSMutableDictionary *)self->_dictionary allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (NSArray)allValues
{
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_dictionary allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:keyCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:subscriptCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker
{
  keysCopy = keys;
  markerCopy = marker;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_dictionary objectsForKeys:keysCopy notFoundMarker:markerCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_dictionary setObject:objectCopy forKey:keyCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_dictionary setObject:objectCopy forKeyedSubscript:subscriptCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:keyCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_dictionary removeObjectsForKeys:keysCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)keyEnumerator
{
  rawDictionarySnapshot = [(HMFMutableThreadSafeDictionary *)self rawDictionarySnapshot];
  keyEnumerator = [rawDictionarySnapshot keyEnumerator];

  return keyEnumerator;
}

- (id)objectEnumerator
{
  rawDictionarySnapshot = [(HMFMutableThreadSafeDictionary *)self rawDictionarySnapshot];
  objectEnumerator = [rawDictionarySnapshot objectEnumerator];

  return objectEnumerator;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  rawDictionarySnapshot = [(HMFMutableThreadSafeDictionary *)self rawDictionarySnapshot];
  [rawDictionarySnapshot enumerateKeysAndObjectsWithOptions:options usingBlock:blockCopy];
}

- (NSDictionary)rawDictionarySnapshot
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_dictionary copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMFMutableThreadSafeDictionary alloc];
  rawDictionarySnapshot = [(HMFMutableThreadSafeDictionary *)self rawDictionarySnapshot];
  v6 = [(HMFMutableThreadSafeDictionary *)v4 initWithDictionary:rawDictionarySnapshot];

  return v6;
}

@end