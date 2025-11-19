@interface ODICycle
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
+ (CGRect)boundingBoxWithIsTight:(BOOL)a3 state:(id)a4;
+ (CGRect)mapGSpaceWithState:(id)a3;
+ (CGRect)nodeBoundsWithIndex:(unsigned int)a3 state:(id)a4;
+ (CGSize)nodeSizeWithState:(id)a3;
+ (unint64_t)nodeCountWithState:(id)a3;
+ (void)mapWithState:(id)a3;
@end

@implementation ODICycle

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"cycle1"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"cycle2") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"cycle8"))
  {
    v7 = off_2799C57B0;
  }

  else if ([v5 isEqualToString:@"cycle3"])
  {
    v7 = off_2799C57B8;
  }

  else if ([v5 isEqualToString:@"cycle4"])
  {
    v7 = off_2799C57C0;
  }

  else if ([v5 isEqualToString:@"cycle5"])
  {
    v7 = off_2799C57C8;
  }

  else if ([v5 isEqualToString:@"cycle6"])
  {
    v7 = off_2799C57D0;
  }

  else if ([v5 isEqualToString:@"cycle7"])
  {
    v7 = off_2799C57D8;
  }

  else if ([v5 isEqualToString:@"chart3"])
  {
    v7 = off_2799C57A8;
  }

  else
  {
    if (![v5 isEqualToString:@"gear1"])
    {
      v8 = 0;
      goto LABEL_6;
    }

    v7 = off_2799C57E0;
  }

  [(__objc2_class *)*v7 mapWithState:v6];
  v8 = 1;
LABEL_6:

  return v8;
}

+ (void)mapWithState:(id)a3
{
  v13 = a3;
  v4 = [a1 nodeCountWithState:?];
  [v13 setPointCount:v4];
  if (v4 == 2)
  {
    v5 = [a1 map2NodeWithState:v13];
LABEL_5:
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v4 == 1)
  {
    v5 = [a1 map1NodeWithState:v13];
    goto LABEL_5;
  }

LABEL_6:
  [a1 mapGSpaceWithState:v13];
  [v13 setLogicalBounds:?];
  v6 = [v13 diagram];
  v7 = [v6 documentPoint];
  v8 = [v7 children];

  if (v4)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndex:v9];
      [v13 setPointIndex:v10];
      [a1 mapNode:v11 index:v10 state:v13];
      v12 = [v11 siblingTransition];
      [a1 mapTransition:v12 index:v10 state:v13];

      v9 = (v10 + 1);
      v10 = v9;
    }

    while (v4 > v9);
  }

LABEL_10:
}

+ (unint64_t)nodeCountWithState:(id)a3
{
  v3 = [a3 diagram];
  v4 = [v3 documentPoint];
  v5 = [v4 children];
  v6 = [v5 count];

  return v6;
}

+ (CGSize)nodeSizeWithState:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)boundingBoxWithIsTight:(BOOL)a3 state:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = ODIRegularPolygonBounds([a1 nodeCountWithState:v6], 1.0, -90.0);
  }

  else
  {
    v7 = TSURectWithCenterAndSize(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 2.0);
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  [a1 nodeSizeWithState:v6];
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

+ (CGRect)nodeBoundsWithIndex:(unsigned int)a3 state:(id)a4
{
  v6 = a4;
  v7 = [a1 nodeCountWithState:v6];
  [a1 nodeSizeWithState:v6];
  v9 = v8;
  *&v8 = (2 * a3) * 3.14159265 / v7 + -1.57079633;
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

+ (CGRect)mapGSpaceWithState:(id)a3
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