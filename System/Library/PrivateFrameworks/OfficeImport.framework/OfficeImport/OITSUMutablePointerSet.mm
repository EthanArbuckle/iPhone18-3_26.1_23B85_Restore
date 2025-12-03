@interface OITSUMutablePointerSet
- (OITSUMutablePointerSet)init;
- (OITSUMutablePointerSet)initWithCFSet:(__CFSet *)set;
- (OITSUMutablePointerSet)initWithCapacity:(unint64_t)capacity;
- (OITSUMutablePointerSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)member:(id)member;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (id)setByAddingObject:(id)object;
- (id)setByAddingObjectsFromArray:(id)array;
- (id)setByAddingObjectsFromSet:(id)set;
- (void)dealloc;
- (void)getObjects:(id *)objects;
@end

@implementation OITSUMutablePointerSet

- (void)dealloc
{
  mSet = self->mSet;
  if (mSet)
  {
    CFRelease(mSet);
    self->mSet = 0;
  }

  v4.receiver = self;
  v4.super_class = OITSUMutablePointerSet;
  [(OITSUMutablePointerSet *)&v4 dealloc];
}

- (OITSUMutablePointerSet)init
{
  if ([(OITSUMutablePointerSet *)self isMemberOfClass:objc_opt_class()])
  {

    return [(OITSUMutablePointerSet *)self initWithCapacity:0];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = OITSUMutablePointerSet;
    return [(OITSUMutablePointerSet *)&v4 init];
  }
}

- (OITSUMutablePointerSet)initWithCapacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = OITSUMutablePointerSet;
  v4 = [(OITSUMutablePointerSet *)&v6 init];
  if (v4)
  {
    v4->mSet = CFSetCreateMutable(0, capacity, 0);
  }

  return v4;
}

- (OITSUMutablePointerSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  countCopy = count;
  v6 = [(OITSUMutablePointerSet *)self initWithCapacity:count];
  if (v6 && countCopy)
  {
    do
    {
      v7 = *objects++;
      CFSetAddValue(v6->mSet, v7);
      --countCopy;
    }

    while (countCopy);
  }

  return v6;
}

- (OITSUMutablePointerSet)initWithCFSet:(__CFSet *)set
{
  if (set)
  {
    v7.receiver = self;
    v7.super_class = OITSUMutablePointerSet;
    v5 = [(OITSUMutablePointerSet *)&v7 init];
    if (v5)
    {
      v5->mSet = CFSetCreateMutableCopy(0, 0, set);
    }

    return v5;
  }

  else
  {

    return [(OITSUMutablePointerSet *)self initWithCapacity:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc([objc_opt_class() privateNonMutableClass]);
  mSet = self->mSet;

  return [v4 initWithCFSet:mSet];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc([objc_opt_class() privateMutableClass]);
  mSet = self->mSet;

  return [v4 initWithCFSet:mSet];
}

- (id)member:(id)member
{
  value = 0;
  if (!member)
  {
    return 0;
  }

  if (CFSetGetValueIfPresent(self->mSet, member, &value))
  {
    return value;
  }

  return 0;
}

- (id)objectEnumerator
{
  v2 = [[OITSUCFSetEnumerator alloc] initWithCFSet:self->mSet];

  return v2;
}

- (void)getObjects:(id *)objects
{
  Count = CFSetGetCount(self->mSet);
  if (objects && Count)
  {
    mSet = self->mSet;

    CFSetGetValues(mSet, objects);
  }
}

- (id)allObjects
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(OITSUMutablePointerSet *)self count];
  v4 = v3;
  if (v3 >= 0x41)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = (v9 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3 >= 0x41)
  {
    v6 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"*** attempt to create a temporary id buffer of length (%lu) failed", v4}];
    }
  }

  [(OITSUMutablePointerSet *)self getObjects:v6];
  v7 = CFArrayCreate(0, v6, v4, 0);
  if (v4 >= 0x41)
  {
    free(v6);
  }

  return CFMakeCollectable(v7);
}

- (id)setByAddingObject:(id)object
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [(OITSUMutablePointerSet *)self count];
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

  [(OITSUMutablePointerSet *)self getObjects:v9];
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
  v5 = [(OITSUMutablePointerSet *)self count];
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

  [(OITSUMutablePointerSet *)self getObjects:v9];
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
  v5 = [(OITSUMutablePointerSet *)self count];
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

  [(OITSUMutablePointerSet *)self getObjects:v9];
  [array getObjects:&v9[8 * v5] range:{0, v6}];
  v10 = [objc_msgSend(objc_opt_class() "privateNonMutableClass")];
  if (v7 >= 0x41)
  {
    free(v9);
  }

  return v10;
}

@end