@interface ICOrderedMediaSet
- (BOOL)removeMediaItemFromIndex:(id)index;
- (BOOL)removeMediaItemWithHandleFromIndex:(unint64_t)index;
- (BOOL)removeMediaItemsFromIndex:(id)index;
- (ICOrderedMediaSet)initWithTypes:(id)types;
- (id)arrayForType:(id)type;
- (id)mediaItemWithHandle:(unint64_t)handle inTypes:(id)types;
- (id)orderedSetForType:(id)type;
- (unint64_t)mediaItemCount;
- (void)addMediaItemToIndex:(id)index;
- (void)performSelector:(id)selector onTypes:(id)types;
- (void)removeAllItems;
@end

@implementation ICOrderedMediaSet

- (ICOrderedMediaSet)initWithTypes:(id)types
{
  v23 = *MEMORY[0x29EDCA608];
  typesCopy = types;
  v21.receiver = self;
  v21.super_class = ICOrderedMediaSet;
  v5 = [(ICOrderedMediaSet *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    mediaItems = v5->_mediaItems;
    v5->_mediaItems = v6;

    v5->_mediaLock._os_unfair_lock_opaque = 0;
    if (typesCopy)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = typesCopy;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * v12);
            orderedSet = [MEMORY[0x29EDB8E10] orderedSet];
            [(NSMutableDictionary *)v5->_mediaItems setObject:orderedSet forKeyedSubscript:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v10);
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return v5;
}

- (unint64_t)mediaItemCount
{
  v17 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_mediaLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_mediaItems allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [(NSMutableDictionary *)self->_mediaItems objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        v6 += [v9 count];
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_mediaLock);
  v10 = *MEMORY[0x29EDCA608];
  return v6;
}

- (void)addMediaItemToIndex:(id)index
{
  v14[1] = *MEMORY[0x29EDCA608];
  indexCopy = index;
  mediaItemType = [indexCopy mediaItemType];
  if (mediaItemType)
  {
    unsignedIntegerValue = [indexCopy unsignedIntegerValue];
    mediaItemType2 = [indexCopy mediaItemType];
    v14[0] = mediaItemType2;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];
    v9 = [(ICOrderedMediaSet *)self mediaItemWithHandle:unsignedIntegerValue inTypes:v8];

    if (!v9)
    {
      os_unfair_lock_lock(&self->_mediaLock);
      v10 = [(NSMutableDictionary *)self->_mediaItems objectForKeyedSubscript:mediaItemType];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 indexOfObject:indexCopy inSortedRange:0 options:objc_msgSend(v10 usingComparator:{"count"), 1024, &__block_literal_global}];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 insertObject:indexCopy atIndex:v12];
        }
      }

      os_unfair_lock_unlock(&self->_mediaLock);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t __41__ICOrderedMediaSet_addMediaItemToIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = [v4 unsignedIntegerValue];

  v7 = -1;
  if (v6 <= v5)
  {
    v7 = 1;
  }

  if (v6 == v5)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (BOOL)removeMediaItemFromIndex:(id)index
{
  indexCopy = index;
  mediaItemType = [indexCopy mediaItemType];
  if (mediaItemType)
  {
    os_unfair_lock_lock(&self->_mediaLock);
    v6 = [(NSMutableDictionary *)self->_mediaItems objectForKeyedSubscript:mediaItemType];
    v7 = v6;
    v8 = v6 != 0;
    if (v6)
    {
      [v6 removeObject:indexCopy];
    }

    os_unfair_lock_unlock(&self->_mediaLock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeMediaItemsFromIndex:(id)index
{
  v17 = *MEMORY[0x29EDCA608];
  indexCopy = index;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [indexCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  v6 = v5;
  if (v5)
  {
    v7 = *v13;
    v8 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(indexCopy);
        }

        [(ICOrderedMediaSet *)self removeMediaItemFromIndex:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v8 != v9);
      v8 = [indexCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v6 != 0;
}

- (BOOL)removeMediaItemWithHandleFromIndex:(unint64_t)index
{
  v4 = [(ICOrderedMediaSet *)self mediaItemWithHandle:index inTypes:0];
  if (v4)
  {
    [(ICOrderedMediaSet *)self removeMediaItemFromIndex:v4];
  }

  return v4 != 0;
}

- (void)removeAllItems
{
  v15 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_mediaLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allKeys = [(NSMutableDictionary *)self->_mediaItems allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = [(NSMutableDictionary *)self->_mediaItems objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7)];
        [v8 removeAllObjects];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_mediaLock);
  v9 = *MEMORY[0x29EDCA608];
}

- (id)mediaItemWithHandle:(unint64_t)handle inTypes:(id)types
{
  v26 = *MEMORY[0x29EDCA608];
  typesCopy = types;
  os_unfair_lock_lock(&self->_mediaLock);
  if (typesCopy)
  {
    allKeys = typesCopy;
  }

  else
  {
    allKeys = [(NSMutableDictionary *)self->_mediaItems allKeys];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = allKeys;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v19 = typesCopy;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSMutableDictionary *)self->_mediaItems objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i), v19];
        v13 = [v12 count];
        v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:handle];
        v15 = [v12 indexOfObject:v14 inSortedRange:0 options:v13 usingComparator:{256, &__block_literal_global_5}];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [v12 objectAtIndexedSubscript:v15];

          goto LABEL_14;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v16 = 0;
LABEL_14:
    typesCopy = v19;
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(&self->_mediaLock);
  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

uint64_t __49__ICOrderedMediaSet_mediaItemWithHandle_inTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = [v4 unsignedIntegerValue];

  v7 = -1;
  if (v6 <= v5)
  {
    v7 = 1;
  }

  if (v6 == v5)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (id)orderedSetForType:(id)type
{
  if (type)
  {
    typeCopy = type;
    os_unfair_lock_lock(&self->_mediaLock);
    v5 = [(NSMutableDictionary *)self->_mediaItems objectForKeyedSubscript:typeCopy];

    v6 = [v5 copy];
    os_unfair_lock_unlock(&self->_mediaLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)arrayForType:(id)type
{
  if (type)
  {
    typeCopy = type;
    os_unfair_lock_lock(&self->_mediaLock);
    v5 = [(NSMutableDictionary *)self->_mediaItems objectForKeyedSubscript:typeCopy];

    array = [v5 array];
    v7 = [array copy];

    os_unfair_lock_unlock(&self->_mediaLock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performSelector:(id)selector onTypes:(id)types
{
  v32 = *MEMORY[0x29EDCA608];
  typesCopy = types;
  v7 = NSSelectorFromString(selector);
  os_unfair_lock_lock(&self->_mediaLock);
  v20 = typesCopy;
  if (typesCopy)
  {
    allKeys = typesCopy;
  }

  else
  {
    allKeys = [(NSMutableDictionary *)self->_mediaItems allKeys];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = allKeys;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [(NSMutableDictionary *)self->_mediaItems objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v12), v20];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            v17 = 0;
            do
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v22 + 1) + 8 * v17);
              if (objc_opt_respondsToSelector())
              {
                [v18 performSelector:v7];
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v15);
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_mediaLock);
  v19 = *MEMORY[0x29EDCA608];
}

@end