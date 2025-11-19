@interface MFWeakSet
+ (MFWeakSet)setWithArray:(id)a3;
+ (MFWeakSet)setWithCapacity:(unint64_t)a3;
+ (MFWeakSet)setWithObjects:(const void *)a3 count:(unint64_t)a4;
+ (MFWeakSet)setWithObjects:(id)a3;
+ (MFWeakSet)setWithSet:(id)a3;
+ (id)set;
- (BOOL)intersectsSet:(id)a3;
- (BOOL)isEqualToSet:(id)a3;
- (BOOL)isSubsetOfSet:(id)a3;
- (MFWeakSet)init;
- (MFWeakSet)initWithArray:(id)a3;
- (MFWeakSet)initWithCapacity:(unint64_t)a3;
- (MFWeakSet)initWithCoder:(id)a3;
- (MFWeakSet)initWithObjects:(const void *)a3 count:(unint64_t)a4;
- (MFWeakSet)initWithObjects:(id)a3;
- (MFWeakSet)initWithSet:(id)a3 copyItems:(BOOL)a4;
- (id)_copyAllItems;
- (id)allObjects;
- (id)anyObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLocale:(id)a3;
- (id)member:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectEnumerator;
- (id)objectsWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)setByAddingObject:(id)a3;
- (id)setByAddingObjectsFromArray:(id)a3;
- (id)setByAddingObjectsFromSet:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)intersectSet:(id)a3;
- (void)makeObjectsPerformSelector:(SEL)a3 withObject:(id)a4;
- (void)minusSet:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)setSet:(id)a3;
- (void)unionSet:(id)a3;
@end

@implementation MFWeakSet

- (MFWeakSet)init
{
  v4.receiver = self;
  v4.super_class = MFWeakSet;
  v2 = [(MFWeakSet *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_objects = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v2;
}

- (unint64_t)count
{
  [(NSLock *)self->_lock lock];
  Count = CFDictionaryGetCount(self->_objects);
  [(NSLock *)self->_lock unlock];
  return Count;
}

- (id)member:(id)a3
{
  [(NSLock *)self->_lock lock];
  Value = CFDictionaryGetValue(self->_objects, a3);
  if (Value)
  {
    v6 = [Value retainedReference];
    if (!v6)
    {
      CFDictionaryRemoveValue(self->_objects, a3);
    }
  }

  else
  {
    v6 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return v6;
}

- (id)objectEnumerator
{
  v2 = [(MFWeakSet *)self allObjects];

  return [v2 objectEnumerator];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (!a3->var0)
  {
    v9 = [(MFWeakSet *)self allObjects];
    v10 = [v9 count];
    if (v10)
    {
      a3->var2 = &self->_gen;
      a3->var3[0] = v10;
      a3->var3[1] = v9;
    }
  }

  v11 = a3->var3[0];
  v12 = v11 > a3->var0;
  v13 = v11 - a3->var0;
  if (!v12)
  {
    return 0;
  }

  if (v13 < a5)
  {
    a5 = v13;
  }

  if (a5)
  {
    v15.length = a5;
    v15.location = a3->var0;
    CFArrayGetValues(a3->var3[1], v15, a4);
    a3->var0 += a5;
    a3->var1 = a4;
  }

  return a5;
}

- (id)_copyAllItems
{
  [(NSLock *)self->_lock lock];
  Count = CFDictionaryGetCount(self->_objects);
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  if (Count)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(self->_objects, v5, v6);
    for (i = 0; i != Count; ++i)
    {
      v8 = [v6[i] retainedReference];
      if (v8)
      {
        v9 = v8;
        [v4 addObject:v8];
      }

      else
      {
        CFDictionaryRemoveValue(self->_objects, v5[i]);
      }
    }

    free(v6);
    free(v5);
  }

  [(NSLock *)self->_lock unlock];
  return v4;
}

- (id)allObjects
{
  v2 = [(MFWeakSet *)self _copyAllItems];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithSet:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithSet:self];
}

- (id)anyObject
{
  [(NSLock *)self->_lock lock];
  Count = CFDictionaryGetCount(self->_objects);
  if (Count)
  {
    v4 = Count;
    v5 = 8 * Count;
    v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v7 = malloc_type_malloc(v5, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(self->_objects, v6, v7);
    for (i = 0; i != v4; ++i)
    {
      v9 = [v7[i] retainedReference];
      if (v9)
      {
        break;
      }

      CFDictionaryRemoveValue(self->_objects, v6[i]);
    }

    free(v7);
    free(v6);
  }

  else
  {
    v9 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return v9;
}

- (id)descriptionWithLocale:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  return [v4 stringWithFormat:@"<%@> %p", NSStringFromClass(v5), self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [(MFWeakSet *)self _copyAllItems];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:v4 forKey:@"objects"];
  }

  else
  {
    [a3 encodeObject:v4];
  }
}

- (MFWeakSet)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = MFWeakSet;
  v4 = [(MFWeakSet *)&v10 initWithCoder:?];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      v5 = [a3 decodeObjectForKey:@"objects"];
    }

    else
    {
      v5 = [a3 decodeObject];
    }

    v6 = v5;
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v7 = *MEMORY[0x1E695E480];
    v8 = [v6 count];
    v4->_objects = CFDictionaryCreateMutable(v7, v8, 0, MEMORY[0x1E695E9E8]);
    [(MFWeakSet *)v4 addObjectsFromArray:v6];
  }

  return v4;
}

