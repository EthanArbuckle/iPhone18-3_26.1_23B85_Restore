@interface CLSLRUMemoryCache
- (BOOL)loadFromURL:(id)a3;
- (BOOL)writeToURL:(id)a3;
- (CLSLRUMemoryCache)init;
- (id)allKeys;
- (id)objectForKey:(id)a3;
- (unint64_t)currentUsedSlots;
- (void)_promoteListElement:(_CLSLRUMemoryCacheListElement *)a3;
- (void)_removeListElement:(_CLSLRUMemoryCacheListElement *)a3;
- (void)dealloc;
- (void)evictSlots:(unint64_t)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setNumberOfSlots:(unint64_t)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CLSLRUMemoryCache

- (BOOL)writeToURL:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:self->_cacheDictionary forKey:@"CLSLRUMemoryCacheSaveMemoryKey"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = self->_leastRecentUsedList->var1; i; i = i->var1)
  {
    [v6 addObject:i->var0];
  }

  [v5 setObject:v6 forKey:@"CLSLRUMemoryCacheSaveLeastRecentUsedKey"];

  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(MEMORY[0x277CCAA00], "temporaryFilePathWithExtension:", @"tmp"}];
  v10 = [objc_alloc(MEMORY[0x277CBEB78]) initWithURL:v9 append:0];
  v17 = 0;
  [v10 open];
  if (![MEMORY[0x277CCAC58] writePropertyList:v5 toStream:v10 format:200 options:0 error:&v17])
  {
    v12 = [+[CLSLogging sharedLogging](CLSLogging "sharedLogging")];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v17 localizedDescription];
      *buf = 138412802;
      v19 = a3;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v15;
      _os_log_error_impl(&dword_22F907000, v12, OS_LOG_TYPE_ERROR, "Failed to save cache to %@ (%@): %@", buf, 0x20u);
    }

    [v10 close];

    goto LABEL_11;
  }

  [v10 close];

  [v8 removeItemAtURL:a3 error:0];
  if (([v8 moveItemAtURL:v9 toURL:a3 error:&v17] & 1) == 0)
  {
    v13 = [+[CLSLogging sharedLogging](CLSLogging "sharedLogging")];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [v17 localizedDescription];
      *buf = 138412546;
      v19 = a3;
      v20 = 2112;
      v21 = v16;
      _os_log_error_impl(&dword_22F907000, v13, OS_LOG_TYPE_ERROR, "Failed to save cache to %@: %@", buf, 0x16u);
    }

LABEL_11:
    [v8 removeItemAtURL:v9 error:0];
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:

  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return v11;
}

- (BOOL)loadFromURL:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v29 = objc_autoreleasePoolPush();
  [(CLSLRUMemoryCache *)self removeAllObjects];
  v5 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithURL:a3];
  v38 = 0;
  [v5 open];
  v6 = [MEMORY[0x277CCAC58] propertyListWithStream:v5 options:0 format:0 error:&v38];
  [v5 close];

  v28 = v6;
  if (v6)
  {
    v7 = [v6 objectForKey:@"CLSLRUMemoryCacheSaveMemoryKey"];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          -[NSMapTable setObject:forKey:](self->_cacheDictionary, "setObject:forKey:", [v7 objectForKey:{*(*(&v34 + 1) + 8 * i), v28}], *(*(&v34 + 1) + 8 * i));
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }

    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = [objc_msgSend(v6 objectForKey:{@"CLSLRUMemoryCacheSaveLeastRecentUsedKey", v28), "reverseObjectEnumerator"}];
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * j);
          v18 = malloc_type_malloc(0x18uLL, 0xA00409BE6959DuLL);
          v19 = v17;
          var1 = self->_leastRecentUsedList->var1;
          v18->var0 = v19;
          v18->var1 = var1;
          v18->var2 = 0;
          leastRecentUsedList = self->_leastRecentUsedList;
          v22 = leastRecentUsedList->var1;
          if (v22)
          {
            v22->var2 = v18;
            leastRecentUsedList = self->_leastRecentUsedList;
          }

          leastRecentUsedList->var1 = v18;
          v23 = self->_leastRecentUsedList;
          if (!v23->var0++)
          {
            v23->var2 = v18;
          }

          -[NSMapTable setObject:forKey:](self->_leastRecentUsedDictionary, "setObject:forKey:", [MEMORY[0x277CCAE60] valueWithPointer:v18], v17);
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v25 = [+[CLSLogging sharedLogging](CLSLogging "sharedLogging")];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = [v38 localizedDescription];
      *buf = 138412546;
      v42 = a3;
      v43 = 2112;
      v44 = v27;
      _os_log_error_impl(&dword_22F907000, v25, OS_LOG_TYPE_ERROR, "Failed to load cache from %@: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v29);
  return v28 != 0;
}

