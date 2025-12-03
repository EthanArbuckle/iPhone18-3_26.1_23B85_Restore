@interface EDStylesCollection
- (EDStylesCollection)init;
- (unint64_t)addObject:(id)object;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)index;
@end

@implementation EDStylesCollection

- (EDStylesCollection)init
{
  v3.receiver = self;
  v3.super_class = EDStylesCollection;
  result = [(EDCollection *)&v3 init];
  if (result)
  {
    result->mDefaultWorkbookStyleIndex = -1;
  }

  return result;
}

- (unint64_t)addObject:(id)object
{
  objectCopy = object;
  v7.receiver = self;
  v7.super_class = EDStylesCollection;
  v5 = [(EDCollection *)&v7 addObject:objectCopy];
  if (v5 != -1)
  {
    [objectCopy setIndex:v5];
  }

  return v5;
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v3.receiver = self;
  v3.super_class = EDStylesCollection;
  [(EDCollection *)&v3 removeObjectAtIndex:index];
}

- (void)removeAllObjects
{
  v2.receiver = self;
  v2.super_class = EDStylesCollection;
  [(EDCollection *)&v2 removeAllObjects];
}

@end