@interface NSSet(GC)
- (id)gc_member:()GC;
- (id)gc_setByRemovingObject:()GC;
- (id)gc_setByRemovingObjectsFromSet:()GC;
@end

@implementation NSSet(GC)

- (id)gc_member:()GC
{
  v5 = [self member:?];
  if (v5 || [self count] != 1)
  {
    anyObject2 = v5;
  }

  else
  {
    anyObject = [self anyObject];
    if ([anyObject isEqual:a3])
    {
      anyObject2 = [self anyObject];
    }

    else
    {
      anyObject2 = 0;
    }
  }

  return anyObject2;
}

- (id)gc_setByRemovingObject:()GC
{
  v4 = [self mutableCopy];
  [v4 removeObject:a3];
  v5 = [v4 copy];

  return v5;
}

- (id)gc_setByRemovingObjectsFromSet:()GC
{
  v4 = [self mutableCopy];
  [v4 minusSet:a3];
  v5 = [v4 copy];

  return v5;
}

@end