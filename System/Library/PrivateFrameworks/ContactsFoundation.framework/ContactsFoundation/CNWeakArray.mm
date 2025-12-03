@interface CNWeakArray
- (CNWeakArray)init;
- (void)removeObject:(id)object;
- (void)setArray:(id)array;
@end

@implementation CNWeakArray

- (CNWeakArray)init
{
  v7.receiver = self;
  v7.super_class = CNWeakArray;
  v2 = [(CNWeakArray *)&v7 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    storage = v2->_storage;
    v2->_storage = weakObjectsPointerArray;

    v5 = v2;
  }

  return v2;
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  if ([(NSPointerArray *)self->_storage count])
  {
    v4 = 0;
    do
    {
      if ([(NSPointerArray *)self->_storage pointerAtIndex:v4]== objectCopy)
      {
        [(NSPointerArray *)self->_storage replacePointerAtIndex:v4 withPointer:0];
      }

      ++v4;
    }

    while (v4 < [(NSPointerArray *)self->_storage count]);
  }
}

- (void)setArray:(id)array
{
  v16 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  [(CNWeakArray *)self removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CNWeakArray *)self addObject:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end