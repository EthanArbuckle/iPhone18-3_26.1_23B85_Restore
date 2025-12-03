@interface IMWeakReferenceCollection
- (BOOL)containsObject:(id)object;
- (IMWeakReferenceCollection)init;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)removeObject:(id)object;
@end

@implementation IMWeakReferenceCollection

- (IMWeakReferenceCollection)init
{
  v6.receiver = self;
  v6.super_class = IMWeakReferenceCollection;
  v2 = [(IMWeakReferenceCollection *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    list = v2->_list;
    v2->_list = array;
  }

  return v2;
}

- (unint64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A86CB6F4;
  v4[3] = &unk_1E7829C10;
  v4[4] = &v5;
  [(IMWeakReferenceCollection *)self enumerateObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86CB7F0;
  v7[3] = &unk_1E7829C38;
  v5 = objectCopy;
  v8 = v5;
  v9 = &v10;
  [(IMWeakReferenceCollection *)self enumerateObjectsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v7 = objectCopy;
    objectCopy = [(IMWeakReferenceCollection *)self containsObject:objectCopy];
    if ((objectCopy & 1) == 0)
    {
      list = self->_list;
      v6 = [objc_alloc(MEMORY[0x1E69A61A0]) initRefWithObject:v7];
      [(NSMutableArray *)list addObject:v6];
    }
  }

  MEMORY[0x1EEE66BB8](objectCopy);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  v4 = [(NSMutableArray *)self->_list count];
  if (v4 - 1 >= 0)
  {
    v5 = v4;
    do
    {
      v6 = [(NSMutableArray *)self->_list objectAtIndex:--v5];
      object = [v6 object];
      if (!object || (v8 = object, [v6 object], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == objectCopy))
      {
        [(NSMutableArray *)self->_list removeObjectAtIndex:v5];
      }
    }

    while (v5 > 0);
  }
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  if (blockCopy)
  {
    v5 = [(NSMutableArray *)self->_list count];
    if (v5 - 1 >= 0)
    {
      v6 = v5;
      do
      {
        v7 = [(NSMutableArray *)self->_list objectAtIndex:--v6];
        object = [v7 object];

        if (object)
        {
          if ((v10 & 1) == 0)
          {
            object2 = [v7 object];
            blockCopy[2](blockCopy, object2, &v10);
          }
        }

        else
        {
          [(NSMutableArray *)self->_list removeObjectAtIndex:v6];
        }
      }

      while (v6 > 0);
    }
  }
}

@end