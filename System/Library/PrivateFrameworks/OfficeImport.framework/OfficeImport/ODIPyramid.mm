@interface ODIPyramid
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
+ (BOOL)verticalFlipWithState:(id)state;
+ (unint64_t)nodeCountWithState:(id)state;
+ (void)addTrapezoidForNode:(id)node top:(float)top height:(float)height topBase:(float)base bottomBase:(float)bottomBase state:(id)state;
+ (void)mapWithState:(id)state apexUp:(BOOL)up;
@end

@implementation ODIPyramid

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  v8 = [self verticalFlipWithState:stateCopy];
  if (([identifierCopy isEqualToString:@"pyramid1"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"pyramid2") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"pyramid4"))
  {
    v8 = v8 ^ 1;
  }

  else if (![identifierCopy isEqualToString:@"pyramid3"])
  {
    v9 = 0;
    goto LABEL_6;
  }

  [ODIPyramid mapWithState:stateCopy apexUp:v8];
  v9 = 1;
LABEL_6:

  return v9;
}

+ (void)addTrapezoidForNode:(id)node top:(float)top height:(float)height topBase:(float)base bottomBase:(float)bottomBase state:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v14 = objc_alloc_init(OITSUBezierPath);
  topCopy = top;
  [(OITSUBezierPath *)v14 moveToPoint:(base * 0.5), top];
  v16 = (top + height);
  [(OITSUBezierPath *)v14 lineToPoint:(bottomBase * 0.5), v16];
  [(OITSUBezierPath *)v14 lineToPoint:(bottomBase * -0.5), v16];
  [(OITSUBezierPath *)v14 lineToPoint:(base * -0.5), topCopy];
  [(OITSUBezierPath *)v14 closePath];
  if (base >= bottomBase)
  {
    bottomBaseCopy = base;
  }

  else
  {
    bottomBaseCopy = bottomBase;
  }

  v18 = bottomBaseCopy;
  v19 = bottomBaseCopy * -0.5;
  heightCopy = height;
  heightCopy = [ODIDrawable shapeGeometryForBezierPath:v14 gSpace:v19, topCopy, bottomBaseCopy, heightCopy];
  v22 = [ODIDrawable addShapeWithBounds:heightCopy rotation:stateCopy geometry:v19 state:topCopy, v18, heightCopy, 0.0];
  [ODIDrawable mapStyleAndTextFromPoint:nodeCopy shape:v22 state:stateCopy];
}

+ (void)mapWithState:(id)state apexUp:(BOOL)up
{
  stateCopy = state;
  v6 = [self nodeCountWithState:?];
  v7 = v6 + 1;
  [stateCopy setLogicalBounds:0 maintainAspectRatio:{-1.0, 0.0, 2.0, (v6 + 1)}];
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];

  if (up)
  {
    if (v6)
    {
      v11 = 0;
      v12 = v7;
      v13 = 1;
      do
      {
        v14 = [children objectAtIndex:v11];
        if (v13 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = v13;
        }

        *&v15 = v19;
        if (v13 == 1)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }

        *&v16 = v20;
        *&v18 = ((*&v15 + v20) / v12) * 1.36;
        *&v17 = (*&v15 / v12) * 1.36;
        [self addTrapezoidForNode:v14 top:stateCopy height:v15 topBase:v16 bottomBase:v17 state:v18];

        v11 = v13;
      }

      while (v6 > v13++);
    }
  }

  else if (v6)
  {
    v22 = 0;
    v23 = v7;
    do
    {
      v24 = [children objectAtIndex:v22];
      if (v6 == 1)
      {
        *&v26 = 2.0;
      }

      else
      {
        *&v26 = 1.0;
      }

      *&v25 = v22;
      *&v28 = (1.0 - ((*&v26 + v22) / v23)) * 1.36;
      *&v27 = (1.0 - (v22 / v23)) * 1.36;
      [self addTrapezoidForNode:v24 top:stateCopy height:v25 topBase:v26 bottomBase:v27 state:v28];

      ++v22;
      --v6;
    }

    while (v6);
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

+ (BOOL)verticalFlipWithState:(id)state
{
  stateCopy = state;
  diagram = [stateCopy diagram];
  documentPoint = [diagram documentPoint];
  presentations = [documentPoint presentations];

  for (i = 0; ; i = v8 + 1)
  {
    v8 = i;
    if ([presentations count] <= i)
    {
      customVerticalFlip = 0;
      goto LABEL_7;
    }

    v9 = [presentations objectAtIndex:i];
    propertySet = [v9 propertySet];
    presentationName = [propertySet presentationName];
    v12 = [presentationName isEqualToString:@"pyramid"];

    if (v12)
    {
      break;
    }
  }

  customVerticalFlip = [propertySet customVerticalFlip];

LABEL_7:
  return customVerticalFlip;
}

@end