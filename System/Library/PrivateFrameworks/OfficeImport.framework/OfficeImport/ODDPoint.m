@interface ODDPoint
+ (void)addConnectionToPoint:(id)a3 order:(unint64_t)a4 array:(id *)a5;
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

+ (void)addConnectionToPoint:(id)a3 order:(unint64_t)a4 array:(id *)a5
{
  v16 = a3;
  v7 = *a5;
  if (!*a5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *a5 = v7;
  }

  v8 = [v7 count];
  v9 = a4 - v8;
  if (a4 > v8)
  {
    do
    {
      v10 = *a5;
      v11 = [MEMORY[0x277CBEB68] null];
      [v10 addObject:v11];

      --v9;
    }

    while (v9);
  }

  v12 = [*a5 count];
  v13 = *a5;
  if (v12 == a4)
  {
    [v13 addObject:v16];
  }

  else
  {
    v14 = [v13 objectAtIndex:a4];
    v15 = [MEMORY[0x277CBEB68] null];

    if (v14 == v15)
    {
      [*a5 replaceObjectAtIndex:a4 withObject:v16];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"ODDException" format:@"Point already has a connection at the given order"];
    }
  }
}

@end