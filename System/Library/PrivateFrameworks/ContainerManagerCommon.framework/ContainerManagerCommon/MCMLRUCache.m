@interface MCMLRUCache
- (MCMDoublyLinkedList)mruItems;
- (MCMLRUCache)init;
- (MCMLRUCache)initWithName:(id)a3 maxCount:(unint64_t)a4;
- (NSMutableDictionary)storage;
- (NSString)name;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (unint64_t)maxCount;
- (void)removeAllObjects;
- (void)setObject:(id)a3 forKey:(id)a4;
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
  v3 = [(MCMLRUCache *)self mruItems];
  v4 = [v3 count];

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
    v7 = [(MCMLRUCache *)self name];
    v8 = [(MCMLRUCache *)self mruItems];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "[%@] Evicting items from cache: %@", &v9, 0x16u);
  }

  v4 = [(MCMLRUCache *)self storage];
  [v4 removeAllObjects];

  v5 = [(MCMLRUCache *)self mruItems];
  [v5 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(MCMLRUCache *)self mruItems];
  v9 = [v8 count];
  v10 = [(MCMLRUCache *)self storage];
  v11 = [v10 count];

  if (v9 != v11)
  {
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = [(MCMLRUCache *)self mruItems];
    v33 = [v32 count];
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

  v12 = [(MCMLRUCache *)self storage];
  v13 = [v12 objectForKey:v7];

  if (v13)
  {
    [(MCMDoublyLinkedListNode *)v13 setData:v6];
    v14 = [(MCMLRUCache *)self mruItems];
    [v14 removeNodeAndAddToTail:v13];
  }

  else
  {
    v15 = [(MCMLRUCache *)self maxCount];
    v16 = [(MCMLRUCache *)self mruItems];
    v17 = [v16 count];

    if (v15 == v17)
    {
      v18 = [(MCMLRUCache *)self mruItems];
      v13 = [v18 removeFromHead];

      v19 = container_log_handle_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v28 = [(MCMLRUCache *)self name];
        v29 = [(MCMLRUCache *)self storage];
        v30 = [(MCMDoublyLinkedListNode *)v13 key];
        v31 = [v29 objectForKeyedSubscript:v30];
        *buf = 138412546;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v31;
        _os_log_debug_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEBUG, "[%@] Evicting from cache: %@", buf, 0x16u);
      }

      v20 = [(MCMLRUCache *)self storage];
      v21 = [(MCMDoublyLinkedListNode *)v13 key];
      [v20 setObject:0 forKeyedSubscript:v21];

      [(MCMDoublyLinkedListNode *)v13 setKey:v7];
      [(MCMDoublyLinkedListNode *)v13 setData:v6];
    }

    else
    {
      v13 = [[MCMDoublyLinkedListNode alloc] initWithKey:v7 data:v6];
    }

    v22 = [(MCMLRUCache *)self mruItems];
    [v22 addToTail:v13];

    v14 = [(MCMLRUCache *)self storage];
    [v14 setObject:v13 forKeyedSubscript:v7];
  }

  v23 = [(MCMLRUCache *)self mruItems];
  v24 = [v23 count];
  v25 = [(MCMLRUCache *)self storage];
  v26 = [v25 count];

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
    v36 = [(MCMLRUCache *)self storage];
    v37 = [v36 count];
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

- (id)objectForKey:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MCMLRUCache *)self mruItems];
  v6 = [v5 count];
  v7 = [(MCMLRUCache *)self storage];
  v8 = [v7 count];

  if (v6 != v8)
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = [(MCMLRUCache *)self mruItems];
    v23 = [v22 count];
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

  v9 = [(MCMLRUCache *)self storage];
  v10 = [v9 objectForKeyedSubscript:v4];

  if (v10)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(MCMLRUCache *)self name];
      v21 = [v10 data];
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "[%@] Cache hit: %@", buf, 0x16u);
    }

    v12 = [(MCMLRUCache *)self mruItems];
    [v12 removeNodeAndAddToTail:v10];
  }

  v13 = [v10 data];
  v14 = [(MCMLRUCache *)self mruItems];
  v15 = [v14 count];
  v16 = [(MCMLRUCache *)self storage];
  v17 = [v16 count];

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
    v26 = [(MCMLRUCache *)self storage];
    v27 = [v26 count];
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

  return v13;
}

- (MCMLRUCache)initWithName:(id)a3 maxCount:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v16.receiver = self;
  v16.super_class = MCMLRUCache;
  v8 = [(MCMLRUCache *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_maxCount = a4;
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:a4];
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