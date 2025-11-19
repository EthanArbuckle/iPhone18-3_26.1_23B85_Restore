@interface IMWeakReferenceCollection
- (BOOL)containsObject:(id)a3;
- (IMWeakReferenceCollection)init;
- (unint64_t)count;
- (void)addObject:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)removeObject:(id)a3;
@end

@implementation IMWeakReferenceCollection

- (IMWeakReferenceCollection)init
{
  v6.receiver = self;
  v6.super_class = IMWeakReferenceCollection;
  v2 = [(IMWeakReferenceCollection *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    list = v2->_list;
    v2->_list = v3;
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

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86CB7F0;
  v7[3] = &unk_1E7829C38;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(IMWeakReferenceCollection *)self enumerateObjectsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v4 = [(IMWeakReferenceCollection *)self containsObject:v4];
    if ((v4 & 1) == 0)
    {
      list = self->_list;
      v6 = [objc_alloc(MEMORY[0x1E69A61A0]) initRefWithObject:v7];
      [(NSMutableArray *)list addObject:v6];
    }
  }

  MEMORY[0x1EEE66BB8](v4);
}

- (void)removeObject:(id)a3
{
  v10 = a3;
  v4 = [(NSMutableArray *)self->_list count];
  if (v4 - 1 >= 0)
  {
    v5 = v4;
    do
    {
      v6 = [(NSMutableArray *)self->_list objectAtIndex:--v5];
      v7 = [v6 object];
      if (!v7 || (v8 = v7, [v6 object], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 == v10))
      {
        [(NSMutableArray *)self->_list removeObjectAtIndex:v5];
      }
    }

    while (v5 > 0);
  }
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v10 = 0;
  if (v4)
  {
    v5 = [(NSMutableArray *)self->_list count];
    if (v5 - 1 >= 0)
    {
      v6 = v5;
      do
      {
        v7 = [(NSMutableArray *)self->_list objectAtIndex:--v6];
        v8 = [v7 object];

        if (v8)
        {
          if ((v10 & 1) == 0)
          {
            v9 = [v7 object];
            v4[2](v4, v9, &v10);
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