- (BOOL)intersectsSet:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 == self)
  {
LABEL_12:
    LOBYTE(v5) = 1;
    goto LABEL_13;
  }

  v5 = [a3 count];
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(MFWeakSet *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(self);
        }

        if ([a3 containsObject:*(*(&v11 + 1) + 8 * v8)])
        {
          goto LABEL_12;
        }

        if (v6 == ++v8)
        {
          v6 = [(MFWeakSet *)self countByEnumeratingWithState:&v11 objects:v15 count:16];
          LOBYTE(v5) = 0;
          if (v6)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToSet:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = [(MFWeakSet *)self count];
    if (v5 == [a3 count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [(MFWeakSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
LABEL_5:
        v9 = 0;
        while (1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          LODWORD(v6) = [a3 containsObject:*(*(&v12 + 1) + 8 * v9)];
          if (!v6)
          {
            break;
          }

          if (v7 == ++v9)
          {
            v7 = [(MFWeakSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
            LOBYTE(v6) = 1;
            if (v7)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isSubsetOfSet:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 == self || (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, (v5 = [(MFWeakSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16]) == 0))
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v6 = v5;
    v7 = *v13;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(self);
      }

      v9 = [a3 containsObject:*(*(&v12 + 1) + 8 * v8)];
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(MFWeakSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
        LOBYTE(v9) = 1;
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)makeObjectsPerformSelector:(SEL)a3 withObject:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(MFWeakSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(self);
        }

        [*(*(&v12 + 1) + 8 * v10++) a3];
      }

      while (v8 != v10);
      v8 = [(MFWeakSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)setByAddingObject:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a3;
  result = -[MFWeakSet setByAddingObjectsFromArray:](self, "setByAddingObjectsFromArray:", [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1]);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)setByAddingObjectsFromSet:(id)a3
{
  v4 = [a3 allObjects];

  return [(MFWeakSet *)self setByAddingObjectsFromArray:v4];
}

- (id)setByAddingObjectsFromArray:(id)a3
{
  v4 = [(MFWeakSet *)self _copyAllItems];
  v5 = [objc_alloc(objc_opt_class()) initWithArray:{objc_msgSend(v4, "arrayByAddingObjectsFromArray:", a3)}];

  return v5;
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(MFWeakSet *)self _copyAllItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 0;
      (*(a4 + 2))(a4, v10, &v12);
      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)objectsWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [(MFWeakSet *)self _copyAllItems];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v15 = 0;
      if ((*(a4 + 2))(a4, v12, &v15))
      {
        [v6 addObject:v12];
      }

      if (v15)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  result = v6;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)set
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (MFWeakSet)setWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithObjects:a3 count:a4];

  return v4;
}

+ (MFWeakSet)setWithObjects:(id)a3
{
  if (!a3)
  {
    return [a1 set];
  }

  LODWORD(v5) = 0;
  v14 = &v16;
  do
  {
    v6 = v14++;
    v5 = (v5 + 1);
  }

  while (*v6);
  if (!v5)
  {
    return [a1 set];
  }

  v7 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  v8 = v7;
  *v7 = a3;
  v15 = &v16;
  if (v5 != 1)
  {
    v9 = v7 + 1;
    v10 = v5 - 1;
    do
    {
      v11 = v15++;
      *v9++ = *v11;
      --v10;
    }

    while (v10);
  }

  v12 = [objc_allocWithZone(a1) initWithObjects:v7 count:v5];
  free(v8);
  return v12;
}

+ (MFWeakSet)setWithSet:(id)a3
{
  v3 = [[a1 alloc] initWithSet:a3];

  return v3;
}

+ (MFWeakSet)setWithArray:(id)a3
{
  v3 = [[a1 alloc] initWithArray:a3];

  return v3;
}

+ (MFWeakSet)setWithCapacity:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithCapacity:a3];

  return v3;
}

- (MFWeakSet)initWithObjects:(const void *)a3 count:(unint64_t)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a3 count:a4];
  v6 = [(MFWeakSet *)self initWithArray:v5];

  return v6;
}

