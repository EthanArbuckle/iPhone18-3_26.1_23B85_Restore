@interface _DASPriorityQueue
+ (id)priorityQueue;
- (_DASPriorityQueue)init;
- (id)allObjects;
- (id)description;
- (id)popFirst;
- (id)popLast;
- (void)addObject:(id)object withPriority:(unint64_t)priority;
- (void)removeObject:(id)object atPriority:(unint64_t)priority;
@end

@implementation _DASPriorityQueue

- (_DASPriorityQueue)init
{
  v6.receiver = self;
  v6.super_class = _DASPriorityQueue;
  v2 = [(_DASPriorityQueue *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objects = v2->_objects;
    v2->_objects = dictionary;
  }

  return v2;
}

+ (id)priorityQueue
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)addObject:(id)object withPriority:(unint64_t)priority
{
  objectCopy = object;
  v6 = self->_objects;
  objc_sync_enter(v6);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
  array = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:v7];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(NSMutableDictionary *)self->_objects setObject:array forKeyedSubscript:v7];
  }

  [array addObject:objectCopy];
  highestPriority = self->_highestPriority;
  if (!highestPriority || [(NSNumber *)highestPriority compare:v7]== NSOrderedAscending)
  {
    objc_storeStrong(&self->_highestPriority, v7);
  }

  lowestPriority = self->_lowestPriority;
  if (!lowestPriority || [(NSNumber *)lowestPriority compare:v7]== NSOrderedDescending)
  {
    objc_storeStrong(&self->_lowestPriority, v7);
  }

  ++self->_count;

  objc_sync_exit(v6);
}

- (id)popFirst
{
  v3 = self->_objects;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:self->_highestPriority];
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    [v4 removeObjectAtIndex:0];
    --self->_count;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2;
    v22 = __Block_byref_object_dispose__2;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    objects = self->_objects;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __29___DASPriorityQueue_popFirst__block_invoke;
    v11[3] = &unk_1E7C8FC90;
    v11[4] = &v18;
    v11[5] = &v12;
    [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v11];
    v7 = v19[5];
    if (v7)
    {
      objc_storeStrong(&self->_highestPriority, v13[5]);
      v8 = self->_objects;
      --self->_count;
      v9 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:self->_highestPriority];
      [v9 removeObjectAtIndex:0];

      v7 = v19[5];
    }

    firstObject = v7;
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  objc_sync_exit(v3);

  return firstObject;
}

- (id)popLast
{
  v3 = self->_objects;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:self->_lowestPriority];
  if ([v4 count])
  {
    lastObject = [v4 lastObject];
    [v4 removeLastObject];
    --self->_count;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2;
    v22 = __Block_byref_object_dispose__2;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    objects = self->_objects;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __28___DASPriorityQueue_popLast__block_invoke;
    v11[3] = &unk_1E7C8FC90;
    v11[4] = &v18;
    v11[5] = &v12;
    [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v11];
    v7 = v19[5];
    if (v7)
    {
      objc_storeStrong(&self->_lowestPriority, v13[5]);
      v8 = self->_objects;
      --self->_count;
      v9 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:self->_lowestPriority];
      [v9 removeLastObject];

      v7 = v19[5];
    }

    lastObject = v7;
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  objc_sync_exit(v3);

  return lastObject;
}

- (void)removeObject:(id)object atPriority:(unint64_t)priority
{
  objectCopy = object;
  v6 = self->_objects;
  objc_sync_enter(v6);
  objects = self->_objects;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
  v9 = [(NSMutableDictionary *)objects objectForKeyedSubscript:v8];

  if ([v9 containsObject:objectCopy])
  {
    --self->_count;
    [v9 removeObject:objectCopy];
  }

  objc_sync_exit(v6);
}

- (id)allObjects
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = self->_objects;
  objc_sync_enter(v4);
  objects = self->_objects;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31___DASPriorityQueue_allObjects__block_invoke;
  v9[3] = &unk_1E7C8FCB8;
  v6 = array;
  v10 = v6;
  [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v9];

  objc_sync_exit(v4);
  v7 = [v6 copy];

  return v7;
}

- (id)description
{
  v3 = self->_objects;
  objc_sync_enter(v3);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_count];
  lowestPriority = self->_lowestPriority;
  highestPriority = self->_highestPriority;
  v8 = [(NSMutableDictionary *)self->_objects description];
  v9 = [v4 stringWithFormat:@"<_DASPriority Queue: Count=%@, High=%@, Low=%@, Items=%@>", v5, highestPriority, lowestPriority, v8];

  objc_sync_exit(v3);

  return v9;
}

@end