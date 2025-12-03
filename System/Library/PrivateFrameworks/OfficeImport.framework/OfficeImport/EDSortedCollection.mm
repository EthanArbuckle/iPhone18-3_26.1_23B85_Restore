@interface EDSortedCollection
- (unint64_t)addObject:(id)object overrideDuplicate:(BOOL)duplicate;
@end

@implementation EDSortedCollection

- (unint64_t)addObject:(id)object overrideDuplicate:(BOOL)duplicate
{
  duplicateCopy = duplicate;
  objectCopy = object;
  v7 = [objectCopy key];
  v8 = [(EDCollection *)self count];
  if (v8)
  {
    while (1)
    {
      v9 = v8 - 1;
      v10 = [(EDCollection *)self objectAtIndex:v8 - 1];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 key];
        if (v7 >= v12)
        {
          break;
        }
      }

      --v8;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v16.receiver = self;
    v16.super_class = EDSortedCollection;
    [(EDKeyedCollection *)&v16 insertObject:objectCopy atIndex:v8];
    if (duplicateCopy && v7 == v12)
    {
      v15.receiver = self;
      v15.super_class = EDSortedCollection;
      [(EDKeyedCollection *)&v15 removeObjectAtIndex:v8 - 1];
    }
  }

  else
  {
LABEL_5:
    v14.receiver = self;
    v14.super_class = EDSortedCollection;
    [(EDKeyedCollection *)&v14 insertObject:objectCopy atIndex:0];
    v8 = 0;
  }

  return v8;
}

@end