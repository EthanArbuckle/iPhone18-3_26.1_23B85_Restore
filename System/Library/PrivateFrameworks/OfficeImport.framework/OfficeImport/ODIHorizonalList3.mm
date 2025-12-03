@interface ODIHorizonalList3
+ (BOOL)mapIdentifier:(id)identifier state:(id)state;
- (ODIHorizonalList3)initWithState:(id)state;
- (void)map;
- (void)mapPillarPoints:(id)points bounds:(CGRect)bounds;
@end

@implementation ODIHorizonalList3

+ (BOOL)mapIdentifier:(id)identifier state:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  if ([identifierCopy isEqualToString:@"hList3"])
  {
    v8 = [[self alloc] initWithState:stateCopy];
    goto LABEL_12;
  }

  if (![identifierCopy isEqualToString:@"matrix1"])
  {
    if (([identifierCopy isEqualToString:@"radial1"] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", @"radial3") & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", @"radial4") & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", @"radial5") & 1) == 0 && !objc_msgSend(identifierCopy, "isEqualToString:", @"radial6"))
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_14;
    }

    v8 = [[ODITitlePoint alloc] initWithTitlePointPresentationName:@"centerShape" state:stateCopy];
LABEL_12:
    v9 = v8;
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  v9 = [[ODITitlePoint alloc] initWithTitlePointPresentationName:@"centerTile" state:stateCopy];
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

- (ODIHorizonalList3)initWithState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = ODIHorizonalList3;
  v6 = [(ODIHorizonalList3 *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mMaxPointCount = -1;
    objc_storeStrong(&v6->mState, state);
  }

  return v7;
}

- (void)map
{
  diagram = [(ODIState *)self->mState diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  if ([children count])
  {
    v5 = [children objectAtIndex:0];
    [ODIDrawable sizeOfDiagram:diagram];
    v8 = v7 / v6;
    [(ODIState *)self->mState setLogicalBounds:0 maintainAspectRatio:0.0, 0.0, 1.0, v8];
    [(ODIState *)self->mState setPresentationName:@"roof" forPointType:2];
    v9 = +[ODIDrawable shapeGeometryForRectangle];
    v10 = [ODIDrawable addShapeWithBounds:v9 rotation:self->mState geometry:0.0 state:0.0, 1.0, (v8 * 0.29), 0.0];

    [(ODIHorizonalList3 *)self mapRoofStyleFromPoint:v5 shape:v10];
    [ODIText mapTextFromPoint:v5 toShape:v10 isCentered:1 includeChildren:0 state:self->mState];
    children2 = [v5 children];
    if ([children2 count])
    {
      v12 = 1.0;
      [(ODIHorizonalList3 *)self mapPillarPoints:children2 bounds:0.0, ((v8 * 0.29) + 0.003), 1.0, (v8 * 0.62)];
    }

    else
    {
      v13 = +[ODIDrawable shapeGeometryForRectangle];
      v12 = 1.0;
      v14 = [ODIDrawable addShapeWithBounds:v13 rotation:self->mState geometry:0.0 state:((v8 * 0.29) + 0.003), 1.0, (v8 * 0.62), 0.0];

      [(ODIHorizonalList3 *)self mapOnePillarStyleFromPoint:documentPoint shape:v14];
    }

    v21.origin.x = 0.0;
    v21.origin.y = ((v8 * 0.29) + 0.003);
    v21.size.width = v12;
    v21.size.height = (v8 * 0.62);
    MaxY = CGRectGetMaxY(v21);
    v16 = +[ODIDrawable shapeGeometryForRectangle];
    v17 = MaxY + 0.00300000003;
    v18 = [ODIDrawable addShapeWithBounds:v16 rotation:self->mState geometry:0.0 state:v17, 1.0, (v8 - v17), 0.0];

    [(ODIHorizonalList3 *)self mapBaseStyleFromPoint:documentPoint shape:v18];
  }
}

- (void)mapPillarPoints:(id)points bounds:(CGRect)bounds
{
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pointsCopy = points;
  v8 = [pointsCopy count];
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
      v13 = [pointsCopy objectAtIndex:{v11, v12}];
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