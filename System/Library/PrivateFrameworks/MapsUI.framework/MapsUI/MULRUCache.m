@interface MULRUCache
- (MULRUCache)initWithMaxSize:(unint64_t)a3;
- (MULRUCacheDelegate)delegate;
- (NSArray)orderedKeys;
- (NSArray)orderedValues;
- (id)objectForKey:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation MULRUCache

- (MULRUCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)orderedValues
{
  v2 = [(NSMutableArray *)self->_values copy];

  return v2;
}

- (NSArray)orderedKeys
{
  v2 = [(NSMutableArray *)self->_keys copy];

  return v2;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12 && v6)
  {
    v7 = [(MULRUCache *)self objectForKey:v6];
    values = self->_values;
    if (v7)
    {
      [(NSMutableArray *)values removeObjectAtIndex:0];
    }

    else
    {
      while ([(NSMutableArray *)values count]>= self->_maxSize)
      {
        v9 = [(MULRUCache *)self delegate];
        v10 = [(NSMutableArray *)self->_values lastObject];
        v11 = [(NSMutableArray *)self->_keys lastObject];
        [v9 lruCache:self willEvictObject:v10 forKey:v11];

        [(NSMutableArray *)self->_keys removeLastObject];
        [(NSMutableArray *)self->_values removeLastObject];
        values = self->_values;
      }

      [(NSMutableArray *)self->_keys insertObject:v6 atIndex:0];
    }

    [(NSMutableArray *)self->_values insertObject:v12 atIndex:0];
  }
}

- (void)removeObjectForKey:(id)a3
{
  if (a3)
  {
    v4 = [(MULRUCache *)self objectForKey:?];
    if (v4)
    {
      v5 = v4;
      [(NSMutableArray *)self->_keys removeObjectAtIndex:0];
      [(NSMutableArray *)self->_values removeObjectAtIndex:0];
      v4 = v5;
    }
  }
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_keys indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v5, v5 >= [(NSMutableArray *)self->_values count]))
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_values objectAtIndexedSubscript:v7];
    [(NSMutableArray *)self->_values removeObjectAtIndex:v7];
    [(NSMutableArray *)self->_keys removeObjectAtIndex:v7];
    [(NSMutableArray *)self->_values insertObject:v6 atIndex:0];
    [(NSMutableArray *)self->_keys insertObject:v4 atIndex:0];
  }

  return v6;
}

- (MULRUCache)initWithMaxSize:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = MULRUCache;
  v4 = [(MULRUCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxSize = a3;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    keys = v5->_keys;
    v5->_keys = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    values = v5->_values;
    v5->_values = v8;
  }

  return v5;
}

@end