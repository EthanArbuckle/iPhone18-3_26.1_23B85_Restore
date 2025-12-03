@interface MTLToolsObjectCache
- (MTLToolsObjectCache)init;
- (id).cxx_construct;
- (id)getCachedObjectForKey:(id)key;
- (id)getCachedObjectForKey:(id)key onMiss:(id)miss;
- (void)dealloc;
- (void)removeKey:(id)key;
@end

@implementation MTLToolsObjectCache

- (MTLToolsObjectCache)init
{
  v4.receiver = self;
  v4.super_class = MTLToolsObjectCache;
  v2 = [(MTLToolsObjectCache *)&v4 init];
  if (v2)
  {
    v2->_map = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:514 valueOptions:5 capacity:16];
    v2->_listLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)removeKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_listLock);
    var0 = self->_keyRemoveList.var0;
    var1 = self->_keyRemoveList.var1;
    if (var0 >= var1)
    {
      begin = self->_keyRemoveList.__begin_;
      v9 = var0 - begin;
      if ((v9 + 1) >> 61)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v10 = var1 - begin;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(&self->_keyRemoveList, v12);
      }

      v13 = (8 * v9);
      *v13 = key;
      v7 = (8 * v9 + 8);
      v14 = self->_keyRemoveList.__begin_;
      v15 = (self->_keyRemoveList.var0 - v14);
      v16 = (v13 - v15);
      memcpy((v13 - v15), v14, v15);
      v17 = self->_keyRemoveList.__begin_;
      self->_keyRemoveList.__begin_ = v16;
      self->_keyRemoveList.var0 = v7;
      self->_keyRemoveList.var1 = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *var0 = key;
      v7 = var0 + 1;
    }

    self->_keyRemoveList.var0 = v7;
    v18 = v7 - self->_keyRemoveList.__begin_;
    os_unfair_lock_unlock(&self->_listLock);
    if (v18 >= 0x189)
    {
      v19 = objc_autoreleasePoolPush();
      std::recursive_mutex::lock(&self->_lock);
      os_unfair_lock_lock(&self->_listLock);
      v20 = self->_keyRemoveList.__begin_;
      v21 = self->_keyRemoveList.var0;
      if ((v21 - v20) > 0x188)
      {
        if (v20 != v21)
        {
          do
          {
            v22 = *v20;
            if (![(NSMapTable *)self->_map objectForKey:*v20])
            {
              [(NSMapTable *)self->_map removeObjectForKey:v22];
            }

            ++v20;
          }

          while (v20 != v21);
          v20 = self->_keyRemoveList.__begin_;
        }

        self->_keyRemoveList.var0 = v20;
      }

      os_unfair_lock_unlock(&self->_listLock);
      std::recursive_mutex::unlock(&self->_lock);

      objc_autoreleasePoolPop(v19);
    }
  }
}

- (id)getCachedObjectForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    v5 = objc_autoreleasePoolPush();
    std::recursive_mutex::lock(&self->_lock);
    keyCopy = [(NSMapTable *)self->_map objectForKey:keyCopy];
    std::recursive_mutex::unlock(&self->_lock);
    objc_autoreleasePoolPop(v5);
  }

  return keyCopy;
}

- (id)getCachedObjectForKey:(id)key onMiss:(id)miss
{
  if (!key)
  {
    return 0;
  }

  v7 = objc_autoreleasePoolPush();
  std::recursive_mutex::lock(&self->_lock);
  v8 = [(NSMapTable *)self->_map objectForKey:key];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = (*(miss + 2))(miss);
    [(NSMapTable *)self->_map setObject:v9 forKey:key];
  }

  std::recursive_mutex::unlock(&self->_lock);
  objc_autoreleasePoolPop(v7);
  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLToolsObjectCache;
  [(MTLToolsObjectCache *)&v3 dealloc];
}

- (id).cxx_construct
{
  MEMORY[0x2318E4870](&self->_lock, a2);
  self->_keyRemoveList.__begin_ = 0;
  self->_keyRemoveList.var0 = 0;
  self->_keyRemoveList.var1 = 0;
  return self;
}

@end