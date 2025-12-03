@interface MSVLRUDictionary
- (BOOL)isEqual:(id)equal;
- (MSVLRUDictionary)initWithMaximumCapacity:(unint64_t)capacity;
- (MSVLRUDictionaryDelegate)delegate;
- (id)allValues;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)objectForKey:(id)key;
- (id)peekObjectForKey:(id)key;
- (void)_addNodeToFront:(id)front;
- (void)_moveNodeToFront:(id)front;
- (void)_removeNode:(id)node;
- (void)_removeNodeFromLinkedList:(id)list;
- (void)_shrinkToCapacity;
- (void)endTransaction;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)performTransaction:(id)transaction;
- (void)pokeKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setMaximumCapacity:(int64_t)capacity;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation MSVLRUDictionary

- (MSVLRUDictionaryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_addNodeToFront:(id)front
{
  frontCopy = front;
  head = [(MSVLRUDictionary *)self head];
  next = [head next];

  head2 = [(MSVLRUDictionary *)self head];
  [head2 setNext:frontCopy];

  head3 = [(MSVLRUDictionary *)self head];
  [frontCopy setPrev:head3];

  [frontCopy setNext:next];
  [next setPrev:frontCopy];
}

- (void)_moveNodeToFront:(id)front
{
  frontCopy = front;
  head = [(MSVLRUDictionary *)self head];
  next = [head next];

  if (next != frontCopy)
  {
    [(MSVLRUDictionary *)self _removeNodeFromLinkedList:frontCopy];
    [(MSVLRUDictionary *)self _addNodeToFront:frontCopy];
  }
}

- (void)_removeNode:(id)node
{
  nodeCopy = node;
  [(MSVLRUDictionary *)self _removeNodeFromLinkedList:?];
  delegate = [(MSVLRUDictionary *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    object = [nodeCopy object];
    v6 = [nodeCopy key];
    [delegate dictionary:self willRemoveObject:object forKey:v6];
  }

  dictionary = [(MSVLRUDictionary *)self dictionary];
  v8 = [nodeCopy key];
  [dictionary removeObjectForKey:v8];
}

- (void)_removeNodeFromLinkedList:(id)list
{
  listCopy = list;
  prev = [listCopy prev];
  next = [listCopy next];

  [prev setNext:next];
  [next setPrev:prev];
}

- (void)_shrinkToCapacity
{
  if (self->_transactionCount <= 0)
  {
    while ([(MSVLRUDictionary *)self count]> self->_maximumCapacity)
    {
      tail = [(MSVLRUDictionary *)self tail];
      prev = [tail prev];

      if (!prev || ([(MSVLRUDictionary *)self head], v4 = objc_claimAutoreleasedReturnValue(), v4, prev == v4))
      {

        MEMORY[0x1EEE66BB8]();
        return;
      }

      [(MSVLRUDictionary *)self _removeNode:prev];
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p>{\n", objc_opt_class(), self];
  head = [(MSVLRUDictionary *)self head];
  next = [head next];

  if (next == self->_tail)
  {
    v5Next = next;
  }

  else
  {
    do
    {
      v6 = [(MSVLRUDictionaryNode *)next key];
      object = [(MSVLRUDictionaryNode *)next object];
      [v3 appendFormat:@"\t%@ = %@;\n", v6, object];

      v5Next = [(MSVLRUDictionaryNode *)next next];

      next = v5Next;
    }

    while (v5Next != self->_tail);
  }

  [v3 appendString:@"}\n"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(NSMutableDictionary *)self->_dictionary isEqual:equalCopy[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MSVLRUDictionary alloc] initWithMaximumCapacity:[(MSVLRUDictionary *)self maximumCapacity]];
  v5 = [(NSMutableDictionary *)self->_dictionary mutableCopy];
  dictionary = v4->_dictionary;
  v4->_dictionary = v5;

  v7 = [(MSVLRUDictionaryNode *)self->_head copy];
  head = v4->_head;
  v4->_head = v7;

  v9 = [(MSVLRUDictionaryNode *)self->_tail copy];
  tail = v4->_tail;
  v4->_tail = v9;

  return v4;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  head = [(MSVLRUDictionary *)self head];
  next = [head next];

  while (1)
  {
    tail = [(MSVLRUDictionary *)self tail];

    if (next == tail)
    {
      break;
    }

    v8 = [next key];
    object = [next object];
    blockCopy[2](blockCopy, v8, object, &v11);

    v6Next = [next next];

    next = v6Next;
    if (v11 == 1)
    {
      goto LABEL_6;
    }
  }

  v6Next = next;
LABEL_6:
}

- (void)removeAllObjects
{
  dictionary = [(MSVLRUDictionary *)self dictionary];
  [dictionary removeAllObjects];

  tail = [(MSVLRUDictionary *)self tail];
  head = [(MSVLRUDictionary *)self head];
  [head setNext:tail];

  head2 = [(MSVLRUDictionary *)self head];
  tail2 = [(MSVLRUDictionary *)self tail];
  [tail2 setPrev:head2];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  dictionary = [(MSVLRUDictionary *)self dictionary];
  v7 = [dictionary objectForKeyedSubscript:keyCopy];

  v6 = v7;
  if (v7)
  {
    [(MSVLRUDictionary *)self _removeNode:v7];
    v6 = v7;
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  dictionary = [(MSVLRUDictionary *)self dictionary];
  v9 = [dictionary objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    [(MSVLRUDictionary *)self _moveNodeToFront:v9];
    [(MSVLRUDictionaryNode *)v9 setObject:objectCopy];
  }

  else
  {
    if (!self->_transactionCount)
    {
      dictionary2 = [(MSVLRUDictionary *)self dictionary];
      v11 = [dictionary2 count];
      maximumCapacity = [(MSVLRUDictionary *)self maximumCapacity];

      if (v11 == maximumCapacity)
      {
        tail = [(MSVLRUDictionary *)self tail];
        prev = [tail prev];
        [(MSVLRUDictionary *)self _removeNode:prev];
      }
    }

    v15 = [keyCopy copy];
    v9 = [[MSVLRUDictionaryNode alloc] initWithKey:v15 object:objectCopy];
    dictionary3 = [(MSVLRUDictionary *)self dictionary];
    [dictionary3 setObject:v9 forKeyedSubscript:v15];

    [(MSVLRUDictionary *)self _addNodeToFront:v9];
  }
}

- (void)pokeKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  dictionary = [(MSVLRUDictionary *)self dictionary];
  v6 = [dictionary objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    [(MSVLRUDictionary *)self _moveNodeToFront:v6];
  }
}

- (id)peekObjectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  dictionary = [(MSVLRUDictionary *)self dictionary];
  v7 = [dictionary objectForKeyedSubscript:keyCopy];
  object = [v7 object];

  return object;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  dictionary = [(MSVLRUDictionary *)self dictionary];
  v7 = [dictionary objectForKeyedSubscript:keyCopy];

  if (v7)
  {
    [(MSVLRUDictionary *)self _moveNodeToFront:v7];
    object = [v7 object];
  }

  else
  {
    object = 0;
  }

  return object;
}

- (void)setMaximumCapacity:(int64_t)capacity
{
  if (capacity < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"maximumCapacity >= 0"}];
  }

  self->_maximumCapacity = capacity;

  [(MSVLRUDictionary *)self _shrinkToCapacity];
}

- (void)endTransaction
{
  transactionCount = self->_transactionCount;
  v3 = transactionCount < 1;
  v4 = transactionCount - 1;
  if (!v3)
  {
    self->_transactionCount = v4;
    [(MSVLRUDictionary *)self _shrinkToCapacity];
  }
}

- (void)performTransaction:(id)transaction
{
  transactionCopy = transaction;
  [(MSVLRUDictionary *)self beginTransaction];
  transactionCopy[2](transactionCopy);

  [(MSVLRUDictionary *)self endTransaction];
}

- (id)allValues
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_dictionary, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_dictionary allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        object = [*(*(&v12 + 1) + 8 * i) object];
        [v3 addObject:object];
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (MSVLRUDictionary)initWithMaximumCapacity:(unint64_t)capacity
{
  if (!capacity)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"maximumCapacity > 0"}];
  }

  v15.receiver = self;
  v15.super_class = MSVLRUDictionary;
  v5 = [(MSVLRUDictionary *)&v15 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v5->_maximumCapacity = capacity;
    v8 = [[MSVLRUDictionaryNode alloc] initWithKey:0 object:0];
    head = v5->_head;
    v5->_head = v8;

    v10 = [[MSVLRUDictionaryNode alloc] initWithKey:0 object:0];
    tail = v5->_tail;
    v5->_tail = v10;

    [(MSVLRUDictionaryNode *)v5->_head setNext:v5->_tail];
    [(MSVLRUDictionaryNode *)v5->_tail setPrev:v5->_head];
    v5->_transactionCount = 0;
  }

  return v5;
}

@end