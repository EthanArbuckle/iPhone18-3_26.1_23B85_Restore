@interface ODIPyramid
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
+ (BOOL)verticalFlipWithState:(id)a3;
+ (unint64_t)nodeCountWithState:(id)a3;
+ (void)addTrapezoidForNode:(id)a3 top:(float)a4 height:(float)a5 topBase:(float)a6 bottomBase:(float)a7 state:(id)a8;
+ (void)mapWithState:(id)a3 apexUp:(BOOL)a4;
@end

@implementation ODIPyramid

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 verticalFlipWithState:v7];
  if (([v6 isEqualToString:@"pyramid1"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"pyramid2") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"pyramid4"))
  {
    v8 = v8 ^ 1;
  }

  else if (![v6 isEqualToString:@"pyramid3"])
  {
    v9 = 0;
    goto LABEL_6;
  }

  [ODIPyramid mapWithState:v7 apexUp:v8];
  v9 = 1;
LABEL_6:

  return v9;
}

+ (void)addTrapezoidForNode:(id)a3 top:(float)a4 height:(float)a5 topBase:(float)a6 bottomBase:(float)a7 state:(id)a8
{
  v23 = a3;
  v13 = a8;
  v14 = objc_alloc_init(OITSUBezierPath);
  v15 = a4;
  [(OITSUBezierPath *)v14 moveToPoint:(a6 * 0.5), a4];
  v16 = (a4 + a5);
  [(OITSUBezierPath *)v14 lineToPoint:(a7 * 0.5), v16];
  [(OITSUBezierPath *)v14 lineToPoint:(a7 * -0.5), v16];
  [(OITSUBezierPath *)v14 lineToPoint:(a6 * -0.5), v15];
  [(OITSUBezierPath *)v14 closePath];
  if (a6 >= a7)
  {
    v17 = a6;
  }

  else
  {
    v17 = a7;
  }

  v18 = v17;
  v19 = v17 * -0.5;
  v20 = a5;
  v21 = [ODIDrawable shapeGeometryForBezierPath:v14 gSpace:v19, v15, v17, v20];
  v22 = [ODIDrawable addShapeWithBounds:v21 rotation:v13 geometry:v19 state:v15, v18, v20, 0.0];
  [ODIDrawable mapStyleAndTextFromPoint:v23 shape:v22 state:v13];
}

+ (void)mapWithState:(id)a3 apexUp:(BOOL)a4
{
  v29 = a3;
  v6 = [a1 nodeCountWithState:?];
  v7 = v6 + 1;
  [v29 setLogicalBounds:0 maintainAspectRatio:{-1.0, 0.0, 2.0, (v6 + 1)}];
  v8 = [v29 diagram];
  v9 = [v8 documentPoint];
  v10 = [v9 children];

  if (a4)
  {
    if (v6)
    {
      v11 = 0;
      v12 = v7;
      v13 = 1;
      do
      {
        v14 = [v10 objectAtIndex:v11];
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
        [a1 addTrapezoidForNode:v14 top:v29 height:v15 topBase:v16 bottomBase:v17 state:v18];

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
      v24 = [v10 objectAtIndex:v22];
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
      [a1 addTrapezoidForNode:v24 top:v29 height:v25 topBase:v26 bottomBase:v27 state:v28];

      ++v22;
      --v6;
    }

    while (v6);
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

+ (BOOL)verticalFlipWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 diagram];
  v5 = [v4 documentPoint];
  v6 = [v5 presentations];

  for (i = 0; ; i = v8 + 1)
  {
    v8 = i;
    if ([v6 count] <= i)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v9 = [v6 objectAtIndex:i];
    v10 = [v9 propertySet];
    v11 = [v10 presentationName];
    v12 = [v11 isEqualToString:@"pyramid"];

    if (v12)
    {
      break;
    }
  }

  v13 = [v10 customVerticalFlip];

LABEL_7:
  return v13;
}

@end