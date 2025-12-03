@interface OITSUPointerSet
- (OITSUPointerSet)initWithCFSet:(__CFSet *)set;
- (OITSUPointerSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)allObjects;
- (id)member:(id)member;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (id)setByAddingObject:(id)object;
- (id)setByAddingObjectsFromArray:(id)array;
- (id)setByAddingObjectsFromSet:(id)set;
- (unint64_t)count;
- (void)dealloc;
- (void)getObjects:(id *)objects;
@end

@implementation OITSUPointerSet

- (void)dealloc
{
  mSet = self->mSet;
  if (mSet)
  {
    CFRelease(mSet);
    self->mSet = 0;
  }

  v4.receiver = self;
  v4.super_class = OITSUPointerSet;
  [(OITSUPointerSet *)&v4 dealloc];
}

- (OITSUPointerSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v9.receiver = self;
  v9.super_class = OITSUPointerSet;
  v6 = [(OITSUPointerSet *)&v9 init];
  v7 = v6;
  if (count && v6)
  {
    v6->mSet = CFSetCreate(0, objects, count, 0);
  }

  return v7;
}

- (OITSUPointerSet)initWithCFSet:(__CFSet *)set
{
  v7.receiver = self;
  v7.super_class = OITSUPointerSet;
  v4 = [(OITSUPointerSet *)&v7 init];
  v5 = v4;
  if (set && v4)
  {
    v4->mSet = CFSetCreateCopy(0, set);
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc([objc_opt_class() privateMutableClass]);
  mSet = self->mSet;

  return [v4 initWithCFSet:mSet];
}

- (unint64_t)count
{
  result = self->mSet;
  if (result)
  {
    return CFSetGetCount(result);
  }

  return result;
}

- (id)member:(id)member
{
  result = 0;
  if (member)
  {
    mSet = self->mSet;
    if (mSet)
    {
      value = 0;
      if (CFSetGetValueIfPresent(mSet, member, &value))
      {
        return value;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)objectEnumerator
{
  v2 = [[OITSUCFSetEnumerator alloc] initWithCFSet:self->mSet];

  return v2;
}

- (void)getObjects:(id *)objects
{
  mSet = self->mSet;
  if (mSet)
  {
    Count = CFSetGetCount(mSet);
    if (objects)
    {
      if (Count)
      {
        v7 = self->mSet;

        CFSetGetValues(v7, objects);
      }
    }
  }
}

- (id)allObjects
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(OITSUPointerSet *)self count];
  if (v3)
  {
    v4 = v3;
    if (v3 >= 0x41)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3;
    }

    v6 = (v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v3 >= 0x41)
    {
      v6 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
      if (!v6)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"*** attempt to create a temporary id buffer of length (%lu) failed", v4}];
      }
    }

    [(OITSUPointerSet *)self getObjects:v6];
    v7 = CFArrayCreate(0, v6, v4, 0);
    if (v4 >= 0x41)
    {
      free(v6);
    }

    return CFMakeCollectable(v7);
  }

  else
  {
    v9 = MEMORY[0x277CBEA60];

    return [v9 array];
  }
}

- (id)setByAddingObject:(id)object
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [(OITSUPointerSet *)self count];
  v6 = v5;
  v7 = v5 + 1;
  v8 = 1;
  if (v5 + 1 < 0x41)
  {
    v8 = v5 + 1;
  }

  v9 = v12 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 >= 0x41)
  {
    v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"*** attempt to create a temporary id buffer of length (%lu) failed", v7}];
    }
  }

  [(OITSUPointerSet *)self getObjects:v9];
  *&v9[8 * v6] = object;
  v10 = [objc_msgSend(objc_opt_class() "privateNonMutableClass")];
  if (v7 >= 0x41)
  {
    free(v9);
  }

  return v10;
}

- (id)setByAddingObjectsFromSet:(id)set
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(OITSUPointerSet *)self count];
  v6 = [set count];
  v7 = v6 + v5;
  if (v6 + v5 >= 0x41)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 + v5;
  }

  v9 = &v17 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 >= 0x41)
  {
    v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"*** attempt to create a temporary id buffer of length (%lu) failed", v7}];
    }
  }

  [(OITSUPointerSet *)self getObjects:v9];
  if (objc_opt_respondsToSelector())
  {
    [set getObjects:&v9[8 * v5]];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v17 = 0u;
    v10 = [set countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = &v9[8 * v5];
      v13 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(set);
          }

          *v12 = *(*(&v17 + 1) + 8 * i);
          v12 += 8;
        }

        v11 = [set countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v15 = [objc_msgSend(objc_opt_class() "privateNonMutableClass")];
  if (v7 >= 0x41)
  {
    free(v9);
  }

  return v15;
}

- (id)setByAddingObjectsFromArray:(id)array
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [(OITSUPointerSet *)self count];
  v6 = [array count];
  v7 = v6 + v5;
  MEMORY[0x28223BE20]();
  v9 = v12 - v8;
  if (v6 + v5 >= 0x41)
  {
    v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"*** attempt to create a temporary id buffer of length (%lu) failed", v7}];
    }
  }

  [(OITSUPointerSet *)self getObjects:v9];
  [array getObjects:&v9[8 * v5] range:{0, v6}];
  v10 = [objc_msgSend(objc_opt_class() "privateNonMutableClass")];
  if (v7 >= 0x41)
  {
    free(v9);
  }

  return v10;
}

@end