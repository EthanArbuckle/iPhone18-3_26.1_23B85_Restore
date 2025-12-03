@interface _HFSetContainer
+ (id)containerWithObject:(id)object atIndex:(unint64_t)index comparator:(id)comparator hashGenerator:(id)generator;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _HFSetContainer

+ (id)containerWithObject:(id)object atIndex:(unint64_t)index comparator:(id)comparator hashGenerator:(id)generator
{
  generatorCopy = generator;
  comparatorCopy = comparator;
  objectCopy = object;
  v12 = objc_alloc_init(_HFSetContainer);
  [(_HFSetContainer *)v12 setObject:objectCopy];

  [(_HFSetContainer *)v12 setIndex:index];
  [(_HFSetContainer *)v12 setComparator:comparatorCopy];

  [(_HFSetContainer *)v12 setHashGenerator:generatorCopy];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object = [(_HFSetContainer *)equalCopy object];
      comparator = [(_HFSetContainer *)self comparator];
      if (comparator)
      {
        comparator2 = [(_HFSetContainer *)self comparator];
        object2 = [(_HFSetContainer *)self object];
        v9 = (comparator2)[2](comparator2, object2, object);
      }

      else
      {
        comparator2 = [(_HFSetContainer *)self object];
        v9 = [comparator2 isEqual:object];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  hashGenerator = [(_HFSetContainer *)self hashGenerator];
  if (hashGenerator)
  {
    hashGenerator2 = [(_HFSetContainer *)self hashGenerator];
    object = [(_HFSetContainer *)self object];
    v6 = (hashGenerator2)[2](hashGenerator2, object);
  }

  else
  {
    hashGenerator2 = [(_HFSetContainer *)self object];
    v6 = [hashGenerator2 hash];
  }

  return v6;
}

@end