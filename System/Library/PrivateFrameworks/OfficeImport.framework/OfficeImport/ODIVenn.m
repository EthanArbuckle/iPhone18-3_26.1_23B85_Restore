@interface ODIVenn
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
+ (CGRect)mapGSpaceWithState:(id)a3;
+ (unint64_t)nodeCountWithState:(id)a3;
+ (void)mapWithState:(id)a3;
@end

@implementation ODIVenn

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"venn1"])
  {
    v7 = off_2799C57E8;
  }

  else
  {
    if (![v5 isEqualToString:@"venn3"])
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = off_2799C57F0;
  }

  [(__objc2_class *)*v7 mapWithState:v6];
  v8 = 1;
LABEL_7:

  return v8;
}

+ (void)mapWithState:(id)a3
{
  v14 = a3;
  v4 = [a1 nodeCountWithState:?];
  v5 = [v14 diagram];
  v6 = [v5 documentPoint];
  v7 = [v6 children];

  if (v4 == 1)
  {
    [v14 setLogicalBounds:{0.0, 0.0, 1.0, 1.0}];
    v8 = +[ODIDrawable shapeGeometryForEllipse];
    v9 = [ODIDrawable addShapeWithBounds:v8 rotation:v14 geometry:0.0 state:0.0, 1.0, 1.0, 0.0];

    v10 = [v7 objectAtIndex:0];
    [ODIDrawable mapStyleAndTextFromPoint:v10 shape:v9 state:v14];
  }

  else
  {
    [a1 mapGSpaceWithState:v14];
    [v14 setLogicalBounds:?];
    if (v4)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [v7 objectAtIndex:v11];
        [a1 mapNode:v13 index:v12 state:v14];

        v11 = (v12 + 1);
        v12 = v11;
      }

      while (v4 > v11);
    }
  }
}

+ (unint64_t)nodeCountWithState:(id)a3
{
  v3 = [a3 diagram];
  v4 = [v3 documentPoint];
  v5 = [v4 children];
  v6 = [v5 count];

  return v6;
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