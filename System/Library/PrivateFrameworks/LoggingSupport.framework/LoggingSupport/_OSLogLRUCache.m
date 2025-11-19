@interface _OSLogLRUCache
- (_OSLogLRUCache)initWithName:(id)a3 maxCount:(unint64_t)a4 evictionHandler:(id)a5;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)dealloc;
- (void)evictAllEntries;
- (void)removeAllObjects;
- (void)setObject:(id)a3 forKey:(id)a4;
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
  v3 = [(_OSLogLRUCache *)self mruItems];
  v4 = [v3 count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  [(_OSLogLRUCache *)self evictAllEntries];
  v3 = [(_OSLogLRUCache *)self storage];
  [v3 removeAllObjects];

  v4 = [(_OSLogLRUCache *)self mruItems];
  [v4 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)evictAllEntries
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(_OSLogLRUCache *)self evictionHandler];

  if (v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(_OSLogLRUCache *)self storage];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v16 + 1) + 8 * v9);
          v12 = [(_OSLogLRUCache *)self storage];
          v7 = [v12 objectForKeyedSubscript:v11];

          v13 = [v7 data];
          v14 = [(_OSLogLRUCache *)self evictionHandler];
          (v14)[2](v14, v11, v13);

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(_OSLogLRUCache *)self mruItems];
  v8 = [v7 count];
  v9 = [(_OSLogLRUCache *)self storage];
  v10 = [v9 count];

  if (v8 != v10)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v30 = [(_OSLogLRUCache *)self mruItems];
    v31 = [v30 count];
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

  v11 = [(_OSLogLRUCache *)self storage];
  v12 = [v11 objectForKey:v6];

  if (v12)
  {
    [(OSLogDoublyLinkedListNode *)v12 setData:v38];
    v13 = [(_OSLogLRUCache *)self mruItems];
    [v13 removeNodeAndAddToTail:v12];
  }

  else
  {
    v14 = [(_OSLogLRUCache *)self maxCount];
    v15 = [(_OSLogLRUCache *)self mruItems];
    v16 = [v15 count];

    if (v14 == v16)
    {
      v17 = [(_OSLogLRUCache *)self mruItems];
      v12 = [v17 removeFromHead];

      v18 = [(_OSLogLRUCache *)self evictionHandler];

      if (v18)
      {
        v19 = [(OSLogDoublyLinkedListNode *)v12 key];
        v20 = [(OSLogDoublyLinkedListNode *)v12 data];
        v21 = [(_OSLogLRUCache *)self evictionHandler];
        (v21)[2](v21, v19, v20);
      }

      v22 = [(_OSLogLRUCache *)self storage];
      v23 = [(OSLogDoublyLinkedListNode *)v12 key];
      [v22 setObject:0 forKeyedSubscript:v23];

      [(OSLogDoublyLinkedListNode *)v12 setKey:v6];
      [(OSLogDoublyLinkedListNode *)v12 setData:v38];
    }

    else
    {
      v12 = [[OSLogDoublyLinkedListNode alloc] initWithKey:v6 data:v38];
    }

    v24 = [(_OSLogLRUCache *)self mruItems];
    [v24 addToTail:v12];

    v13 = [(_OSLogLRUCache *)self storage];
    [v13 setObject:v12 forKeyedSubscript:v6];
  }

  v25 = [(_OSLogLRUCache *)self mruItems];
  v26 = [v25 count];
  v27 = [(_OSLogLRUCache *)self storage];
  v28 = [v27 count];

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
    v34 = [(_OSLogLRUCache *)self storage];
    v35 = [v34 count];
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

- (id)objectForKey:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_OSLogLRUCache *)self mruItems];
  v6 = [v5 count];
  v7 = [(_OSLogLRUCache *)self storage];
  v8 = [v7 count];

  if (v6 != v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v19 = [(_OSLogLRUCache *)self mruItems];
    v20 = [v19 count];
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

  v9 = [(_OSLogLRUCache *)self storage];
  v10 = [v9 objectForKeyedSubscript:v4];

  if (v10)
  {
    v11 = [(_OSLogLRUCache *)self mruItems];
    [v11 removeNodeAndAddToTail:v10];
  }

  v12 = [v10 data];
  v13 = [(_OSLogLRUCache *)self mruItems];
  v14 = [v13 count];
  v15 = [(_OSLogLRUCache *)self storage];
  v16 = [v15 count];

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
    v23 = [(_OSLogLRUCache *)self storage];
    v24 = [v23 count];
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

  return v12;
}

- (_OSLogLRUCache)initWithName:(id)a3 maxCount:(unint64_t)a4 evictionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = _OSLogLRUCache;
  v11 = [(_OSLogLRUCache *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_maxCount = a4;
    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:a4];
    storage = v12->_storage;
    v12->_storage = v13;

    v15 = objc_opt_new();
    mruItems = v12->_mruItems;
    v12->_mruItems = v15;

    v12->_lock._os_unfair_lock_opaque = 0;
    v17 = _Block_copy(v10);
    evictionHandler = v12->evictionHandler;
    v12->evictionHandler = v17;
  }

  return v12;
}

@end