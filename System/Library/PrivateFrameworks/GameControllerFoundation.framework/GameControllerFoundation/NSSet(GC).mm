@interface NSSet(GC)
- (id)gc_member:()GC;
- (id)gc_setByRemovingObject:()GC;
- (id)gc_setByRemovingObjectsFromSet:()GC;
@end

@implementation NSSet(GC)

- (id)gc_member:()GC
{
  v5 = [a1 member:?];
  if (v5 || [a1 count] != 1)
  {
    v7 = v5;
  }

  else
  {
    v6 = [a1 anyObject];
    if ([v6 isEqual:a3])
    {
      v7 = [a1 anyObject];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)gc_setByRemovingObject:()GC
{
  v4 = [a1 mutableCopy];
  [v4 removeObject:a3];
  v5 = [v4 copy];

  return v5;
}

- (id)gc_setByRemovingObjectsFromSet:()GC
{
  v4 = [a1 mutableCopy];
  [v4 minusSet:a3];
  v5 = [v4 copy];

  return v5;
}

@end