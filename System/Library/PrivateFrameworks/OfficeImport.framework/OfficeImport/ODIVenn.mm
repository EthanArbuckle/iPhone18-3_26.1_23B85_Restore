@interface ODIVenn
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
+ (CGRect)mapGSpaceWithState:(id)state;
+ (unint64_t)nodeCountWithState:(id)state;
+ (void)mapWithState:(id)state;
@end

@implementation ODIVenn

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  if ([identifierCopy isEqualToString:@"venn1"])
  {
    v7 = off_2799C57E8;
  }

  else
  {
    if (![identifierCopy isEqualToString:@"venn3"])
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = off_2799C57F0;
  }

  [(__objc2_class *)*v7 mapWithState:stateCopy];
  v8 = 1;
LABEL_7:

  return v8;
}

+ (void)mapWithState:(id)state
{
  stateCopy = state;
  v4 = [self nodeCountWithState:?];
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];

  if (v4 == 1)
  {
    [stateCopy setLogicalBounds:{0.0, 0.0, 1.0, 1.0}];
    v8 = +[ODIDrawable shapeGeometryForEllipse];
    v9 = [ODIDrawable addShapeWithBounds:v8 rotation:stateCopy geometry:0.0 state:0.0, 1.0, 1.0, 0.0];

    v10 = [children objectAtIndex:0];
    [ODIDrawable mapStyleAndTextFromPoint:v10 shape:v9 state:stateCopy];
  }

  else
  {
    [self mapGSpaceWithState:stateCopy];
    [stateCopy setLogicalBounds:?];
    if (v4)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [children objectAtIndex:v11];
        [self mapNode:v13 index:v12 state:stateCopy];

        v11 = (v12 + 1);
        v12 = v11;
      }

      while (v4 > v11);
    }
  }
}

+ (unint64_t)nodeCountWithState:(id)state
{
  diagram = [state diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v6 = [children count];

  return v6;
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