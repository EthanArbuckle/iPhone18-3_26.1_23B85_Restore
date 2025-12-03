@interface _OSLogLRUCache
- (_OSLogLRUCache)initWithName:(id)name maxCount:(unint64_t)count evictionHandler:(id)handler;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)dealloc;
- (void)evictAllEntries;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _OSLogLRUCache

- (void)dealloc
{
  [(_OSLogLRUCache *)self evictAllEntries];
  v3.receiver = self;
  v3.super_class = _OSLogLRUCache;
  [(_OSLogLRUCache *)&v3 dealloc];
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(_OSLogLRUCache *)self mruItems];
  v4 = [mruItems count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  [(_OSLogLRUCache *)self evictAllEntries];
  storage = [(_OSLogLRUCache *)self storage];
  [storage removeAllObjects];

  mruItems = [(_OSLogLRUCache *)self mruItems];
  [mruItems removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)evictAllEntries
{
  v21 = *MEMORY[0x277D85DE8];
  evictionHandler = [(_OSLogLRUCache *)self evictionHandler];

  if (evictionHandler)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    storage = [(_OSLogLRUCache *)self storage];
    v5 = [storage countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v17;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(storage);
          }

          v11 = *(*(&v16 + 1) + 8 * v9);
          storage2 = [(_OSLogLRUCache *)self storage];
          v7 = [storage2 objectForKeyedSubscript:v11];

          data = [v7 data];
          evictionHandler2 = [(_OSLogLRUCache *)self evictionHandler];
          (evictionHandler2)[2](evictionHandler2, v11, data);

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [storage countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setObject:(id)object forKey:(id)key
{
  v48 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(_OSLogLRUCache *)self mruItems];
  v8 = [mruItems count];
  storage = [(_OSLogLRUCache *)self storage];
  v10 = [storage count];

  if (v8 != v10)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    mruItems2 = [(_OSLogLRUCache *)self mruItems];
    v31 = [mruItems2 count];
    self = [(_OSLogLRUCache *)self storage];
    v39 = 134218240;
    v40 = v31;
    v41 = 2048;
    v42 = [(_OSLogLRUCache *)self count];
    LODWORD(v37) = 22;
    v36 = &v39;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  storage2 = [(_OSLogLRUCache *)self storage];
  removeFromHead = [storage2 objectForKey:keyCopy];

  if (removeFromHead)
  {
    [(OSLogDoublyLinkedListNode *)removeFromHead setData:objectCopy];
    mruItems3 = [(_OSLogLRUCache *)self mruItems];
    [mruItems3 removeNodeAndAddToTail:removeFromHead];
  }

  else
  {
    maxCount = [(_OSLogLRUCache *)self maxCount];
    mruItems4 = [(_OSLogLRUCache *)self mruItems];
    v16 = [mruItems4 count];

    if (maxCount == v16)
    {
      mruItems5 = [(_OSLogLRUCache *)self mruItems];
      removeFromHead = [mruItems5 removeFromHead];

      evictionHandler = [(_OSLogLRUCache *)self evictionHandler];

      if (evictionHandler)
      {
        v19 = [(OSLogDoublyLinkedListNode *)removeFromHead key];
        data = [(OSLogDoublyLinkedListNode *)removeFromHead data];
        evictionHandler2 = [(_OSLogLRUCache *)self evictionHandler];
        (evictionHandler2)[2](evictionHandler2, v19, data);
      }

      storage3 = [(_OSLogLRUCache *)self storage];
      v23 = [(OSLogDoublyLinkedListNode *)removeFromHead key];
      [storage3 setObject:0 forKeyedSubscript:v23];

      [(OSLogDoublyLinkedListNode *)removeFromHead setKey:keyCopy];
      [(OSLogDoublyLinkedListNode *)removeFromHead setData:objectCopy];
    }

    else
    {
      removeFromHead = [[OSLogDoublyLinkedListNode alloc] initWithKey:keyCopy data:objectCopy];
    }

    mruItems6 = [(_OSLogLRUCache *)self mruItems];
    [mruItems6 addToTail:removeFromHead];

    mruItems3 = [(_OSLogLRUCache *)self storage];
    [mruItems3 setObject:removeFromHead forKeyedSubscript:keyCopy];
  }

  mruItems7 = [(_OSLogLRUCache *)self mruItems];
  v26 = [mruItems7 count];
  storage4 = [(_OSLogLRUCache *)self storage];
  v28 = [storage4 count];

  if (v26 != v28)
  {
LABEL_15:
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v32 = [(_OSLogLRUCache *)self mruItems:v36];
    v33 = [v32 count];
    storage5 = [(_OSLogLRUCache *)self storage];
    v35 = [storage5 count];
    v39 = 134218240;
    v40 = v33;
    v41 = 2048;
    v42 = v35;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_unlock(&self->_lock);

  v29 = *MEMORY[0x277D85DE8];
}

- (id)objectForKey:(id)key
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(_OSLogLRUCache *)self mruItems];
  v6 = [mruItems count];
  storage = [(_OSLogLRUCache *)self storage];
  v8 = [storage count];

  if (v6 != v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    mruItems2 = [(_OSLogLRUCache *)self mruItems];
    v20 = [mruItems2 count];
    self = [(_OSLogLRUCache *)self storage];
    v27 = 134218240;
    v28 = v20;
    v29 = 2048;
    v30 = [(_OSLogLRUCache *)self count];
    LODWORD(v26) = 22;
    v25 = &v27;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  storage2 = [(_OSLogLRUCache *)self storage];
  v10 = [storage2 objectForKeyedSubscript:keyCopy];

  if (v10)
  {
    mruItems3 = [(_OSLogLRUCache *)self mruItems];
    [mruItems3 removeNodeAndAddToTail:v10];
  }

  data = [v10 data];
  mruItems4 = [(_OSLogLRUCache *)self mruItems];
  v14 = [mruItems4 count];
  storage3 = [(_OSLogLRUCache *)self storage];
  v16 = [storage3 count];

  if (v14 != v16)
  {
LABEL_9:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v21 = [(_OSLogLRUCache *)self mruItems:v25];
    v22 = [v21 count];
    storage4 = [(_OSLogLRUCache *)self storage];
    v24 = [storage4 count];
    v27 = 134218240;
    v28 = v22;
    v29 = 2048;
    v30 = v24;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_unlock(&self->_lock);

  v17 = *MEMORY[0x277D85DE8];

  return data;
}

- (_OSLogLRUCache)initWithName:(id)name maxCount:(unint64_t)count evictionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = _OSLogLRUCache;
  v11 = [(_OSLogLRUCache *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_maxCount = count;
    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:count];
    storage = v12->_storage;
    v12->_storage = v13;

    v15 = objc_opt_new();
    mruItems = v12->_mruItems;
    v12->_mruItems = v15;

    v12->_lock._os_unfair_lock_opaque = 0;
    v17 = _Block_copy(handlerCopy);
    evictionHandler = v12->evictionHandler;
    v12->evictionHandler = v17;
  }

  return v12;
}

@end