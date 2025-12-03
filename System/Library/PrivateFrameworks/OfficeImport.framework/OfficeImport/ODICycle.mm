@interface ODICycle
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
+ (CGRect)boundingBoxWithIsTight:(BOOL)tight state:(id)state;
+ (CGRect)mapGSpaceWithState:(id)state;
+ (CGRect)nodeBoundsWithIndex:(unsigned int)index state:(id)state;
+ (CGSize)nodeSizeWithState:(id)state;
+ (unint64_t)nodeCountWithState:(id)state;
+ (void)mapWithState:(id)state;
@end

@implementation ODICycle

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  if ([identifierCopy isEqualToString:@"cycle1"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"cycle2") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"cycle8"))
  {
    v7 = off_2799C57B0;
  }

  else if ([identifierCopy isEqualToString:@"cycle3"])
  {
    v7 = off_2799C57B8;
  }

  else if ([identifierCopy isEqualToString:@"cycle4"])
  {
    v7 = off_2799C57C0;
  }

  else if ([identifierCopy isEqualToString:@"cycle5"])
  {
    v7 = off_2799C57C8;
  }

  else if ([identifierCopy isEqualToString:@"cycle6"])
  {
    v7 = off_2799C57D0;
  }

  else if ([identifierCopy isEqualToString:@"cycle7"])
  {
    v7 = off_2799C57D8;
  }

  else if ([identifierCopy isEqualToString:@"chart3"])
  {
    v7 = off_2799C57A8;
  }

  else
  {
    if (![identifierCopy isEqualToString:@"gear1"])
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = off_2799C57E0;
  }

  [(__objc2_class *)*v7 mapWithState:stateCopy];
  v8 = 1;
LABEL_6:

  return v8;
}

+ (void)mapWithState:(id)state
{
  stateCopy = state;
  v4 = [self nodeCountWithState:?];
  [stateCopy setPointCount:v4];
  if (v4 == 2)
  {
    v5 = [self map2NodeWithState:stateCopy];
LABEL_5:
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v4 == 1)
  {
    v5 = [self map1NodeWithState:stateCopy];
    goto LABEL_5;
  }

LABEL_6:
  [self mapGSpaceWithState:stateCopy];
  [stateCopy setLogicalBounds:?];
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];

  if (v4)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [children objectAtIndex:v9];
      [stateCopy setPointIndex:v10];
      [self mapNode:v11 index:v10 state:stateCopy];
      siblingTransition = [v11 siblingTransition];
      [self mapTransition:siblingTransition index:v10 state:stateCopy];

      v9 = (v10 + 1);
      v10 = v9;
    }

    while (v4 > v9);
  }

LABEL_10:
}

+ (unint64_t)nodeCountWithState:(id)state
{
  diagram = [state diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v6 = [children count];

  return v6;
}

+ (CGSize)nodeSizeWithState:(id)state
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)boundingBoxWithIsTight:(BOOL)tight state:(id)state
{
  stateCopy = state;
  if (tight)
  {
    v7 = ODIRegularPolygonBounds([self nodeCountWithState:stateCopy], 1.0, -90.0);
  }

  else
  {
    v7 = TSURectWithCenterAndSize(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 2.0);
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  [self nodeSizeWithState:stateCopy];
  v16 = v15 * -0.5;
  v18 = v17 * -0.5;
  v27.origin.x = v11;
  v27.origin.y = v12;
  v27.size.width = v13;
  v27.size.height = v14;
  v28 = CGRectInset(v27, v16, v18);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (CGRect)nodeBoundsWithIndex:(unsigned int)index state:(id)state
{
  stateCopy = state;
  v7 = [self nodeCountWithState:stateCopy];
  [self nodeSizeWithState:stateCopy];
  v9 = v8;
  *&v8 = (2 * index) * 3.14159265 / v7 + -1.57079633;
  v10 = __sincosf_stret(*&v8);
  v11 = TSURectWithCenterAndSize(v10.__cosval, v10.__sinval, v9);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (CGRect)mapGSpaceWithState:(id)state
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end