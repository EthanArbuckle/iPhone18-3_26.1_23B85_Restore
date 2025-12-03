@interface LACThreadSafeCollection
+ (id)strongObjectsCollection;
+ (id)weakObjectsCollection;
- (LACThreadSafeCollection)initWithWeakObjects:(BOOL)objects;
- (int64_t)count;
- (void)_synchronizedObjects:(id)objects;
- (void)append:(id)append;
- (void)forEach:(id)each;
- (void)remove:(id)remove;
@end

@implementation LACThreadSafeCollection

+ (id)weakObjectsCollection
{
  v2 = [[LACThreadSafeCollection alloc] initWithWeakObjects:1];

  return v2;
}

+ (id)strongObjectsCollection
{
  v2 = [[LACThreadSafeCollection alloc] initWithWeakObjects:0];

  return v2;
}

- (LACThreadSafeCollection)initWithWeakObjects:(BOOL)objects
{
  v9.receiver = self;
  v9.super_class = LACThreadSafeCollection;
  v4 = [(LACThreadSafeCollection *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_weakObjects = objects;
    if (objects)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    }

    else
    {
      weakObjectsHashTable = objc_alloc_init(MEMORY[0x1E696AC70]);
    }

    objects = v5->_objects;
    v5->_objects = weakObjectsHashTable;

    v5->_objectsLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)append:(id)append
{
  appendCopy = append;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__LACThreadSafeCollection_append___block_invoke;
  v6[3] = &unk_1E7A96EE8;
  v7 = appendCopy;
  v5 = appendCopy;
  [(LACThreadSafeCollection *)self _synchronizedObjects:v6];
}

- (void)remove:(id)remove
{
  removeCopy = remove;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__LACThreadSafeCollection_remove___block_invoke;
  v6[3] = &unk_1E7A96EE8;
  v7 = removeCopy;
  v5 = removeCopy;
  [(LACThreadSafeCollection *)self _synchronizedObjects:v6];
}

- (int64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__LACThreadSafeCollection_count__block_invoke;
  v4[3] = &unk_1E7A97198;
  v4[4] = self;
  v4[5] = &v5;
  [(LACThreadSafeCollection *)self _synchronizedObjects:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __32__LACThreadSafeCollection_count__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 20))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (*(*(&v10 + 1) + 8 * i))
          {
            ++*(*(*(a1 + 40) + 8) + 24);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 count];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)forEach:(id)each
{
  v22 = *MEMORY[0x1E69E9840];
  eachCopy = each;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__LACThreadSafeCollection_forEach___block_invoke;
  v14[3] = &unk_1E7A96E70;
  v14[4] = &v15;
  [(LACThreadSafeCollection *)self _synchronizedObjects:v14];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v16[5];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        eachCopy[2](eachCopy, *(*(&v10 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v15, 8);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __35__LACThreadSafeCollection_forEach___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_synchronizedObjects:(id)objects
{
  objectsCopy = objects;
  os_unfair_lock_lock(&self->_objectsLock);
  objectsCopy[2](objectsCopy, self->_objects);

  os_unfair_lock_unlock(&self->_objectsLock);
}

@end