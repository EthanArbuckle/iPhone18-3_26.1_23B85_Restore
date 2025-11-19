@interface ODIHorizonalList3
+ (BOOL)mapIdentifier:(id)a3 state:(id)a4;
- (ODIHorizonalList3)initWithState:(id)a3;
- (void)map;
- (void)mapPillarPoints:(id)a3 bounds:(CGRect)a4;
@end

@implementation ODIHorizonalList3

+ (BOOL)mapIdentifier:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"hList3"])
  {
    v8 = [[a1 alloc] initWithState:v7];
    goto LABEL_12;
  }

  if (![v6 isEqualToString:@"matrix1"])
  {
    if (([v6 isEqualToString:@"radial1"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"radial3") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"radial4") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"radial5") & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"radial6"))
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_14;
    }

    v8 = [[ODITitlePoint alloc] initWithTitlePointPresentationName:@"centerShape" state:v7];
LABEL_12:
    v9 = v8;
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  v9 = [[ODITitlePoint alloc] initWithTitlePointPresentationName:@"centerTile" state:v7];
  [(ODIHorizonalList3 *)v9 setMaxPointCount:4];
  if (!v9)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

LABEL_5:
  [(ODIHorizonalList3 *)v9 map];
  v10 = 1;
LABEL_14:

  return v10;
}

- (ODIHorizonalList3)initWithState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ODIHorizonalList3;
  v6 = [(ODIHorizonalList3 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mMaxPointCount = -1;
    objc_storeStrong(&v6->mState, a3);
  }

  return v7;
}

- (void)map
{
  v19 = [(ODIState *)self->mState diagram];
  v3 = [v19 documentPoint];
  v4 = [v3 children];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    [ODIDrawable sizeOfDiagram:v19];
    v8 = v7 / v6;
    [(ODIState *)self->mState setLogicalBounds:0 maintainAspectRatio:0.0, 0.0, 1.0, v8];
    [(ODIState *)self->mState setPresentationName:@"roof" forPointType:2];
    v9 = +[ODIDrawable shapeGeometryForRectangle];
    v10 = [ODIDrawable addShapeWithBounds:v9 rotation:self->mState geometry:0.0 state:0.0, 1.0, (v8 * 0.29), 0.0];

    [(ODIHorizonalList3 *)self mapRoofStyleFromPoint:v5 shape:v10];
    [ODIText mapTextFromPoint:v5 toShape:v10 isCentered:1 includeChildren:0 state:self->mState];
    v11 = [v5 children];
    if ([v11 count])
    {
      v12 = 1.0;
      [(ODIHorizonalList3 *)self mapPillarPoints:v11 bounds:0.0, ((v8 * 0.29) + 0.003), 1.0, (v8 * 0.62)];
    }

    else
    {
      v13 = +[ODIDrawable shapeGeometryForRectangle];
      v12 = 1.0;
      v14 = [ODIDrawable addShapeWithBounds:v13 rotation:self->mState geometry:0.0 state:((v8 * 0.29) + 0.003), 1.0, (v8 * 0.62), 0.0];

      [(ODIHorizonalList3 *)self mapOnePillarStyleFromPoint:v3 shape:v14];
    }

    v21.origin.x = 0.0;
    v21.origin.y = ((v8 * 0.29) + 0.003);
    v21.size.width = v12;
    v21.size.height = (v8 * 0.62);
    MaxY = CGRectGetMaxY(v21);
    v16 = +[ODIDrawable shapeGeometryForRectangle];
    v17 = MaxY + 0.00300000003;
    v18 = [ODIDrawable addShapeWithBounds:v16 rotation:self->mState geometry:0.0 state:v17, 1.0, (v8 - v17), 0.0];

    [(ODIHorizonalList3 *)self mapBaseStyleFromPoint:v3 shape:v18];
  }
}

- (void)mapPillarPoints:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v8 = [v16 count];
  mMaxPointCount = self->mMaxPointCount;
  if (mMaxPointCount >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = mMaxPointCount;
  }

  [(ODIState *)self->mState setPresentationName:0 forPointType:2];
  if (v10)
  {
    v11 = 0;
    v12 = 0.00300000003;
    do
    {
      v13 = [v16 objectAtIndex:{v11, v12}];
      v14 = +[ODIDrawable shapeGeometryForRectangle];
      v15 = [ODIDrawable addShapeWithBounds:v14 rotation:self->mState geometry:x state:y, ((((v10 - 1) * -0.003) + 1.0) / v10), height, 0.0];

      [ODIDrawable mapStyleFromPoint:v13 shape:v15 state:self->mState];
      [ODIText mapTextFromPoint:v13 toShape:v15 isCentered:1 includeChildren:1 state:self->mState];
      x = ((((v10 - 1) * -0.003) + 1.0) / v10) + 0.00300000003 + x;

      ++v11;
    }

    while (v10 != v11);
  }
}

@end