@interface MFSparseMutable64IndexSet
+ (id)indexSet;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)_insertionPositionOfIndex:(unint64_t)index;
- (unint64_t)_positionOfIndex:(unint64_t)index;
- (unint64_t)firstIndex;
- (unint64_t)indexGreaterThanIndex:(unint64_t)index;
- (void)_incrementStorageIfNecessaryForCount:(unint64_t)count;
- (void)addIndex:(unint64_t)index;
- (void)addIndexes:(id)indexes;
- (void)dealloc;
- (void)enumerateIndexesWithBlock:(id)block;
- (void)removeIndex:(unint64_t)index;
@end

@implementation MFSparseMutable64IndexSet

+ (id)indexSet
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  storage = self->_storage;
  if (storage)
  {
    free(storage);
  }

  v4.receiver = self;
  v4.super_class = MFSparseMutable64IndexSet;
  [(MFSparseMutable64IndexSet *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MFSparseMutable64IndexSet);
  v4->_count = self->_count;
  storageSize = self->_storageSize;
  v4->_storageSize = storageSize;
  v6 = malloc_type_calloc(storageSize, 8uLL, 0x100004000313F17uLL);
  v4->_storage = v6;
  memcpy(v6, self->_storage, self->_storageSize);
  return v4;
}

- (void)_incrementStorageIfNecessaryForCount:(unint64_t)count
{
  self->_cursor = 0;
  if (count)
  {
    storageSize = self->_storageSize;
    v5 = 10;
    do
    {
      v6 = storageSize;
      storageSize += 10;
      v5 -= 10;
    }

    while (self->_count + count > v6);
    if (v5)
    {
      if (self->_storage)
      {
        v7 = malloc_type_realloc(self->_storage, 8 * v6, 0x100004000313F17uLL);
        if (v7)
        {
LABEL_7:
          self->_storage = v7;
          self->_storageSize = storageSize - 10;
          return;
        }
      }

      else
      {
        v7 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
        if (v7)
        {
          goto LABEL_7;
        }
      }

      [MFSparseMutable64IndexSet _incrementStorageIfNecessaryForCount:];
    }
  }
}

- (unint64_t)_positionOfIndex:(unint64_t)index
{
  __key = index;
  v4 = bsearch_b(&__key, self->_storage, self->_count, 8uLL, &__block_literal_global_17);
  if (v4)
  {
    return (v4 - self->_storage) >> 3;
  }

  else
  {
    return -1;
  }
}

uint64_t __46__MFSparseMutable64IndexSet__positionOfIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > *a3;
  }
}

- (unint64_t)_insertionPositionOfIndex:(unint64_t)index
{
  __key = index;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  storage = self->_storage;
  count = self->_count;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__MFSparseMutable64IndexSet__insertionPositionOfIndex___block_invoke;
  v9[3] = &unk_2798B7938;
  v9[4] = &v10;
  if (bsearch_b(&__key, storage, count, 8uLL, v9))
  {
    v6 = -1;
  }

  else
  {
    v7 = v11[3];
    if (v7)
    {
      if (__key <= *v7)
      {
        v6 = v7 - self->_storage;
      }

      else
      {
        v6 = v7 - self->_storage + 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __55__MFSparseMutable64IndexSet__insertionPositionOfIndex___block_invoke(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  *(*(*(a1 + 32) + 8) + 24) = a3;
  v5 = v3 >= v4;
  v6 = v3 > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

- (void)addIndex:(unint64_t)index
{
  v5 = [(MFSparseMutable64IndexSet *)self _insertionPositionOfIndex:?];
  if (v5 != -1)
  {
    v6 = v5;
    [(MFSparseMutable64IndexSet *)self _incrementStorageIfNecessaryForCount:1];
    memmove(&self->_storage[v6 + 1], &self->_storage[v6], 8 * (self->_count - v6));
    self->_storage[v6] = index;
    ++self->_count;
  }
}

- (void)addIndexes:(id)indexes
{
  if ([indexes count])
  {
    -[MFSparseMutable64IndexSet _incrementStorageIfNecessaryForCount:](self, "_incrementStorageIfNecessaryForCount:", [indexes count]);
    firstIndex = [indexes firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indexes indexGreaterThanIndex:i])
      {
        [(MFSparseMutable64IndexSet *)self addIndex:i];
      }
    }
  }
}

- (void)removeIndex:(unint64_t)index
{
  v4 = [(MFSparseMutable64IndexSet *)self _positionOfIndex:index];
  if (v4 != -1)
  {
    count = self->_count;
    v6 = (count - 1);
    if (v4 != v6)
    {
      memmove(&self->_storage[v4], &self->_storage[v4 + 1], 8 * (count + ~v4));
      LODWORD(v6) = self->_count - 1;
    }

    self->_count = v6;
  }

  [(MFSparseMutable64IndexSet *)self _garbageCollectStorageIfNecessary];
}

- (unint64_t)firstIndex
{
  self->_cursor = 0;
  if (self->_count)
  {
    return *self->_storage;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)indexGreaterThanIndex:(unint64_t)index
{
  cursor = self->_cursor;
  count = self->_count;
  if (cursor)
  {
    v5 = cursor >= count;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else if (self->_storage[cursor] < index)
  {
    v6 = cursor + 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  while (1)
  {
    v8 = self->_storage[v7];
    if (v8 > index)
    {
      break;
    }

    if (count == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  self->_cursor = v7;
  return v8;
}

- (void)enumerateIndexesWithBlock:(id)block
{
  v7 = 0;
  firstIndex = [(MFSparseMutable64IndexSet *)self firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [(MFSparseMutable64IndexSet *)self indexGreaterThanIndex:i])
    {
      (*(block + 2))(block, i, &v7);
      if (v7)
      {
        break;
      }
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p> [", objc_opt_class(), self];
  if (self->_storageSize)
  {
    v4 = 0;
    do
    {
      if (v4 >= self->_count)
      {
        [v3 appendFormat:@"X, ", v6];
      }

      else
      {
        [v3 appendFormat:@"%llu, ", self->_storage[v4]];
      }

      ++v4;
    }

    while (v4 < self->_storageSize);
  }

  [v3 appendString:@"]"];
  return v3;
}

@end