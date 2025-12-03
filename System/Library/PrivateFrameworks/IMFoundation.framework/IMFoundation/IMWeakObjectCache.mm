@interface IMWeakObjectCache
+ (id)sharedInstance;
- (IMWeakObjectCache)init;
- (id)copyObjectForKey:(id)key;
- (id)copyOrSetObject:(id)object forKey:(id)key;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)removeObject:(id)object key:(id)key;
@end

@implementation IMWeakObjectCache

+ (id)sharedInstance
{
  if (qword_1ED517610 != -1)
  {
    sub_1959D4EB8();
  }

  v3 = qword_1ED5175C8;

  return v3;
}

- (IMWeakObjectCache)init
{
  v5.receiver = self;
  v5.super_class = IMWeakObjectCache;
  v2 = [(IMWeakObjectCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_tableLock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_tableLock);
  v3.receiver = self;
  v3.super_class = IMWeakObjectCache;
  [(IMWeakObjectCache *)&v3 dealloc];
}

- (id)copyOrSetObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v8 = keyCopy;
  v9 = 0;
  if (objectCopy && keyCopy)
  {
    pthread_mutex_lock(&self->_tableLock);
    weakObjectCache = self->_weakObjectCache;
    if (!weakObjectCache)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v13 = self->_weakObjectCache;
      self->_weakObjectCache = Mutable;

      weakObjectCache = self->_weakObjectCache;
    }

    v14 = objc_msgSend_objectForKey_(weakObjectCache, v10, v8);
    v17 = v14;
    if (v14)
    {
      v18 = objc_msgSend_copyObject(v14, v15, v16);
      if (v18)
      {
        v9 = v18;
        pthread_mutex_unlock(&self->_tableLock);
LABEL_10:

        goto LABEL_11;
      }

      objc_msgSend_removeObjectForKey_(self->_weakObjectCache, v19, v8);
    }

    v20 = [IMWeakReference alloc];
    inited = objc_msgSend_initRefWithObject_(v20, v21, objectCopy);

    objc_msgSend_setObject_forKey_(self->_weakObjectCache, v23, inited, v8);
    pthread_mutex_unlock(&self->_tableLock);
    v9 = objectCopy;
    v17 = inited;
    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (id)copyObjectForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_tableLock);
  v6 = objc_msgSend_objectForKey_(self->_weakObjectCache, v5, keyCopy);

  v9 = objc_msgSend_copyObject(v6, v7, v8);
  pthread_mutex_unlock(&self->_tableLock);

  return v9;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_tableLock);
  v6 = objc_msgSend_objectForKey_(self->_weakObjectCache, v5, keyCopy);

  v9 = objc_msgSend_object(v6, v7, v8);
  pthread_mutex_unlock(&self->_tableLock);

  return v9;
}

- (void)removeObject:(id)object key:(id)key
{
  objectCopy = object;
  keyCopy = key;
  pthread_mutex_lock(&self->_tableLock);
  v8 = objc_msgSend_objectForKey_(self->_weakObjectCache, v7, keyCopy);
  v11 = objc_msgSend_hash(v8, v9, v10);
  v13 = objectCopy;
  if (v11 == objectCopy)
  {
    objc_msgSend_removeObjectForKey_(self->_weakObjectCache, objectCopy, keyCopy);
  }

  if (!objc_msgSend_count(self->_weakObjectCache, v13, v12))
  {
    weakObjectCache = self->_weakObjectCache;
    self->_weakObjectCache = 0;
  }

  pthread_mutex_unlock(&self->_tableLock);
}

@end