- (MFWeakSet)initWithObjects:(id)a3
{
  if (!a3)
  {
    return [(MFWeakSet *)self init];
  }

  LODWORD(v5) = 0;
  v14 = &v16;
  do
  {
    v6 = v14++;
    v5 = (v5 + 1);
  }

  while (*v6);
  if (!v5)
  {
    return [(MFWeakSet *)self init];
  }

  v7 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  v8 = v7;
  *v7 = a3;
  v15 = &v16;
  if (v5 != 1)
  {
    v9 = v7 + 1;
    v10 = v5 - 1;
    do
    {
      v11 = v15++;
      *v9++ = *v11;
      --v10;
    }

    while (v10);
  }

  v12 = [(MFWeakSet *)self initWithObjects:v7 count:v5];
  free(v8);
  return v12;
}

- (MFWeakSet)initWithSet:(id)a3 copyItems:(BOOL)a4
{
  v6 = [a3 allObjects];
  v7 = v6;
  if (a4)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6 copyItems:1];
  }

  else
  {
    v8 = v6;
  }

  v9 = [(MFWeakSet *)self initWithArray:v7];

  return v9;
}

- (MFWeakSet)initWithArray:(id)a3
{
  v4 = -[MFWeakSet initWithCapacity:](self, "initWithCapacity:", [a3 count]);
  v5 = v4;
  if (v4)
  {
    [(MFWeakSet *)v4 addObjectsFromArray:a3];
  }

  return v5;
}

- (MFWeakSet)initWithCapacity:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = MFWeakSet;
  v4 = [(MFWeakSet *)&v6 init];
  if (v4)
  {
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4->_objects = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], a3, 0, MEMORY[0x1E695E9E8]);
  }

  return v4;
}

- (void)dealloc
{
  objects = self->_objects;
  if (objects)
  {
    CFRelease(objects);
  }

  v4.receiver = self;
  v4.super_class = MFWeakSet;
  [(MFWeakSet *)&v4 dealloc];
}

- (void)addObject:(id)a3
{
  [(NSLock *)self->_lock lock];
  CFDictionaryAddValue(self->_objects, a3, [MFWeakReferenceHolder weakReferenceWithObject:a3]);
  ++self->_gen;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)removeObject:(id)a3
{
  [(NSLock *)self->_lock lock];
  CFDictionaryRemoveValue(self->_objects, a3);
  ++self->_gen;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)addObjectsFromArray:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        CFDictionaryAddValue(self->_objects, *(*(&v10 + 1) + 8 * v8), [MFWeakReferenceHolder weakReferenceWithObject:*(*(&v10 + 1) + 8 * v8)]);
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  ++self->_gen;
  [(NSLock *)self->_lock unlock];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)intersectSet:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 != self)
  {
    v5 = [(MFWeakSet *)self _copyAllItems];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (([a3 containsObject:v10] & 1) == 0)
          {
            [(MFWeakSet *)self removeObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)minusSet:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 == self)
  {
    v10 = *MEMORY[0x1E69E9840];

    [(MFWeakSet *)self removeAllObjects];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(a3);
          }

          [(MFWeakSet *)self removeObject:*(*(&v11 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)removeAllObjects
{
  [(NSLock *)self->_lock lock];
  CFDictionaryRemoveAllValues(self->_objects);
  ++self->_gen;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)unionSet:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 != self)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(a3);
          }

          [(MFWeakSet *)self addObject:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setSet:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 != self)
  {
    [(MFWeakSet *)self removeAllObjects];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(a3);
          }

          [(MFWeakSet *)self addObject:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end