- (void)evictSlots:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  for (; a3; --a3)
  {
    var2 = self->_leastRecentUsedList->var2;
    if (var2)
    {
      [(NSMapTable *)self->_cacheDictionary removeObjectForKey:var2->var0];
      [(CLSLRUMemoryCache *)self _removeListElement:self->_leastRecentUsedList->var2];
    }
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)removeAllObjects
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  [(NSMapTable *)self->_leastRecentUsedDictionary removeAllObjects];
  leastRecentUsedList = self->_leastRecentUsedList;
  var1 = leastRecentUsedList->var1;
  if (var1)
  {
    do
    {
      v5 = var1->var1;
      if (var1->var0)
      {
      }

      free(var1);
      var1 = v5;
    }

    while (v5);
    leastRecentUsedList = self->_leastRecentUsedList;
  }

  leastRecentUsedList->var0 = 0;
  leastRecentUsedList->var1 = 0;
  self->_leastRecentUsedList->var2 = 0;
  [(NSMapTable *)self->_cacheDictionary removeAllObjects];
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)removeObjectForKey:(id)a3
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = [(NSMapTable *)self->_leastRecentUsedDictionary objectForKey:a3];
  if (v5)
  {
    -[CLSLRUMemoryCache _removeListElement:](self, "_removeListElement:", [v5 pointerValue]);
  }

  [(NSMapTable *)self->_cacheDictionary removeObjectForKey:a3];
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (self->_numberOfSlots)
  {
    [(NSRecursiveLock *)self->_recursiveLock lock];
    v7 = [(NSMapTable *)self->_leastRecentUsedDictionary objectForKey:a4];
    if (v7)
    {
      -[CLSLRUMemoryCache _promoteListElement:](self, "_promoteListElement:", [v7 pointerValue]);
    }

    else
    {
      v8 = malloc_type_malloc(0x18uLL, 0xA00409BE6959DuLL);
      v9 = a4;
      var1 = self->_leastRecentUsedList->var1;
      v8->var0 = v9;
      v8->var1 = var1;
      v8->var2 = 0;
      leastRecentUsedList = self->_leastRecentUsedList;
      v12 = leastRecentUsedList->var1;
      if (v12)
      {
        v12->var2 = v8;
        leastRecentUsedList = self->_leastRecentUsedList;
      }

      leastRecentUsedList->var1 = v8;
      v13 = self->_leastRecentUsedList;
      if (!v13->var0++)
      {
        v13->var2 = v8;
      }

      -[NSMapTable setObject:forKey:](self->_leastRecentUsedDictionary, "setObject:forKey:", [MEMORY[0x277CCAE60] valueWithPointer:v8], a4);
    }

    v15 = self->_leastRecentUsedList;
    if (v15->var0 > self->_numberOfSlots)
    {
      var2 = v15->var2;
      if (var2)
      {
        [(NSMapTable *)self->_cacheDictionary removeObjectForKey:var2->var0];
        [(CLSLRUMemoryCache *)self _removeListElement:self->_leastRecentUsedList->var2];
      }
    }

    [(NSMapTable *)self->_cacheDictionary setObject:a3 forKey:a4];
    recursiveLock = self->_recursiveLock;

    [(NSRecursiveLock *)recursiveLock unlock];
  }
}

- (id)allKeys
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  cacheDictionary = self->_cacheDictionary;
  if (cacheDictionary)
  {
    v4 = [(NSArray *)NSAllMapTableKeys(cacheDictionary) copy];
  }

  else
  {
    v4 = 0;
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];

  return v4;
}

- (id)objectForKey:(id)a3
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = [(NSMapTable *)self->_cacheDictionary objectForKey:a3];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_leastRecentUsedDictionary objectForKey:a3];
    if (v6)
    {
      -[CLSLRUMemoryCache _promoteListElement:](self, "_promoteListElement:", [v6 pointerValue]);
    }
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];

  return v5;
}

- (unint64_t)currentUsedSlots
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  recursiveLock = self->_recursiveLock;
  var0 = self->_leastRecentUsedList->var0;
  [(NSRecursiveLock *)recursiveLock unlock];
  return var0;
}

