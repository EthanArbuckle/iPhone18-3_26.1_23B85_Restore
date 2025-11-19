@interface EDStylesCollection
- (EDStylesCollection)init;
- (unint64_t)addObject:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)a3;
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

- (unint64_t)addObject:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EDStylesCollection;
  v5 = [(EDCollection *)&v7 addObject:v4];
  if (v5 != -1)
  {
    [v4 setIndex:v5];
  }

  return v5;
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = EDStylesCollection;
  [(EDCollection *)&v3 removeObjectAtIndex:a3];
}

- (void)removeAllObjects
{
  v2.receiver = self;
  v2.super_class = EDStylesCollection;
  [(EDCollection *)&v2 removeAllObjects];
}

@end