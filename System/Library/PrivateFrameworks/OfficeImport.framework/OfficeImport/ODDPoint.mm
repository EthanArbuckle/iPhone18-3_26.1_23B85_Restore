@interface ODDPoint
+ (void)addConnectionToPoint:(id)point order:(unint64_t)order array:(id *)array;
- (ODDPoint)init;
- (id)description;
@end

@implementation ODDPoint

- (ODDPoint)init
{
  v8.receiver = self;
  v8.super_class = ODDPoint;
  v2 = [(ODDPoint *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(ODDPointPropertySet);
    mPropertySet = v2->mPropertySet;
    v2->mPropertySet = v3;

    v5 = objc_alloc_init(OADShapeProperties);
    mShapeProperties = v2->mShapeProperties;
    v2->mShapeProperties = v5;
  }

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = ODDPoint;
  v2 = [(ODDPoint *)&v4 description];

  return v2;
}

+ (void)addConnectionToPoint:(id)point order:(unint64_t)order array:(id *)array
{
  pointCopy = point;
  v7 = *array;
  if (!*array)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *array = v7;
  }

  v8 = [v7 count];
  v9 = order - v8;
  if (order > v8)
  {
    do
    {
      v10 = *array;
      null = [MEMORY[0x277CBEB68] null];
      [v10 addObject:null];

      --v9;
    }

    while (v9);
  }

  v12 = [*array count];
  v13 = *array;
  if (v12 == order)
  {
    [v13 addObject:pointCopy];
  }

  else
  {
    v14 = [v13 objectAtIndex:order];
    null2 = [MEMORY[0x277CBEB68] null];

    if (v14 == null2)
    {
      [*array replaceObjectAtIndex:order withObject:pointCopy];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Point already has a connection at the given order"];
    }
  }
}

@end