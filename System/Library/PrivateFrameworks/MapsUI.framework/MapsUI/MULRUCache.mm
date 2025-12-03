@interface MULRUCache
- (MULRUCache)initWithMaxSize:(unint64_t)size;
- (MULRUCacheDelegate)delegate;
- (NSArray)orderedKeys;
- (NSArray)orderedValues;
- (id)objectForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
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

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy && keyCopy)
  {
    v7 = [(MULRUCache *)self objectForKey:keyCopy];
    values = self->_values;
    if (v7)
    {
      [(NSMutableArray *)values removeObjectAtIndex:0];
    }

    else
    {
      while ([(NSMutableArray *)values count]>= self->_maxSize)
      {
        delegate = [(MULRUCache *)self delegate];
        lastObject = [(NSMutableArray *)self->_values lastObject];
        lastObject2 = [(NSMutableArray *)self->_keys lastObject];
        [delegate lruCache:self willEvictObject:lastObject forKey:lastObject2];

        [(NSMutableArray *)self->_keys removeLastObject];
        [(NSMutableArray *)self->_values removeLastObject];
        values = self->_values;
      }

      [(NSMutableArray *)self->_keys insertObject:keyCopy atIndex:0];
    }

    [(NSMutableArray *)self->_values insertObject:objectCopy atIndex:0];
  }
}

- (void)removeObjectForKey:(id)key
{
  if (key)
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

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableArray *)self->_keys indexOfObject:keyCopy];
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
    [(NSMutableArray *)self->_keys insertObject:keyCopy atIndex:0];
  }

  return v6;
}

- (MULRUCache)initWithMaxSize:(unint64_t)size
{
  v11.receiver = self;
  v11.super_class = MULRUCache;
  v4 = [(MULRUCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxSize = size;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:size];
    keys = v5->_keys;
    v5->_keys = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:size];
    values = v5->_values;
    v5->_values = v8;
  }

  return v5;
}

@end