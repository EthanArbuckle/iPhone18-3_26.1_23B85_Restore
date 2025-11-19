@interface MSVLRUDictionary
- (BOOL)isEqual:(id)a3;
- (MSVLRUDictionary)initWithMaximumCapacity:(unint64_t)a3;
- (MSVLRUDictionaryDelegate)delegate;
- (id)allValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)peekObjectForKey:(id)a3;
- (void)_addNodeToFront:(id)a3;
- (void)_moveNodeToFront:(id)a3;
- (void)_removeNode:(id)a3;
- (void)_removeNodeFromLinkedList:(id)a3;
- (void)_shrinkToCapacity;
- (void)endTransaction;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)performTransaction:(id)a3;
- (void)pokeKey:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setMaximumCapacity:(int64_t)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation MSVLRUDictionary

- (MSVLRUDictionaryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_addNodeToFront:(id)a3
{
  v4 = a3;
  v5 = [(MSVLRUDictionary *)self head];
  v8 = [v5 next];

  v6 = [(MSVLRUDictionary *)self head];
  [v6 setNext:v4];

  v7 = [(MSVLRUDictionary *)self head];
  [v4 setPrev:v7];

  [v4 setNext:v8];
  [v8 setPrev:v4];
}

- (void)_moveNodeToFront:(id)a3
{
  v6 = a3;
  v4 = [(MSVLRUDictionary *)self head];
  v5 = [v4 next];

  if (v5 != v6)
  {
    [(MSVLRUDictionary *)self _removeNodeFromLinkedList:v6];
    [(MSVLRUDictionary *)self _addNodeToFront:v6];
  }
}

- (void)_removeNode:(id)a3
{
  v9 = a3;
  [(MSVLRUDictionary *)self _removeNodeFromLinkedList:?];
  v4 = [(MSVLRUDictionary *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v9 object];
    v6 = [v9 key];
    [v4 dictionary:self willRemoveObject:v5 forKey:v6];
  }

  v7 = [(MSVLRUDictionary *)self dictionary];
  v8 = [v9 key];
  [v7 removeObjectForKey:v8];
}

- (void)_removeNodeFromLinkedList:(id)a3
{
  v3 = a3;
  v5 = [v3 prev];
  v4 = [v3 next];

  [v5 setNext:v4];
  [v4 setPrev:v5];
}

- (void)_shrinkToCapacity
{
  if (self->_transactionCount <= 0)
  {
    while ([(MSVLRUDictionary *)self count]> self->_maximumCapacity)
    {
      v3 = [(MSVLRUDictionary *)self tail];
      v5 = [v3 prev];

      if (!v5 || ([(MSVLRUDictionary *)self head], v4 = objc_claimAutoreleasedReturnValue(), v4, v5 == v4))
      {

        MEMORY[0x1EEE66BB8]();
        return;
      }

      [(MSVLRUDictionary *)self _removeNode:v5];
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p>{\n", objc_opt_class(), self];
  v4 = [(MSVLRUDictionary *)self head];
  v5 = [v4 next];

  if (v5 == self->_tail)
  {
    v8 = v5;
  }

  else
  {
    do
    {
      v6 = [(MSVLRUDictionaryNode *)v5 key];
      v7 = [(MSVLRUDictionaryNode *)v5 object];
      [v3 appendFormat:@"\t%@ = %@;\n", v6, v7];

      v8 = [(MSVLRUDictionaryNode *)v5 next];

      v5 = v8;
    }

    while (v8 != self->_tail);
  }

  [v3 appendString:@"}\n"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(NSMutableDictionary *)self->_dictionary isEqual:v4[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(MSVLRUDictionary *)self head];
  v6 = [v5 next];

  while (1)
  {
    v7 = [(MSVLRUDictionary *)self tail];

    if (v6 == v7)
    {
      break;
    }

    v8 = [v6 key];
    v9 = [v6 object];
    v4[2](v4, v8, v9, &v11);

    v10 = [v6 next];

    v6 = v10;
    if (v11 == 1)
    {
      goto LABEL_6;
    }
  }

  v10 = v6;
LABEL_6:
}

- (void)removeAllObjects
{
  v3 = [(MSVLRUDictionary *)self dictionary];
  [v3 removeAllObjects];

  v4 = [(MSVLRUDictionary *)self tail];
  v5 = [(MSVLRUDictionary *)self head];
  [v5 setNext:v4];

  v7 = [(MSVLRUDictionary *)self head];
  v6 = [(MSVLRUDictionary *)self tail];
  [v6 setPrev:v7];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(MSVLRUDictionary *)self dictionary];
  v7 = [v5 objectForKeyedSubscript:v4];

  v6 = v7;
  if (v7)
  {
    [(MSVLRUDictionary *)self _removeNode:v7];
    v6 = v7;
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v18 = a3;
  v7 = a4;
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v8 = [(MSVLRUDictionary *)self dictionary];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    [(MSVLRUDictionary *)self _moveNodeToFront:v9];
    [(MSVLRUDictionaryNode *)v9 setObject:v18];
  }

  else
  {
    if (!self->_transactionCount)
    {
      v10 = [(MSVLRUDictionary *)self dictionary];
      v11 = [v10 count];
      v12 = [(MSVLRUDictionary *)self maximumCapacity];

      if (v11 == v12)
      {
        v13 = [(MSVLRUDictionary *)self tail];
        v14 = [v13 prev];
        [(MSVLRUDictionary *)self _removeNode:v14];
      }
    }

    v15 = [v7 copy];
    v9 = [[MSVLRUDictionaryNode alloc] initWithKey:v15 object:v18];
    v16 = [(MSVLRUDictionary *)self dictionary];
    [v16 setObject:v9 forKeyedSubscript:v15];

    [(MSVLRUDictionary *)self _addNodeToFront:v9];
  }
}

- (void)pokeKey:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v5 = [(MSVLRUDictionary *)self dictionary];
  v6 = [v5 objectForKeyedSubscript:v8];

  if (v6)
  {
    [(MSVLRUDictionary *)self _moveNodeToFront:v6];
  }
}

- (id)peekObjectForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v6 = [(MSVLRUDictionary *)self dictionary];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 object];

  return v8;
}

- (id)objectForKey:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];
  }

  v6 = [(MSVLRUDictionary *)self dictionary];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    [(MSVLRUDictionary *)self _moveNodeToFront:v7];
    v8 = [v7 object];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setMaximumCapacity:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"maximumCapacity >= 0"}];
  }

  self->_maximumCapacity = a3;

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

- (void)performTransaction:(id)a3
{
  v4 = a3;
  [(MSVLRUDictionary *)self beginTransaction];
  v4[2](v4);

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
  v4 = [(NSMutableDictionary *)self->_dictionary allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) object];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (MSVLRUDictionary)initWithMaximumCapacity:(unint64_t)a3
{
  if (!a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MSVLRUDictionary.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"maximumCapacity > 0"}];
  }

  v15.receiver = self;
  v15.super_class = MSVLRUDictionary;
  v5 = [(MSVLRUDictionary *)&v15 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v5->_maximumCapacity = a3;
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