- (void)setNumberOfSlots:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_numberOfSlots > a3)
  {
LABEL_2:
    leastRecentUsedList = self->_leastRecentUsedList;
    while (leastRecentUsedList->var0 > a3)
    {
      var2 = leastRecentUsedList->var2;
      if (var2)
      {
        [(NSMapTable *)self->_cacheDictionary removeObjectForKey:var2->var0];
        [(CLSLRUMemoryCache *)self _removeListElement:self->_leastRecentUsedList->var2];
        goto LABEL_2;
      }
    }
  }

  self->_numberOfSlots = a3;
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)_removeListElement:(_CLSLRUMemoryCacheListElement *)a3
{
  var1 = a3->var1;
  var2 = a3->var2;
  if (var2)
  {
    var2->var1 = var1;
    leastRecentUsedList = self->_leastRecentUsedList;
    if (leastRecentUsedList->var1 == a3)
    {
      leastRecentUsedList->var1 = 0;
    }

    if (var1)
    {
      goto LABEL_5;
    }

LABEL_8:
    self->_leastRecentUsedList->var2 = var2;
    goto LABEL_9;
  }

  self->_leastRecentUsedList->var1 = var1;
  if (!var1)
  {
    goto LABEL_8;
  }

LABEL_5:
  var1->var2 = var2;
  v8 = self->_leastRecentUsedList;
  if (v8->var2 == a3)
  {
    v8->var2 = 0;
  }

LABEL_9:
  [(NSMapTable *)self->_leastRecentUsedDictionary removeObjectForKey:a3->var0];
  if (a3->var0)
  {
  }

  free(a3);
  --self->_leastRecentUsedList->var0;
}

- (void)_promoteListElement:(_CLSLRUMemoryCacheListElement *)a3
{
  p_var0 = &self->_leastRecentUsedList->var0;
  if (*p_var0 >= 2uLL)
  {
    v5 = &a3->var1->var0;
    var2 = a3->var2;
    if (var2)
    {
      p_var0 = &a3->var2->var0;
    }

    p_var0[1] = v5;
    if (!v5)
    {
      v5 = &self->_leastRecentUsedList->var0;
    }

    v5[2] = var2;
    a3->var1 = self->_leastRecentUsedList->var1;
    a3->var2 = 0;
    leastRecentUsedList = self->_leastRecentUsedList;
    var1 = leastRecentUsedList->var1;
    if (var1)
    {
      var1->var2 = a3;
      leastRecentUsedList = self->_leastRecentUsedList;
    }

    leastRecentUsedList->var1 = a3;
  }
}

- (void)dealloc
{
  recursiveLock = self->_recursiveLock;
  if (recursiveLock)
  {

    self->_recursiveLock = 0;
  }

  cacheDictionary = self->_cacheDictionary;
  if (cacheDictionary)
  {

    self->_cacheDictionary = 0;
  }

  leastRecentUsedList = self->_leastRecentUsedList;
  var1 = leastRecentUsedList->var1;
  if (var1)
  {
    do
    {
      v7 = var1->var1;
      if (var1->var0)
      {
      }

      free(var1);
      var1 = v7;
    }

    while (v7);
    leastRecentUsedList = self->_leastRecentUsedList;
  }

  leastRecentUsedList->var0 = 0;
  leastRecentUsedList->var1 = 0;
  self->_leastRecentUsedList->var2 = 0;
  v8 = self->_leastRecentUsedList;
  if (v8)
  {
    free(v8);
    self->_leastRecentUsedList = 0;
  }

  leastRecentUsedDictionary = self->_leastRecentUsedDictionary;
  if (leastRecentUsedDictionary)
  {

    self->_leastRecentUsedDictionary = 0;
  }

  v10.receiver = self;
  v10.super_class = CLSLRUMemoryCache;
  [(CLSLRUMemoryCache *)&v10 dealloc];
}

- (CLSLRUMemoryCache)init
{
  v6.receiver = self;
  v6.super_class = CLSLRUMemoryCache;
  v2 = [(CLSLRUMemoryCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfSlots = 128;
    v2->_cacheDictionary = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:128];
    v3->_recursiveLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    v4 = malloc_type_malloc(0x18uLL, 0x102004023CB03E4uLL);
    v3->_leastRecentUsedList = v4;
    v4->var0 = 0;
    v4->var1 = 0;
    v3->_leastRecentUsedList->var2 = 0;
    v3->_leastRecentUsedDictionary = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:128];
  }

  return v3;
}

@end