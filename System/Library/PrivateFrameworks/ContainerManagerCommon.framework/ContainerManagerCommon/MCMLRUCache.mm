@interface MCMLRUCache
- (MCMDoublyLinkedList)mruItems;
- (MCMLRUCache)init;
- (MCMLRUCache)initWithName:(id)name maxCount:(unint64_t)count;
- (NSMutableDictionary)storage;
- (NSString)name;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (unint64_t)maxCount;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MCMLRUCache

- (MCMDoublyLinkedList)mruItems
{
  result = self->_mruItems;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSMutableDictionary)storage
{
  result = self->_storage;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)maxCount
{
  result = self->_maxCount;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)name
{
  result = self->_name;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)count
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(MCMLRUCache *)self mruItems];
  v4 = [mruItems count];

  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)removeAllObjects
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = [(MCMLRUCache *)self name];
    mruItems = [(MCMLRUCache *)self mruItems];
    v9 = 138412546;
    v10 = name;
    v11 = 2112;
    v12 = mruItems;
    _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "[%@] Evicting items from cache: %@", &v9, 0x16u);
  }

  storage = [(MCMLRUCache *)self storage];
  [storage removeAllObjects];

  mruItems2 = [(MCMLRUCache *)self mruItems];
  [mruItems2 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setObject:(id)object forKey:(id)key
{
  v48 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(MCMLRUCache *)self mruItems];
  v9 = [mruItems count];
  storage = [(MCMLRUCache *)self storage];
  v11 = [storage count];

  if (v9 != v11)
  {
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    mruItems2 = [(MCMLRUCache *)self mruItems];
    v33 = [mruItems2 count];
    self = [(MCMLRUCache *)self storage];
    v40 = 134218240;
    v41 = v33;
    v42 = 2048;
    v43 = [(MCMLRUCache *)self count];
    LODWORD(v39) = 22;
    v38 = &v40;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  storage2 = [(MCMLRUCache *)self storage];
  removeFromHead = [storage2 objectForKey:keyCopy];

  if (removeFromHead)
  {
    [(MCMDoublyLinkedListNode *)removeFromHead setData:objectCopy];
    mruItems3 = [(MCMLRUCache *)self mruItems];
    [mruItems3 removeNodeAndAddToTail:removeFromHead];
  }

  else
  {
    maxCount = [(MCMLRUCache *)self maxCount];
    mruItems4 = [(MCMLRUCache *)self mruItems];
    v17 = [mruItems4 count];

    if (maxCount == v17)
    {
      mruItems5 = [(MCMLRUCache *)self mruItems];
      removeFromHead = [mruItems5 removeFromHead];

      v19 = container_log_handle_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        name = [(MCMLRUCache *)self name];
        storage3 = [(MCMLRUCache *)self storage];
        v30 = [(MCMDoublyLinkedListNode *)removeFromHead key];
        v31 = [storage3 objectForKeyedSubscript:v30];
        *buf = 138412546;
        *&buf[4] = name;
        *&buf[12] = 2112;
        *&buf[14] = v31;
        _os_log_debug_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEBUG, "[%@] Evicting from cache: %@", buf, 0x16u);
      }

      storage4 = [(MCMLRUCache *)self storage];
      v21 = [(MCMDoublyLinkedListNode *)removeFromHead key];
      [storage4 setObject:0 forKeyedSubscript:v21];

      [(MCMDoublyLinkedListNode *)removeFromHead setKey:keyCopy];
      [(MCMDoublyLinkedListNode *)removeFromHead setData:objectCopy];
    }

    else
    {
      removeFromHead = [[MCMDoublyLinkedListNode alloc] initWithKey:keyCopy data:objectCopy];
    }

    mruItems6 = [(MCMLRUCache *)self mruItems];
    [mruItems6 addToTail:removeFromHead];

    mruItems3 = [(MCMLRUCache *)self storage];
    [mruItems3 setObject:removeFromHead forKeyedSubscript:keyCopy];
  }

  mruItems7 = [(MCMLRUCache *)self mruItems];
  v24 = [mruItems7 count];
  storage5 = [(MCMLRUCache *)self storage];
  v26 = [storage5 count];

  if (v24 != v26)
  {
LABEL_13:
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = [(MCMLRUCache *)self mruItems:v38];
    v35 = [v34 count];
    storage6 = [(MCMLRUCache *)self storage];
    v37 = [storage6 count];
    v40 = 134218240;
    v41 = v35;
    v42 = 2048;
    v43 = v37;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_unlock(&self->_lock);

  v27 = *MEMORY[0x1E69E9840];
}

- (id)objectForKey:(id)key
{
  v38 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  mruItems = [(MCMLRUCache *)self mruItems];
  v6 = [mruItems count];
  storage = [(MCMLRUCache *)self storage];
  v8 = [storage count];

  if (v6 != v8)
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    mruItems2 = [(MCMLRUCache *)self mruItems];
    v23 = [mruItems2 count];
    self = [(MCMLRUCache *)self storage];
    v30 = 134218240;
    v31 = v23;
    v32 = 2048;
    v33 = [(MCMLRUCache *)self count];
    LODWORD(v29) = 22;
    v28 = &v30;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  storage2 = [(MCMLRUCache *)self storage];
  v10 = [storage2 objectForKeyedSubscript:keyCopy];

  if (v10)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      name = [(MCMLRUCache *)self name];
      data = [v10 data];
      *buf = 138412546;
      *&buf[4] = name;
      *&buf[12] = 2112;
      *&buf[14] = data;
      _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "[%@] Cache hit: %@", buf, 0x16u);
    }

    mruItems3 = [(MCMLRUCache *)self mruItems];
    [mruItems3 removeNodeAndAddToTail:v10];
  }

  data2 = [v10 data];
  mruItems4 = [(MCMLRUCache *)self mruItems];
  v15 = [mruItems4 count];
  storage3 = [(MCMLRUCache *)self storage];
  v17 = [storage3 count];

  if (v15 != v17)
  {
LABEL_11:
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = [(MCMLRUCache *)self mruItems:v28];
    v25 = [v24 count];
    storage4 = [(MCMLRUCache *)self storage];
    v27 = [storage4 count];
    v30 = 134218240;
    v31 = v25;
    v32 = 2048;
    v33 = v27;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_unlock(&self->_lock);

  v18 = *MEMORY[0x1E69E9840];

  return data2;
}

- (MCMLRUCache)initWithName:(id)name maxCount:(unint64_t)count
{
  v17 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = MCMLRUCache;
  v8 = [(MCMLRUCache *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_maxCount = count;
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:count];
    storage = v9->_storage;
    v9->_storage = v10;

    v12 = objc_opt_new();
    mruItems = v9->_mruItems;
    v9->_mruItems = v12;

    v9->_lock._os_unfair_lock_opaque = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (MCMLRUCache)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMLRUCache *)self initWithName:@"default" maxCount:10];
}

@end